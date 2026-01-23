; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496758 () Bool)

(assert start!496758)

(declare-fun b!4807105 () Bool)

(declare-fun b_free!129939 () Bool)

(declare-fun b_next!130729 () Bool)

(assert (=> b!4807105 (= b_free!129939 (not b_next!130729))))

(declare-fun tp!1359319 () Bool)

(declare-fun b_and!341701 () Bool)

(assert (=> b!4807105 (= tp!1359319 b_and!341701)))

(declare-fun b!4807104 () Bool)

(declare-fun b_free!129941 () Bool)

(declare-fun b_next!130731 () Bool)

(assert (=> b!4807104 (= b_free!129941 (not b_next!130731))))

(declare-fun tp!1359318 () Bool)

(declare-fun b_and!341703 () Bool)

(assert (=> b!4807104 (= tp!1359318 b_and!341703)))

(declare-fun b!4807097 () Bool)

(declare-fun e!3002462 () Bool)

(declare-fun e!3002461 () Bool)

(assert (=> b!4807097 (= e!3002462 e!3002461)))

(declare-fun b!4807098 () Bool)

(declare-datatypes ((Unit!141291 0))(
  ( (Unit!141292) )
))
(declare-fun e!3002458 () Unit!141291)

(declare-fun Unit!141293 () Unit!141291)

(assert (=> b!4807098 (= e!3002458 Unit!141293)))

(declare-fun b!4807099 () Bool)

(declare-fun e!3002463 () Bool)

(declare-fun e!3002457 () Bool)

