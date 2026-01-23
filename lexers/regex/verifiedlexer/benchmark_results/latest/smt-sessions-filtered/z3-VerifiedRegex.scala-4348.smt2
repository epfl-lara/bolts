; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231282 () Bool)

(assert start!231282)

(declare-fun b!2359036 () Bool)

(declare-fun b_free!70421 () Bool)

(declare-fun b_next!71125 () Bool)

(assert (=> b!2359036 (= b_free!70421 (not b_next!71125))))

(declare-fun tp!754395 () Bool)

(declare-fun b_and!185355 () Bool)

(assert (=> b!2359036 (= tp!754395 b_and!185355)))

(declare-fun b!2359035 () Bool)

(declare-fun b_free!70423 () Bool)

(declare-fun b_next!71127 () Bool)

(assert (=> b!2359035 (= b_free!70423 (not b_next!71127))))

(declare-fun tp!754391 () Bool)

(declare-fun b_and!185357 () Bool)

(assert (=> b!2359035 (= tp!754391 b_and!185357)))

(declare-fun b!2359031 () Bool)

(declare-fun res!1001175 () Bool)

(declare-fun e!1506799 () Bool)

(assert (=> b!2359031 (=> (not res!1001175) (not e!1506799))))

(declare-datatypes ((K!4977 0))(
  ( (K!4978 (val!8205 Int)) )
))
(declare-datatypes ((V!5179 0))(
  ( (V!5180 (val!8206 Int)) )
))
(declare-datatypes ((tuple2!27638 0))(
  ( (tuple2!27639 (_1!16360 K!4977) (_2!16360 V!5179)) )
))
(declare-datatypes ((List!27991 0))(
  ( (Nil!27893) (Cons!27893 (h!33294 tuple2!27638) (t!207866 List!27991)) )
))
(declare-datatypes ((array!11389 0))(
  ( (array!11390 (arr!5074 (Array (_ BitVec 32) List!27991)) (size!22098 (_ BitVec 32))) )
))
(declare-datatypes ((array!11391 0))(
  ( (array!11392 (arr!5075 (Array (_ BitVec 32) (_ BitVec 64))) (size!22099 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6484 0))(
  ( (LongMapFixedSize!6485 (defaultEntry!3616 Int) (mask!8139 (_ BitVec 32)) (extraKeys!3490 (_ BitVec 32)) (zeroValue!3500 List!27991) (minValue!3500 List!27991) (_size!6531 (_ BitVec 32)) (_keys!3539 array!11391) (_values!3522 array!11389) (_vacant!3303 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12785 0))(
  ( (Cell!12786 (v!30830 LongMapFixedSize!6484)) )
))
(declare-datatypes ((Hashable!3152 0))(
  ( (HashableExt!3151 (__x!18484 Int)) )
))
(declare-datatypes ((MutLongMap!3242 0))(
  ( (LongMap!3242 (underlying!6689 Cell!12785)) (MutLongMapExt!3241 (__x!18485 Int)) )
))
(declare-datatypes ((Cell!12787 0))(
  ( (Cell!12788 (v!30831 MutLongMap!3242)) )
))
(declare-datatypes ((MutableMap!3152 0))(
  ( (MutableMapExt!3151 (__x!18486 Int)) (HashMap!3152 (underlying!6690 Cell!12787) (hashF!5081 Hashable!3152) (_size!6532 (_ BitVec 32)) (defaultValue!3314 Int)) )
))
(declare-fun thiss!47689 () MutableMap!3152)

(get-info :version)

(assert (=> b!2359031 (= res!1001175 (not ((_ is MutableMapExt!3151) thiss!47689)))))

(declare-fun b!2359032 () Bool)

(declare-fun e!1506800 () Bool)

(declare-fun e!1506798 () Bool)

(assert (=> b!2359032 (= e!1506800 e!1506798)))

(declare-fun b!2359033 () Bool)

(declare-fun e!1506805 () Bool)

(declare-fun e!1506801 () Bool)

(declare-fun lt!863785 () MutLongMap!3242)

(assert (=> b!2359033 (= e!1506805 (and e!1506801 ((_ is LongMap!3242) lt!863785)))))

(assert (=> b!2359033 (= lt!863785 (v!30831 (underlying!6690 thiss!47689)))))

(declare-fun b!2359034 () Bool)

(declare-fun e!1506802 () Bool)

(declare-fun tp!754389 () Bool)

(declare-fun mapRes!15127 () Bool)

(assert (=> b!2359034 (= e!1506802 (and tp!754389 mapRes!15127))))

(declare-fun condMapEmpty!15127 () Bool)

(declare-fun mapDefault!15127 () List!27991)

(assert (=> b!2359034 (= condMapEmpty!15127 (= (arr!5074 (_values!3522 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))) ((as const (Array (_ BitVec 32) List!27991)) mapDefault!15127)))))

(declare-fun e!1506803 () Bool)

(assert (=> b!2359035 (= e!1506803 (and e!1506805 tp!754391))))

(declare-fun tp!754393 () Bool)

(declare-fun tp!754392 () Bool)

(declare-fun array_inv!3637 (array!11391) Bool)

(declare-fun array_inv!3638 (array!11389) Bool)

(assert (=> b!2359036 (= e!1506798 (and tp!754395 tp!754393 tp!754392 (array_inv!3637 (_keys!3539 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))) (array_inv!3638 (_values!3522 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))) e!1506802))))

(declare-fun res!1001174 () Bool)

(assert (=> start!231282 (=> (not res!1001174) (not e!1506799))))

(declare-fun valid!2435 (MutableMap!3152) Bool)

(assert (=> start!231282 (= res!1001174 (valid!2435 thiss!47689))))

(assert (=> start!231282 e!1506799))

(assert (=> start!231282 e!1506803))

(declare-fun tp_is_empty!11195 () Bool)

(assert (=> start!231282 tp_is_empty!11195))

(declare-fun b!2359037 () Bool)

(declare-fun key!7131 () K!4977)

(declare-fun contains!4864 (MutableMap!3152 K!4977) Bool)

(declare-datatypes ((ListMap!915 0))(
  ( (ListMap!916 (toList!1427 List!27991)) )
))
(declare-fun contains!4865 (ListMap!915 K!4977) Bool)

(declare-fun abstractMap!103 (MutableMap!3152) ListMap!915)

(assert (=> b!2359037 (= e!1506799 (not (= (contains!4864 thiss!47689 key!7131) (contains!4865 (abstractMap!103 thiss!47689) key!7131))))))

(declare-fun b!2359038 () Bool)

(assert (=> b!2359038 (= e!1506801 e!1506800)))

(declare-fun mapNonEmpty!15127 () Bool)

(declare-fun tp!754390 () Bool)

(declare-fun tp!754394 () Bool)

(assert (=> mapNonEmpty!15127 (= mapRes!15127 (and tp!754390 tp!754394))))

(declare-fun mapValue!15127 () List!27991)

(declare-fun mapRest!15127 () (Array (_ BitVec 32) List!27991))

(declare-fun mapKey!15127 () (_ BitVec 32))

(assert (=> mapNonEmpty!15127 (= (arr!5074 (_values!3522 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))) (store mapRest!15127 mapKey!15127 mapValue!15127))))

(declare-fun mapIsEmpty!15127 () Bool)

(assert (=> mapIsEmpty!15127 mapRes!15127))

(assert (= (and start!231282 res!1001174) b!2359031))

(assert (= (and b!2359031 res!1001175) b!2359037))

(assert (= (and b!2359034 condMapEmpty!15127) mapIsEmpty!15127))

(assert (= (and b!2359034 (not condMapEmpty!15127)) mapNonEmpty!15127))

(assert (= b!2359036 b!2359034))

(assert (= b!2359032 b!2359036))

(assert (= b!2359038 b!2359032))

(assert (= (and b!2359033 ((_ is LongMap!3242) (v!30831 (underlying!6690 thiss!47689)))) b!2359038))

(assert (= b!2359035 b!2359033))

(assert (= (and start!231282 ((_ is HashMap!3152) thiss!47689)) b!2359035))

(declare-fun m!2771597 () Bool)

(assert (=> b!2359036 m!2771597))

(declare-fun m!2771599 () Bool)

(assert (=> b!2359036 m!2771599))

(declare-fun m!2771601 () Bool)

(assert (=> start!231282 m!2771601))

(declare-fun m!2771603 () Bool)

(assert (=> b!2359037 m!2771603))

(declare-fun m!2771605 () Bool)

(assert (=> b!2359037 m!2771605))

(assert (=> b!2359037 m!2771605))

(declare-fun m!2771607 () Bool)

(assert (=> b!2359037 m!2771607))

(declare-fun m!2771609 () Bool)

(assert (=> mapNonEmpty!15127 m!2771609))

(check-sat (not b!2359036) b_and!185357 b_and!185355 (not start!231282) (not b_next!71125) (not b_next!71127) tp_is_empty!11195 (not b!2359037) (not mapNonEmpty!15127) (not b!2359034))
(check-sat b_and!185357 b_and!185355 (not b_next!71125) (not b_next!71127))
(get-model)

(declare-fun d!693459 () Bool)

(declare-fun c!374983 () Bool)

(assert (=> d!693459 (= c!374983 ((_ is MutableMapExt!3151) thiss!47689))))

(declare-fun e!1506808 () Bool)

(assert (=> d!693459 (= (valid!2435 thiss!47689) e!1506808)))

(declare-fun b!2359043 () Bool)

(declare-fun valid!2436 (MutableMap!3152) Bool)

(assert (=> b!2359043 (= e!1506808 (valid!2436 thiss!47689))))

(declare-fun b!2359044 () Bool)

(declare-fun valid!2437 (MutableMap!3152) Bool)

(assert (=> b!2359044 (= e!1506808 (valid!2437 thiss!47689))))

(assert (= (and d!693459 c!374983) b!2359043))

(assert (= (and d!693459 (not c!374983)) b!2359044))

(declare-fun m!2771611 () Bool)

(assert (=> b!2359043 m!2771611))

(declare-fun m!2771613 () Bool)

(assert (=> b!2359044 m!2771613))

(assert (=> start!231282 d!693459))

(declare-fun d!693461 () Bool)

