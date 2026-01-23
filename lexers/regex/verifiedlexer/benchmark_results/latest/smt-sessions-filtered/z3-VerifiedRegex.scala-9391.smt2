; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497696 () Bool)

(assert start!497696)

(declare-fun b!4813245 () Bool)

(declare-fun b_free!130307 () Bool)

(declare-fun b_next!131097 () Bool)

(assert (=> b!4813245 (= b_free!130307 (not b_next!131097))))

(declare-fun tp!1361550 () Bool)

(declare-fun b_and!342117 () Bool)

(assert (=> b!4813245 (= tp!1361550 b_and!342117)))

(declare-fun b!4813247 () Bool)

(declare-fun b_free!130309 () Bool)

(declare-fun b_next!131099 () Bool)

(assert (=> b!4813247 (= b_free!130309 (not b_next!131099))))

(declare-fun tp!1361552 () Bool)

(declare-fun b_and!342119 () Bool)

(assert (=> b!4813247 (= tp!1361552 b_and!342119)))

(declare-fun b!4813237 () Bool)

(assert (=> b!4813237 false))

(declare-datatypes ((Unit!141694 0))(
  ( (Unit!141695) )
))
(declare-fun lt!1964308 () Unit!141694)

(declare-fun lt!1964303 () (_ BitVec 64))

(declare-datatypes ((K!16244 0))(
  ( (K!16245 (val!21301 Int)) )
))
(declare-datatypes ((V!16490 0))(
  ( (V!16491 (val!21302 Int)) )
))
(declare-datatypes ((tuple2!57538 0))(
  ( (tuple2!57539 (_1!32063 K!16244) (_2!32063 V!16490)) )
))
(declare-datatypes ((List!54735 0))(
  ( (Nil!54611) (Cons!54611 (h!61043 tuple2!57538) (t!362229 List!54735)) )
))
(declare-fun lt!1964301 () List!54735)

(declare-datatypes ((tuple2!57540 0))(
  ( (tuple2!57541 (_1!32064 (_ BitVec 64)) (_2!32064 List!54735)) )
))
(declare-datatypes ((List!54736 0))(
  ( (Nil!54612) (Cons!54612 (h!61044 tuple2!57540) (t!362230 List!54736)) )
))
(declare-datatypes ((ListLongMap!5667 0))(
  ( (ListLongMap!5668 (toList!7188 List!54736)) )
))
(declare-fun lt!1964305 () ListLongMap!5667)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1019 (List!54736 (_ BitVec 64) List!54735) Unit!141694)

(assert (=> b!4813237 (= lt!1964308 (lemmaGetValueByKeyImpliesContainsTuple!1019 (toList!7188 lt!1964305) lt!1964303 lt!1964301))))

(declare-datatypes ((Option!13346 0))(
  ( (None!13345) (Some!13345 (v!48970 List!54735)) )
))
(declare-fun isDefined!10483 (Option!13346) Bool)

(declare-fun getValueByKey!2516 (List!54736 (_ BitVec 64)) Option!13346)

(assert (=> b!4813237 (isDefined!10483 (getValueByKey!2516 (toList!7188 lt!1964305) lt!1964303))))

(declare-fun lt!1964298 () Unit!141694)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2303 (List!54736 (_ BitVec 64)) Unit!141694)

(assert (=> b!4813237 (= lt!1964298 (lemmaContainsKeyImpliesGetValueByKeyDefined!2303 (toList!7188 lt!1964305) lt!1964303))))

(declare-fun containsKey!4182 (List!54736 (_ BitVec 64)) Bool)

(assert (=> b!4813237 (containsKey!4182 (toList!7188 lt!1964305) lt!1964303)))

(declare-fun lt!1964309 () Unit!141694)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!296 (List!54736 (_ BitVec 64)) Unit!141694)

(assert (=> b!4813237 (= lt!1964309 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!296 (toList!7188 lt!1964305) lt!1964303))))

(declare-fun e!3007176 () Unit!141694)

(declare-fun Unit!141696 () Unit!141694)

(assert (=> b!4813237 (= e!3007176 Unit!141696)))

(declare-fun b!4813238 () Bool)

(declare-fun e!3007164 () Unit!141694)