(declare-datatypes ((K!16014 0))(
  ( (K!16015 (val!21117 Int)) )
))
(declare-datatypes ((array!18348 0))(
  ( (array!18349 (arr!8183 (Array (_ BitVec 32) (_ BitVec 64))) (size!36429 (_ BitVec 32))) )
))
(declare-datatypes ((V!16260 0))(
  ( (V!16261 (val!21118 Int)) )
))
(declare-datatypes ((tuple2!57190 0))(
  ( (tuple2!57191 (_1!31889 K!16014) (_2!31889 V!16260)) )
))
(declare-datatypes ((List!54548 0))(
  ( (Nil!54424) (Cons!54424 (h!60856 tuple2!57190) (t!362006 List!54548)) )
))
(declare-datatypes ((array!18350 0))(
  ( (array!18351 (arr!8184 (Array (_ BitVec 32) List!54548)) (size!36430 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9998 0))(
  ( (LongMapFixedSize!9999 (defaultEntry!5417 Int) (mask!14969 (_ BitVec 32)) (extraKeys!5274 (_ BitVec 32)) (zeroValue!5287 List!54548) (minValue!5287 List!54548) (_size!10023 (_ BitVec 32)) (_keys!5341 array!18348) (_values!5312 array!18350) (_vacant!5064 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19761 0))(
  ( (Cell!19762 (v!48649 LongMapFixedSize!9998)) )
))
(declare-datatypes ((MutLongMap!4999 0))(
  ( (LongMap!4999 (underlying!10205 Cell!19761)) (MutLongMapExt!4998 (__x!33095 Int)) )
))
(declare-fun lt!1960290 () MutLongMap!4999)

(get-info :version)

(assert (=> b!4807099 (= e!3002463 (and e!3002457 ((_ is LongMap!4999) lt!1960290)))))

(declare-datatypes ((Hashable!7010 0))(
  ( (HashableExt!7009 (__x!33096 Int)) )
))
(declare-datatypes ((Cell!19763 0))(
  ( (Cell!19764 (v!48650 MutLongMap!4999)) )
))
(declare-datatypes ((MutableMap!4883 0))(
  ( (MutableMapExt!4882 (__x!33097 Int)) (HashMap!4883 (underlying!10206 Cell!19763) (hashF!13278 Hashable!7010) (_size!10024 (_ BitVec 32)) (defaultValue!5054 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4883)

(assert (=> b!4807099 (= lt!1960290 (v!48650 (underlying!10206 thiss!41921)))))

(declare-fun b!4807100 () Bool)

(declare-fun e!3002456 () Bool)

(declare-fun lt!1960292 () Bool)

(assert (=> b!4807100 (= e!3002456 lt!1960292)))

(declare-fun b!4807101 () Bool)

(declare-fun e!3002460 () Bool)

(declare-fun e!3002466 () Bool)

(assert (=> b!4807101 (= e!3002460 e!3002466)))

(declare-fun res!2045100 () Bool)

(assert (=> b!4807101 (=> (not res!2045100) (not e!3002466))))

(declare-fun lt!1960291 () (_ BitVec 64))

(declare-fun contains!18089 (MutLongMap!4999 (_ BitVec 64)) Bool)

(assert (=> b!4807101 (= res!2045100 (contains!18089 (v!48650 (underlying!10206 thiss!41921)) lt!1960291))))

(declare-fun key!1652 () K!16014)

(declare-fun hash!5077 (Hashable!7010 K!16014) (_ BitVec 64))

(assert (=> b!4807101 (= lt!1960291 (hash!5077 (hashF!13278 thiss!41921) key!1652))))

(declare-fun b!4807102 () Bool)

(declare-fun Unit!141294 () Unit!141291)

(assert (=> b!4807102 (= e!3002458 Unit!141294)))

(declare-fun lt!1960294 () Unit!141291)

(declare-datatypes ((tuple2!57192 0))(
  ( (tuple2!57193 (_1!31890 (_ BitVec 64)) (_2!31890 List!54548)) )
))
(declare-datatypes ((List!54549 0))(
  ( (Nil!54425) (Cons!54425 (h!60857 tuple2!57192) (t!362007 List!54549)) )
))
(declare-datatypes ((ListLongMap!5503 0))(
  ( (ListLongMap!5504 (toList!7059 List!54549)) )
))
(declare-fun lt!1960289 () ListLongMap!5503)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!229 (List!54549 (_ BitVec 64)) Unit!141291)

(assert (=> b!4807102 (= lt!1960294 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!229 (toList!7059 lt!1960289) lt!1960291))))

(declare-fun containsKey!4094 (List!54549 (_ BitVec 64)) Bool)

(assert (=> b!4807102 (containsKey!4094 (toList!7059 lt!1960289) lt!1960291)))

(declare-fun lt!1960293 () Unit!141291)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2227 (List!54549 (_ BitVec 64)) Unit!141291)

(assert (=> b!4807102 (= lt!1960293 (lemmaContainsKeyImpliesGetValueByKeyDefined!2227 (toList!7059 lt!1960289) lt!1960291))))

(declare-datatypes ((Option!13242 0))(
  ( (None!13241) (Some!13241 (v!48651 List!54548)) )
))
(declare-fun isDefined!10381 (Option!13242) Bool)

(declare-fun getValueByKey!2439 (List!54549 (_ BitVec 64)) Option!13242)

(assert (=> b!4807102 (isDefined!10381 (getValueByKey!2439 (toList!7059 lt!1960289) lt!1960291))))

(declare-fun lt!1960295 () Unit!141291)

(declare-fun lt!1960296 () List!54548)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!958 (List!54549 (_ BitVec 64) List!54548) Unit!141291)

(assert (=> b!4807102 (= lt!1960295 (lemmaGetValueByKeyImpliesContainsTuple!958 (toList!7059 lt!1960289) lt!1960291 lt!1960296))))

(assert (=> b!4807102 false))

(declare-fun b!4807103 () Bool)

(assert (=> b!4807103 (= e!3002466 e!3002456)))

(declare-fun res!2045102 () Bool)

(assert (=> b!4807103 (=> res!2045102 e!3002456)))

(declare-fun lambda!233477 () Int)

(declare-fun forall!12373 (List!54549 Int) Bool)

(assert (=> b!4807103 (= res!2045102 (not (forall!12373 (toList!7059 lt!1960289) lambda!233477)))))

(declare-fun lt!1960297 () Unit!141291)

(assert (=> b!4807103 (= lt!1960297 e!3002458)))

(declare-fun c!819321 () Bool)

(assert (=> b!4807103 (= c!819321 lt!1960292)))

(declare-fun contains!18090 (List!54549 tuple2!57192) Bool)

(assert (=> b!4807103 (= lt!1960292 (not (contains!18090 (toList!7059 lt!1960289) (tuple2!57193 lt!1960291 lt!1960296))))))

(declare-fun apply!13082 (MutLongMap!4999 (_ BitVec 64)) List!54548)

(assert (=> b!4807103 (= lt!1960296 (apply!13082 (v!48650 (underlying!10206 thiss!41921)) lt!1960291))))

(declare-fun map!12333 (MutLongMap!4999) ListLongMap!5503)

(assert (=> b!4807103 (= lt!1960289 (map!12333 (v!48650 (underlying!10206 thiss!41921))))))

(declare-fun e!3002464 () Bool)

(assert (=> b!4807104 (= e!3002464 (and e!3002463 tp!1359318))))

(declare-fun b!4807106 () Bool)

(declare-fun e!3002465 () Bool)

(declare-fun tp!1359317 () Bool)

(declare-fun mapRes!22133 () Bool)

(assert (=> b!4807106 (= e!3002465 (and tp!1359317 mapRes!22133))))

(declare-fun condMapEmpty!22133 () Bool)

(declare-fun mapDefault!22133 () List!54548)

(assert (=> b!4807106 (= condMapEmpty!22133 (= (arr!8184 (_values!5312 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54548)) mapDefault!22133)))))

(declare-fun b!4807107 () Bool)

(assert (=> b!4807107 (= e!3002457 e!3002462)))

(declare-fun tp!1359316 () Bool)

(declare-fun tp!1359315 () Bool)

(declare-fun array_inv!5893 (array!18348) Bool)

(declare-fun array_inv!5894 (array!18350) Bool)

(assert (=> b!4807105 (= e!3002461 (and tp!1359319 tp!1359316 tp!1359315 (array_inv!5893 (_keys!5341 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))))) (array_inv!5894 (_values!5312 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))))) e!3002465))))

(declare-fun res!2045099 () Bool)

(assert (=> start!496758 (=> (not res!2045099) (not e!3002460))))