(assert (=> d!693461 (= (array_inv!3637 (_keys!3539 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))) (bvsge (size!22099 (_keys!3539 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))) #b00000000000000000000000000000000))))

(assert (=> b!2359036 d!693461))

(declare-fun d!693463 () Bool)

(assert (=> d!693463 (= (array_inv!3638 (_values!3522 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))) (bvsge (size!22098 (_values!3522 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))) #b00000000000000000000000000000000))))

(assert (=> b!2359036 d!693463))

(declare-fun b!2359067 () Bool)

(declare-datatypes ((Unit!40801 0))(
  ( (Unit!40802) )
))
(declare-fun e!1506823 () Unit!40801)

(declare-fun Unit!40803 () Unit!40801)

(assert (=> b!2359067 (= e!1506823 Unit!40803)))

(declare-fun d!693465 () Bool)

(declare-fun lt!863834 () Bool)

(declare-fun map!5776 (MutableMap!3152) ListMap!915)

(assert (=> d!693465 (= lt!863834 (contains!4865 (map!5776 thiss!47689) key!7131))))

(declare-fun e!1506826 () Bool)

(assert (=> d!693465 (= lt!863834 e!1506826)))

(declare-fun res!1001183 () Bool)

(assert (=> d!693465 (=> (not res!1001183) (not e!1506826))))

(declare-fun lt!863837 () (_ BitVec 64))

(declare-fun contains!4866 (MutLongMap!3242 (_ BitVec 64)) Bool)

(assert (=> d!693465 (= res!1001183 (contains!4866 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))

(declare-fun lt!863838 () Unit!40801)

(declare-fun e!1506828 () Unit!40801)

(assert (=> d!693465 (= lt!863838 e!1506828)))

(declare-fun c!374994 () Bool)

(declare-datatypes ((tuple2!27640 0))(
  ( (tuple2!27641 (_1!16361 (_ BitVec 64)) (_2!16361 List!27991)) )
))
(declare-datatypes ((List!27992 0))(
  ( (Nil!27894) (Cons!27894 (h!33295 tuple2!27640) (t!207867 List!27992)) )
))
(declare-fun extractMap!133 (List!27992) ListMap!915)

(declare-datatypes ((ListLongMap!377 0))(
  ( (ListLongMap!378 (toList!1428 List!27992)) )
))
(declare-fun map!5777 (MutLongMap!3242) ListLongMap!377)

(assert (=> d!693465 (= c!374994 (contains!4865 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))) key!7131))))

(declare-fun lt!863844 () Unit!40801)

(declare-fun e!1506829 () Unit!40801)

(assert (=> d!693465 (= lt!863844 e!1506829)))

(declare-fun c!374995 () Bool)

(assert (=> d!693465 (= c!374995 (contains!4866 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))

(declare-fun hash!601 (Hashable!3152 K!4977) (_ BitVec 64))

(assert (=> d!693465 (= lt!863837 (hash!601 (hashF!5081 thiss!47689) key!7131))))

(assert (=> d!693465 (valid!2437 thiss!47689)))

(assert (=> d!693465 (= (contains!4864 thiss!47689 key!7131) lt!863834)))

(declare-fun b!2359068 () Bool)

(declare-fun e!1506824 () Unit!40801)

(declare-fun Unit!40804 () Unit!40801)

(assert (=> b!2359068 (= e!1506824 Unit!40804)))

(declare-fun bm!143611 () Bool)

(declare-fun call!143617 () Bool)

(declare-datatypes ((Option!5443 0))(
  ( (None!5442) (Some!5442 (v!30832 tuple2!27638)) )
))
(declare-fun call!143621 () Option!5443)

(declare-fun isDefined!4273 (Option!5443) Bool)

(assert (=> bm!143611 (= call!143617 (isDefined!4273 call!143621))))

(declare-fun bm!143612 () Bool)

(declare-fun call!143620 () (_ BitVec 64))

(assert (=> bm!143612 (= call!143620 (hash!601 (hashF!5081 thiss!47689) key!7131))))

(declare-fun b!2359069 () Bool)

(assert (=> b!2359069 false))

(declare-fun lt!863832 () Unit!40801)

(declare-fun lt!863842 () Unit!40801)

(assert (=> b!2359069 (= lt!863832 lt!863842)))

(declare-fun lt!863827 () List!27992)

(declare-fun lt!863843 () List!27991)

(declare-fun contains!4867 (List!27992 tuple2!27640) Bool)

(assert (=> b!2359069 (contains!4867 lt!863827 (tuple2!27641 lt!863837 lt!863843))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!54 (List!27992 (_ BitVec 64) List!27991) Unit!40801)

(assert (=> b!2359069 (= lt!863842 (lemmaGetValueByKeyImpliesContainsTuple!54 lt!863827 lt!863837 lt!863843))))

(declare-fun apply!6706 (MutLongMap!3242 (_ BitVec 64)) List!27991)

(assert (=> b!2359069 (= lt!863843 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))

(assert (=> b!2359069 (= lt!863827 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))))

(declare-fun lt!863833 () Unit!40801)

(declare-fun lt!863830 () Unit!40801)

(assert (=> b!2359069 (= lt!863833 lt!863830)))

(declare-fun lt!863845 () List!27992)

(declare-datatypes ((Option!5444 0))(
  ( (None!5443) (Some!5443 (v!30833 List!27991)) )
))
(declare-fun isDefined!4274 (Option!5444) Bool)

(declare-fun getValueByKey!117 (List!27992 (_ BitVec 64)) Option!5444)

(assert (=> b!2359069 (isDefined!4274 (getValueByKey!117 lt!863845 lt!863837))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!74 (List!27992 (_ BitVec 64)) Unit!40801)

(assert (=> b!2359069 (= lt!863830 (lemmaContainsKeyImpliesGetValueByKeyDefined!74 lt!863845 lt!863837))))

(assert (=> b!2359069 (= lt!863845 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))))

(declare-fun lt!863831 () Unit!40801)

(declare-fun lt!863829 () Unit!40801)

(assert (=> b!2359069 (= lt!863831 lt!863829)))

(declare-fun lt!863839 () List!27992)

(declare-fun containsKey!106 (List!27992 (_ BitVec 64)) Bool)

(assert (=> b!2359069 (containsKey!106 lt!863839 lt!863837)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!54 (List!27992 (_ BitVec 64)) Unit!40801)

(assert (=> b!2359069 (= lt!863829 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!54 lt!863839 lt!863837))))

(assert (=> b!2359069 (= lt!863839 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))))

(declare-fun Unit!40805 () Unit!40801)

(assert (=> b!2359069 (= e!1506823 Unit!40805)))

(declare-fun b!2359070 () Bool)

(declare-fun e!1506825 () Bool)

(assert (=> b!2359070 (= e!1506825 call!143617)))

(declare-fun bm!143613 () Bool)

(declare-fun call!143619 () ListLongMap!377)

(assert (=> bm!143613 (= call!143619 (map!5777 (v!30831 (underlying!6690 thiss!47689))))))

(declare-fun b!2359071 () Bool)

(declare-fun getPair!53 (List!27991 K!4977) Option!5443)

(assert (=> b!2359071 (= e!1506826 (isDefined!4273 (getPair!53 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837) key!7131)))))

(declare-fun b!2359072 () Bool)

(assert (=> b!2359072 (= e!1506828 e!1506824)))

(declare-fun res!1001182 () Bool)

(declare-fun call!143616 () Bool)

(assert (=> b!2359072 (= res!1001182 call!143616)))

(assert (=> b!2359072 (=> (not res!1001182) (not e!1506825))))

(declare-fun c!374993 () Bool)

(assert (=> b!2359072 (= c!374993 e!1506825)))

(declare-fun call!143618 () List!27991)

(declare-fun bm!143614 () Bool)

(declare-fun lt!863841 () ListLongMap!377)

(declare-fun apply!6707 (ListLongMap!377 (_ BitVec 64)) List!27991)

(assert (=> bm!143614 (= call!143618 (apply!6707 (ite c!374994 lt!863841 call!143619) call!143620))))

(declare-fun bm!143615 () Bool)

(declare-fun contains!4868 (ListLongMap!377 (_ BitVec 64)) Bool)

(assert (=> bm!143615 (= call!143616 (contains!4868 (ite c!374994 lt!863841 call!143619) call!143620))))

(declare-fun b!2359073 () Bool)

(declare-fun Unit!40806 () Unit!40801)

(assert (=> b!2359073 (= e!1506829 Unit!40806)))

(declare-fun b!2359074 () Bool)

(declare-fun e!1506827 () Bool)

(assert (=> b!2359074 (= e!1506827 call!143617)))

(declare-fun b!2359075 () Bool)

(assert (=> b!2359075 false))

(declare-fun lt!863826 () Unit!40801)

(declare-fun lt!863840 () Unit!40801)

(assert (=> b!2359075 (= lt!863826 lt!863840)))

(declare-fun lt!863828 () ListLongMap!377)

(assert (=> b!2359075 (contains!4865 (extractMap!133 (toList!1428 lt!863828)) key!7131)))

(declare-fun lemmaInLongMapThenInGenericMap!53 (ListLongMap!377 K!4977 Hashable!3152) Unit!40801)

(assert (=> b!2359075 (= lt!863840 (lemmaInLongMapThenInGenericMap!53 lt!863828 key!7131 (hashF!5081 thiss!47689)))))

(assert (=> b!2359075 (= lt!863828 call!143619)))

(declare-fun Unit!40807 () Unit!40801)

(assert (=> b!2359075 (= e!1506824 Unit!40807)))

(declare-fun lambda!86729 () Int)

(declare-fun b!2359076 () Bool)

(declare-fun forallContained!800 (List!27992 Int tuple2!27640) Unit!40801)

(assert (=> b!2359076 (= e!1506829 (forallContained!800 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) lambda!86729 (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))))

(declare-fun c!374992 () Bool)

(assert (=> b!2359076 (= c!374992 (not (contains!4867 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837)))))))

(declare-fun lt!863836 () Unit!40801)

(assert (=> b!2359076 (= lt!863836 e!1506823)))

(declare-fun bm!143616 () Bool)

(assert (=> bm!143616 (= call!143621 (getPair!53 call!143618 key!7131))))

(declare-fun b!2359077 () Bool)

(declare-fun lt!863835 () Unit!40801)

(assert (=> b!2359077 (= e!1506828 lt!863835)))

(assert (=> b!2359077 (= lt!863841 call!143619)))

(declare-fun lemmaInGenericMapThenInLongMap!53 (ListLongMap!377 K!4977 Hashable!3152) Unit!40801)

(assert (=> b!2359077 (= lt!863835 (lemmaInGenericMapThenInLongMap!53 lt!863841 key!7131 (hashF!5081 thiss!47689)))))

(declare-fun res!1001184 () Bool)

(assert (=> b!2359077 (= res!1001184 call!143616)))

(assert (=> b!2359077 (=> (not res!1001184) (not e!1506827))))

(assert (=> b!2359077 e!1506827))

(assert (= (and d!693465 c!374995) b!2359076))

(assert (= (and d!693465 (not c!374995)) b!2359073))

(assert (= (and b!2359076 c!374992) b!2359069))

(assert (= (and b!2359076 (not c!374992)) b!2359067))

(assert (= (and d!693465 c!374994) b!2359077))

(assert (= (and d!693465 (not c!374994)) b!2359072))

(assert (= (and b!2359077 res!1001184) b!2359074))

(assert (= (and b!2359072 res!1001182) b!2359070))

(assert (= (and b!2359072 c!374993) b!2359075))

(assert (= (and b!2359072 (not c!374993)) b!2359068))

(assert (= (or b!2359077 b!2359074 b!2359072 b!2359070) bm!143612))

(assert (= (or b!2359077 b!2359072 b!2359070 b!2359075) bm!143613))

(assert (= (or b!2359077 b!2359072) bm!143615))

(assert (= (or b!2359074 b!2359070) bm!143614))

(assert (= (or b!2359074 b!2359070) bm!143616))

(assert (= (or b!2359074 b!2359070) bm!143611))

(assert (= (and d!693465 res!1001183) b!2359071))

(declare-fun m!2771615 () Bool)

(assert (=> bm!143612 m!2771615))

(declare-fun m!2771617 () Bool)

(assert (=> b!2359076 m!2771617))

(declare-fun m!2771619 () Bool)

(assert (=> b!2359076 m!2771619))

(declare-fun m!2771621 () Bool)

(assert (=> b!2359076 m!2771621))

(declare-fun m!2771623 () Bool)

(assert (=> b!2359076 m!2771623))

(assert (=> bm!143613 m!2771617))

(declare-fun m!2771625 () Bool)

(assert (=> b!2359077 m!2771625))

(declare-fun m!2771627 () Bool)

(assert (=> b!2359075 m!2771627))

(assert (=> b!2359075 m!2771627))

(declare-fun m!2771629 () Bool)

(assert (=> b!2359075 m!2771629))

(declare-fun m!2771631 () Bool)

(assert (=> b!2359075 m!2771631))

(assert (=> b!2359071 m!2771619))

(assert (=> b!2359071 m!2771619))

(declare-fun m!2771633 () Bool)

(assert (=> b!2359071 m!2771633))

(assert (=> b!2359071 m!2771633))

(declare-fun m!2771635 () Bool)

(assert (=> b!2359071 m!2771635))

(declare-fun m!2771637 () Bool)

(assert (=> bm!143615 m!2771637))

(declare-fun m!2771639 () Bool)

(assert (=> bm!143616 m!2771639))

(declare-fun m!2771641 () Bool)

(assert (=> bm!143614 m!2771641))

(declare-fun m!2771643 () Bool)

(assert (=> bm!143611 m!2771643))

(declare-fun m!2771645 () Bool)

(assert (=> b!2359069 m!2771645))

(declare-fun m!2771647 () Bool)

(assert (=> b!2359069 m!2771647))

(declare-fun m!2771649 () Bool)

(assert (=> b!2359069 m!2771649))

(declare-fun m!2771651 () Bool)

(assert (=> b!2359069 m!2771651))

(assert (=> b!2359069 m!2771645))

(assert (=> b!2359069 m!2771619))

(declare-fun m!2771653 () Bool)

(assert (=> b!2359069 m!2771653))

(declare-fun m!2771655 () Bool)

(assert (=> b!2359069 m!2771655))

(assert (=> b!2359069 m!2771617))

(declare-fun m!2771657 () Bool)

(assert (=> b!2359069 m!2771657))

(declare-fun m!2771659 () Bool)

(assert (=> d!693465 m!2771659))

(assert (=> d!693465 m!2771659))

(declare-fun m!2771661 () Bool)

(assert (=> d!693465 m!2771661))

(assert (=> d!693465 m!2771615))

(assert (=> d!693465 m!2771617))

(declare-fun m!2771663 () Bool)

(assert (=> d!693465 m!2771663))

(declare-fun m!2771665 () Bool)

(assert (=> d!693465 m!2771665))

(assert (=> d!693465 m!2771663))

(declare-fun m!2771667 () Bool)

(assert (=> d!693465 m!2771667))

(assert (=> d!693465 m!2771613))

(assert (=> b!2359037 d!693465))

(declare-fun b!2359096 () Bool)

(declare-fun e!1506844 () Bool)

(declare-datatypes ((List!27993 0))(
  ( (Nil!27895) (Cons!27895 (h!33296 K!4977) (t!207868 List!27993)) )
))
(declare-fun contains!4869 (List!27993 K!4977) Bool)

(declare-fun keys!8762 (ListMap!915) List!27993)

(assert (=> b!2359096 (= e!1506844 (contains!4869 (keys!8762 (abstractMap!103 thiss!47689)) key!7131))))

(declare-fun bm!143619 () Bool)

(declare-fun call!143624 () Bool)

(declare-fun e!1506847 () List!27993)

(assert (=> bm!143619 (= call!143624 (contains!4869 e!1506847 key!7131))))

(declare-fun c!375002 () Bool)

(declare-fun c!375003 () Bool)

(assert (=> bm!143619 (= c!375002 c!375003)))

(declare-fun b!2359097 () Bool)

(declare-fun e!1506846 () Unit!40801)

(declare-fun e!1506845 () Unit!40801)

(assert (=> b!2359097 (= e!1506846 e!1506845)))

(declare-fun c!375004 () Bool)

(assert (=> b!2359097 (= c!375004 call!143624)))

(declare-fun b!2359098 () Bool)

(declare-fun lt!863866 () Unit!40801)

(assert (=> b!2359098 (= e!1506846 lt!863866)))

(declare-fun lt!863869 () Unit!40801)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!75 (List!27991 K!4977) Unit!40801)

(assert (=> b!2359098 (= lt!863869 (lemmaContainsKeyImpliesGetValueByKeyDefined!75 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))

(declare-datatypes ((Option!5445 0))(
  ( (None!5444) (Some!5444 (v!30834 V!5179)) )
))
(declare-fun isDefined!4275 (Option!5445) Bool)

(declare-fun getValueByKey!118 (List!27991 K!4977) Option!5445)

(assert (=> b!2359098 (isDefined!4275 (getValueByKey!118 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))

(declare-fun lt!863864 () Unit!40801)

(assert (=> b!2359098 (= lt!863864 lt!863869)))

(declare-fun lemmaInListThenGetKeysListContains!11 (List!27991 K!4977) Unit!40801)

(assert (=> b!2359098 (= lt!863866 (lemmaInListThenGetKeysListContains!11 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))

(assert (=> b!2359098 call!143624))

(declare-fun b!2359099 () Bool)

(declare-fun e!1506842 () Bool)

(assert (=> b!2359099 (= e!1506842 (not (contains!4869 (keys!8762 (abstractMap!103 thiss!47689)) key!7131)))))

(declare-fun b!2359100 () Bool)

(assert (=> b!2359100 false))

(declare-fun lt!863865 () Unit!40801)

(declare-fun lt!863867 () Unit!40801)

(assert (=> b!2359100 (= lt!863865 lt!863867)))

(declare-fun containsKey!107 (List!27991 K!4977) Bool)

(assert (=> b!2359100 (containsKey!107 (toList!1427 (abstractMap!103 thiss!47689)) key!7131)))

(declare-fun lemmaInGetKeysListThenContainsKey!11 (List!27991 K!4977) Unit!40801)

(assert (=> b!2359100 (= lt!863867 (lemmaInGetKeysListThenContainsKey!11 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))

(declare-fun Unit!40808 () Unit!40801)

(assert (=> b!2359100 (= e!1506845 Unit!40808)))

(declare-fun b!2359101 () Bool)

(declare-fun Unit!40809 () Unit!40801)

(assert (=> b!2359101 (= e!1506845 Unit!40809)))

(declare-fun b!2359103 () Bool)

(declare-fun getKeysList!14 (List!27991) List!27993)

(assert (=> b!2359103 (= e!1506847 (getKeysList!14 (toList!1427 (abstractMap!103 thiss!47689))))))

(declare-fun b!2359104 () Bool)

(declare-fun e!1506843 () Bool)

(assert (=> b!2359104 (= e!1506843 e!1506844)))

(declare-fun res!1001191 () Bool)

(assert (=> b!2359104 (=> (not res!1001191) (not e!1506844))))

(assert (=> b!2359104 (= res!1001191 (isDefined!4275 (getValueByKey!118 (toList!1427 (abstractMap!103 thiss!47689)) key!7131)))))

(declare-fun b!2359102 () Bool)

(assert (=> b!2359102 (= e!1506847 (keys!8762 (abstractMap!103 thiss!47689)))))

(declare-fun d!693467 () Bool)

(assert (=> d!693467 e!1506843))

(declare-fun res!1001192 () Bool)

(assert (=> d!693467 (=> res!1001192 e!1506843)))

(assert (=> d!693467 (= res!1001192 e!1506842)))

(declare-fun res!1001193 () Bool)

(assert (=> d!693467 (=> (not res!1001193) (not e!1506842))))

(declare-fun lt!863868 () Bool)

(assert (=> d!693467 (= res!1001193 (not lt!863868))))

(declare-fun lt!863863 () Bool)

(assert (=> d!693467 (= lt!863868 lt!863863)))

(declare-fun lt!863862 () Unit!40801)

(assert (=> d!693467 (= lt!863862 e!1506846)))

(assert (=> d!693467 (= c!375003 lt!863863)))

(assert (=> d!693467 (= lt!863863 (containsKey!107 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))

(assert (=> d!693467 (= (contains!4865 (abstractMap!103 thiss!47689) key!7131) lt!863868)))

(assert (= (and d!693467 c!375003) b!2359098))

(assert (= (and d!693467 (not c!375003)) b!2359097))

(assert (= (and b!2359097 c!375004) b!2359100))

(assert (= (and b!2359097 (not c!375004)) b!2359101))

(assert (= (or b!2359098 b!2359097) bm!143619))

(assert (= (and bm!143619 c!375002) b!2359103))

(assert (= (and bm!143619 (not c!375002)) b!2359102))

(assert (= (and d!693467 res!1001193) b!2359099))

(assert (= (and d!693467 (not res!1001192)) b!2359104))

(assert (= (and b!2359104 res!1001191) b!2359096))

(declare-fun m!2771669 () Bool)

(assert (=> b!2359100 m!2771669))

(declare-fun m!2771671 () Bool)

(assert (=> b!2359100 m!2771671))

(assert (=> d!693467 m!2771669))

(declare-fun m!2771673 () Bool)

(assert (=> bm!143619 m!2771673))

(assert (=> b!2359096 m!2771605))

(declare-fun m!2771675 () Bool)

(assert (=> b!2359096 m!2771675))

(assert (=> b!2359096 m!2771675))

(declare-fun m!2771677 () Bool)

(assert (=> b!2359096 m!2771677))

(declare-fun m!2771679 () Bool)

(assert (=> b!2359098 m!2771679))

(declare-fun m!2771681 () Bool)

(assert (=> b!2359098 m!2771681))

(assert (=> b!2359098 m!2771681))

(declare-fun m!2771683 () Bool)

(assert (=> b!2359098 m!2771683))

(declare-fun m!2771685 () Bool)

(assert (=> b!2359098 m!2771685))

(assert (=> b!2359099 m!2771605))

(assert (=> b!2359099 m!2771675))

(assert (=> b!2359099 m!2771675))

(assert (=> b!2359099 m!2771677))

(assert (=> b!2359102 m!2771605))

(assert (=> b!2359102 m!2771675))

(declare-fun m!2771687 () Bool)

(assert (=> b!2359103 m!2771687))

(assert (=> b!2359104 m!2771681))

(assert (=> b!2359104 m!2771681))

(assert (=> b!2359104 m!2771683))

(assert (=> b!2359037 d!693467))

(declare-fun d!693469 () Bool)

(declare-fun c!375007 () Bool)

(assert (=> d!693469 (= c!375007 ((_ is MutableMapExt!3151) thiss!47689))))

(declare-fun e!1506850 () ListMap!915)

(assert (=> d!693469 (= (abstractMap!103 thiss!47689) e!1506850)))

(declare-fun b!2359109 () Bool)

(declare-fun abstractMap!104 (MutableMap!3152) ListMap!915)

(assert (=> b!2359109 (= e!1506850 (abstractMap!104 thiss!47689))))

(declare-fun b!2359110 () Bool)

(declare-fun abstractMap!105 (MutableMap!3152) ListMap!915)

(assert (=> b!2359110 (= e!1506850 (abstractMap!105 thiss!47689))))

(assert (= (and d!693469 c!375007) b!2359109))

(assert (= (and d!693469 (not c!375007)) b!2359110))

(declare-fun m!2771689 () Bool)

(assert (=> b!2359109 m!2771689))

(declare-fun m!2771691 () Bool)

(assert (=> b!2359110 m!2771691))

(assert (=> b!2359037 d!693469))

(declare-fun tp!754398 () Bool)

(declare-fun tp_is_empty!11197 () Bool)

(declare-fun e!1506853 () Bool)

(declare-fun b!2359115 () Bool)

(assert (=> b!2359115 (= e!1506853 (and tp_is_empty!11195 tp_is_empty!11197 tp!754398))))

(assert (=> b!2359036 (= tp!754393 e!1506853)))

(assert (= (and b!2359036 ((_ is Cons!27893) (zeroValue!3500 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689))))))) b!2359115))

(declare-fun tp!754399 () Bool)

(declare-fun b!2359116 () Bool)

(declare-fun e!1506854 () Bool)

(assert (=> b!2359116 (= e!1506854 (and tp_is_empty!11195 tp_is_empty!11197 tp!754399))))

(assert (=> b!2359036 (= tp!754392 e!1506854)))

(assert (= (and b!2359036 ((_ is Cons!27893) (minValue!3500 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689))))))) b!2359116))

(declare-fun mapNonEmpty!15130 () Bool)

(declare-fun mapRes!15130 () Bool)

(declare-fun tp!754408 () Bool)

(declare-fun e!1506859 () Bool)

(assert (=> mapNonEmpty!15130 (= mapRes!15130 (and tp!754408 e!1506859))))

(declare-fun mapValue!15130 () List!27991)

(declare-fun mapKey!15130 () (_ BitVec 32))

(declare-fun mapRest!15130 () (Array (_ BitVec 32) List!27991))

(assert (=> mapNonEmpty!15130 (= mapRest!15127 (store mapRest!15130 mapKey!15130 mapValue!15130))))

(declare-fun condMapEmpty!15130 () Bool)

(declare-fun mapDefault!15130 () List!27991)

(assert (=> mapNonEmpty!15127 (= condMapEmpty!15130 (= mapRest!15127 ((as const (Array (_ BitVec 32) List!27991)) mapDefault!15130)))))

(declare-fun e!1506860 () Bool)

(assert (=> mapNonEmpty!15127 (= tp!754390 (and e!1506860 mapRes!15130))))

(declare-fun tp!754407 () Bool)

(declare-fun b!2359123 () Bool)

(assert (=> b!2359123 (= e!1506859 (and tp_is_empty!11195 tp_is_empty!11197 tp!754407))))

(declare-fun mapIsEmpty!15130 () Bool)

(assert (=> mapIsEmpty!15130 mapRes!15130))

(declare-fun b!2359124 () Bool)

(declare-fun tp!754406 () Bool)

(assert (=> b!2359124 (= e!1506860 (and tp_is_empty!11195 tp_is_empty!11197 tp!754406))))

(assert (= (and mapNonEmpty!15127 condMapEmpty!15130) mapIsEmpty!15130))

(assert (= (and mapNonEmpty!15127 (not condMapEmpty!15130)) mapNonEmpty!15130))

(assert (= (and mapNonEmpty!15130 ((_ is Cons!27893) mapValue!15130)) b!2359123))

(assert (= (and mapNonEmpty!15127 ((_ is Cons!27893) mapDefault!15130)) b!2359124))

(declare-fun m!2771693 () Bool)

(assert (=> mapNonEmpty!15130 m!2771693))

(declare-fun e!1506861 () Bool)

(declare-fun b!2359125 () Bool)

(declare-fun tp!754409 () Bool)

(assert (=> b!2359125 (= e!1506861 (and tp_is_empty!11195 tp_is_empty!11197 tp!754409))))

(assert (=> mapNonEmpty!15127 (= tp!754394 e!1506861)))

(assert (= (and mapNonEmpty!15127 ((_ is Cons!27893) mapValue!15127)) b!2359125))

(declare-fun e!1506862 () Bool)

(declare-fun tp!754410 () Bool)

(declare-fun b!2359126 () Bool)

(assert (=> b!2359126 (= e!1506862 (and tp_is_empty!11195 tp_is_empty!11197 tp!754410))))

(assert (=> b!2359034 (= tp!754389 e!1506862)))

(assert (= (and b!2359034 ((_ is Cons!27893) mapDefault!15127)) b!2359126))

(check-sat (not bm!143614) (not b!2359100) b_and!185357 (not b!2359096) (not b!2359098) (not b!2359104) (not b!2359115) (not bm!143612) (not b!2359099) (not b!2359077) (not d!693467) (not b!2359125) (not b!2359102) b_and!185355 (not b!2359044) (not b!2359124) (not bm!143613) (not bm!143615) (not bm!143619) (not b!2359123) tp_is_empty!11197 (not b!2359126) (not b!2359109) (not b!2359043) (not b!2359103) (not d!693465) (not b_next!71125) (not b!2359075) (not b!2359110) (not b_next!71127) (not b!2359076) tp_is_empty!11195 (not b!2359116) (not bm!143611) (not b!2359071) (not b!2359069) (not mapNonEmpty!15130) (not bm!143616))
(check-sat b_and!185357 b_and!185355 (not b_next!71125) (not b_next!71127))
(get-model)

(declare-fun d!693471 () Bool)

(declare-fun isEmpty!15850 (Option!5443) Bool)

(assert (=> d!693471 (= (isDefined!4273 (getPair!53 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837) key!7131)) (not (isEmpty!15850 (getPair!53 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837) key!7131))))))

(declare-fun bs!460427 () Bool)

(assert (= bs!460427 d!693471))

(assert (=> bs!460427 m!2771633))

(declare-fun m!2771695 () Bool)

(assert (=> bs!460427 m!2771695))

(assert (=> b!2359071 d!693471))

(declare-fun b!2359143 () Bool)

(declare-fun e!1506874 () Bool)

(declare-fun e!1506876 () Bool)

(assert (=> b!2359143 (= e!1506874 e!1506876)))

(declare-fun res!1001205 () Bool)

(assert (=> b!2359143 (=> (not res!1001205) (not e!1506876))))

(declare-fun lt!863872 () Option!5443)

(assert (=> b!2359143 (= res!1001205 (isDefined!4273 lt!863872))))

(declare-fun e!1506875 () Bool)

(declare-fun b!2359144 () Bool)

(declare-fun containsKey!108 (List!27991 K!4977) Bool)

(assert (=> b!2359144 (= e!1506875 (not (containsKey!108 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837) key!7131)))))

