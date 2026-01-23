; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497692 () Bool)

(assert start!497692)

(declare-fun b!4813140 () Bool)

(declare-fun b_free!130299 () Bool)

(declare-fun b_next!131089 () Bool)

(assert (=> b!4813140 (= b_free!130299 (not b_next!131089))))

(declare-fun tp!1361509 () Bool)

(declare-fun b_and!342109 () Bool)

(assert (=> b!4813140 (= tp!1361509 b_and!342109)))

(declare-fun b!4813139 () Bool)

(declare-fun b_free!130301 () Bool)

(declare-fun b_next!131091 () Bool)

(assert (=> b!4813139 (= b_free!130301 (not b_next!131091))))

(declare-fun tp!1361512 () Bool)

(declare-fun b_and!342111 () Bool)

(assert (=> b!4813139 (= tp!1361512 b_and!342111)))

(declare-fun b!4813132 () Bool)

(declare-datatypes ((Unit!141686 0))(
  ( (Unit!141687) )
))
(declare-fun e!3007083 () Unit!141686)

(declare-fun Unit!141688 () Unit!141686)

(assert (=> b!4813132 (= e!3007083 Unit!141688)))

(declare-fun mapNonEmpty!22460 () Bool)

(declare-fun mapRes!22460 () Bool)

(declare-fun tp!1361510 () Bool)

(declare-fun tp!1361507 () Bool)

(assert (=> mapNonEmpty!22460 (= mapRes!22460 (and tp!1361510 tp!1361507))))

(declare-datatypes ((K!16239 0))(
  ( (K!16240 (val!21297 Int)) )
))
(declare-datatypes ((V!16485 0))(
  ( (V!16486 (val!21298 Int)) )
))
(declare-datatypes ((tuple2!57530 0))(
  ( (tuple2!57531 (_1!32059 K!16239) (_2!32059 V!16485)) )
))
(declare-datatypes ((List!54731 0))(
  ( (Nil!54607) (Cons!54607 (h!61039 tuple2!57530) (t!362225 List!54731)) )
))
(declare-fun mapRest!22460 () (Array (_ BitVec 32) List!54731))