(assert (=> start!496758 (= res!2045099 ((_ is HashMap!4883) thiss!41921))))

(assert (=> start!496758 e!3002460))

(assert (=> start!496758 e!3002464))

(declare-fun tp_is_empty!33851 () Bool)

(assert (=> start!496758 tp_is_empty!33851))

(declare-fun b!4807108 () Bool)

(declare-fun res!2045101 () Bool)

(assert (=> b!4807108 (=> (not res!2045101) (not e!3002460))))

(declare-fun valid!4011 (MutableMap!4883) Bool)

(assert (=> b!4807108 (= res!2045101 (valid!4011 thiss!41921))))

(declare-fun mapNonEmpty!22133 () Bool)

(declare-fun tp!1359314 () Bool)

(declare-fun tp!1359320 () Bool)

(assert (=> mapNonEmpty!22133 (= mapRes!22133 (and tp!1359314 tp!1359320))))

(declare-fun mapRest!22133 () (Array (_ BitVec 32) List!54548))

(declare-fun mapKey!22133 () (_ BitVec 32))

(declare-fun mapValue!22133 () List!54548)

(assert (=> mapNonEmpty!22133 (= (arr!8184 (_values!5312 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))))) (store mapRest!22133 mapKey!22133 mapValue!22133))))

(declare-fun mapIsEmpty!22133 () Bool)

(assert (=> mapIsEmpty!22133 mapRes!22133))

(assert (= (and start!496758 res!2045099) b!4807108))

(assert (= (and b!4807108 res!2045101) b!4807101))

(assert (= (and b!4807101 res!2045100) b!4807103))

(assert (= (and b!4807103 c!819321) b!4807102))

(assert (= (and b!4807103 (not c!819321)) b!4807098))

(assert (= (and b!4807103 (not res!2045102)) b!4807100))

(assert (= (and b!4807106 condMapEmpty!22133) mapIsEmpty!22133))

(assert (= (and b!4807106 (not condMapEmpty!22133)) mapNonEmpty!22133))

(assert (= b!4807105 b!4807106))

(assert (= b!4807097 b!4807105))

(assert (= b!4807107 b!4807097))

(assert (= (and b!4807099 ((_ is LongMap!4999) (v!48650 (underlying!10206 thiss!41921)))) b!4807107))

(assert (= b!4807104 b!4807099))

(assert (= (and start!496758 ((_ is HashMap!4883) thiss!41921)) b!4807104))

(declare-fun m!5793348 () Bool)

(assert (=> b!4807103 m!5793348))

(declare-fun m!5793350 () Bool)

(assert (=> b!4807103 m!5793350))

(declare-fun m!5793352 () Bool)

(assert (=> b!4807103 m!5793352))

(declare-fun m!5793354 () Bool)

(assert (=> b!4807103 m!5793354))

(declare-fun m!5793356 () Bool)

(assert (=> b!4807105 m!5793356))

(declare-fun m!5793358 () Bool)

(assert (=> b!4807105 m!5793358))

(declare-fun m!5793360 () Bool)

(assert (=> mapNonEmpty!22133 m!5793360))

(declare-fun m!5793362 () Bool)

(assert (=> b!4807108 m!5793362))

(declare-fun m!5793364 () Bool)

(assert (=> b!4807101 m!5793364))

(declare-fun m!5793366 () Bool)

(assert (=> b!4807101 m!5793366))

(declare-fun m!5793368 () Bool)

(assert (=> b!4807102 m!5793368))

(declare-fun m!5793370 () Bool)

(assert (=> b!4807102 m!5793370))

(declare-fun m!5793372 () Bool)

(assert (=> b!4807102 m!5793372))

(declare-fun m!5793374 () Bool)

(assert (=> b!4807102 m!5793374))

(declare-fun m!5793376 () Bool)

(assert (=> b!4807102 m!5793376))

(assert (=> b!4807102 m!5793370))

(declare-fun m!5793378 () Bool)

(assert (=> b!4807102 m!5793378))

(check-sat (not b!4807102) tp_is_empty!33851 (not b!4807103) (not b!4807105) (not b!4807106) (not b!4807101) (not b_next!130731) b_and!341703 b_and!341701 (not b!4807108) (not mapNonEmpty!22133) (not b_next!130729))
(check-sat b_and!341701 b_and!341703 (not b_next!130729) (not b_next!130731))
(get-model)

(declare-fun d!1539846 () Bool)

(declare-fun isEmpty!29536 (Option!13242) Bool)

(assert (=> d!1539846 (= (isDefined!10381 (getValueByKey!2439 (toList!7059 lt!1960289) lt!1960291)) (not (isEmpty!29536 (getValueByKey!2439 (toList!7059 lt!1960289) lt!1960291))))))

(declare-fun bs!1159905 () Bool)

(assert (= bs!1159905 d!1539846))

(assert (=> bs!1159905 m!5793370))

(declare-fun m!5793380 () Bool)

(assert (=> bs!1159905 m!5793380))

(assert (=> b!4807102 d!1539846))

(declare-fun d!1539848 () Bool)

(declare-fun res!2045107 () Bool)

(declare-fun e!3002471 () Bool)