(declare-fun d!693473 () Bool)

(assert (=> d!693473 e!1506874))

(declare-fun res!1001202 () Bool)

(assert (=> d!693473 (=> res!1001202 e!1506874)))

(assert (=> d!693473 (= res!1001202 e!1506875)))

(declare-fun res!1001203 () Bool)

(assert (=> d!693473 (=> (not res!1001203) (not e!1506875))))

(assert (=> d!693473 (= res!1001203 (isEmpty!15850 lt!863872))))

(declare-fun e!1506873 () Option!5443)

(assert (=> d!693473 (= lt!863872 e!1506873)))

(declare-fun c!375012 () Bool)

(assert (=> d!693473 (= c!375012 (and ((_ is Cons!27893) (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837)) (= (_1!16360 (h!33294 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))) key!7131)))))

(declare-fun noDuplicateKeys!41 (List!27991) Bool)

(assert (=> d!693473 (noDuplicateKeys!41 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))

(assert (=> d!693473 (= (getPair!53 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837) key!7131) lt!863872)))

(declare-fun b!2359145 () Bool)

(assert (=> b!2359145 (= e!1506873 (Some!5442 (h!33294 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))))

(declare-fun b!2359146 () Bool)

(declare-fun e!1506877 () Option!5443)

(assert (=> b!2359146 (= e!1506877 None!5442)))

(declare-fun b!2359147 () Bool)

(declare-fun res!1001204 () Bool)

(assert (=> b!2359147 (=> (not res!1001204) (not e!1506876))))

(declare-fun get!8463 (Option!5443) tuple2!27638)

(assert (=> b!2359147 (= res!1001204 (= (_1!16360 (get!8463 lt!863872)) key!7131))))

(declare-fun b!2359148 () Bool)

(declare-fun contains!4870 (List!27991 tuple2!27638) Bool)

(assert (=> b!2359148 (= e!1506876 (contains!4870 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837) (get!8463 lt!863872)))))

(declare-fun b!2359149 () Bool)

(assert (=> b!2359149 (= e!1506873 e!1506877)))

(declare-fun c!375013 () Bool)

(assert (=> b!2359149 (= c!375013 ((_ is Cons!27893) (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837)))))

(declare-fun b!2359150 () Bool)

(assert (=> b!2359150 (= e!1506877 (getPair!53 (t!207866 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837)) key!7131))))

(assert (= (and d!693473 c!375012) b!2359145))

(assert (= (and d!693473 (not c!375012)) b!2359149))

(assert (= (and b!2359149 c!375013) b!2359150))

(assert (= (and b!2359149 (not c!375013)) b!2359146))

(assert (= (and d!693473 res!1001203) b!2359144))

(assert (= (and d!693473 (not res!1001202)) b!2359143))

(assert (= (and b!2359143 res!1001205) b!2359147))

(assert (= (and b!2359147 res!1001204) b!2359148))

(declare-fun m!2771697 () Bool)

(assert (=> b!2359150 m!2771697))

(declare-fun m!2771699 () Bool)

(assert (=> b!2359143 m!2771699))

(assert (=> b!2359144 m!2771619))

(declare-fun m!2771701 () Bool)

(assert (=> b!2359144 m!2771701))

(declare-fun m!2771703 () Bool)

(assert (=> b!2359148 m!2771703))

(assert (=> b!2359148 m!2771619))

(assert (=> b!2359148 m!2771703))

(declare-fun m!2771705 () Bool)

(assert (=> b!2359148 m!2771705))

(declare-fun m!2771707 () Bool)

(assert (=> d!693473 m!2771707))

(assert (=> d!693473 m!2771619))

(declare-fun m!2771709 () Bool)

(assert (=> d!693473 m!2771709))

(assert (=> b!2359147 m!2771703))

(assert (=> b!2359071 d!693473))

(declare-fun d!693475 () Bool)

(declare-fun e!1506880 () Bool)

(assert (=> d!693475 e!1506880))

(declare-fun c!375016 () Bool)

(assert (=> d!693475 (= c!375016 (contains!4866 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))

(declare-fun lt!863875 () List!27991)

(declare-fun apply!6708 (LongMapFixedSize!6484 (_ BitVec 64)) List!27991)

(assert (=> d!693475 (= lt!863875 (apply!6708 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))) lt!863837))))

(declare-fun valid!2438 (MutLongMap!3242) Bool)

(assert (=> d!693475 (valid!2438 (v!30831 (underlying!6690 thiss!47689)))))

(assert (=> d!693475 (= (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837) lt!863875)))

(declare-fun b!2359155 () Bool)

(declare-fun get!8464 (Option!5444) List!27991)

(assert (=> b!2359155 (= e!1506880 (= lt!863875 (get!8464 (getValueByKey!117 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) lt!863837))))))

(declare-fun b!2359156 () Bool)

(declare-fun dynLambda!12009 (Int (_ BitVec 64)) List!27991)

(assert (=> b!2359156 (= e!1506880 (= lt!863875 (dynLambda!12009 (defaultEntry!3616 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689))))) lt!863837)))))

(assert (=> b!2359156 ((_ is LongMap!3242) (v!30831 (underlying!6690 thiss!47689)))))

(assert (= (and d!693475 c!375016) b!2359155))

(assert (= (and d!693475 (not c!375016)) b!2359156))

(declare-fun b_lambda!73747 () Bool)

(assert (=> (not b_lambda!73747) (not b!2359156)))

(declare-fun t!207870 () Bool)

(declare-fun tb!138739 () Bool)

(assert (=> (and b!2359036 (= (defaultEntry!3616 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689))))) (defaultEntry!3616 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))) t!207870) tb!138739))

(assert (=> b!2359156 t!207870))

(declare-fun result!169634 () Bool)

(declare-fun b_and!185359 () Bool)

(assert (= b_and!185355 (and (=> t!207870 result!169634) b_and!185359)))

(assert (=> d!693475 m!2771665))

(declare-fun m!2771711 () Bool)

(assert (=> d!693475 m!2771711))

(declare-fun m!2771713 () Bool)

(assert (=> d!693475 m!2771713))

(assert (=> b!2359155 m!2771617))

(declare-fun m!2771715 () Bool)

(assert (=> b!2359155 m!2771715))

(assert (=> b!2359155 m!2771715))

(declare-fun m!2771717 () Bool)

(assert (=> b!2359155 m!2771717))

(declare-fun m!2771719 () Bool)

(assert (=> b!2359156 m!2771719))

(assert (=> b!2359071 d!693475))

(declare-fun d!693477 () Bool)

(declare-fun map!5778 (LongMapFixedSize!6484) ListLongMap!377)

(assert (=> d!693477 (= (map!5777 (v!30831 (underlying!6690 thiss!47689))) (map!5778 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689))))))))

(declare-fun bs!460428 () Bool)

(assert (= bs!460428 d!693477))

(declare-fun m!2771721 () Bool)

(assert (=> bs!460428 m!2771721))

(assert (=> bm!143613 d!693477))

(declare-fun bs!460429 () Bool)

(declare-fun b!2359161 () Bool)

(assert (= bs!460429 (and b!2359161 b!2359076)))

(declare-fun lambda!86732 () Int)

(assert (=> bs!460429 (= lambda!86732 lambda!86729)))

(declare-fun d!693479 () Bool)

(declare-fun res!1001210 () Bool)

(declare-fun e!1506883 () Bool)

(assert (=> d!693479 (=> (not res!1001210) (not e!1506883))))

(assert (=> d!693479 (= res!1001210 (valid!2438 (v!30831 (underlying!6690 thiss!47689))))))

(assert (=> d!693479 (= (valid!2437 thiss!47689) e!1506883)))

(declare-fun res!1001211 () Bool)

(assert (=> b!2359161 (=> (not res!1001211) (not e!1506883))))

(declare-fun forall!5530 (List!27992 Int) Bool)

(assert (=> b!2359161 (= res!1001211 (forall!5530 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) lambda!86732))))

(declare-fun b!2359162 () Bool)

(declare-fun allKeysSameHashInMap!122 (ListLongMap!377 Hashable!3152) Bool)

(assert (=> b!2359162 (= e!1506883 (allKeysSameHashInMap!122 (map!5777 (v!30831 (underlying!6690 thiss!47689))) (hashF!5081 thiss!47689)))))

(assert (= (and d!693479 res!1001210) b!2359161))

(assert (= (and b!2359161 res!1001211) b!2359162))

(assert (=> d!693479 m!2771713))

(assert (=> b!2359161 m!2771617))

(declare-fun m!2771723 () Bool)

(assert (=> b!2359161 m!2771723))

(assert (=> b!2359162 m!2771617))

(assert (=> b!2359162 m!2771617))

(declare-fun m!2771725 () Bool)

(assert (=> b!2359162 m!2771725))

(assert (=> b!2359044 d!693479))

(declare-fun d!693481 () Bool)

(assert (=> d!693481 (= (apply!6707 (ite c!374994 lt!863841 call!143619) call!143620) (get!8464 (getValueByKey!117 (toList!1428 (ite c!374994 lt!863841 call!143619)) call!143620)))))

(declare-fun bs!460430 () Bool)

(assert (= bs!460430 d!693481))

(declare-fun m!2771727 () Bool)

(assert (=> bs!460430 m!2771727))

(assert (=> bs!460430 m!2771727))

(declare-fun m!2771729 () Bool)

(assert (=> bs!460430 m!2771729))

(assert (=> bm!143614 d!693481))

(declare-fun d!693483 () Bool)

(declare-fun res!1001216 () Bool)

(declare-fun e!1506888 () Bool)

(assert (=> d!693483 (=> res!1001216 e!1506888)))

(assert (=> d!693483 (= res!1001216 (and ((_ is Cons!27893) (toList!1427 (abstractMap!103 thiss!47689))) (= (_1!16360 (h!33294 (toList!1427 (abstractMap!103 thiss!47689)))) key!7131)))))

(assert (=> d!693483 (= (containsKey!107 (toList!1427 (abstractMap!103 thiss!47689)) key!7131) e!1506888)))

(declare-fun b!2359167 () Bool)

(declare-fun e!1506889 () Bool)

(assert (=> b!2359167 (= e!1506888 e!1506889)))

(declare-fun res!1001217 () Bool)

(assert (=> b!2359167 (=> (not res!1001217) (not e!1506889))))

(assert (=> b!2359167 (= res!1001217 ((_ is Cons!27893) (toList!1427 (abstractMap!103 thiss!47689))))))

(declare-fun b!2359168 () Bool)

(assert (=> b!2359168 (= e!1506889 (containsKey!107 (t!207866 (toList!1427 (abstractMap!103 thiss!47689))) key!7131))))