(declare-datatypes ((array!18744 0))(
  ( (array!18745 (arr!8363 (Array (_ BitVec 32) (_ BitVec 64))) (size!36609 (_ BitVec 32))) )
))
(declare-datatypes ((array!18746 0))(
  ( (array!18747 (arr!8364 (Array (_ BitVec 32) List!54731)) (size!36610 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10178 0))(
  ( (LongMapFixedSize!10179 (defaultEntry!5511 Int) (mask!15114 (_ BitVec 32)) (extraKeys!5369 (_ BitVec 32)) (zeroValue!5382 List!54731) (minValue!5382 List!54731) (_size!10203 (_ BitVec 32)) (_keys!5438 array!18744) (_values!5407 array!18746) (_vacant!5154 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20121 0))(
  ( (Cell!20122 (v!48964 LongMapFixedSize!10178)) )
))
(declare-datatypes ((MutLongMap!5089 0))(
  ( (LongMap!5089 (underlying!10385 Cell!20121)) (MutLongMapExt!5088 (__x!33365 Int)) )
))
(declare-datatypes ((Hashable!7100 0))(
  ( (HashableExt!7099 (__x!33366 Int)) )
))
(declare-datatypes ((Cell!20123 0))(
  ( (Cell!20124 (v!48965 MutLongMap!5089)) )
))
(declare-datatypes ((MutableMap!4973 0))(
  ( (MutableMapExt!4972 (__x!33367 Int)) (HashMap!4973 (underlying!10386 Cell!20123) (hashF!13378 Hashable!7100) (_size!10204 (_ BitVec 32)) (defaultValue!5144 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4973)

(declare-fun mapKey!22460 () (_ BitVec 32))

(declare-fun mapValue!22460 () List!54731)

(assert (=> mapNonEmpty!22460 (= (arr!8364 (_values!5407 (v!48964 (underlying!10385 (v!48965 (underlying!10386 thiss!41921)))))) (store mapRest!22460 mapKey!22460 mapValue!22460))))

(declare-fun b!4813133 () Bool)

(declare-fun res!2047190 () Bool)

(declare-fun e!3007084 () Bool)

(assert (=> b!4813133 (=> (not res!2047190) (not e!3007084))))

(declare-datatypes ((tuple2!57532 0))(
  ( (tuple2!57533 (_1!32060 (_ BitVec 64)) (_2!32060 List!54731)) )
))
(declare-datatypes ((List!54732 0))(
  ( (Nil!54608) (Cons!54608 (h!61040 tuple2!57532) (t!362226 List!54732)) )
))
(declare-datatypes ((ListLongMap!5663 0))(
  ( (ListLongMap!5664 (toList!7185 List!54732)) )
))
(declare-fun lt!1964219 () ListLongMap!5663)

(declare-fun lt!1964221 () (_ BitVec 64))

(declare-fun contains!18352 (ListLongMap!5663 (_ BitVec 64)) Bool)

(assert (=> b!4813133 (= res!2047190 (contains!18352 lt!1964219 lt!1964221))))

(declare-fun b!4813134 () Bool)

(declare-fun e!3007092 () Bool)

(declare-fun e!3007082 () Bool)

(declare-fun lt!1964215 () MutLongMap!5089)

(get-info :version)

(assert (=> b!4813134 (= e!3007092 (and e!3007082 ((_ is LongMap!5089) lt!1964215)))))

(assert (=> b!4813134 (= lt!1964215 (v!48965 (underlying!10386 thiss!41921)))))

(declare-fun mapIsEmpty!22460 () Bool)

(assert (=> mapIsEmpty!22460 mapRes!22460))

(declare-fun b!4813135 () Bool)

(declare-fun e!3007091 () Bool)

(declare-fun tp!1361506 () Bool)

(assert (=> b!4813135 (= e!3007091 (and tp!1361506 mapRes!22460))))

(declare-fun condMapEmpty!22460 () Bool)

(declare-fun mapDefault!22460 () List!54731)

(assert (=> b!4813135 (= condMapEmpty!22460 (= (arr!8364 (_values!5407 (v!48964 (underlying!10385 (v!48965 (underlying!10386 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54731)) mapDefault!22460)))))

(declare-fun b!4813136 () Bool)

(declare-fun res!2047194 () Bool)

(assert (=> b!4813136 (=> (not res!2047194) (not e!3007084))))

(declare-fun key!1652 () K!16239)

(declare-datatypes ((Option!13344 0))(
  ( (None!13343) (Some!13343 (v!48966 tuple2!57530)) )
))
(declare-fun isDefined!10481 (Option!13344) Bool)

(declare-fun getPair!977 (List!54731 K!16239) Option!13344)

(declare-fun apply!13200 (ListLongMap!5663 (_ BitVec 64)) List!54731)

(assert (=> b!4813136 (= res!2047194 (isDefined!10481 (getPair!977 (apply!13200 lt!1964219 lt!1964221) key!1652)))))

(declare-fun b!4813137 () Bool)

(declare-fun res!2047191 () Bool)

(declare-fun e!3007090 () Bool)

(assert (=> b!4813137 (=> (not res!2047191) (not e!3007090))))

(declare-fun valid!4118 (MutableMap!4973) Bool)

(assert (=> b!4813137 (= res!2047191 (valid!4118 thiss!41921))))

(declare-fun b!4813138 () Bool)

(declare-fun e!3007088 () Unit!141686)

(declare-fun Unit!141689 () Unit!141686)

(assert (=> b!4813138 (= e!3007088 Unit!141689)))

(declare-fun e!3007087 () Bool)

(assert (=> b!4813139 (= e!3007087 (and e!3007092 tp!1361512))))

(declare-fun tp!1361511 () Bool)

(declare-fun tp!1361508 () Bool)

(declare-fun e!3007086 () Bool)

(declare-fun array_inv!6043 (array!18744) Bool)

(declare-fun array_inv!6044 (array!18746) Bool)

(assert (=> b!4813140 (= e!3007086 (and tp!1361509 tp!1361508 tp!1361511 (array_inv!6043 (_keys!5438 (v!48964 (underlying!10385 (v!48965 (underlying!10386 thiss!41921)))))) (array_inv!6044 (_values!5407 (v!48964 (underlying!10385 (v!48965 (underlying!10386 thiss!41921)))))) e!3007091))))

(declare-fun res!2047193 () Bool)

(assert (=> start!497692 (=> (not res!2047193) (not e!3007090))))

(assert (=> start!497692 (= res!2047193 ((_ is HashMap!4973) thiss!41921))))

(assert (=> start!497692 e!3007090))

(assert (=> start!497692 e!3007087))

(declare-fun tp_is_empty!34067 () Bool)

(assert (=> start!497692 tp_is_empty!34067))

(declare-fun b!4813141 () Bool)

(assert (=> b!4813141 false))

(declare-fun lt!1964220 () Unit!141686)

(declare-fun lt!1964224 () List!54731)

(declare-fun lt!1964222 () ListLongMap!5663)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1018 (List!54732 (_ BitVec 64) List!54731) Unit!141686)

(assert (=> b!4813141 (= lt!1964220 (lemmaGetValueByKeyImpliesContainsTuple!1018 (toList!7185 lt!1964222) lt!1964221 lt!1964224))))

(declare-datatypes ((Option!13345 0))(
  ( (None!13344) (Some!13344 (v!48967 List!54731)) )
))
(declare-fun isDefined!10482 (Option!13345) Bool)

(declare-fun getValueByKey!2515 (List!54732 (_ BitVec 64)) Option!13345)

(assert (=> b!4813141 (isDefined!10482 (getValueByKey!2515 (toList!7185 lt!1964222) lt!1964221))))

(declare-fun lt!1964226 () Unit!141686)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2302 (List!54732 (_ BitVec 64)) Unit!141686)

(assert (=> b!4813141 (= lt!1964226 (lemmaContainsKeyImpliesGetValueByKeyDefined!2302 (toList!7185 lt!1964222) lt!1964221))))

(declare-fun containsKey!4181 (List!54732 (_ BitVec 64)) Bool)

(assert (=> b!4813141 (containsKey!4181 (toList!7185 lt!1964222) lt!1964221)))

(declare-fun lt!1964217 () Unit!141686)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!295 (List!54732 (_ BitVec 64)) Unit!141686)

(assert (=> b!4813141 (= lt!1964217 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!295 (toList!7185 lt!1964222) lt!1964221))))

(declare-fun Unit!141690 () Unit!141686)

(assert (=> b!4813141 (= e!3007083 Unit!141690)))

(declare-fun b!4813142 () Bool)

(assert (=> b!4813142 (= e!3007084 (not true))))

(assert (=> b!4813142 false))

(declare-fun lt!1964223 () Unit!141686)

(declare-fun lemmaInLongMapThenInGenericMap!222 (ListLongMap!5663 K!16239 Hashable!7100) Unit!141686)

(assert (=> b!4813142 (= lt!1964223 (lemmaInLongMapThenInGenericMap!222 lt!1964219 key!1652 (hashF!13378 thiss!41921)))))

(declare-fun b!4813143 () Bool)

(assert (=> b!4813143 (= e!3007090 e!3007084)))

(declare-fun res!2047192 () Bool)

(assert (=> b!4813143 (=> (not res!2047192) (not e!3007084))))

(declare-datatypes ((ListMap!6601 0))(
  ( (ListMap!6602 (toList!7186 List!54731)) )
))
(declare-fun contains!18353 (ListMap!6601 K!16239) Bool)

(declare-fun extractMap!2552 (List!54732) ListMap!6601)

(assert (=> b!4813143 (= res!2047192 (not (contains!18353 (extractMap!2552 (toList!7185 lt!1964219)) key!1652)))))

(declare-fun map!12471 (MutLongMap!5089) ListLongMap!5663)

(assert (=> b!4813143 (= lt!1964219 (map!12471 (v!48965 (underlying!10386 thiss!41921))))))

(declare-fun lt!1964216 () Unit!141686)

(assert (=> b!4813143 (= lt!1964216 e!3007088)))

(declare-fun c!820322 () Bool)

(declare-fun contains!18354 (MutLongMap!5089 (_ BitVec 64)) Bool)

(assert (=> b!4813143 (= c!820322 (contains!18354 (v!48965 (underlying!10386 thiss!41921)) lt!1964221))))

(declare-fun hash!5164 (Hashable!7100 K!16239) (_ BitVec 64))

(assert (=> b!4813143 (= lt!1964221 (hash!5164 (hashF!13378 thiss!41921) key!1652))))

(declare-fun b!4813144 () Bool)

(declare-fun e!3007089 () Bool)

(assert (=> b!4813144 (= e!3007082 e!3007089)))

(declare-fun b!4813145 () Bool)

(assert (=> b!4813145 (= e!3007089 e!3007086)))

(declare-fun lambda!233917 () Int)

(declare-fun lt!1964225 () tuple2!57532)

(declare-fun b!4813146 () Bool)

(declare-fun forallContained!4286 (List!54732 Int tuple2!57532) Unit!141686)

(assert (=> b!4813146 (= e!3007088 (forallContained!4286 (toList!7185 lt!1964222) lambda!233917 lt!1964225))))

(assert (=> b!4813146 (= lt!1964222 (map!12471 (v!48965 (underlying!10386 thiss!41921))))))

(declare-fun apply!13201 (MutLongMap!5089 (_ BitVec 64)) List!54731)

(assert (=> b!4813146 (= lt!1964224 (apply!13201 (v!48965 (underlying!10386 thiss!41921)) lt!1964221))))

(assert (=> b!4813146 (= lt!1964225 (tuple2!57533 lt!1964221 lt!1964224))))

(declare-fun c!820323 () Bool)

(declare-fun contains!18355 (List!54732 tuple2!57532) Bool)

(assert (=> b!4813146 (= c!820323 (not (contains!18355 (toList!7185 lt!1964222) lt!1964225)))))

(declare-fun lt!1964218 () Unit!141686)

(assert (=> b!4813146 (= lt!1964218 e!3007083)))

(assert (= (and start!497692 res!2047193) b!4813137))

(assert (= (and b!4813137 res!2047191) b!4813143))

(assert (= (and b!4813143 c!820322) b!4813146))

(assert (= (and b!4813143 (not c!820322)) b!4813138))

(assert (= (and b!4813146 c!820323) b!4813141))

(assert (= (and b!4813146 (not c!820323)) b!4813132))

(assert (= (and b!4813143 res!2047192) b!4813133))

(assert (= (and b!4813133 res!2047190) b!4813136))

(assert (= (and b!4813136 res!2047194) b!4813142))

(assert (= (and b!4813135 condMapEmpty!22460) mapIsEmpty!22460))

(assert (= (and b!4813135 (not condMapEmpty!22460)) mapNonEmpty!22460))

(assert (= b!4813140 b!4813135))

(assert (= b!4813145 b!4813140))

(assert (= b!4813144 b!4813145))

(assert (= (and b!4813134 ((_ is LongMap!5089) (v!48965 (underlying!10386 thiss!41921)))) b!4813144))

(assert (= b!4813139 b!4813134))

(assert (= (and start!497692 ((_ is HashMap!4973) thiss!41921)) b!4813139))

(declare-fun m!5798688 () Bool)

(assert (=> b!4813141 m!5798688))

(assert (=> b!4813141 m!5798688))

(declare-fun m!5798690 () Bool)

(assert (=> b!4813141 m!5798690))

(declare-fun m!5798692 () Bool)

(assert (=> b!4813141 m!5798692))

(declare-fun m!5798694 () Bool)

(assert (=> b!4813141 m!5798694))

(declare-fun m!5798696 () Bool)

(assert (=> b!4813141 m!5798696))

(declare-fun m!5798698 () Bool)

(assert (=> b!4813141 m!5798698))

(declare-fun m!5798700 () Bool)

(assert (=> b!4813142 m!5798700))

(declare-fun m!5798702 () Bool)

(assert (=> b!4813140 m!5798702))

(declare-fun m!5798704 () Bool)

(assert (=> b!4813140 m!5798704))

(declare-fun m!5798706 () Bool)

(assert (=> b!4813136 m!5798706))

(assert (=> b!4813136 m!5798706))

(declare-fun m!5798708 () Bool)

(assert (=> b!4813136 m!5798708))

(assert (=> b!4813136 m!5798708))

(declare-fun m!5798710 () Bool)

(assert (=> b!4813136 m!5798710))

(declare-fun m!5798712 () Bool)

(assert (=> b!4813146 m!5798712))

(declare-fun m!5798714 () Bool)

(assert (=> b!4813146 m!5798714))

(declare-fun m!5798716 () Bool)

(assert (=> b!4813146 m!5798716))

(declare-fun m!5798718 () Bool)

(assert (=> b!4813146 m!5798718))

(declare-fun m!5798720 () Bool)

(assert (=> b!4813133 m!5798720))

(declare-fun m!5798722 () Bool)

(assert (=> mapNonEmpty!22460 m!5798722))

(declare-fun m!5798724 () Bool)

(assert (=> b!4813143 m!5798724))

(declare-fun m!5798726 () Bool)

(assert (=> b!4813143 m!5798726))

(assert (=> b!4813143 m!5798726))

(declare-fun m!5798728 () Bool)

(assert (=> b!4813143 m!5798728))

(declare-fun m!5798730 () Bool)

(assert (=> b!4813143 m!5798730))

(assert (=> b!4813143 m!5798714))

(declare-fun m!5798732 () Bool)

(assert (=> b!4813137 m!5798732))

(check-sat (not mapNonEmpty!22460) tp_is_empty!34067 (not b!4813141) (not b_next!131091) (not b!4813142) (not b!4813135) (not b!4813143) (not b!4813136) b_and!342109 (not b!4813146) (not b_next!131089) b_and!342111 (not b!4813137) (not b!4813140) (not b!4813133))
(check-sat b_and!342109 b_and!342111 (not b_next!131089) (not b_next!131091))