(assert (=> d!1539848 (=> res!2045107 e!3002471)))

(assert (=> d!1539848 (= res!2045107 (and ((_ is Cons!54425) (toList!7059 lt!1960289)) (= (_1!31890 (h!60857 (toList!7059 lt!1960289))) lt!1960291)))))

(assert (=> d!1539848 (= (containsKey!4094 (toList!7059 lt!1960289) lt!1960291) e!3002471)))

(declare-fun b!4807113 () Bool)

(declare-fun e!3002472 () Bool)

(assert (=> b!4807113 (= e!3002471 e!3002472)))

(declare-fun res!2045108 () Bool)

(assert (=> b!4807113 (=> (not res!2045108) (not e!3002472))))

(assert (=> b!4807113 (= res!2045108 (and (or (not ((_ is Cons!54425) (toList!7059 lt!1960289))) (bvsle (_1!31890 (h!60857 (toList!7059 lt!1960289))) lt!1960291)) ((_ is Cons!54425) (toList!7059 lt!1960289)) (bvslt (_1!31890 (h!60857 (toList!7059 lt!1960289))) lt!1960291)))))

(declare-fun b!4807114 () Bool)

(assert (=> b!4807114 (= e!3002472 (containsKey!4094 (t!362007 (toList!7059 lt!1960289)) lt!1960291))))

(assert (= (and d!1539848 (not res!2045107)) b!4807113))

(assert (= (and b!4807113 res!2045108) b!4807114))

(declare-fun m!5793382 () Bool)

(assert (=> b!4807114 m!5793382))

(assert (=> b!4807102 d!1539848))

(declare-fun b!4807125 () Bool)

(declare-fun e!3002478 () Option!13242)

(assert (=> b!4807125 (= e!3002478 (getValueByKey!2439 (t!362007 (toList!7059 lt!1960289)) lt!1960291))))

(declare-fun b!4807124 () Bool)

(declare-fun e!3002477 () Option!13242)

(assert (=> b!4807124 (= e!3002477 e!3002478)))

(declare-fun c!819327 () Bool)

(assert (=> b!4807124 (= c!819327 (and ((_ is Cons!54425) (toList!7059 lt!1960289)) (not (= (_1!31890 (h!60857 (toList!7059 lt!1960289))) lt!1960291))))))

(declare-fun b!4807123 () Bool)

(assert (=> b!4807123 (= e!3002477 (Some!13241 (_2!31890 (h!60857 (toList!7059 lt!1960289)))))))

(declare-fun b!4807126 () Bool)

(assert (=> b!4807126 (= e!3002478 None!13241)))

(declare-fun d!1539850 () Bool)

(declare-fun c!819326 () Bool)

(assert (=> d!1539850 (= c!819326 (and ((_ is Cons!54425) (toList!7059 lt!1960289)) (= (_1!31890 (h!60857 (toList!7059 lt!1960289))) lt!1960291)))))

(assert (=> d!1539850 (= (getValueByKey!2439 (toList!7059 lt!1960289) lt!1960291) e!3002477)))

(assert (= (and d!1539850 c!819326) b!4807123))

(assert (= (and d!1539850 (not c!819326)) b!4807124))

(assert (= (and b!4807124 c!819327) b!4807125))

(assert (= (and b!4807124 (not c!819327)) b!4807126))

(declare-fun m!5793384 () Bool)

(assert (=> b!4807125 m!5793384))

(assert (=> b!4807102 d!1539850))

(declare-fun d!1539852 () Bool)

(assert (=> d!1539852 (isDefined!10381 (getValueByKey!2439 (toList!7059 lt!1960289) lt!1960291))))

(declare-fun lt!1960300 () Unit!141291)

(declare-fun choose!34805 (List!54549 (_ BitVec 64)) Unit!141291)

(assert (=> d!1539852 (= lt!1960300 (choose!34805 (toList!7059 lt!1960289) lt!1960291))))

(declare-fun e!3002481 () Bool)

(assert (=> d!1539852 e!3002481))

(declare-fun res!2045111 () Bool)

(assert (=> d!1539852 (=> (not res!2045111) (not e!3002481))))

(declare-fun isStrictlySorted!918 (List!54549) Bool)

(assert (=> d!1539852 (= res!2045111 (isStrictlySorted!918 (toList!7059 lt!1960289)))))

(assert (=> d!1539852 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2227 (toList!7059 lt!1960289) lt!1960291) lt!1960300)))

(declare-fun b!4807129 () Bool)

(assert (=> b!4807129 (= e!3002481 (containsKey!4094 (toList!7059 lt!1960289) lt!1960291))))

(assert (= (and d!1539852 res!2045111) b!4807129))

(assert (=> d!1539852 m!5793370))

(assert (=> d!1539852 m!5793370))

(assert (=> d!1539852 m!5793372))

(declare-fun m!5793386 () Bool)

(assert (=> d!1539852 m!5793386))

(declare-fun m!5793388 () Bool)

(assert (=> d!1539852 m!5793388))

(assert (=> b!4807129 m!5793374))

(assert (=> b!4807102 d!1539852))

(declare-fun d!1539854 () Bool)