(assert (= (and d!693483 (not res!1001216)) b!2359167))

(assert (= (and b!2359167 res!1001217) b!2359168))

(declare-fun m!2771731 () Bool)

(assert (=> b!2359168 m!2771731))

(assert (=> d!693467 d!693483))

(declare-fun d!693485 () Bool)

(declare-fun e!1506895 () Bool)

(assert (=> d!693485 e!1506895))

(declare-fun res!1001220 () Bool)

(assert (=> d!693485 (=> res!1001220 e!1506895)))

(declare-fun lt!863884 () Bool)

(assert (=> d!693485 (= res!1001220 (not lt!863884))))

(declare-fun lt!863887 () Bool)

(assert (=> d!693485 (= lt!863884 lt!863887)))

(declare-fun lt!863886 () Unit!40801)

(declare-fun e!1506894 () Unit!40801)

(assert (=> d!693485 (= lt!863886 e!1506894)))

(declare-fun c!375019 () Bool)

(assert (=> d!693485 (= c!375019 lt!863887)))

(assert (=> d!693485 (= lt!863887 (containsKey!106 (toList!1428 (ite c!374994 lt!863841 call!143619)) call!143620))))

(assert (=> d!693485 (= (contains!4868 (ite c!374994 lt!863841 call!143619) call!143620) lt!863884)))

(declare-fun b!2359175 () Bool)

(declare-fun lt!863885 () Unit!40801)

(assert (=> b!2359175 (= e!1506894 lt!863885)))

(assert (=> b!2359175 (= lt!863885 (lemmaContainsKeyImpliesGetValueByKeyDefined!74 (toList!1428 (ite c!374994 lt!863841 call!143619)) call!143620))))

(assert (=> b!2359175 (isDefined!4274 (getValueByKey!117 (toList!1428 (ite c!374994 lt!863841 call!143619)) call!143620))))

(declare-fun b!2359176 () Bool)

(declare-fun Unit!40810 () Unit!40801)

(assert (=> b!2359176 (= e!1506894 Unit!40810)))

(declare-fun b!2359177 () Bool)

(assert (=> b!2359177 (= e!1506895 (isDefined!4274 (getValueByKey!117 (toList!1428 (ite c!374994 lt!863841 call!143619)) call!143620)))))

(assert (= (and d!693485 c!375019) b!2359175))

(assert (= (and d!693485 (not c!375019)) b!2359176))

(assert (= (and d!693485 (not res!1001220)) b!2359177))

(declare-fun m!2771733 () Bool)

(assert (=> d!693485 m!2771733))

(declare-fun m!2771735 () Bool)

(assert (=> b!2359175 m!2771735))

(assert (=> b!2359175 m!2771727))

(assert (=> b!2359175 m!2771727))

(declare-fun m!2771737 () Bool)

(assert (=> b!2359175 m!2771737))

(assert (=> b!2359177 m!2771727))

(assert (=> b!2359177 m!2771727))

(assert (=> b!2359177 m!2771737))

(assert (=> bm!143615 d!693485))

(declare-fun d!693487 () Bool)

(declare-fun choose!13669 (MutableMap!3152) Bool)

(assert (=> d!693487 (= (valid!2436 thiss!47689) (choose!13669 thiss!47689))))

(declare-fun bs!460431 () Bool)

(assert (= bs!460431 d!693487))

(declare-fun m!2771739 () Bool)

(assert (=> bs!460431 m!2771739))

(assert (=> b!2359043 d!693487))

(declare-fun d!693489 () Bool)

(assert (=> d!693489 (= (isDefined!4273 call!143621) (not (isEmpty!15850 call!143621)))))

(declare-fun bs!460432 () Bool)

(assert (= bs!460432 d!693489))

(declare-fun m!2771741 () Bool)

(assert (=> bs!460432 m!2771741))

(assert (=> bm!143611 d!693489))

(assert (=> d!693465 d!693479))

(assert (=> d!693465 d!693477))

(declare-fun bs!460433 () Bool)

(declare-fun d!693491 () Bool)

(assert (= bs!460433 (and d!693491 b!2359076)))

(declare-fun lambda!86735 () Int)

(assert (=> bs!460433 (= lambda!86735 lambda!86729)))

(declare-fun bs!460434 () Bool)

(assert (= bs!460434 (and d!693491 b!2359161)))

(assert (=> bs!460434 (= lambda!86735 lambda!86732)))

(declare-fun lt!863890 () ListMap!915)

(declare-fun invariantList!398 (List!27991) Bool)

(assert (=> d!693491 (invariantList!398 (toList!1427 lt!863890))))

(declare-fun e!1506898 () ListMap!915)

(assert (=> d!693491 (= lt!863890 e!1506898)))

(declare-fun c!375022 () Bool)

(assert (=> d!693491 (= c!375022 ((_ is Cons!27894) (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))))))

(assert (=> d!693491 (forall!5530 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) lambda!86735)))

(assert (=> d!693491 (= (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))) lt!863890)))

(declare-fun b!2359182 () Bool)

(declare-fun addToMapMapFromBucket!12 (List!27991 ListMap!915) ListMap!915)

(assert (=> b!2359182 (= e!1506898 (addToMapMapFromBucket!12 (_2!16361 (h!33295 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) (extractMap!133 (t!207867 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))))))))

(declare-fun b!2359183 () Bool)

(assert (=> b!2359183 (= e!1506898 (ListMap!916 Nil!27893))))

(assert (= (and d!693491 c!375022) b!2359182))

(assert (= (and d!693491 (not c!375022)) b!2359183))

(declare-fun m!2771743 () Bool)

(assert (=> d!693491 m!2771743))

(declare-fun m!2771745 () Bool)

(assert (=> d!693491 m!2771745))

(declare-fun m!2771747 () Bool)

(assert (=> b!2359182 m!2771747))

(assert (=> b!2359182 m!2771747))

(declare-fun m!2771749 () Bool)

(assert (=> b!2359182 m!2771749))

(assert (=> d!693465 d!693491))

(declare-fun d!693493 () Bool)

(declare-fun lt!863893 () ListMap!915)

(assert (=> d!693493 (invariantList!398 (toList!1427 lt!863893))))

(assert (=> d!693493 (= lt!863893 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))))))

(assert (=> d!693493 (valid!2437 thiss!47689)))

(assert (=> d!693493 (= (map!5776 thiss!47689) lt!863893)))

(declare-fun bs!460435 () Bool)

(assert (= bs!460435 d!693493))

(declare-fun m!2771751 () Bool)

(assert (=> bs!460435 m!2771751))

(assert (=> bs!460435 m!2771617))

(assert (=> bs!460435 m!2771659))

(assert (=> bs!460435 m!2771613))

(assert (=> d!693465 d!693493))

(declare-fun d!693495 () Bool)

(declare-fun hash!602 (Hashable!3152 K!4977) (_ BitVec 64))

(assert (=> d!693495 (= (hash!601 (hashF!5081 thiss!47689) key!7131) (hash!602 (hashF!5081 thiss!47689) key!7131))))

(declare-fun bs!460436 () Bool)

(assert (= bs!460436 d!693495))

(declare-fun m!2771753 () Bool)

(assert (=> bs!460436 m!2771753))

(assert (=> d!693465 d!693495))

(declare-fun b!2359184 () Bool)

(declare-fun e!1506901 () Bool)

(assert (=> b!2359184 (= e!1506901 (contains!4869 (keys!8762 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) key!7131))))

(declare-fun bm!143620 () Bool)

(declare-fun call!143625 () Bool)

(declare-fun e!1506904 () List!27993)

(assert (=> bm!143620 (= call!143625 (contains!4869 e!1506904 key!7131))))

(declare-fun c!375023 () Bool)

(declare-fun c!375024 () Bool)

(assert (=> bm!143620 (= c!375023 c!375024)))

(declare-fun b!2359185 () Bool)

(declare-fun e!1506903 () Unit!40801)

(declare-fun e!1506902 () Unit!40801)

(assert (=> b!2359185 (= e!1506903 e!1506902)))

(declare-fun c!375025 () Bool)

(assert (=> b!2359185 (= c!375025 call!143625)))

(declare-fun b!2359186 () Bool)

(declare-fun lt!863898 () Unit!40801)

(assert (=> b!2359186 (= e!1506903 lt!863898)))

(declare-fun lt!863901 () Unit!40801)

(assert (=> b!2359186 (= lt!863901 (lemmaContainsKeyImpliesGetValueByKeyDefined!75 (toList!1427 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) key!7131))))

(assert (=> b!2359186 (isDefined!4275 (getValueByKey!118 (toList!1427 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) key!7131))))

(declare-fun lt!863896 () Unit!40801)

(assert (=> b!2359186 (= lt!863896 lt!863901)))

(assert (=> b!2359186 (= lt!863898 (lemmaInListThenGetKeysListContains!11 (toList!1427 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) key!7131))))

(assert (=> b!2359186 call!143625))

(declare-fun b!2359187 () Bool)

(declare-fun e!1506899 () Bool)

(assert (=> b!2359187 (= e!1506899 (not (contains!4869 (keys!8762 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) key!7131)))))

(declare-fun b!2359188 () Bool)

(assert (=> b!2359188 false))

(declare-fun lt!863897 () Unit!40801)

(declare-fun lt!863899 () Unit!40801)

(assert (=> b!2359188 (= lt!863897 lt!863899)))

(assert (=> b!2359188 (containsKey!107 (toList!1427 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) key!7131)))

(assert (=> b!2359188 (= lt!863899 (lemmaInGetKeysListThenContainsKey!11 (toList!1427 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) key!7131))))

(declare-fun Unit!40811 () Unit!40801)

(assert (=> b!2359188 (= e!1506902 Unit!40811)))

(declare-fun b!2359189 () Bool)

(declare-fun Unit!40812 () Unit!40801)

(assert (=> b!2359189 (= e!1506902 Unit!40812)))

(declare-fun b!2359191 () Bool)

(assert (=> b!2359191 (= e!1506904 (getKeysList!14 (toList!1427 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))))))))

(declare-fun b!2359192 () Bool)

(declare-fun e!1506900 () Bool)

(assert (=> b!2359192 (= e!1506900 e!1506901)))

(declare-fun res!1001221 () Bool)

(assert (=> b!2359192 (=> (not res!1001221) (not e!1506901))))

(assert (=> b!2359192 (= res!1001221 (isDefined!4275 (getValueByKey!118 (toList!1427 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) key!7131)))))

(declare-fun b!2359190 () Bool)

(assert (=> b!2359190 (= e!1506904 (keys!8762 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))))))

(declare-fun d!693497 () Bool)

(assert (=> d!693497 e!1506900))

(declare-fun res!1001222 () Bool)

(assert (=> d!693497 (=> res!1001222 e!1506900)))

(assert (=> d!693497 (= res!1001222 e!1506899)))

(declare-fun res!1001223 () Bool)

(assert (=> d!693497 (=> (not res!1001223) (not e!1506899))))

(declare-fun lt!863900 () Bool)

(assert (=> d!693497 (= res!1001223 (not lt!863900))))

(declare-fun lt!863895 () Bool)

(assert (=> d!693497 (= lt!863900 lt!863895)))

(declare-fun lt!863894 () Unit!40801)

(assert (=> d!693497 (= lt!863894 e!1506903)))

(assert (=> d!693497 (= c!375024 lt!863895)))

(assert (=> d!693497 (= lt!863895 (containsKey!107 (toList!1427 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))))) key!7131))))

(assert (=> d!693497 (= (contains!4865 (extractMap!133 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))) key!7131) lt!863900)))

(assert (= (and d!693497 c!375024) b!2359186))

(assert (= (and d!693497 (not c!375024)) b!2359185))

(assert (= (and b!2359185 c!375025) b!2359188))

(assert (= (and b!2359185 (not c!375025)) b!2359189))

(assert (= (or b!2359186 b!2359185) bm!143620))

(assert (= (and bm!143620 c!375023) b!2359191))

(assert (= (and bm!143620 (not c!375023)) b!2359190))

(assert (= (and d!693497 res!1001223) b!2359187))

(assert (= (and d!693497 (not res!1001222)) b!2359192))

(assert (= (and b!2359192 res!1001221) b!2359184))

(declare-fun m!2771755 () Bool)

(assert (=> b!2359188 m!2771755))

(declare-fun m!2771757 () Bool)

(assert (=> b!2359188 m!2771757))

(assert (=> d!693497 m!2771755))

(declare-fun m!2771759 () Bool)

(assert (=> bm!143620 m!2771759))

(assert (=> b!2359184 m!2771659))

(declare-fun m!2771761 () Bool)

(assert (=> b!2359184 m!2771761))

(assert (=> b!2359184 m!2771761))

(declare-fun m!2771763 () Bool)

(assert (=> b!2359184 m!2771763))

(declare-fun m!2771765 () Bool)

(assert (=> b!2359186 m!2771765))

(declare-fun m!2771767 () Bool)

(assert (=> b!2359186 m!2771767))

(assert (=> b!2359186 m!2771767))

(declare-fun m!2771769 () Bool)

(assert (=> b!2359186 m!2771769))

(declare-fun m!2771771 () Bool)

(assert (=> b!2359186 m!2771771))

(assert (=> b!2359187 m!2771659))

(assert (=> b!2359187 m!2771761))

(assert (=> b!2359187 m!2771761))

(assert (=> b!2359187 m!2771763))

(assert (=> b!2359190 m!2771659))

(assert (=> b!2359190 m!2771761))

(declare-fun m!2771773 () Bool)

(assert (=> b!2359191 m!2771773))

(assert (=> b!2359192 m!2771767))

(assert (=> b!2359192 m!2771767))

(assert (=> b!2359192 m!2771769))

(assert (=> d!693465 d!693497))

(declare-fun b!2359193 () Bool)

(declare-fun e!1506907 () Bool)

(assert (=> b!2359193 (= e!1506907 (contains!4869 (keys!8762 (map!5776 thiss!47689)) key!7131))))

(declare-fun bm!143621 () Bool)

(declare-fun call!143626 () Bool)

(declare-fun e!1506910 () List!27993)

(assert (=> bm!143621 (= call!143626 (contains!4869 e!1506910 key!7131))))

(declare-fun c!375026 () Bool)

(declare-fun c!375027 () Bool)

(assert (=> bm!143621 (= c!375026 c!375027)))

(declare-fun b!2359194 () Bool)

(declare-fun e!1506909 () Unit!40801)

(declare-fun e!1506908 () Unit!40801)

(assert (=> b!2359194 (= e!1506909 e!1506908)))

(declare-fun c!375028 () Bool)

(assert (=> b!2359194 (= c!375028 call!143626)))

(declare-fun b!2359195 () Bool)

(declare-fun lt!863906 () Unit!40801)

(assert (=> b!2359195 (= e!1506909 lt!863906)))

(declare-fun lt!863909 () Unit!40801)

(assert (=> b!2359195 (= lt!863909 (lemmaContainsKeyImpliesGetValueByKeyDefined!75 (toList!1427 (map!5776 thiss!47689)) key!7131))))

(assert (=> b!2359195 (isDefined!4275 (getValueByKey!118 (toList!1427 (map!5776 thiss!47689)) key!7131))))

(declare-fun lt!863904 () Unit!40801)

(assert (=> b!2359195 (= lt!863904 lt!863909)))

(assert (=> b!2359195 (= lt!863906 (lemmaInListThenGetKeysListContains!11 (toList!1427 (map!5776 thiss!47689)) key!7131))))

(assert (=> b!2359195 call!143626))

(declare-fun b!2359196 () Bool)

(declare-fun e!1506905 () Bool)

(assert (=> b!2359196 (= e!1506905 (not (contains!4869 (keys!8762 (map!5776 thiss!47689)) key!7131)))))

(declare-fun b!2359197 () Bool)

(assert (=> b!2359197 false))

(declare-fun lt!863905 () Unit!40801)

(declare-fun lt!863907 () Unit!40801)

(assert (=> b!2359197 (= lt!863905 lt!863907)))

(assert (=> b!2359197 (containsKey!107 (toList!1427 (map!5776 thiss!47689)) key!7131)))

(assert (=> b!2359197 (= lt!863907 (lemmaInGetKeysListThenContainsKey!11 (toList!1427 (map!5776 thiss!47689)) key!7131))))

(declare-fun Unit!40813 () Unit!40801)

(assert (=> b!2359197 (= e!1506908 Unit!40813)))

(declare-fun b!2359198 () Bool)

(declare-fun Unit!40814 () Unit!40801)

(assert (=> b!2359198 (= e!1506908 Unit!40814)))

(declare-fun b!2359200 () Bool)

(assert (=> b!2359200 (= e!1506910 (getKeysList!14 (toList!1427 (map!5776 thiss!47689))))))

(declare-fun b!2359201 () Bool)

(declare-fun e!1506906 () Bool)