(declare-fun Unit!141697 () Unit!141694)

(assert (=> b!4813238 (= e!3007164 Unit!141697)))

(declare-fun b!4813239 () Bool)

(declare-fun e!3007167 () Unit!141694)

(declare-fun lt!1964307 () Unit!141694)

(assert (=> b!4813239 (= e!3007167 lt!1964307)))

(declare-datatypes ((array!18752 0))(
  ( (array!18753 (arr!8367 (Array (_ BitVec 32) (_ BitVec 64))) (size!36613 (_ BitVec 32))) )
))
(declare-datatypes ((array!18754 0))(
  ( (array!18755 (arr!8368 (Array (_ BitVec 32) List!54735)) (size!36614 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10182 0))(
  ( (LongMapFixedSize!10183 (defaultEntry!5513 Int) (mask!15117 (_ BitVec 32)) (extraKeys!5371 (_ BitVec 32)) (zeroValue!5384 List!54735) (minValue!5384 List!54735) (_size!10207 (_ BitVec 32)) (_keys!5440 array!18752) (_values!5409 array!18754) (_vacant!5156 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20129 0))(
  ( (Cell!20130 (v!48971 LongMapFixedSize!10182)) )
))
(declare-datatypes ((MutLongMap!5091 0))(
  ( (LongMap!5091 (underlying!10389 Cell!20129)) (MutLongMapExt!5090 (__x!33371 Int)) )
))
(declare-datatypes ((Hashable!7102 0))(
  ( (HashableExt!7101 (__x!33372 Int)) )
))
(declare-datatypes ((Cell!20131 0))(
  ( (Cell!20132 (v!48972 MutLongMap!5091)) )
))
(declare-datatypes ((MutableMap!4975 0))(
  ( (MutableMapExt!4974 (__x!33373 Int)) (HashMap!4975 (underlying!10390 Cell!20131) (hashF!13380 Hashable!7102) (_size!10208 (_ BitVec 32)) (defaultValue!5146 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4975)

(declare-fun key!1652 () K!16244)

(declare-fun lt!1964306 () ListLongMap!5667)

(declare-fun lemmaInGenericMapThenInLongMap!392 (ListLongMap!5667 K!16244 Hashable!7102) Unit!141694)

(assert (=> b!4813239 (= lt!1964307 (lemmaInGenericMapThenInLongMap!392 lt!1964306 key!1652 (hashF!13380 thiss!41921)))))

(declare-fun res!2047215 () Bool)

(declare-fun call!335878 () Bool)

(assert (=> b!4813239 (= res!2047215 call!335878)))

(declare-fun e!3007173 () Bool)

(assert (=> b!4813239 (=> (not res!2047215) (not e!3007173))))

(assert (=> b!4813239 e!3007173))

(declare-fun lambda!233923 () Int)

(declare-fun b!4813240 () Bool)

(declare-fun lt!1964299 () tuple2!57540)

(declare-fun e!3007175 () Unit!141694)

(declare-fun forallContained!4288 (List!54736 Int tuple2!57540) Unit!141694)

(assert (=> b!4813240 (= e!3007175 (forallContained!4288 (toList!7188 lt!1964305) lambda!233923 lt!1964299))))

(declare-fun map!12474 (MutLongMap!5091) ListLongMap!5667)

(assert (=> b!4813240 (= lt!1964305 (map!12474 (v!48972 (underlying!10390 thiss!41921))))))

(declare-fun apply!13203 (MutLongMap!5091 (_ BitVec 64)) List!54735)

(assert (=> b!4813240 (= lt!1964301 (apply!13203 (v!48972 (underlying!10390 thiss!41921)) lt!1964303))))

(assert (=> b!4813240 (= lt!1964299 (tuple2!57541 lt!1964303 lt!1964301))))

(declare-fun c!820344 () Bool)

(declare-fun contains!18357 (List!54736 tuple2!57540) Bool)

(assert (=> b!4813240 (= c!820344 (not (contains!18357 (toList!7188 lt!1964305) lt!1964299)))))

(declare-fun lt!1964302 () Unit!141694)

(assert (=> b!4813240 (= lt!1964302 e!3007176)))

(declare-fun b!4813241 () Bool)

(declare-fun e!3007169 () Bool)

(declare-fun e!3007172 () Bool)

(assert (=> b!4813241 (= e!3007169 e!3007172)))

(declare-fun mapNonEmpty!22466 () Bool)

(declare-fun mapRes!22466 () Bool)

(declare-fun tp!1361548 () Bool)

(declare-fun tp!1361551 () Bool)

(assert (=> mapNonEmpty!22466 (= mapRes!22466 (and tp!1361548 tp!1361551))))

(declare-fun mapValue!22466 () List!54735)

(declare-fun mapRest!22466 () (Array (_ BitVec 32) List!54735))

(declare-fun mapKey!22466 () (_ BitVec 32))

(assert (=> mapNonEmpty!22466 (= (arr!8368 (_values!5409 (v!48971 (underlying!10389 (v!48972 (underlying!10390 thiss!41921)))))) (store mapRest!22466 mapKey!22466 mapValue!22466))))

(declare-fun b!4813242 () Bool)

(declare-fun e!3007170 () Bool)

(assert (=> b!4813242 (= e!3007170 false)))

(declare-fun lt!1964297 () Unit!141694)

(assert (=> b!4813242 (= lt!1964297 e!3007167)))

(declare-fun c!820345 () Bool)

(declare-datatypes ((ListMap!6603 0))(
  ( (ListMap!6604 (toList!7189 List!54735)) )
))
(declare-fun contains!18358 (ListMap!6603 K!16244) Bool)

(declare-fun extractMap!2553 (List!54736) ListMap!6603)

(assert (=> b!4813242 (= c!820345 (contains!18358 (extractMap!2553 (toList!7188 lt!1964306)) key!1652))))

(assert (=> b!4813242 (= lt!1964306 (map!12474 (v!48972 (underlying!10390 thiss!41921))))))

(declare-fun lt!1964304 () Unit!141694)

(assert (=> b!4813242 (= lt!1964304 e!3007175)))

(declare-fun c!820347 () Bool)

(declare-fun contains!18359 (MutLongMap!5091 (_ BitVec 64)) Bool)

(assert (=> b!4813242 (= c!820347 (contains!18359 (v!48972 (underlying!10390 thiss!41921)) lt!1964303))))

(declare-fun hash!5165 (Hashable!7102 K!16244) (_ BitVec 64))

(assert (=> b!4813242 (= lt!1964303 (hash!5165 (hashF!13380 thiss!41921) key!1652))))

(declare-fun b!4813243 () Bool)

(assert (=> b!4813243 (= e!3007167 e!3007164)))

(declare-fun res!2047217 () Bool)

(assert (=> b!4813243 (= res!2047217 call!335878)))

(declare-fun e!3007174 () Bool)

(assert (=> b!4813243 (=> (not res!2047217) (not e!3007174))))

(declare-fun c!820346 () Bool)

(assert (=> b!4813243 (= c!820346 e!3007174)))

(declare-fun b!4813244 () Bool)

(declare-fun e!3007168 () Bool)

(assert (=> b!4813244 (= e!3007172 e!3007168)))

(declare-fun tp!1361549 () Bool)

(declare-fun tp!1361553 () Bool)

(declare-fun e!3007165 () Bool)

(declare-fun array_inv!6045 (array!18752) Bool)

(declare-fun array_inv!6046 (array!18754) Bool)

(assert (=> b!4813245 (= e!3007168 (and tp!1361550 tp!1361549 tp!1361553 (array_inv!6045 (_keys!5440 (v!48971 (underlying!10389 (v!48972 (underlying!10390 thiss!41921)))))) (array_inv!6046 (_values!5409 (v!48971 (underlying!10389 (v!48972 (underlying!10390 thiss!41921)))))) e!3007165))))

(declare-fun b!4813246 () Bool)

(declare-fun e!3007171 () Bool)

(declare-fun lt!1964300 () MutLongMap!5091)

(get-info :version)

(assert (=> b!4813246 (= e!3007171 (and e!3007169 ((_ is LongMap!5091) lt!1964300)))))

(assert (=> b!4813246 (= lt!1964300 (v!48972 (underlying!10390 thiss!41921)))))

(declare-fun bm!335872 () Bool)

(declare-fun call!335877 () Bool)

(declare-datatypes ((Option!13347 0))(
  ( (None!13346) (Some!13346 (v!48973 tuple2!57538)) )
))
(declare-fun call!335879 () Option!13347)

(declare-fun isDefined!10484 (Option!13347) Bool)

(assert (=> bm!335872 (= call!335877 (isDefined!10484 call!335879))))

(declare-fun bm!335873 () Bool)

(declare-fun call!335880 () List!54735)

(declare-fun apply!13204 (ListLongMap!5667 (_ BitVec 64)) List!54735)

(assert (=> bm!335873 (= call!335880 (apply!13204 lt!1964306 lt!1964303))))

(declare-fun e!3007166 () Bool)

(assert (=> b!4813247 (= e!3007166 (and e!3007171 tp!1361552))))

(declare-fun b!4813248 () Bool)

(declare-fun Unit!141698 () Unit!141694)

(assert (=> b!4813248 (= e!3007176 Unit!141698)))

(declare-fun b!4813249 () Bool)

(assert (=> b!4813249 false))

(declare-fun lt!1964310 () Unit!141694)

(declare-fun lemmaInLongMapThenInGenericMap!223 (ListLongMap!5667 K!16244 Hashable!7102) Unit!141694)

(assert (=> b!4813249 (= lt!1964310 (lemmaInLongMapThenInGenericMap!223 lt!1964306 key!1652 (hashF!13380 thiss!41921)))))

(declare-fun Unit!141699 () Unit!141694)

(assert (=> b!4813249 (= e!3007164 Unit!141699)))

(declare-fun b!4813250 () Bool)

(assert (=> b!4813250 (= e!3007173 call!335877)))

(declare-fun b!4813251 () Bool)

(assert (=> b!4813251 (= e!3007174 call!335877)))

(declare-fun bm!335874 () Bool)

(declare-fun getPair!978 (List!54735 K!16244) Option!13347)

(assert (=> bm!335874 (= call!335879 (getPair!978 call!335880 key!1652))))

(declare-fun b!4813252 () Bool)

(declare-fun Unit!141700 () Unit!141694)

(assert (=> b!4813252 (= e!3007175 Unit!141700)))

(declare-fun res!2047216 () Bool)

(assert (=> start!497696 (=> (not res!2047216) (not e!3007170))))

(assert (=> start!497696 (= res!2047216 ((_ is HashMap!4975) thiss!41921))))

(assert (=> start!497696 e!3007170))

(assert (=> start!497696 e!3007166))

(declare-fun tp_is_empty!34071 () Bool)

(assert (=> start!497696 tp_is_empty!34071))

(declare-fun b!4813253 () Bool)

(declare-fun res!2047218 () Bool)

(assert (=> b!4813253 (=> (not res!2047218) (not e!3007170))))

(declare-fun valid!4119 (MutableMap!4975) Bool)

(assert (=> b!4813253 (= res!2047218 (valid!4119 thiss!41921))))

(declare-fun bm!335875 () Bool)

(declare-fun contains!18360 (ListLongMap!5667 (_ BitVec 64)) Bool)

(assert (=> bm!335875 (= call!335878 (contains!18360 lt!1964306 lt!1964303))))

(declare-fun b!4813254 () Bool)

(declare-fun tp!1361554 () Bool)

(assert (=> b!4813254 (= e!3007165 (and tp!1361554 mapRes!22466))))

(declare-fun condMapEmpty!22466 () Bool)

(declare-fun mapDefault!22466 () List!54735)

(assert (=> b!4813254 (= condMapEmpty!22466 (= (arr!8368 (_values!5409 (v!48971 (underlying!10389 (v!48972 (underlying!10390 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54735)) mapDefault!22466)))))

(declare-fun mapIsEmpty!22466 () Bool)

(assert (=> mapIsEmpty!22466 mapRes!22466))

(assert (= (and start!497696 res!2047216) b!4813253))

(assert (= (and b!4813253 res!2047218) b!4813242))

(assert (= (and b!4813242 c!820347) b!4813240))

(assert (= (and b!4813242 (not c!820347)) b!4813252))

(assert (= (and b!4813240 c!820344) b!4813237))

(assert (= (and b!4813240 (not c!820344)) b!4813248))

(assert (= (and b!4813242 c!820345) b!4813239))

(assert (= (and b!4813242 (not c!820345)) b!4813243))

(assert (= (and b!4813239 res!2047215) b!4813250))

(assert (= (and b!4813243 res!2047217) b!4813251))

(assert (= (and b!4813243 c!820346) b!4813249))

(assert (= (and b!4813243 (not c!820346)) b!4813238))

(assert (= (or b!4813250 b!4813251) bm!335873))

(assert (= (or b!4813239 b!4813243) bm!335875))

(assert (= (or b!4813250 b!4813251) bm!335874))

(assert (= (or b!4813250 b!4813251) bm!335872))

(assert (= (and b!4813254 condMapEmpty!22466) mapIsEmpty!22466))

(assert (= (and b!4813254 (not condMapEmpty!22466)) mapNonEmpty!22466))

(assert (= b!4813245 b!4813254))

(assert (= b!4813244 b!4813245))

(assert (= b!4813241 b!4813244))

(assert (= (and b!4813246 ((_ is LongMap!5091) (v!48972 (underlying!10390 thiss!41921)))) b!4813241))

(assert (= b!4813247 b!4813246))

(assert (= (and start!497696 ((_ is HashMap!4975) thiss!41921)) b!4813247))

(declare-fun m!5798782 () Bool)

(assert (=> mapNonEmpty!22466 m!5798782))

(declare-fun m!5798784 () Bool)

(assert (=> b!4813245 m!5798784))

(declare-fun m!5798786 () Bool)

(assert (=> b!4813245 m!5798786))

(declare-fun m!5798788 () Bool)

(assert (=> bm!335872 m!5798788))

(declare-fun m!5798790 () Bool)

(assert (=> bm!335873 m!5798790))

(declare-fun m!5798792 () Bool)

(assert (=> bm!335874 m!5798792))

(declare-fun m!5798794 () Bool)

(assert (=> b!4813253 m!5798794))

(declare-fun m!5798796 () Bool)

(assert (=> b!4813237 m!5798796))

(declare-fun m!5798798 () Bool)

(assert (=> b!4813237 m!5798798))

(declare-fun m!5798800 () Bool)

(assert (=> b!4813237 m!5798800))

(declare-fun m!5798802 () Bool)

(assert (=> b!4813237 m!5798802))

(declare-fun m!5798804 () Bool)

(assert (=> b!4813237 m!5798804))

(assert (=> b!4813237 m!5798800))

(declare-fun m!5798806 () Bool)

(assert (=> b!4813237 m!5798806))

(declare-fun m!5798808 () Bool)

(assert (=> b!4813242 m!5798808))

(declare-fun m!5798810 () Bool)

(assert (=> b!4813242 m!5798810))

(declare-fun m!5798812 () Bool)

(assert (=> b!4813242 m!5798812))

(assert (=> b!4813242 m!5798810))

(declare-fun m!5798814 () Bool)

(assert (=> b!4813242 m!5798814))

(declare-fun m!5798816 () Bool)

(assert (=> b!4813242 m!5798816))

(declare-fun m!5798818 () Bool)

(assert (=> b!4813239 m!5798818))

(declare-fun m!5798820 () Bool)

(assert (=> b!4813249 m!5798820))

(declare-fun m!5798822 () Bool)

(assert (=> bm!335875 m!5798822))

(declare-fun m!5798824 () Bool)

(assert (=> b!4813240 m!5798824))

(assert (=> b!4813240 m!5798816))

(declare-fun m!5798826 () Bool)

(assert (=> b!4813240 m!5798826))

(declare-fun m!5798828 () Bool)

(assert (=> b!4813240 m!5798828))

(check-sat (not b!4813249) (not b_next!131097) b_and!342117 (not b!4813253) (not b!4813254) (not bm!335873) (not b!4813245) (not b!4813240) (not bm!335874) (not b!4813242) (not b_next!131099) b_and!342119 tp_is_empty!34071 (not b!4813237) (not bm!335875) (not b!4813239) (not bm!335872) (not mapNonEmpty!22466))
(check-sat b_and!342117 b_and!342119 (not b_next!131097) (not b_next!131099))