(assert (=> d!1539854 (containsKey!4094 (toList!7059 lt!1960289) lt!1960291)))

(declare-fun lt!1960303 () Unit!141291)

(declare-fun choose!34806 (List!54549 (_ BitVec 64)) Unit!141291)

(assert (=> d!1539854 (= lt!1960303 (choose!34806 (toList!7059 lt!1960289) lt!1960291))))

(declare-fun e!3002484 () Bool)

(assert (=> d!1539854 e!3002484))

(declare-fun res!2045114 () Bool)

(assert (=> d!1539854 (=> (not res!2045114) (not e!3002484))))

(assert (=> d!1539854 (= res!2045114 (isStrictlySorted!918 (toList!7059 lt!1960289)))))

(assert (=> d!1539854 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!229 (toList!7059 lt!1960289) lt!1960291) lt!1960303)))

(declare-fun b!4807132 () Bool)

(assert (=> b!4807132 (= e!3002484 (isDefined!10381 (getValueByKey!2439 (toList!7059 lt!1960289) lt!1960291)))))

(assert (= (and d!1539854 res!2045114) b!4807132))

(assert (=> d!1539854 m!5793374))

(declare-fun m!5793390 () Bool)

(assert (=> d!1539854 m!5793390))

(assert (=> d!1539854 m!5793388))

(assert (=> b!4807132 m!5793370))

(assert (=> b!4807132 m!5793370))

(assert (=> b!4807132 m!5793372))

(assert (=> b!4807102 d!1539854))

(declare-fun d!1539856 () Bool)

(assert (=> d!1539856 (contains!18090 (toList!7059 lt!1960289) (tuple2!57193 lt!1960291 lt!1960296))))

(declare-fun lt!1960306 () Unit!141291)

(declare-fun choose!34807 (List!54549 (_ BitVec 64) List!54548) Unit!141291)

(assert (=> d!1539856 (= lt!1960306 (choose!34807 (toList!7059 lt!1960289) lt!1960291 lt!1960296))))

(declare-fun e!3002487 () Bool)

(assert (=> d!1539856 e!3002487))

(declare-fun res!2045117 () Bool)

(assert (=> d!1539856 (=> (not res!2045117) (not e!3002487))))

(assert (=> d!1539856 (= res!2045117 (isStrictlySorted!918 (toList!7059 lt!1960289)))))

(assert (=> d!1539856 (= (lemmaGetValueByKeyImpliesContainsTuple!958 (toList!7059 lt!1960289) lt!1960291 lt!1960296) lt!1960306)))

(declare-fun b!4807135 () Bool)

(assert (=> b!4807135 (= e!3002487 (= (getValueByKey!2439 (toList!7059 lt!1960289) lt!1960291) (Some!13241 lt!1960296)))))

(assert (= (and d!1539856 res!2045117) b!4807135))

(assert (=> d!1539856 m!5793350))

(declare-fun m!5793392 () Bool)

(assert (=> d!1539856 m!5793392))

(assert (=> d!1539856 m!5793388))

(assert (=> b!4807135 m!5793370))

(assert (=> b!4807102 d!1539856))

(declare-fun bs!1159906 () Bool)

(declare-fun b!4807140 () Bool)

(assert (= bs!1159906 (and b!4807140 b!4807103)))

(declare-fun lambda!233480 () Int)

(assert (=> bs!1159906 (= lambda!233480 lambda!233477)))

(declare-fun d!1539858 () Bool)

(declare-fun res!2045122 () Bool)

(declare-fun e!3002490 () Bool)

(assert (=> d!1539858 (=> (not res!2045122) (not e!3002490))))

(declare-fun valid!4012 (MutLongMap!4999) Bool)

(assert (=> d!1539858 (= res!2045122 (valid!4012 (v!48650 (underlying!10206 thiss!41921))))))

(assert (=> d!1539858 (= (valid!4011 thiss!41921) e!3002490)))

(declare-fun res!2045123 () Bool)

(assert (=> b!4807140 (=> (not res!2045123) (not e!3002490))))

(assert (=> b!4807140 (= res!2045123 (forall!12373 (toList!7059 (map!12333 (v!48650 (underlying!10206 thiss!41921)))) lambda!233480))))

(declare-fun b!4807141 () Bool)

(declare-fun allKeysSameHashInMap!2390 (ListLongMap!5503 Hashable!7010) Bool)

(assert (=> b!4807141 (= e!3002490 (allKeysSameHashInMap!2390 (map!12333 (v!48650 (underlying!10206 thiss!41921))) (hashF!13278 thiss!41921)))))

(assert (= (and d!1539858 res!2045122) b!4807140))

(assert (= (and b!4807140 res!2045123) b!4807141))

(declare-fun m!5793394 () Bool)

(assert (=> d!1539858 m!5793394))

(assert (=> b!4807140 m!5793354))

(declare-fun m!5793396 () Bool)

(assert (=> b!4807140 m!5793396))

(assert (=> b!4807141 m!5793354))

(assert (=> b!4807141 m!5793354))

(declare-fun m!5793398 () Bool)

(assert (=> b!4807141 m!5793398))

(assert (=> b!4807108 d!1539858))