(assert (=> b!2359201 (= e!1506906 e!1506907)))

(declare-fun res!1001224 () Bool)

(assert (=> b!2359201 (=> (not res!1001224) (not e!1506907))))

(assert (=> b!2359201 (= res!1001224 (isDefined!4275 (getValueByKey!118 (toList!1427 (map!5776 thiss!47689)) key!7131)))))

(declare-fun b!2359199 () Bool)

(assert (=> b!2359199 (= e!1506910 (keys!8762 (map!5776 thiss!47689)))))

(declare-fun d!693499 () Bool)

(assert (=> d!693499 e!1506906))

(declare-fun res!1001225 () Bool)

(assert (=> d!693499 (=> res!1001225 e!1506906)))

(assert (=> d!693499 (= res!1001225 e!1506905)))

(declare-fun res!1001226 () Bool)

(assert (=> d!693499 (=> (not res!1001226) (not e!1506905))))

(declare-fun lt!863908 () Bool)

(assert (=> d!693499 (= res!1001226 (not lt!863908))))

(declare-fun lt!863903 () Bool)

(assert (=> d!693499 (= lt!863908 lt!863903)))

(declare-fun lt!863902 () Unit!40801)

(assert (=> d!693499 (= lt!863902 e!1506909)))

(assert (=> d!693499 (= c!375027 lt!863903)))

(assert (=> d!693499 (= lt!863903 (containsKey!107 (toList!1427 (map!5776 thiss!47689)) key!7131))))

(assert (=> d!693499 (= (contains!4865 (map!5776 thiss!47689) key!7131) lt!863908)))

(assert (= (and d!693499 c!375027) b!2359195))

(assert (= (and d!693499 (not c!375027)) b!2359194))

(assert (= (and b!2359194 c!375028) b!2359197))

(assert (= (and b!2359194 (not c!375028)) b!2359198))

(assert (= (or b!2359195 b!2359194) bm!143621))

(assert (= (and bm!143621 c!375026) b!2359200))

(assert (= (and bm!143621 (not c!375026)) b!2359199))

(assert (= (and d!693499 res!1001226) b!2359196))

(assert (= (and d!693499 (not res!1001225)) b!2359201))

(assert (= (and b!2359201 res!1001224) b!2359193))

(declare-fun m!2771775 () Bool)

(assert (=> b!2359197 m!2771775))

(declare-fun m!2771777 () Bool)

(assert (=> b!2359197 m!2771777))

(assert (=> d!693499 m!2771775))

(declare-fun m!2771779 () Bool)

(assert (=> bm!143621 m!2771779))

(assert (=> b!2359193 m!2771663))

(declare-fun m!2771781 () Bool)

(assert (=> b!2359193 m!2771781))

(assert (=> b!2359193 m!2771781))

(declare-fun m!2771783 () Bool)

(assert (=> b!2359193 m!2771783))

(declare-fun m!2771785 () Bool)

(assert (=> b!2359195 m!2771785))

(declare-fun m!2771787 () Bool)

(assert (=> b!2359195 m!2771787))

(assert (=> b!2359195 m!2771787))

(declare-fun m!2771789 () Bool)

(assert (=> b!2359195 m!2771789))

(declare-fun m!2771791 () Bool)

(assert (=> b!2359195 m!2771791))

(assert (=> b!2359196 m!2771663))

(assert (=> b!2359196 m!2771781))

(assert (=> b!2359196 m!2771781))

(assert (=> b!2359196 m!2771783))

(assert (=> b!2359199 m!2771663))

(assert (=> b!2359199 m!2771781))

(declare-fun m!2771793 () Bool)

(assert (=> b!2359200 m!2771793))

(assert (=> b!2359201 m!2771787))

(assert (=> b!2359201 m!2771787))

(assert (=> b!2359201 m!2771789))

(assert (=> d!693465 d!693499))

(declare-fun d!693501 () Bool)

(declare-fun lt!863912 () Bool)

(assert (=> d!693501 (= lt!863912 (contains!4868 (map!5777 (v!30831 (underlying!6690 thiss!47689))) lt!863837))))

(declare-fun contains!4871 (LongMapFixedSize!6484 (_ BitVec 64)) Bool)

(assert (=> d!693501 (= lt!863912 (contains!4871 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))) lt!863837))))

(assert (=> d!693501 (valid!2438 (v!30831 (underlying!6690 thiss!47689)))))

(assert (=> d!693501 (= (contains!4866 (v!30831 (underlying!6690 thiss!47689)) lt!863837) lt!863912)))

(declare-fun bs!460437 () Bool)

(assert (= bs!460437 d!693501))

(assert (=> bs!460437 m!2771617))

(assert (=> bs!460437 m!2771617))

(declare-fun m!2771795 () Bool)

(assert (=> bs!460437 m!2771795))

(declare-fun m!2771797 () Bool)

(assert (=> bs!460437 m!2771797))

(assert (=> bs!460437 m!2771713))

(assert (=> d!693465 d!693501))

(declare-fun d!693503 () Bool)

(assert (=> d!693503 (containsKey!106 lt!863839 lt!863837)))

(declare-fun lt!863915 () Unit!40801)

(declare-fun choose!13670 (List!27992 (_ BitVec 64)) Unit!40801)

(assert (=> d!693503 (= lt!863915 (choose!13670 lt!863839 lt!863837))))

(declare-fun e!1506913 () Bool)

(assert (=> d!693503 e!1506913))

(declare-fun res!1001229 () Bool)

(assert (=> d!693503 (=> (not res!1001229) (not e!1506913))))

(declare-fun isStrictlySorted!8 (List!27992) Bool)

(assert (=> d!693503 (= res!1001229 (isStrictlySorted!8 lt!863839))))

(assert (=> d!693503 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!54 lt!863839 lt!863837) lt!863915)))

(declare-fun b!2359204 () Bool)

(assert (=> b!2359204 (= e!1506913 (isDefined!4274 (getValueByKey!117 lt!863839 lt!863837)))))

(assert (= (and d!693503 res!1001229) b!2359204))

(assert (=> d!693503 m!2771653))

(declare-fun m!2771799 () Bool)

(assert (=> d!693503 m!2771799))

(declare-fun m!2771801 () Bool)

(assert (=> d!693503 m!2771801))

(declare-fun m!2771803 () Bool)

(assert (=> b!2359204 m!2771803))

(assert (=> b!2359204 m!2771803))

(declare-fun m!2771805 () Bool)

(assert (=> b!2359204 m!2771805))

(assert (=> b!2359069 d!693503))

(declare-fun d!693505 () Bool)

(declare-fun lt!863918 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3785 (List!27992) (InoxSet tuple2!27640))

(assert (=> d!693505 (= lt!863918 (select (content!3785 lt!863827) (tuple2!27641 lt!863837 lt!863843)))))

(declare-fun e!1506919 () Bool)

(assert (=> d!693505 (= lt!863918 e!1506919)))

(declare-fun res!1001235 () Bool)

(assert (=> d!693505 (=> (not res!1001235) (not e!1506919))))

(assert (=> d!693505 (= res!1001235 ((_ is Cons!27894) lt!863827))))

(assert (=> d!693505 (= (contains!4867 lt!863827 (tuple2!27641 lt!863837 lt!863843)) lt!863918)))

(declare-fun b!2359209 () Bool)

(declare-fun e!1506918 () Bool)

(assert (=> b!2359209 (= e!1506919 e!1506918)))

(declare-fun res!1001234 () Bool)

(assert (=> b!2359209 (=> res!1001234 e!1506918)))

(assert (=> b!2359209 (= res!1001234 (= (h!33295 lt!863827) (tuple2!27641 lt!863837 lt!863843)))))

(declare-fun b!2359210 () Bool)

(assert (=> b!2359210 (= e!1506918 (contains!4867 (t!207867 lt!863827) (tuple2!27641 lt!863837 lt!863843)))))

(assert (= (and d!693505 res!1001235) b!2359209))

(assert (= (and b!2359209 (not res!1001234)) b!2359210))

(declare-fun m!2771807 () Bool)

(assert (=> d!693505 m!2771807))

(declare-fun m!2771809 () Bool)

(assert (=> d!693505 m!2771809))

(declare-fun m!2771811 () Bool)

(assert (=> b!2359210 m!2771811))

(assert (=> b!2359069 d!693505))

(declare-fun d!693507 () Bool)

(declare-fun isEmpty!15851 (Option!5444) Bool)

(assert (=> d!693507 (= (isDefined!4274 (getValueByKey!117 lt!863845 lt!863837)) (not (isEmpty!15851 (getValueByKey!117 lt!863845 lt!863837))))))

(declare-fun bs!460438 () Bool)

(assert (= bs!460438 d!693507))

(assert (=> bs!460438 m!2771645))

(declare-fun m!2771813 () Bool)

(assert (=> bs!460438 m!2771813))

(assert (=> b!2359069 d!693507))

(assert (=> b!2359069 d!693477))

(declare-fun d!693509 () Bool)

(declare-fun res!1001240 () Bool)

(declare-fun e!1506924 () Bool)

(assert (=> d!693509 (=> res!1001240 e!1506924)))

(assert (=> d!693509 (= res!1001240 (and ((_ is Cons!27894) lt!863839) (= (_1!16361 (h!33295 lt!863839)) lt!863837)))))

(assert (=> d!693509 (= (containsKey!106 lt!863839 lt!863837) e!1506924)))

(declare-fun b!2359215 () Bool)

(declare-fun e!1506925 () Bool)

(assert (=> b!2359215 (= e!1506924 e!1506925)))

(declare-fun res!1001241 () Bool)

(assert (=> b!2359215 (=> (not res!1001241) (not e!1506925))))

(assert (=> b!2359215 (= res!1001241 (and (or (not ((_ is Cons!27894) lt!863839)) (bvsle (_1!16361 (h!33295 lt!863839)) lt!863837)) ((_ is Cons!27894) lt!863839) (bvslt (_1!16361 (h!33295 lt!863839)) lt!863837)))))

(declare-fun b!2359216 () Bool)

(assert (=> b!2359216 (= e!1506925 (containsKey!106 (t!207867 lt!863839) lt!863837))))

(assert (= (and d!693509 (not res!1001240)) b!2359215))

(assert (= (and b!2359215 res!1001241) b!2359216))

(declare-fun m!2771815 () Bool)

(assert (=> b!2359216 m!2771815))

(assert (=> b!2359069 d!693509))

(assert (=> b!2359069 d!693475))

(declare-fun d!693511 () Bool)

(assert (=> d!693511 (isDefined!4274 (getValueByKey!117 lt!863845 lt!863837))))

(declare-fun lt!863921 () Unit!40801)

(declare-fun choose!13671 (List!27992 (_ BitVec 64)) Unit!40801)

(assert (=> d!693511 (= lt!863921 (choose!13671 lt!863845 lt!863837))))

(declare-fun e!1506928 () Bool)

(assert (=> d!693511 e!1506928))

(declare-fun res!1001244 () Bool)

(assert (=> d!693511 (=> (not res!1001244) (not e!1506928))))

(assert (=> d!693511 (= res!1001244 (isStrictlySorted!8 lt!863845))))

(assert (=> d!693511 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!74 lt!863845 lt!863837) lt!863921)))

(declare-fun b!2359219 () Bool)

(assert (=> b!2359219 (= e!1506928 (containsKey!106 lt!863845 lt!863837))))

(assert (= (and d!693511 res!1001244) b!2359219))

(assert (=> d!693511 m!2771645))

(assert (=> d!693511 m!2771645))

(assert (=> d!693511 m!2771647))

(declare-fun m!2771817 () Bool)

(assert (=> d!693511 m!2771817))

(declare-fun m!2771819 () Bool)

(assert (=> d!693511 m!2771819))

(declare-fun m!2771821 () Bool)

(assert (=> b!2359219 m!2771821))

(assert (=> b!2359069 d!693511))

(declare-fun d!693513 () Bool)

(assert (=> d!693513 (contains!4867 lt!863827 (tuple2!27641 lt!863837 lt!863843))))

(declare-fun lt!863924 () Unit!40801)

(declare-fun choose!13672 (List!27992 (_ BitVec 64) List!27991) Unit!40801)

(assert (=> d!693513 (= lt!863924 (choose!13672 lt!863827 lt!863837 lt!863843))))

(declare-fun e!1506931 () Bool)

(assert (=> d!693513 e!1506931))

(declare-fun res!1001247 () Bool)

(assert (=> d!693513 (=> (not res!1001247) (not e!1506931))))

(assert (=> d!693513 (= res!1001247 (isStrictlySorted!8 lt!863827))))

(assert (=> d!693513 (= (lemmaGetValueByKeyImpliesContainsTuple!54 lt!863827 lt!863837 lt!863843) lt!863924)))

(declare-fun b!2359222 () Bool)

(assert (=> b!2359222 (= e!1506931 (= (getValueByKey!117 lt!863827 lt!863837) (Some!5443 lt!863843)))))

(assert (= (and d!693513 res!1001247) b!2359222))

(assert (=> d!693513 m!2771649))

(declare-fun m!2771823 () Bool)

(assert (=> d!693513 m!2771823))

(declare-fun m!2771825 () Bool)

(assert (=> d!693513 m!2771825))

(declare-fun m!2771827 () Bool)

(assert (=> b!2359222 m!2771827))

(assert (=> b!2359069 d!693513))

(declare-fun d!693515 () Bool)

(declare-fun c!375033 () Bool)

(assert (=> d!693515 (= c!375033 (and ((_ is Cons!27894) lt!863845) (= (_1!16361 (h!33295 lt!863845)) lt!863837)))))

(declare-fun e!1506936 () Option!5444)

(assert (=> d!693515 (= (getValueByKey!117 lt!863845 lt!863837) e!1506936)))

(declare-fun b!2359232 () Bool)

(declare-fun e!1506937 () Option!5444)

(assert (=> b!2359232 (= e!1506936 e!1506937)))

(declare-fun c!375034 () Bool)

(assert (=> b!2359232 (= c!375034 (and ((_ is Cons!27894) lt!863845) (not (= (_1!16361 (h!33295 lt!863845)) lt!863837))))))

(declare-fun b!2359234 () Bool)

(assert (=> b!2359234 (= e!1506937 None!5443)))

(declare-fun b!2359233 () Bool)

(assert (=> b!2359233 (= e!1506937 (getValueByKey!117 (t!207867 lt!863845) lt!863837))))

(declare-fun b!2359231 () Bool)

(assert (=> b!2359231 (= e!1506936 (Some!5443 (_2!16361 (h!33295 lt!863845))))))

(assert (= (and d!693515 c!375033) b!2359231))

(assert (= (and d!693515 (not c!375033)) b!2359232))

(assert (= (and b!2359232 c!375034) b!2359233))

(assert (= (and b!2359232 (not c!375034)) b!2359234))

(declare-fun m!2771829 () Bool)

(assert (=> b!2359233 m!2771829))

(assert (=> b!2359069 d!693515))

(assert (=> bm!143612 d!693495))

(declare-fun d!693517 () Bool)

(declare-fun lt!863927 () Bool)

(declare-fun content!3786 (List!27993) (InoxSet K!4977))

(assert (=> d!693517 (= lt!863927 (select (content!3786 (keys!8762 (abstractMap!103 thiss!47689))) key!7131))))

(declare-fun e!1506943 () Bool)

(assert (=> d!693517 (= lt!863927 e!1506943)))

(declare-fun res!1001253 () Bool)

(assert (=> d!693517 (=> (not res!1001253) (not e!1506943))))

(assert (=> d!693517 (= res!1001253 ((_ is Cons!27895) (keys!8762 (abstractMap!103 thiss!47689))))))

(assert (=> d!693517 (= (contains!4869 (keys!8762 (abstractMap!103 thiss!47689)) key!7131) lt!863927)))

(declare-fun b!2359239 () Bool)

(declare-fun e!1506942 () Bool)

(assert (=> b!2359239 (= e!1506943 e!1506942)))

(declare-fun res!1001252 () Bool)

(assert (=> b!2359239 (=> res!1001252 e!1506942)))

(assert (=> b!2359239 (= res!1001252 (= (h!33296 (keys!8762 (abstractMap!103 thiss!47689))) key!7131))))

(declare-fun b!2359240 () Bool)

(assert (=> b!2359240 (= e!1506942 (contains!4869 (t!207868 (keys!8762 (abstractMap!103 thiss!47689))) key!7131))))

(assert (= (and d!693517 res!1001253) b!2359239))

(assert (= (and b!2359239 (not res!1001252)) b!2359240))

(assert (=> d!693517 m!2771675))

(declare-fun m!2771831 () Bool)

(assert (=> d!693517 m!2771831))

(declare-fun m!2771833 () Bool)

(assert (=> d!693517 m!2771833))

(declare-fun m!2771835 () Bool)

(assert (=> b!2359240 m!2771835))

(assert (=> b!2359099 d!693517))

(declare-fun b!2359248 () Bool)

(assert (=> b!2359248 true))

(declare-fun d!693519 () Bool)

(declare-fun e!1506946 () Bool)

(assert (=> d!693519 e!1506946))

(declare-fun res!1001261 () Bool)

(assert (=> d!693519 (=> (not res!1001261) (not e!1506946))))

(declare-fun lt!863930 () List!27993)

(declare-fun noDuplicate!318 (List!27993) Bool)

(assert (=> d!693519 (= res!1001261 (noDuplicate!318 lt!863930))))

(assert (=> d!693519 (= lt!863930 (getKeysList!14 (toList!1427 (abstractMap!103 thiss!47689))))))

(assert (=> d!693519 (= (keys!8762 (abstractMap!103 thiss!47689)) lt!863930)))

(declare-fun b!2359247 () Bool)

(declare-fun res!1001260 () Bool)

(assert (=> b!2359247 (=> (not res!1001260) (not e!1506946))))

(declare-fun length!18 (List!27993) Int)

(declare-fun length!19 (List!27991) Int)

(assert (=> b!2359247 (= res!1001260 (= (length!18 lt!863930) (length!19 (toList!1427 (abstractMap!103 thiss!47689)))))))

(declare-fun res!1001262 () Bool)

(assert (=> b!2359248 (=> (not res!1001262) (not e!1506946))))

(declare-fun lambda!86740 () Int)

(declare-fun forall!5531 (List!27993 Int) Bool)

(assert (=> b!2359248 (= res!1001262 (forall!5531 lt!863930 lambda!86740))))

(declare-fun lambda!86741 () Int)

(declare-fun b!2359249 () Bool)

(declare-fun map!5779 (List!27991 Int) List!27993)

(assert (=> b!2359249 (= e!1506946 (= (content!3786 lt!863930) (content!3786 (map!5779 (toList!1427 (abstractMap!103 thiss!47689)) lambda!86741))))))

(assert (= (and d!693519 res!1001261) b!2359247))

(assert (= (and b!2359247 res!1001260) b!2359248))

(assert (= (and b!2359248 res!1001262) b!2359249))

(declare-fun m!2771837 () Bool)

(assert (=> d!693519 m!2771837))

(assert (=> d!693519 m!2771687))

(declare-fun m!2771839 () Bool)

(assert (=> b!2359247 m!2771839))

(declare-fun m!2771841 () Bool)

(assert (=> b!2359247 m!2771841))

(declare-fun m!2771843 () Bool)

(assert (=> b!2359248 m!2771843))

(declare-fun m!2771845 () Bool)

(assert (=> b!2359249 m!2771845))

(declare-fun m!2771847 () Bool)

(assert (=> b!2359249 m!2771847))

(assert (=> b!2359249 m!2771847))

(declare-fun m!2771849 () Bool)

(assert (=> b!2359249 m!2771849))

(assert (=> b!2359099 d!693519))

(declare-fun bs!460439 () Bool)

(declare-fun d!693521 () Bool)

(assert (= bs!460439 (and d!693521 b!2359076)))

(declare-fun lambda!86744 () Int)

(assert (=> bs!460439 (= lambda!86744 lambda!86729)))

(declare-fun bs!460440 () Bool)

(assert (= bs!460440 (and d!693521 b!2359161)))

(assert (=> bs!460440 (= lambda!86744 lambda!86732)))

(declare-fun bs!460441 () Bool)

(assert (= bs!460441 (and d!693521 d!693491)))

(assert (=> bs!460441 (= lambda!86744 lambda!86735)))

(declare-fun e!1506949 () Bool)

(assert (=> d!693521 e!1506949))

(declare-fun res!1001265 () Bool)

(assert (=> d!693521 (=> (not res!1001265) (not e!1506949))))

(assert (=> d!693521 (= res!1001265 (contains!4868 lt!863841 (hash!601 (hashF!5081 thiss!47689) key!7131)))))

(declare-fun lt!863933 () Unit!40801)

(declare-fun choose!13673 (ListLongMap!377 K!4977 Hashable!3152) Unit!40801)

(assert (=> d!693521 (= lt!863933 (choose!13673 lt!863841 key!7131 (hashF!5081 thiss!47689)))))

(assert (=> d!693521 (forall!5530 (toList!1428 lt!863841) lambda!86744)))

(assert (=> d!693521 (= (lemmaInGenericMapThenInLongMap!53 lt!863841 key!7131 (hashF!5081 thiss!47689)) lt!863933)))

(declare-fun b!2359254 () Bool)

(assert (=> b!2359254 (= e!1506949 (isDefined!4273 (getPair!53 (apply!6707 lt!863841 (hash!601 (hashF!5081 thiss!47689) key!7131)) key!7131)))))

(assert (= (and d!693521 res!1001265) b!2359254))

(assert (=> d!693521 m!2771615))

(assert (=> d!693521 m!2771615))

(declare-fun m!2771851 () Bool)

(assert (=> d!693521 m!2771851))

(declare-fun m!2771853 () Bool)

(assert (=> d!693521 m!2771853))

(declare-fun m!2771855 () Bool)

(assert (=> d!693521 m!2771855))

(assert (=> b!2359254 m!2771615))

(assert (=> b!2359254 m!2771615))

(declare-fun m!2771857 () Bool)

(assert (=> b!2359254 m!2771857))

(assert (=> b!2359254 m!2771857))

(declare-fun m!2771859 () Bool)

(assert (=> b!2359254 m!2771859))

(assert (=> b!2359254 m!2771859))

(declare-fun m!2771861 () Bool)

(assert (=> b!2359254 m!2771861))

(assert (=> b!2359077 d!693521))

(assert (=> b!2359100 d!693483))

(declare-fun d!693523 () Bool)

(assert (=> d!693523 (containsKey!107 (toList!1427 (abstractMap!103 thiss!47689)) key!7131)))

(declare-fun lt!863936 () Unit!40801)

(declare-fun choose!13674 (List!27991 K!4977) Unit!40801)