(declare-fun d!1539860 () Bool)

(declare-fun lt!1960309 () Bool)

(declare-fun contains!18091 (ListLongMap!5503 (_ BitVec 64)) Bool)

(assert (=> d!1539860 (= lt!1960309 (contains!18091 (map!12333 (v!48650 (underlying!10206 thiss!41921))) lt!1960291))))

(declare-fun contains!18092 (LongMapFixedSize!9998 (_ BitVec 64)) Bool)

(assert (=> d!1539860 (= lt!1960309 (contains!18092 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))) lt!1960291))))

(assert (=> d!1539860 (valid!4012 (v!48650 (underlying!10206 thiss!41921)))))

(assert (=> d!1539860 (= (contains!18089 (v!48650 (underlying!10206 thiss!41921)) lt!1960291) lt!1960309)))

(declare-fun bs!1159907 () Bool)

(assert (= bs!1159907 d!1539860))

(assert (=> bs!1159907 m!5793354))

(assert (=> bs!1159907 m!5793354))

(declare-fun m!5793400 () Bool)

(assert (=> bs!1159907 m!5793400))

(declare-fun m!5793402 () Bool)

(assert (=> bs!1159907 m!5793402))

(assert (=> bs!1159907 m!5793394))

(assert (=> b!4807101 d!1539860))

(declare-fun d!1539862 () Bool)

(declare-fun hash!5078 (Hashable!7010 K!16014) (_ BitVec 64))

(assert (=> d!1539862 (= (hash!5077 (hashF!13278 thiss!41921) key!1652) (hash!5078 (hashF!13278 thiss!41921) key!1652))))

(declare-fun bs!1159908 () Bool)

(assert (= bs!1159908 d!1539862))

(declare-fun m!5793404 () Bool)

(assert (=> bs!1159908 m!5793404))

(assert (=> b!4807101 d!1539862))

(declare-fun d!1539864 () Bool)

(assert (=> d!1539864 (= (array_inv!5893 (_keys!5341 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))))) (bvsge (size!36429 (_keys!5341 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4807105 d!1539864))

(declare-fun d!1539866 () Bool)

(assert (=> d!1539866 (= (array_inv!5894 (_values!5312 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))))) (bvsge (size!36430 (_values!5312 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4807105 d!1539866))

(declare-fun d!1539868 () Bool)

(declare-fun res!2045128 () Bool)

(declare-fun e!3002495 () Bool)

(assert (=> d!1539868 (=> res!2045128 e!3002495)))

(assert (=> d!1539868 (= res!2045128 ((_ is Nil!54425) (toList!7059 lt!1960289)))))

(assert (=> d!1539868 (= (forall!12373 (toList!7059 lt!1960289) lambda!233477) e!3002495)))

(declare-fun b!4807146 () Bool)

(declare-fun e!3002496 () Bool)

(assert (=> b!4807146 (= e!3002495 e!3002496)))

(declare-fun res!2045129 () Bool)

(assert (=> b!4807146 (=> (not res!2045129) (not e!3002496))))

(declare-fun dynLambda!22114 (Int tuple2!57192) Bool)

(assert (=> b!4807146 (= res!2045129 (dynLambda!22114 lambda!233477 (h!60857 (toList!7059 lt!1960289))))))

(declare-fun b!4807147 () Bool)

(assert (=> b!4807147 (= e!3002496 (forall!12373 (t!362007 (toList!7059 lt!1960289)) lambda!233477))))

(assert (= (and d!1539868 (not res!2045128)) b!4807146))

(assert (= (and b!4807146 res!2045129) b!4807147))

(declare-fun b_lambda!188121 () Bool)

(assert (=> (not b_lambda!188121) (not b!4807146)))

(declare-fun m!5793406 () Bool)

(assert (=> b!4807146 m!5793406))

(declare-fun m!5793408 () Bool)

(assert (=> b!4807147 m!5793408))

(assert (=> b!4807103 d!1539868))

(declare-fun lt!1960312 () Bool)

(declare-fun d!1539870 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9765 (List!54549) (InoxSet tuple2!57192))

(assert (=> d!1539870 (= lt!1960312 (select (content!9765 (toList!7059 lt!1960289)) (tuple2!57193 lt!1960291 lt!1960296)))))

(declare-fun e!3002501 () Bool)

(assert (=> d!1539870 (= lt!1960312 e!3002501)))

(declare-fun res!2045134 () Bool)

(assert (=> d!1539870 (=> (not res!2045134) (not e!3002501))))

(assert (=> d!1539870 (= res!2045134 ((_ is Cons!54425) (toList!7059 lt!1960289)))))

(assert (=> d!1539870 (= (contains!18090 (toList!7059 lt!1960289) (tuple2!57193 lt!1960291 lt!1960296)) lt!1960312)))

(declare-fun b!4807152 () Bool)

(declare-fun e!3002502 () Bool)

(assert (=> b!4807152 (= e!3002501 e!3002502)))

(declare-fun res!2045135 () Bool)

(assert (=> b!4807152 (=> res!2045135 e!3002502)))

(assert (=> b!4807152 (= res!2045135 (= (h!60857 (toList!7059 lt!1960289)) (tuple2!57193 lt!1960291 lt!1960296)))))

(declare-fun b!4807153 () Bool)

(assert (=> b!4807153 (= e!3002502 (contains!18090 (t!362007 (toList!7059 lt!1960289)) (tuple2!57193 lt!1960291 lt!1960296)))))

(assert (= (and d!1539870 res!2045134) b!4807152))

(assert (= (and b!4807152 (not res!2045135)) b!4807153))

(declare-fun m!5793410 () Bool)

(assert (=> d!1539870 m!5793410))

(declare-fun m!5793412 () Bool)

(assert (=> d!1539870 m!5793412))

(declare-fun m!5793414 () Bool)

(assert (=> b!4807153 m!5793414))

(assert (=> b!4807103 d!1539870))

(declare-fun d!1539872 () Bool)

(declare-fun e!3002505 () Bool)

(assert (=> d!1539872 e!3002505))

(declare-fun c!819330 () Bool)

(assert (=> d!1539872 (= c!819330 (contains!18089 (v!48650 (underlying!10206 thiss!41921)) lt!1960291))))

(declare-fun lt!1960315 () List!54548)

(declare-fun apply!13083 (LongMapFixedSize!9998 (_ BitVec 64)) List!54548)

(assert (=> d!1539872 (= lt!1960315 (apply!13083 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))) lt!1960291))))

(assert (=> d!1539872 (valid!4012 (v!48650 (underlying!10206 thiss!41921)))))

(assert (=> d!1539872 (= (apply!13082 (v!48650 (underlying!10206 thiss!41921)) lt!1960291) lt!1960315)))

(declare-fun b!4807158 () Bool)

(declare-fun get!18616 (Option!13242) List!54548)

(assert (=> b!4807158 (= e!3002505 (= lt!1960315 (get!18616 (getValueByKey!2439 (toList!7059 (map!12333 (v!48650 (underlying!10206 thiss!41921)))) lt!1960291))))))

(declare-fun b!4807159 () Bool)

(declare-fun dynLambda!22115 (Int (_ BitVec 64)) List!54548)

(assert (=> b!4807159 (= e!3002505 (= lt!1960315 (dynLambda!22115 (defaultEntry!5417 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921))))) lt!1960291)))))

(assert (=> b!4807159 ((_ is LongMap!4999) (v!48650 (underlying!10206 thiss!41921)))))

(assert (= (and d!1539872 c!819330) b!4807158))

(assert (= (and d!1539872 (not c!819330)) b!4807159))

(declare-fun b_lambda!188123 () Bool)

(assert (=> (not b_lambda!188123) (not b!4807159)))

(declare-fun t!362009 () Bool)

(declare-fun tb!257511 () Bool)

(assert (=> (and b!4807105 (= (defaultEntry!5417 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921))))) (defaultEntry!5417 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921)))))) t!362009) tb!257511))

(assert (=> b!4807159 t!362009))

(declare-fun result!319546 () Bool)

(declare-fun b_and!341705 () Bool)

(assert (= b_and!341701 (and (=> t!362009 result!319546) b_and!341705)))

(assert (=> d!1539872 m!5793364))

(declare-fun m!5793416 () Bool)

(assert (=> d!1539872 m!5793416))

(assert (=> d!1539872 m!5793394))

(assert (=> b!4807158 m!5793354))

(declare-fun m!5793418 () Bool)

(assert (=> b!4807158 m!5793418))

(assert (=> b!4807158 m!5793418))

(declare-fun m!5793420 () Bool)

(assert (=> b!4807158 m!5793420))

(declare-fun m!5793422 () Bool)

(assert (=> b!4807159 m!5793422))

(assert (=> b!4807103 d!1539872))

(declare-fun d!1539874 () Bool)

(declare-fun map!12334 (LongMapFixedSize!9998) ListLongMap!5503)

(assert (=> d!1539874 (= (map!12333 (v!48650 (underlying!10206 thiss!41921))) (map!12334 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921))))))))

(declare-fun bs!1159909 () Bool)

(assert (= bs!1159909 d!1539874))

(declare-fun m!5793424 () Bool)

(assert (=> bs!1159909 m!5793424))

(assert (=> b!4807103 d!1539874))

(declare-fun b!4807164 () Bool)

(declare-fun e!3002508 () Bool)

(declare-fun tp!1359323 () Bool)

(declare-fun tp_is_empty!33853 () Bool)

(assert (=> b!4807164 (= e!3002508 (and tp_is_empty!33851 tp_is_empty!33853 tp!1359323))))

(assert (=> b!4807106 (= tp!1359317 e!3002508)))

(assert (= (and b!4807106 ((_ is Cons!54424) mapDefault!22133)) b!4807164))

(declare-fun tp!1359324 () Bool)

(declare-fun e!3002509 () Bool)

(declare-fun b!4807165 () Bool)

(assert (=> b!4807165 (= e!3002509 (and tp_is_empty!33851 tp_is_empty!33853 tp!1359324))))

(assert (=> b!4807105 (= tp!1359316 e!3002509)))

(assert (= (and b!4807105 ((_ is Cons!54424) (zeroValue!5287 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921))))))) b!4807165))