(assert (=> d!693523 (= lt!863936 (choose!13674 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))

(assert (=> d!693523 (invariantList!398 (toList!1427 (abstractMap!103 thiss!47689)))))

(assert (=> d!693523 (= (lemmaInGetKeysListThenContainsKey!11 (toList!1427 (abstractMap!103 thiss!47689)) key!7131) lt!863936)))

(declare-fun bs!460442 () Bool)

(assert (= bs!460442 d!693523))

(assert (=> bs!460442 m!2771669))

(declare-fun m!2771863 () Bool)

(assert (=> bs!460442 m!2771863))

(declare-fun m!2771865 () Bool)

(assert (=> bs!460442 m!2771865))

(assert (=> b!2359100 d!693523))

(declare-fun bs!460443 () Bool)

(declare-fun b!2359276 () Bool)

(assert (= bs!460443 (and b!2359276 b!2359248)))

(declare-fun lambda!86753 () Int)

(assert (=> bs!460443 (= (= (t!207866 (toList!1427 (abstractMap!103 thiss!47689))) (toList!1427 (abstractMap!103 thiss!47689))) (= lambda!86753 lambda!86740))))

(assert (=> b!2359276 true))

(declare-fun bs!460444 () Bool)

(declare-fun b!2359280 () Bool)

(assert (= bs!460444 (and b!2359280 b!2359248)))

(declare-fun lambda!86754 () Int)

(assert (=> bs!460444 (= (= (Cons!27893 (h!33294 (toList!1427 (abstractMap!103 thiss!47689))) (t!207866 (toList!1427 (abstractMap!103 thiss!47689)))) (toList!1427 (abstractMap!103 thiss!47689))) (= lambda!86754 lambda!86740))))

(declare-fun bs!460445 () Bool)

(assert (= bs!460445 (and b!2359280 b!2359276)))

(assert (=> bs!460445 (= (= (Cons!27893 (h!33294 (toList!1427 (abstractMap!103 thiss!47689))) (t!207866 (toList!1427 (abstractMap!103 thiss!47689)))) (t!207866 (toList!1427 (abstractMap!103 thiss!47689)))) (= lambda!86754 lambda!86753))))

(assert (=> b!2359280 true))

(declare-fun bs!460446 () Bool)

(declare-fun b!2359275 () Bool)

(assert (= bs!460446 (and b!2359275 b!2359248)))

(declare-fun lambda!86755 () Int)

(assert (=> bs!460446 (= lambda!86755 lambda!86740)))

(declare-fun bs!460447 () Bool)

(assert (= bs!460447 (and b!2359275 b!2359276)))

(assert (=> bs!460447 (= (= (toList!1427 (abstractMap!103 thiss!47689)) (t!207866 (toList!1427 (abstractMap!103 thiss!47689)))) (= lambda!86755 lambda!86753))))

(declare-fun bs!460448 () Bool)

(assert (= bs!460448 (and b!2359275 b!2359280)))

(assert (=> bs!460448 (= (= (toList!1427 (abstractMap!103 thiss!47689)) (Cons!27893 (h!33294 (toList!1427 (abstractMap!103 thiss!47689))) (t!207866 (toList!1427 (abstractMap!103 thiss!47689))))) (= lambda!86755 lambda!86754))))

(assert (=> b!2359275 true))

(declare-fun bs!460449 () Bool)

(declare-fun b!2359278 () Bool)

(assert (= bs!460449 (and b!2359278 b!2359249)))

(declare-fun lambda!86756 () Int)

(assert (=> bs!460449 (= lambda!86756 lambda!86741)))

(declare-fun b!2359273 () Bool)

(declare-fun e!1506961 () List!27993)

(assert (=> b!2359273 (= e!1506961 Nil!27895)))

(declare-fun b!2359274 () Bool)

(declare-fun e!1506958 () Unit!40801)

(declare-fun Unit!40815 () Unit!40801)

(assert (=> b!2359274 (= e!1506958 Unit!40815)))

(declare-fun res!1001273 () Bool)

(declare-fun e!1506959 () Bool)

(assert (=> b!2359275 (=> (not res!1001273) (not e!1506959))))

(declare-fun lt!863956 () List!27993)

(assert (=> b!2359275 (= res!1001273 (forall!5531 lt!863956 lambda!86755))))

(assert (=> b!2359276 false))

(declare-fun lt!863955 () Unit!40801)

(declare-fun forallContained!801 (List!27993 Int K!4977) Unit!40801)

(assert (=> b!2359276 (= lt!863955 (forallContained!801 (getKeysList!14 (t!207866 (toList!1427 (abstractMap!103 thiss!47689)))) lambda!86753 (_1!16360 (h!33294 (toList!1427 (abstractMap!103 thiss!47689))))))))

(declare-fun Unit!40816 () Unit!40801)

(assert (=> b!2359276 (= e!1506958 Unit!40816)))

(declare-fun b!2359277 () Bool)

(declare-fun e!1506960 () Unit!40801)

(declare-fun Unit!40817 () Unit!40801)

(assert (=> b!2359277 (= e!1506960 Unit!40817)))

(assert (=> b!2359278 (= e!1506959 (= (content!3786 lt!863956) (content!3786 (map!5779 (toList!1427 (abstractMap!103 thiss!47689)) lambda!86756))))))

(declare-fun b!2359279 () Bool)

(declare-fun res!1001272 () Bool)

(assert (=> b!2359279 (=> (not res!1001272) (not e!1506959))))

(assert (=> b!2359279 (= res!1001272 (= (length!18 lt!863956) (length!19 (toList!1427 (abstractMap!103 thiss!47689)))))))

(assert (=> b!2359280 (= e!1506961 (Cons!27895 (_1!16360 (h!33294 (toList!1427 (abstractMap!103 thiss!47689)))) (getKeysList!14 (t!207866 (toList!1427 (abstractMap!103 thiss!47689))))))))

(declare-fun c!375043 () Bool)

(assert (=> b!2359280 (= c!375043 (containsKey!107 (t!207866 (toList!1427 (abstractMap!103 thiss!47689))) (_1!16360 (h!33294 (toList!1427 (abstractMap!103 thiss!47689))))))))

(declare-fun lt!863953 () Unit!40801)

(assert (=> b!2359280 (= lt!863953 e!1506960)))

(declare-fun c!375042 () Bool)

(assert (=> b!2359280 (= c!375042 (contains!4869 (getKeysList!14 (t!207866 (toList!1427 (abstractMap!103 thiss!47689)))) (_1!16360 (h!33294 (toList!1427 (abstractMap!103 thiss!47689))))))))

(declare-fun lt!863954 () Unit!40801)

(assert (=> b!2359280 (= lt!863954 e!1506958)))

(declare-fun lt!863952 () List!27993)

(assert (=> b!2359280 (= lt!863952 (getKeysList!14 (t!207866 (toList!1427 (abstractMap!103 thiss!47689)))))))

(declare-fun lt!863957 () Unit!40801)

(declare-fun lemmaForallContainsAddHeadPreserves!5 (List!27991 List!27993 tuple2!27638) Unit!40801)

(assert (=> b!2359280 (= lt!863957 (lemmaForallContainsAddHeadPreserves!5 (t!207866 (toList!1427 (abstractMap!103 thiss!47689))) lt!863952 (h!33294 (toList!1427 (abstractMap!103 thiss!47689)))))))

(assert (=> b!2359280 (forall!5531 lt!863952 lambda!86754)))

(declare-fun lt!863951 () Unit!40801)

(assert (=> b!2359280 (= lt!863951 lt!863957)))

(declare-fun b!2359281 () Bool)

(assert (=> b!2359281 false))

(declare-fun Unit!40818 () Unit!40801)

(assert (=> b!2359281 (= e!1506960 Unit!40818)))

(declare-fun d!693525 () Bool)

(assert (=> d!693525 e!1506959))

(declare-fun res!1001274 () Bool)

(assert (=> d!693525 (=> (not res!1001274) (not e!1506959))))

(assert (=> d!693525 (= res!1001274 (noDuplicate!318 lt!863956))))

(assert (=> d!693525 (= lt!863956 e!1506961)))

(declare-fun c!375041 () Bool)

(assert (=> d!693525 (= c!375041 ((_ is Cons!27893) (toList!1427 (abstractMap!103 thiss!47689))))))

(assert (=> d!693525 (invariantList!398 (toList!1427 (abstractMap!103 thiss!47689)))))

(assert (=> d!693525 (= (getKeysList!14 (toList!1427 (abstractMap!103 thiss!47689))) lt!863956)))

(assert (= (and d!693525 c!375041) b!2359280))

(assert (= (and d!693525 (not c!375041)) b!2359273))

(assert (= (and b!2359280 c!375043) b!2359281))

(assert (= (and b!2359280 (not c!375043)) b!2359277))

(assert (= (and b!2359280 c!375042) b!2359276))

(assert (= (and b!2359280 (not c!375042)) b!2359274))

(assert (= (and d!693525 res!1001274) b!2359279))

(assert (= (and b!2359279 res!1001272) b!2359275))

(assert (= (and b!2359275 res!1001273) b!2359278))

(declare-fun m!2771867 () Bool)

(assert (=> b!2359276 m!2771867))

(assert (=> b!2359276 m!2771867))

(declare-fun m!2771869 () Bool)

(assert (=> b!2359276 m!2771869))

(declare-fun m!2771871 () Bool)

(assert (=> b!2359278 m!2771871))

(declare-fun m!2771873 () Bool)

(assert (=> b!2359278 m!2771873))

(assert (=> b!2359278 m!2771873))

(declare-fun m!2771875 () Bool)

(assert (=> b!2359278 m!2771875))

(declare-fun m!2771877 () Bool)

(assert (=> d!693525 m!2771877))

(assert (=> d!693525 m!2771865))

(declare-fun m!2771879 () Bool)

(assert (=> b!2359280 m!2771879))

(assert (=> b!2359280 m!2771867))

(declare-fun m!2771881 () Bool)

(assert (=> b!2359280 m!2771881))

(declare-fun m!2771883 () Bool)

(assert (=> b!2359280 m!2771883))

(assert (=> b!2359280 m!2771867))

(declare-fun m!2771885 () Bool)

(assert (=> b!2359280 m!2771885))

(declare-fun m!2771887 () Bool)

(assert (=> b!2359279 m!2771887))

(assert (=> b!2359279 m!2771841))

(declare-fun m!2771889 () Bool)

(assert (=> b!2359275 m!2771889))

(assert (=> b!2359103 d!693525))

(declare-fun d!693527 () Bool)

(declare-fun isEmpty!15852 (Option!5445) Bool)

(assert (=> d!693527 (= (isDefined!4275 (getValueByKey!118 (toList!1427 (abstractMap!103 thiss!47689)) key!7131)) (not (isEmpty!15852 (getValueByKey!118 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))))

(declare-fun bs!460450 () Bool)

(assert (= bs!460450 d!693527))

(assert (=> bs!460450 m!2771681))

(declare-fun m!2771891 () Bool)

(assert (=> bs!460450 m!2771891))

(assert (=> b!2359104 d!693527))

(declare-fun b!2359295 () Bool)

(declare-fun e!1506967 () Option!5445)

(assert (=> b!2359295 (= e!1506967 None!5444)))

(declare-fun b!2359294 () Bool)

(assert (=> b!2359294 (= e!1506967 (getValueByKey!118 (t!207866 (toList!1427 (abstractMap!103 thiss!47689))) key!7131))))

(declare-fun d!693529 () Bool)

(declare-fun c!375048 () Bool)

(assert (=> d!693529 (= c!375048 (and ((_ is Cons!27893) (toList!1427 (abstractMap!103 thiss!47689))) (= (_1!16360 (h!33294 (toList!1427 (abstractMap!103 thiss!47689)))) key!7131)))))

(declare-fun e!1506966 () Option!5445)

(assert (=> d!693529 (= (getValueByKey!118 (toList!1427 (abstractMap!103 thiss!47689)) key!7131) e!1506966)))

(declare-fun b!2359292 () Bool)

(assert (=> b!2359292 (= e!1506966 (Some!5444 (_2!16360 (h!33294 (toList!1427 (abstractMap!103 thiss!47689))))))))

(declare-fun b!2359293 () Bool)

(assert (=> b!2359293 (= e!1506966 e!1506967)))

(declare-fun c!375049 () Bool)

(assert (=> b!2359293 (= c!375049 (and ((_ is Cons!27893) (toList!1427 (abstractMap!103 thiss!47689))) (not (= (_1!16360 (h!33294 (toList!1427 (abstractMap!103 thiss!47689)))) key!7131))))))

(assert (= (and d!693529 c!375048) b!2359292))

(assert (= (and d!693529 (not c!375048)) b!2359293))

(assert (= (and b!2359293 c!375049) b!2359294))

(assert (= (and b!2359293 (not c!375049)) b!2359295))

(declare-fun m!2771893 () Bool)

(assert (=> b!2359294 m!2771893))

(assert (=> b!2359104 d!693529))

(assert (=> b!2359102 d!693519))

(assert (=> b!2359096 d!693517))

(assert (=> b!2359096 d!693519))

(declare-fun d!693531 () Bool)

(declare-fun lt!863958 () Bool)

(assert (=> d!693531 (= lt!863958 (select (content!3786 e!1506847) key!7131))))

(declare-fun e!1506969 () Bool)

(assert (=> d!693531 (= lt!863958 e!1506969)))

(declare-fun res!1001276 () Bool)

(assert (=> d!693531 (=> (not res!1001276) (not e!1506969))))

(assert (=> d!693531 (= res!1001276 ((_ is Cons!27895) e!1506847))))

(assert (=> d!693531 (= (contains!4869 e!1506847 key!7131) lt!863958)))

(declare-fun b!2359296 () Bool)

(declare-fun e!1506968 () Bool)

(assert (=> b!2359296 (= e!1506969 e!1506968)))

(declare-fun res!1001275 () Bool)

(assert (=> b!2359296 (=> res!1001275 e!1506968)))

(assert (=> b!2359296 (= res!1001275 (= (h!33296 e!1506847) key!7131))))

(declare-fun b!2359297 () Bool)

(assert (=> b!2359297 (= e!1506968 (contains!4869 (t!207868 e!1506847) key!7131))))

(assert (= (and d!693531 res!1001276) b!2359296))

(assert (= (and b!2359296 (not res!1001275)) b!2359297))

(declare-fun m!2771895 () Bool)

(assert (=> d!693531 m!2771895))

(declare-fun m!2771897 () Bool)

(assert (=> d!693531 m!2771897))

(declare-fun m!2771899 () Bool)

(assert (=> b!2359297 m!2771899))

(assert (=> bm!143619 d!693531))

(declare-fun d!693533 () Bool)

(assert (=> d!693533 (isDefined!4275 (getValueByKey!118 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))

(declare-fun lt!863961 () Unit!40801)

(declare-fun choose!13675 (List!27991 K!4977) Unit!40801)

(assert (=> d!693533 (= lt!863961 (choose!13675 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))

(assert (=> d!693533 (invariantList!398 (toList!1427 (abstractMap!103 thiss!47689)))))

(assert (=> d!693533 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!75 (toList!1427 (abstractMap!103 thiss!47689)) key!7131) lt!863961)))

(declare-fun bs!460451 () Bool)

(assert (= bs!460451 d!693533))

(assert (=> bs!460451 m!2771681))

(assert (=> bs!460451 m!2771681))

(assert (=> bs!460451 m!2771683))

(declare-fun m!2771901 () Bool)

(assert (=> bs!460451 m!2771901))

(assert (=> bs!460451 m!2771865))

(assert (=> b!2359098 d!693533))

(assert (=> b!2359098 d!693527))

(assert (=> b!2359098 d!693529))

(declare-fun d!693535 () Bool)

(assert (=> d!693535 (contains!4869 (getKeysList!14 (toList!1427 (abstractMap!103 thiss!47689))) key!7131)))

(declare-fun lt!863964 () Unit!40801)

(declare-fun choose!13676 (List!27991 K!4977) Unit!40801)

(assert (=> d!693535 (= lt!863964 (choose!13676 (toList!1427 (abstractMap!103 thiss!47689)) key!7131))))

(assert (=> d!693535 (invariantList!398 (toList!1427 (abstractMap!103 thiss!47689)))))

(assert (=> d!693535 (= (lemmaInListThenGetKeysListContains!11 (toList!1427 (abstractMap!103 thiss!47689)) key!7131) lt!863964)))

(declare-fun bs!460452 () Bool)

(assert (= bs!460452 d!693535))

(assert (=> bs!460452 m!2771687))

(assert (=> bs!460452 m!2771687))

(declare-fun m!2771903 () Bool)

(assert (=> bs!460452 m!2771903))

(declare-fun m!2771905 () Bool)

(assert (=> bs!460452 m!2771905))

(assert (=> bs!460452 m!2771865))

(assert (=> b!2359098 d!693535))

(declare-fun d!693537 () Bool)

(assert (=> d!693537 (= (abstractMap!105 thiss!47689) (map!5776 thiss!47689))))

(declare-fun bs!460453 () Bool)

(assert (= bs!460453 d!693537))

(assert (=> bs!460453 m!2771663))

(assert (=> b!2359110 d!693537))

(declare-fun b!2359298 () Bool)

(declare-fun e!1506971 () Bool)

(declare-fun e!1506973 () Bool)

(assert (=> b!2359298 (= e!1506971 e!1506973)))

(declare-fun res!1001280 () Bool)

(assert (=> b!2359298 (=> (not res!1001280) (not e!1506973))))

(declare-fun lt!863965 () Option!5443)

(assert (=> b!2359298 (= res!1001280 (isDefined!4273 lt!863965))))

(declare-fun b!2359299 () Bool)

(declare-fun e!1506972 () Bool)

(assert (=> b!2359299 (= e!1506972 (not (containsKey!108 call!143618 key!7131)))))

(declare-fun d!693539 () Bool)

(assert (=> d!693539 e!1506971))

(declare-fun res!1001277 () Bool)

(assert (=> d!693539 (=> res!1001277 e!1506971)))

(assert (=> d!693539 (= res!1001277 e!1506972)))

(declare-fun res!1001278 () Bool)

(assert (=> d!693539 (=> (not res!1001278) (not e!1506972))))

(assert (=> d!693539 (= res!1001278 (isEmpty!15850 lt!863965))))

(declare-fun e!1506970 () Option!5443)

(assert (=> d!693539 (= lt!863965 e!1506970)))

(declare-fun c!375050 () Bool)

(assert (=> d!693539 (= c!375050 (and ((_ is Cons!27893) call!143618) (= (_1!16360 (h!33294 call!143618)) key!7131)))))

(assert (=> d!693539 (noDuplicateKeys!41 call!143618)))

(assert (=> d!693539 (= (getPair!53 call!143618 key!7131) lt!863965)))

(declare-fun b!2359300 () Bool)

(assert (=> b!2359300 (= e!1506970 (Some!5442 (h!33294 call!143618)))))

(declare-fun b!2359301 () Bool)

(declare-fun e!1506974 () Option!5443)

(assert (=> b!2359301 (= e!1506974 None!5442)))

(declare-fun b!2359302 () Bool)

(declare-fun res!1001279 () Bool)

(assert (=> b!2359302 (=> (not res!1001279) (not e!1506973))))

(assert (=> b!2359302 (= res!1001279 (= (_1!16360 (get!8463 lt!863965)) key!7131))))

(declare-fun b!2359303 () Bool)

(assert (=> b!2359303 (= e!1506973 (contains!4870 call!143618 (get!8463 lt!863965)))))

(declare-fun b!2359304 () Bool)

(assert (=> b!2359304 (= e!1506970 e!1506974)))

(declare-fun c!375051 () Bool)

(assert (=> b!2359304 (= c!375051 ((_ is Cons!27893) call!143618))))

(declare-fun b!2359305 () Bool)

(assert (=> b!2359305 (= e!1506974 (getPair!53 (t!207866 call!143618) key!7131))))

(assert (= (and d!693539 c!375050) b!2359300))

(assert (= (and d!693539 (not c!375050)) b!2359304))

(assert (= (and b!2359304 c!375051) b!2359305))

(assert (= (and b!2359304 (not c!375051)) b!2359301))

(assert (= (and d!693539 res!1001278) b!2359299))

(assert (= (and d!693539 (not res!1001277)) b!2359298))

(assert (= (and b!2359298 res!1001280) b!2359302))

(assert (= (and b!2359302 res!1001279) b!2359303))

(declare-fun m!2771907 () Bool)

(assert (=> b!2359305 m!2771907))

(declare-fun m!2771909 () Bool)

(assert (=> b!2359298 m!2771909))

(declare-fun m!2771911 () Bool)

(assert (=> b!2359299 m!2771911))

(declare-fun m!2771913 () Bool)

(assert (=> b!2359303 m!2771913))

(assert (=> b!2359303 m!2771913))

(declare-fun m!2771915 () Bool)

(assert (=> b!2359303 m!2771915))

(declare-fun m!2771917 () Bool)

(assert (=> d!693539 m!2771917))

(declare-fun m!2771919 () Bool)

(assert (=> d!693539 m!2771919))

(assert (=> b!2359302 m!2771913))

(assert (=> bm!143616 d!693539))

(declare-fun b!2359306 () Bool)

(declare-fun e!1506977 () Bool)

(assert (=> b!2359306 (= e!1506977 (contains!4869 (keys!8762 (extractMap!133 (toList!1428 lt!863828))) key!7131))))

(declare-fun bm!143622 () Bool)

(declare-fun call!143627 () Bool)

(declare-fun e!1506980 () List!27993)

(assert (=> bm!143622 (= call!143627 (contains!4869 e!1506980 key!7131))))

(declare-fun c!375052 () Bool)

(declare-fun c!375053 () Bool)

(assert (=> bm!143622 (= c!375052 c!375053)))

(declare-fun b!2359307 () Bool)

(declare-fun e!1506979 () Unit!40801)

(declare-fun e!1506978 () Unit!40801)

(assert (=> b!2359307 (= e!1506979 e!1506978)))

(declare-fun c!375054 () Bool)

(assert (=> b!2359307 (= c!375054 call!143627)))

(declare-fun b!2359308 () Bool)

(declare-fun lt!863970 () Unit!40801)

(assert (=> b!2359308 (= e!1506979 lt!863970)))

(declare-fun lt!863973 () Unit!40801)

(assert (=> b!2359308 (= lt!863973 (lemmaContainsKeyImpliesGetValueByKeyDefined!75 (toList!1427 (extractMap!133 (toList!1428 lt!863828))) key!7131))))

(assert (=> b!2359308 (isDefined!4275 (getValueByKey!118 (toList!1427 (extractMap!133 (toList!1428 lt!863828))) key!7131))))

(declare-fun lt!863968 () Unit!40801)

(assert (=> b!2359308 (= lt!863968 lt!863973)))

(assert (=> b!2359308 (= lt!863970 (lemmaInListThenGetKeysListContains!11 (toList!1427 (extractMap!133 (toList!1428 lt!863828))) key!7131))))

(assert (=> b!2359308 call!143627))

(declare-fun b!2359309 () Bool)

(declare-fun e!1506975 () Bool)

(assert (=> b!2359309 (= e!1506975 (not (contains!4869 (keys!8762 (extractMap!133 (toList!1428 lt!863828))) key!7131)))))

(declare-fun b!2359310 () Bool)

(assert (=> b!2359310 false))

(declare-fun lt!863969 () Unit!40801)

(declare-fun lt!863971 () Unit!40801)

(assert (=> b!2359310 (= lt!863969 lt!863971)))

(assert (=> b!2359310 (containsKey!107 (toList!1427 (extractMap!133 (toList!1428 lt!863828))) key!7131)))

(assert (=> b!2359310 (= lt!863971 (lemmaInGetKeysListThenContainsKey!11 (toList!1427 (extractMap!133 (toList!1428 lt!863828))) key!7131))))

(declare-fun Unit!40819 () Unit!40801)

(assert (=> b!2359310 (= e!1506978 Unit!40819)))

(declare-fun b!2359311 () Bool)

(declare-fun Unit!40820 () Unit!40801)

(assert (=> b!2359311 (= e!1506978 Unit!40820)))

(declare-fun b!2359313 () Bool)

(assert (=> b!2359313 (= e!1506980 (getKeysList!14 (toList!1427 (extractMap!133 (toList!1428 lt!863828)))))))

(declare-fun b!2359314 () Bool)

(declare-fun e!1506976 () Bool)

(assert (=> b!2359314 (= e!1506976 e!1506977)))

(declare-fun res!1001281 () Bool)

(assert (=> b!2359314 (=> (not res!1001281) (not e!1506977))))

(assert (=> b!2359314 (= res!1001281 (isDefined!4275 (getValueByKey!118 (toList!1427 (extractMap!133 (toList!1428 lt!863828))) key!7131)))))

(declare-fun b!2359312 () Bool)

(assert (=> b!2359312 (= e!1506980 (keys!8762 (extractMap!133 (toList!1428 lt!863828))))))

(declare-fun d!693541 () Bool)

(assert (=> d!693541 e!1506976))

(declare-fun res!1001282 () Bool)

(assert (=> d!693541 (=> res!1001282 e!1506976)))

(assert (=> d!693541 (= res!1001282 e!1506975)))

(declare-fun res!1001283 () Bool)

(assert (=> d!693541 (=> (not res!1001283) (not e!1506975))))

(declare-fun lt!863972 () Bool)

(assert (=> d!693541 (= res!1001283 (not lt!863972))))

(declare-fun lt!863967 () Bool)

(assert (=> d!693541 (= lt!863972 lt!863967)))

(declare-fun lt!863966 () Unit!40801)

(assert (=> d!693541 (= lt!863966 e!1506979)))

(assert (=> d!693541 (= c!375053 lt!863967)))

(assert (=> d!693541 (= lt!863967 (containsKey!107 (toList!1427 (extractMap!133 (toList!1428 lt!863828))) key!7131))))

(assert (=> d!693541 (= (contains!4865 (extractMap!133 (toList!1428 lt!863828)) key!7131) lt!863972)))

(assert (= (and d!693541 c!375053) b!2359308))

(assert (= (and d!693541 (not c!375053)) b!2359307))

(assert (= (and b!2359307 c!375054) b!2359310))

(assert (= (and b!2359307 (not c!375054)) b!2359311))

(assert (= (or b!2359308 b!2359307) bm!143622))

(assert (= (and bm!143622 c!375052) b!2359313))

(assert (= (and bm!143622 (not c!375052)) b!2359312))

(assert (= (and d!693541 res!1001283) b!2359309))

(assert (= (and d!693541 (not res!1001282)) b!2359314))

(assert (= (and b!2359314 res!1001281) b!2359306))

(declare-fun m!2771921 () Bool)

(assert (=> b!2359310 m!2771921))

(declare-fun m!2771923 () Bool)

(assert (=> b!2359310 m!2771923))

(assert (=> d!693541 m!2771921))

(declare-fun m!2771925 () Bool)

(assert (=> bm!143622 m!2771925))

(assert (=> b!2359306 m!2771627))

(declare-fun m!2771927 () Bool)

(assert (=> b!2359306 m!2771927))

(assert (=> b!2359306 m!2771927))

(declare-fun m!2771929 () Bool)

(assert (=> b!2359306 m!2771929))

(declare-fun m!2771931 () Bool)

(assert (=> b!2359308 m!2771931))

(declare-fun m!2771933 () Bool)

(assert (=> b!2359308 m!2771933))

(assert (=> b!2359308 m!2771933))

(declare-fun m!2771935 () Bool)

(assert (=> b!2359308 m!2771935))

(declare-fun m!2771937 () Bool)

(assert (=> b!2359308 m!2771937))

(assert (=> b!2359309 m!2771627))

(assert (=> b!2359309 m!2771927))

(assert (=> b!2359309 m!2771927))

(assert (=> b!2359309 m!2771929))

(assert (=> b!2359312 m!2771627))

(assert (=> b!2359312 m!2771927))

(declare-fun m!2771939 () Bool)

(assert (=> b!2359313 m!2771939))

(assert (=> b!2359314 m!2771933))

(assert (=> b!2359314 m!2771933))

(assert (=> b!2359314 m!2771935))

(assert (=> b!2359075 d!693541))

(declare-fun bs!460454 () Bool)

(declare-fun d!693543 () Bool)

(assert (= bs!460454 (and d!693543 b!2359076)))

(declare-fun lambda!86757 () Int)

(assert (=> bs!460454 (= lambda!86757 lambda!86729)))

(declare-fun bs!460455 () Bool)

(assert (= bs!460455 (and d!693543 b!2359161)))

(assert (=> bs!460455 (= lambda!86757 lambda!86732)))

(declare-fun bs!460456 () Bool)

(assert (= bs!460456 (and d!693543 d!693491)))

(assert (=> bs!460456 (= lambda!86757 lambda!86735)))

(declare-fun bs!460457 () Bool)

(assert (= bs!460457 (and d!693543 d!693521)))

(assert (=> bs!460457 (= lambda!86757 lambda!86744)))

(declare-fun lt!863974 () ListMap!915)

(assert (=> d!693543 (invariantList!398 (toList!1427 lt!863974))))

(declare-fun e!1506981 () ListMap!915)

(assert (=> d!693543 (= lt!863974 e!1506981)))

(declare-fun c!375055 () Bool)

(assert (=> d!693543 (= c!375055 ((_ is Cons!27894) (toList!1428 lt!863828)))))

(assert (=> d!693543 (forall!5530 (toList!1428 lt!863828) lambda!86757)))

(assert (=> d!693543 (= (extractMap!133 (toList!1428 lt!863828)) lt!863974)))

(declare-fun b!2359315 () Bool)

(assert (=> b!2359315 (= e!1506981 (addToMapMapFromBucket!12 (_2!16361 (h!33295 (toList!1428 lt!863828))) (extractMap!133 (t!207867 (toList!1428 lt!863828)))))))

(declare-fun b!2359316 () Bool)

(assert (=> b!2359316 (= e!1506981 (ListMap!916 Nil!27893))))

(assert (= (and d!693543 c!375055) b!2359315))

(assert (= (and d!693543 (not c!375055)) b!2359316))

(declare-fun m!2771941 () Bool)

(assert (=> d!693543 m!2771941))

(declare-fun m!2771943 () Bool)

(assert (=> d!693543 m!2771943))

(declare-fun m!2771945 () Bool)

(assert (=> b!2359315 m!2771945))

(assert (=> b!2359315 m!2771945))

(declare-fun m!2771947 () Bool)

(assert (=> b!2359315 m!2771947))

(assert (=> b!2359075 d!693543))

(declare-fun bs!460458 () Bool)

(declare-fun d!693545 () Bool)

(assert (= bs!460458 (and d!693545 b!2359076)))

(declare-fun lambda!86760 () Int)

(assert (=> bs!460458 (= lambda!86760 lambda!86729)))

(declare-fun bs!460459 () Bool)

(assert (= bs!460459 (and d!693545 d!693521)))

(assert (=> bs!460459 (= lambda!86760 lambda!86744)))

(declare-fun bs!460460 () Bool)

(assert (= bs!460460 (and d!693545 b!2359161)))

(assert (=> bs!460460 (= lambda!86760 lambda!86732)))

(declare-fun bs!460461 () Bool)

(assert (= bs!460461 (and d!693545 d!693491)))

(assert (=> bs!460461 (= lambda!86760 lambda!86735)))

(declare-fun bs!460462 () Bool)

(assert (= bs!460462 (and d!693545 d!693543)))

(assert (=> bs!460462 (= lambda!86760 lambda!86757)))

(assert (=> d!693545 (contains!4865 (extractMap!133 (toList!1428 lt!863828)) key!7131)))

(declare-fun lt!863977 () Unit!40801)

(declare-fun choose!13677 (ListLongMap!377 K!4977 Hashable!3152) Unit!40801)

(assert (=> d!693545 (= lt!863977 (choose!13677 lt!863828 key!7131 (hashF!5081 thiss!47689)))))

(assert (=> d!693545 (forall!5530 (toList!1428 lt!863828) lambda!86760)))

(assert (=> d!693545 (= (lemmaInLongMapThenInGenericMap!53 lt!863828 key!7131 (hashF!5081 thiss!47689)) lt!863977)))

(declare-fun bs!460463 () Bool)

(assert (= bs!460463 d!693545))

(assert (=> bs!460463 m!2771627))

(assert (=> bs!460463 m!2771627))

(assert (=> bs!460463 m!2771629))

(declare-fun m!2771949 () Bool)

(assert (=> bs!460463 m!2771949))

(declare-fun m!2771951 () Bool)

(assert (=> bs!460463 m!2771951))

(assert (=> b!2359075 d!693545))

(declare-fun d!693547 () Bool)

(declare-fun choose!13678 (MutableMap!3152) ListMap!915)

(assert (=> d!693547 (= (abstractMap!104 thiss!47689) (choose!13678 thiss!47689))))

(declare-fun bs!460464 () Bool)

(assert (= bs!460464 d!693547))

(declare-fun m!2771953 () Bool)

(assert (=> bs!460464 m!2771953))

(assert (=> b!2359109 d!693547))

(declare-fun d!693549 () Bool)

(declare-fun dynLambda!12010 (Int tuple2!27640) Bool)

(assert (=> d!693549 (dynLambda!12010 lambda!86729 (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837)))))

(declare-fun lt!863980 () Unit!40801)

(declare-fun choose!13679 (List!27992 Int tuple2!27640) Unit!40801)

(assert (=> d!693549 (= lt!863980 (choose!13679 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) lambda!86729 (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))))

(declare-fun e!1506984 () Bool)

(assert (=> d!693549 e!1506984))

(declare-fun res!1001286 () Bool)

(assert (=> d!693549 (=> (not res!1001286) (not e!1506984))))

(assert (=> d!693549 (= res!1001286 (forall!5530 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) lambda!86729))))

(assert (=> d!693549 (= (forallContained!800 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) lambda!86729 (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))) lt!863980)))

(declare-fun b!2359319 () Bool)

(assert (=> b!2359319 (= e!1506984 (contains!4867 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))))

(assert (= (and d!693549 res!1001286) b!2359319))

(declare-fun b_lambda!73749 () Bool)

(assert (=> (not b_lambda!73749) (not d!693549)))

(declare-fun m!2771955 () Bool)

(assert (=> d!693549 m!2771955))

(declare-fun m!2771957 () Bool)

(assert (=> d!693549 m!2771957))

(declare-fun m!2771959 () Bool)

(assert (=> d!693549 m!2771959))

(assert (=> b!2359319 m!2771623))

(assert (=> b!2359076 d!693549))

(assert (=> b!2359076 d!693477))

(assert (=> b!2359076 d!693475))

(declare-fun d!693551 () Bool)

(declare-fun lt!863981 () Bool)

(assert (=> d!693551 (= lt!863981 (select (content!3785 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))) (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))))

(declare-fun e!1506986 () Bool)

(assert (=> d!693551 (= lt!863981 e!1506986)))

(declare-fun res!1001288 () Bool)

(assert (=> d!693551 (=> (not res!1001288) (not e!1506986))))

(assert (=> d!693551 (= res!1001288 ((_ is Cons!27894) (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))))))

(assert (=> d!693551 (= (contains!4867 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689)))) (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))) lt!863981)))

(declare-fun b!2359320 () Bool)

(declare-fun e!1506985 () Bool)

(assert (=> b!2359320 (= e!1506986 e!1506985)))

(declare-fun res!1001287 () Bool)

(assert (=> b!2359320 (=> res!1001287 e!1506985)))

(assert (=> b!2359320 (= res!1001287 (= (h!33295 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))) (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))))

(declare-fun b!2359321 () Bool)

(assert (=> b!2359321 (= e!1506985 (contains!4867 (t!207867 (toList!1428 (map!5777 (v!30831 (underlying!6690 thiss!47689))))) (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))))))

(assert (= (and d!693551 res!1001288) b!2359320))

(assert (= (and b!2359320 (not res!1001287)) b!2359321))

(declare-fun m!2771961 () Bool)

(assert (=> d!693551 m!2771961))

(declare-fun m!2771963 () Bool)

(assert (=> d!693551 m!2771963))

(declare-fun m!2771965 () Bool)

(assert (=> b!2359321 m!2771965))

(assert (=> b!2359076 d!693551))

(declare-fun tp!754411 () Bool)

(declare-fun b!2359322 () Bool)

(declare-fun e!1506987 () Bool)

(assert (=> b!2359322 (= e!1506987 (and tp_is_empty!11195 tp_is_empty!11197 tp!754411))))

(assert (=> b!2359116 (= tp!754399 e!1506987)))

(assert (= (and b!2359116 ((_ is Cons!27893) (t!207866 (minValue!3500 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))))) b!2359322))

(declare-fun tp!754412 () Bool)

(declare-fun b!2359323 () Bool)

(declare-fun e!1506988 () Bool)

(assert (=> b!2359323 (= e!1506988 (and tp_is_empty!11195 tp_is_empty!11197 tp!754412))))

(assert (=> b!2359126 (= tp!754410 e!1506988)))

(assert (= (and b!2359126 ((_ is Cons!27893) (t!207866 mapDefault!15127))) b!2359323))

(declare-fun tp!754413 () Bool)

(declare-fun b!2359324 () Bool)

(declare-fun e!1506989 () Bool)

(assert (=> b!2359324 (= e!1506989 (and tp_is_empty!11195 tp_is_empty!11197 tp!754413))))

(assert (=> b!2359123 (= tp!754407 e!1506989)))

(assert (= (and b!2359123 ((_ is Cons!27893) (t!207866 mapValue!15130))) b!2359324))

(declare-fun b!2359325 () Bool)

(declare-fun e!1506990 () Bool)

(declare-fun tp!754414 () Bool)

(assert (=> b!2359325 (= e!1506990 (and tp_is_empty!11195 tp_is_empty!11197 tp!754414))))

(assert (=> b!2359115 (= tp!754398 e!1506990)))

(assert (= (and b!2359115 ((_ is Cons!27893) (t!207866 (zeroValue!3500 (v!30830 (underlying!6689 (v!30831 (underlying!6690 thiss!47689)))))))) b!2359325))

(declare-fun b!2359326 () Bool)

(declare-fun tp!754415 () Bool)

(declare-fun e!1506991 () Bool)

(assert (=> b!2359326 (= e!1506991 (and tp_is_empty!11195 tp_is_empty!11197 tp!754415))))

(assert (=> b!2359125 (= tp!754409 e!1506991)))

(assert (= (and b!2359125 ((_ is Cons!27893) (t!207866 mapValue!15127))) b!2359326))

(declare-fun e!1506992 () Bool)

(declare-fun tp!754416 () Bool)

(declare-fun b!2359327 () Bool)

(assert (=> b!2359327 (= e!1506992 (and tp_is_empty!11195 tp_is_empty!11197 tp!754416))))

(assert (=> b!2359124 (= tp!754406 e!1506992)))

(assert (= (and b!2359124 ((_ is Cons!27893) (t!207866 mapDefault!15130))) b!2359327))

(declare-fun mapNonEmpty!15131 () Bool)

(declare-fun mapRes!15131 () Bool)

(declare-fun tp!754419 () Bool)

(declare-fun e!1506993 () Bool)

(assert (=> mapNonEmpty!15131 (= mapRes!15131 (and tp!754419 e!1506993))))

(declare-fun mapKey!15131 () (_ BitVec 32))

(declare-fun mapValue!15131 () List!27991)

(declare-fun mapRest!15131 () (Array (_ BitVec 32) List!27991))

(assert (=> mapNonEmpty!15131 (= mapRest!15130 (store mapRest!15131 mapKey!15131 mapValue!15131))))

(declare-fun condMapEmpty!15131 () Bool)

(declare-fun mapDefault!15131 () List!27991)

(assert (=> mapNonEmpty!15130 (= condMapEmpty!15131 (= mapRest!15130 ((as const (Array (_ BitVec 32) List!27991)) mapDefault!15131)))))

(declare-fun e!1506994 () Bool)

(assert (=> mapNonEmpty!15130 (= tp!754408 (and e!1506994 mapRes!15131))))

(declare-fun b!2359328 () Bool)

(declare-fun tp!754418 () Bool)

(assert (=> b!2359328 (= e!1506993 (and tp_is_empty!11195 tp_is_empty!11197 tp!754418))))

(declare-fun mapIsEmpty!15131 () Bool)

(assert (=> mapIsEmpty!15131 mapRes!15131))

(declare-fun tp!754417 () Bool)

(declare-fun b!2359329 () Bool)

(assert (=> b!2359329 (= e!1506994 (and tp_is_empty!11195 tp_is_empty!11197 tp!754417))))

(assert (= (and mapNonEmpty!15130 condMapEmpty!15131) mapIsEmpty!15131))

(assert (= (and mapNonEmpty!15130 (not condMapEmpty!15131)) mapNonEmpty!15131))

(assert (= (and mapNonEmpty!15131 ((_ is Cons!27893) mapValue!15131)) b!2359328))

(assert (= (and mapNonEmpty!15130 ((_ is Cons!27893) mapDefault!15131)) b!2359329))

(declare-fun m!2771967 () Bool)

(assert (=> mapNonEmpty!15131 m!2771967))

(declare-fun b_lambda!73751 () Bool)

(assert (= b_lambda!73747 (or (and b!2359036 b_free!70421) b_lambda!73751)))

(declare-fun b_lambda!73753 () Bool)

(assert (= b_lambda!73749 (or b!2359076 b_lambda!73753)))

(declare-fun bs!460465 () Bool)

(declare-fun d!693553 () Bool)

(assert (= bs!460465 (and d!693553 b!2359076)))

(assert (=> bs!460465 (= (dynLambda!12010 lambda!86729 (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837))) (noDuplicateKeys!41 (_2!16361 (tuple2!27641 lt!863837 (apply!6706 (v!30831 (underlying!6690 thiss!47689)) lt!863837)))))))

(declare-fun m!2771969 () Bool)

(assert (=> bs!460465 m!2771969))

(assert (=> d!693549 d!693553))

(check-sat (not b!2359298) (not d!693511) tp_is_empty!11195 (not b!2359247) b_and!185359 (not b!2359310) (not d!693539) (not bm!143620) (not d!693545) (not b!2359190) (not b_lambda!73753) (not b!2359184) (not d!693485) (not b!2359210) b_and!185357 (not b!2359155) (not b!2359192) (not b!2359175) (not b!2359308) (not b!2359324) (not b!2359254) (not b!2359312) (not b!2359188) (not b!2359177) (not b!2359191) (not b!2359187) (not d!693549) (not b!2359306) (not b!2359305) (not b!2359278) (not d!693493) (not d!693517) (not bm!143621) (not bm!143622) (not d!693505) (not b!2359240) (not b!2359319) (not b!2359279) (not b!2359328) (not b!2359309) (not b_lambda!73751) (not b!2359161) (not d!693535) (not b!2359144) (not d!693473) (not d!693537) (not b!2359186) tp_is_empty!11197 (not b!2359168) (not d!693551) (not d!693489) (not bs!460465) (not d!693479) (not b!2359233) (not b!2359323) (not b!2359143) (not d!693495) (not d!693523) (not d!693525) (not b!2359148) (not b!2359314) (not b!2359193) (not d!693541) (not d!693501) (not d!693521) (not b_next!71125) (not b!2359182) (not b!2359248) (not b!2359294) (not b!2359322) (not d!693497) (not b!2359329) (not b!2359313) (not d!693475) (not d!693491) (not b_next!71127) (not tb!138739) (not b!2359195) (not d!693481) (not d!693519) (not d!693547) (not b!2359222) (not b!2359147) (not b!2359327) (not b!2359200) (not mapNonEmpty!15131) (not b!2359276) (not b!2359280) (not b!2359303) (not d!693531) (not d!693527) (not d!693477) (not b!2359249) (not d!693487) (not b!2359197) (not b!2359297) (not b!2359219) (not b!2359326) (not d!693471) (not d!693533) (not d!693503) (not b!2359315) (not b!2359299) (not d!693543) (not b!2359321) (not d!693507) (not b!2359302) (not b!2359216) (not b!2359199) (not b!2359325) (not b!2359150) (not b!2359275) (not b!2359204) (not b!2359162) (not b!2359201) (not b!2359196) (not d!693499) (not d!693513))
(check-sat b_and!185357 b_and!185359 (not b_next!71125) (not b_next!71127))