(declare-fun e!3002510 () Bool)

(declare-fun b!4807166 () Bool)

(declare-fun tp!1359325 () Bool)

(assert (=> b!4807166 (= e!3002510 (and tp_is_empty!33851 tp_is_empty!33853 tp!1359325))))

(assert (=> b!4807105 (= tp!1359315 e!3002510)))

(assert (= (and b!4807105 ((_ is Cons!54424) (minValue!5287 (v!48649 (underlying!10205 (v!48650 (underlying!10206 thiss!41921))))))) b!4807166))

(declare-fun mapNonEmpty!22136 () Bool)

(declare-fun mapRes!22136 () Bool)

(declare-fun tp!1359333 () Bool)

(declare-fun e!3002515 () Bool)

(assert (=> mapNonEmpty!22136 (= mapRes!22136 (and tp!1359333 e!3002515))))

(declare-fun mapKey!22136 () (_ BitVec 32))

(declare-fun mapRest!22136 () (Array (_ BitVec 32) List!54548))

(declare-fun mapValue!22136 () List!54548)

(assert (=> mapNonEmpty!22136 (= mapRest!22133 (store mapRest!22136 mapKey!22136 mapValue!22136))))

(declare-fun condMapEmpty!22136 () Bool)

(declare-fun mapDefault!22136 () List!54548)

(assert (=> mapNonEmpty!22133 (= condMapEmpty!22136 (= mapRest!22133 ((as const (Array (_ BitVec 32) List!54548)) mapDefault!22136)))))

(declare-fun e!3002516 () Bool)

(assert (=> mapNonEmpty!22133 (= tp!1359314 (and e!3002516 mapRes!22136))))

(declare-fun tp!1359334 () Bool)

(declare-fun b!4807174 () Bool)

(assert (=> b!4807174 (= e!3002516 (and tp_is_empty!33851 tp_is_empty!33853 tp!1359334))))

(declare-fun mapIsEmpty!22136 () Bool)

(assert (=> mapIsEmpty!22136 mapRes!22136))

(declare-fun tp!1359332 () Bool)

(declare-fun b!4807173 () Bool)

(assert (=> b!4807173 (= e!3002515 (and tp_is_empty!33851 tp_is_empty!33853 tp!1359332))))

(assert (= (and mapNonEmpty!22133 condMapEmpty!22136) mapIsEmpty!22136))

(assert (= (and mapNonEmpty!22133 (not condMapEmpty!22136)) mapNonEmpty!22136))

(assert (= (and mapNonEmpty!22136 ((_ is Cons!54424) mapValue!22136)) b!4807173))

(assert (= (and mapNonEmpty!22133 ((_ is Cons!54424) mapDefault!22136)) b!4807174))

(declare-fun m!5793426 () Bool)

(assert (=> mapNonEmpty!22136 m!5793426))

(declare-fun b!4807175 () Bool)

(declare-fun tp!1359335 () Bool)

(declare-fun e!3002517 () Bool)

(assert (=> b!4807175 (= e!3002517 (and tp_is_empty!33851 tp_is_empty!33853 tp!1359335))))

(assert (=> mapNonEmpty!22133 (= tp!1359320 e!3002517)))

(assert (= (and mapNonEmpty!22133 ((_ is Cons!54424) mapValue!22133)) b!4807175))

(declare-fun b_lambda!188125 () Bool)

(assert (= b_lambda!188123 (or (and b!4807105 b_free!129939) b_lambda!188125)))

(declare-fun b_lambda!188127 () Bool)

(assert (= b_lambda!188121 (or b!4807103 b_lambda!188127)))

(declare-fun bs!1159910 () Bool)

(declare-fun d!1539876 () Bool)

(assert (= bs!1159910 (and d!1539876 b!4807103)))

(declare-fun noDuplicateKeys!2377 (List!54548) Bool)

(assert (=> bs!1159910 (= (dynLambda!22114 lambda!233477 (h!60857 (toList!7059 lt!1960289))) (noDuplicateKeys!2377 (_2!31890 (h!60857 (toList!7059 lt!1960289)))))))

(declare-fun m!5793428 () Bool)

(assert (=> bs!1159910 m!5793428))

(assert (=> b!4807146 d!1539876))

(check-sat (not b!4807147) (not d!1539858) tp_is_empty!33851 (not d!1539852) (not b!4807125) (not bs!1159910) (not b!4807141) (not d!1539854) (not b!4807140) (not b!4807132) tp_is_empty!33853 (not b_next!130729) (not d!1539846) (not b!4807164) (not b_lambda!188127) (not b!4807153) (not b!4807135) (not b!4807173) (not b_next!130731) (not d!1539874) (not d!1539870) (not d!1539856) (not b!4807129) (not tb!257511) b_and!341703 (not b!4807174) (not d!1539872) (not b_lambda!188125) (not b!4807165) (not b!4807175) (not d!1539860) (not b!4807158) (not d!1539862) (not b!4807114) b_and!341705 (not mapNonEmpty!22136) (not b!4807166))
(check-sat b_and!341705 b_and!341703 (not b_next!130729) (not b_next!130731))
