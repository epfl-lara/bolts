; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496920 () Bool)

(assert start!496920)

(declare-fun b!4808042 () Bool)

(declare-fun b_free!130003 () Bool)

(declare-fun b_next!130793 () Bool)

(assert (=> b!4808042 (= b_free!130003 (not b_next!130793))))

(declare-fun tp!1359713 () Bool)

(declare-fun b_and!341773 () Bool)

(assert (=> b!4808042 (= tp!1359713 b_and!341773)))

(declare-fun b!4808039 () Bool)

(declare-fun b_free!130005 () Bool)

(declare-fun b_next!130795 () Bool)

(assert (=> b!4808039 (= b_free!130005 (not b_next!130795))))

(declare-fun tp!1359716 () Bool)

(declare-fun b_and!341775 () Bool)

(assert (=> b!4808039 (= tp!1359716 b_and!341775)))

(declare-fun b!4808036 () Bool)

(declare-fun e!3003204 () Bool)

(declare-fun e!3003195 () Bool)

(declare-datatypes ((K!16054 0))(
  ( (K!16055 (val!21149 Int)) )
))
(declare-datatypes ((array!18420 0))(
  ( (array!18421 (arr!8215 (Array (_ BitVec 32) (_ BitVec 64))) (size!36461 (_ BitVec 32))) )
))
(declare-datatypes ((V!16300 0))(
  ( (V!16301 (val!21150 Int)) )
))
(declare-datatypes ((tuple2!57252 0))(
  ( (tuple2!57253 (_1!31920 K!16054) (_2!31920 V!16300)) )
))
(declare-datatypes ((List!54580 0))(
  ( (Nil!54456) (Cons!54456 (h!60888 tuple2!57252) (t!362046 List!54580)) )
))
(declare-datatypes ((array!18422 0))(
  ( (array!18423 (arr!8216 (Array (_ BitVec 32) List!54580)) (size!36462 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10030 0))(
  ( (LongMapFixedSize!10031 (defaultEntry!5433 Int) (mask!14993 (_ BitVec 32)) (extraKeys!5290 (_ BitVec 32)) (zeroValue!5303 List!54580) (minValue!5303 List!54580) (_size!10055 (_ BitVec 32)) (_keys!5357 array!18420) (_values!5328 array!18422) (_vacant!5080 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19825 0))(
  ( (Cell!19826 (v!48704 LongMapFixedSize!10030)) )
))
(declare-datatypes ((MutLongMap!5015 0))(
  ( (LongMap!5015 (underlying!10237 Cell!19825)) (MutLongMapExt!5014 (__x!33143 Int)) )
))
(declare-fun lt!1960896 () MutLongMap!5015)

(get-info :version)

(assert (=> b!4808036 (= e!3003204 (and e!3003195 ((_ is LongMap!5015) lt!1960896)))))

(declare-datatypes ((Hashable!7026 0))(
  ( (HashableExt!7025 (__x!33144 Int)) )
))
(declare-datatypes ((Cell!19827 0))(
  ( (Cell!19828 (v!48705 MutLongMap!5015)) )
))
(declare-datatypes ((MutableMap!4899 0))(
  ( (MutableMapExt!4898 (__x!33145 Int)) (HashMap!4899 (underlying!10238 Cell!19827) (hashF!13294 Hashable!7026) (_size!10056 (_ BitVec 32)) (defaultValue!5070 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4899)

(assert (=> b!4808036 (= lt!1960896 (v!48705 (underlying!10238 thiss!41921)))))

(declare-fun b!4808037 () Bool)

(declare-fun e!3003199 () Bool)

(declare-fun e!3003194 () Bool)

(assert (=> b!4808037 (= e!3003199 e!3003194)))

(declare-fun res!2045401 () Bool)

(assert (=> b!4808037 (=> (not res!2045401) (not e!3003194))))

(declare-fun key!1652 () K!16054)

(declare-datatypes ((ListMap!6525 0))(
  ( (ListMap!6526 (toList!7082 List!54580)) )
))
(declare-fun contains!18134 (ListMap!6525 K!16054) Bool)

(declare-datatypes ((tuple2!57254 0))(
  ( (tuple2!57255 (_1!31921 (_ BitVec 64)) (_2!31921 List!54580)) )
))
(declare-datatypes ((List!54581 0))(
  ( (Nil!54457) (Cons!54457 (h!60889 tuple2!57254) (t!362047 List!54581)) )
))
(declare-fun extractMap!2514 (List!54581) ListMap!6525)

(declare-datatypes ((ListLongMap!5533 0))(
  ( (ListLongMap!5534 (toList!7083 List!54581)) )
))
(declare-fun map!12358 (MutLongMap!5015) ListLongMap!5533)

(assert (=> b!4808037 (= res!2045401 (not (contains!18134 (extractMap!2514 (toList!7083 (map!12358 (v!48705 (underlying!10238 thiss!41921))))) key!1652)))))

(declare-datatypes ((Unit!141365 0))(
  ( (Unit!141366) )
))
(declare-fun lt!1960888 () Unit!141365)

(declare-fun e!3003202 () Unit!141365)

(assert (=> b!4808037 (= lt!1960888 e!3003202)))

(declare-fun c!819465 () Bool)

(declare-fun lt!1960893 () (_ BitVec 64))

(declare-fun contains!18135 (MutLongMap!5015 (_ BitVec 64)) Bool)

(assert (=> b!4808037 (= c!819465 (contains!18135 (v!48705 (underlying!10238 thiss!41921)) lt!1960893))))

(declare-fun hash!5096 (Hashable!7026 K!16054) (_ BitVec 64))

(assert (=> b!4808037 (= lt!1960893 (hash!5096 (hashF!13294 thiss!41921) key!1652))))

(declare-fun b!4808038 () Bool)

(declare-fun e!3003197 () Unit!141365)

(declare-fun Unit!141367 () Unit!141365)

(assert (=> b!4808038 (= e!3003197 Unit!141367)))

(declare-fun mapIsEmpty!22193 () Bool)

(declare-fun mapRes!22193 () Bool)

(assert (=> mapIsEmpty!22193 mapRes!22193))

(declare-fun e!3003198 () Bool)

(assert (=> b!4808039 (= e!3003198 (and e!3003204 tp!1359716))))

(declare-fun b!4808040 () Bool)

(declare-fun e!3003203 () Bool)

(declare-fun tp!1359714 () Bool)

(assert (=> b!4808040 (= e!3003203 (and tp!1359714 mapRes!22193))))

(declare-fun condMapEmpty!22193 () Bool)

(declare-fun mapDefault!22193 () List!54580)

(assert (=> b!4808040 (= condMapEmpty!22193 (= (arr!8216 (_values!5328 (v!48704 (underlying!10237 (v!48705 (underlying!10238 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54580)) mapDefault!22193)))))

(declare-fun b!4808041 () Bool)

(assert (=> b!4808041 (= e!3003194 (not ((_ is LongMap!5015) (v!48705 (underlying!10238 thiss!41921)))))))

(declare-fun res!2045402 () Bool)

(assert (=> start!496920 (=> (not res!2045402) (not e!3003199))))

(assert (=> start!496920 (= res!2045402 ((_ is HashMap!4899) thiss!41921))))

(assert (=> start!496920 e!3003199))

(assert (=> start!496920 e!3003198))

(declare-fun tp_is_empty!33891 () Bool)

(assert (=> start!496920 tp_is_empty!33891))

(declare-fun tp!1359715 () Bool)

(declare-fun e!3003196 () Bool)

(declare-fun tp!1359711 () Bool)

(declare-fun array_inv!5921 (array!18420) Bool)

(declare-fun array_inv!5922 (array!18422) Bool)

(assert (=> b!4808042 (= e!3003196 (and tp!1359713 tp!1359711 tp!1359715 (array_inv!5921 (_keys!5357 (v!48704 (underlying!10237 (v!48705 (underlying!10238 thiss!41921)))))) (array_inv!5922 (_values!5328 (v!48704 (underlying!10237 (v!48705 (underlying!10238 thiss!41921)))))) e!3003203))))

(declare-fun lt!1960894 () tuple2!57254)

(declare-fun lambda!233562 () Int)

(declare-fun lt!1960891 () ListLongMap!5533)

(declare-fun b!4808043 () Bool)

(declare-fun forallContained!4244 (List!54581 Int tuple2!57254) Unit!141365)

(assert (=> b!4808043 (= e!3003202 (forallContained!4244 (toList!7083 lt!1960891) lambda!233562 lt!1960894))))

(assert (=> b!4808043 (= lt!1960891 (map!12358 (v!48705 (underlying!10238 thiss!41921))))))

(declare-fun lt!1960897 () List!54580)

(declare-fun apply!13099 (MutLongMap!5015 (_ BitVec 64)) List!54580)

(assert (=> b!4808043 (= lt!1960897 (apply!13099 (v!48705 (underlying!10238 thiss!41921)) lt!1960893))))

(assert (=> b!4808043 (= lt!1960894 (tuple2!57255 lt!1960893 lt!1960897))))

(declare-fun c!819464 () Bool)

(declare-fun contains!18136 (List!54581 tuple2!57254) Bool)

(assert (=> b!4808043 (= c!819464 (not (contains!18136 (toList!7083 lt!1960891) lt!1960894)))))

(declare-fun lt!1960889 () Unit!141365)

(assert (=> b!4808043 (= lt!1960889 e!3003197)))

(declare-fun b!4808044 () Bool)

(declare-fun res!2045400 () Bool)

(assert (=> b!4808044 (=> (not res!2045400) (not e!3003199))))

(declare-fun valid!4032 (MutableMap!4899) Bool)

(assert (=> b!4808044 (= res!2045400 (valid!4032 thiss!41921))))

(declare-fun b!4808045 () Bool)

(declare-fun e!3003201 () Bool)

(assert (=> b!4808045 (= e!3003201 e!3003196)))

(declare-fun b!4808046 () Bool)

(assert (=> b!4808046 (= e!3003195 e!3003201)))

(declare-fun b!4808047 () Bool)

(declare-fun Unit!141368 () Unit!141365)

(assert (=> b!4808047 (= e!3003202 Unit!141368)))

(declare-fun b!4808048 () Bool)

(assert (=> b!4808048 false))

(declare-fun lt!1960890 () Unit!141365)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!972 (List!54581 (_ BitVec 64) List!54580) Unit!141365)

(assert (=> b!4808048 (= lt!1960890 (lemmaGetValueByKeyImpliesContainsTuple!972 (toList!7083 lt!1960891) lt!1960893 lt!1960897))))

(declare-datatypes ((Option!13257 0))(
  ( (None!13256) (Some!13256 (v!48706 List!54580)) )
))
(declare-fun isDefined!10396 (Option!13257) Bool)

(declare-fun getValueByKey!2454 (List!54581 (_ BitVec 64)) Option!13257)

(assert (=> b!4808048 (isDefined!10396 (getValueByKey!2454 (toList!7083 lt!1960891) lt!1960893))))

(declare-fun lt!1960892 () Unit!141365)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2242 (List!54581 (_ BitVec 64)) Unit!141365)

(assert (=> b!4808048 (= lt!1960892 (lemmaContainsKeyImpliesGetValueByKeyDefined!2242 (toList!7083 lt!1960891) lt!1960893))))

(declare-fun containsKey!4109 (List!54581 (_ BitVec 64)) Bool)

(assert (=> b!4808048 (containsKey!4109 (toList!7083 lt!1960891) lt!1960893)))

(declare-fun lt!1960895 () Unit!141365)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!243 (List!54581 (_ BitVec 64)) Unit!141365)

(assert (=> b!4808048 (= lt!1960895 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!243 (toList!7083 lt!1960891) lt!1960893))))

(declare-fun Unit!141369 () Unit!141365)

(assert (=> b!4808048 (= e!3003197 Unit!141369)))

(declare-fun mapNonEmpty!22193 () Bool)

(declare-fun tp!1359712 () Bool)

(declare-fun tp!1359710 () Bool)

(assert (=> mapNonEmpty!22193 (= mapRes!22193 (and tp!1359712 tp!1359710))))

(declare-fun mapKey!22193 () (_ BitVec 32))

(declare-fun mapRest!22193 () (Array (_ BitVec 32) List!54580))

(declare-fun mapValue!22193 () List!54580)

(assert (=> mapNonEmpty!22193 (= (arr!8216 (_values!5328 (v!48704 (underlying!10237 (v!48705 (underlying!10238 thiss!41921)))))) (store mapRest!22193 mapKey!22193 mapValue!22193))))

(assert (= (and start!496920 res!2045402) b!4808044))

(assert (= (and b!4808044 res!2045400) b!4808037))

(assert (= (and b!4808037 c!819465) b!4808043))

(assert (= (and b!4808037 (not c!819465)) b!4808047))

(assert (= (and b!4808043 c!819464) b!4808048))

(assert (= (and b!4808043 (not c!819464)) b!4808038))

(assert (= (and b!4808037 res!2045401) b!4808041))

(assert (= (and b!4808040 condMapEmpty!22193) mapIsEmpty!22193))

(assert (= (and b!4808040 (not condMapEmpty!22193)) mapNonEmpty!22193))

(assert (= b!4808042 b!4808040))

(assert (= b!4808045 b!4808042))

(assert (= b!4808046 b!4808045))

(assert (= (and b!4808036 ((_ is LongMap!5015) (v!48705 (underlying!10238 thiss!41921)))) b!4808046))

(assert (= b!4808039 b!4808036))

(assert (= (and start!496920 ((_ is HashMap!4899) thiss!41921)) b!4808039))

(declare-fun m!5794170 () Bool)

(assert (=> b!4808044 m!5794170))

(declare-fun m!5794172 () Bool)

(assert (=> b!4808037 m!5794172))

(declare-fun m!5794174 () Bool)

(assert (=> b!4808037 m!5794174))

(assert (=> b!4808037 m!5794174))

(declare-fun m!5794176 () Bool)

(assert (=> b!4808037 m!5794176))

(declare-fun m!5794178 () Bool)

(assert (=> b!4808037 m!5794178))

(declare-fun m!5794180 () Bool)

(assert (=> b!4808037 m!5794180))

(declare-fun m!5794182 () Bool)

(assert (=> b!4808043 m!5794182))

(assert (=> b!4808043 m!5794180))

(declare-fun m!5794184 () Bool)

(assert (=> b!4808043 m!5794184))

(declare-fun m!5794186 () Bool)

(assert (=> b!4808043 m!5794186))

(declare-fun m!5794188 () Bool)

(assert (=> b!4808042 m!5794188))

(declare-fun m!5794190 () Bool)

(assert (=> b!4808042 m!5794190))

(declare-fun m!5794192 () Bool)

(assert (=> mapNonEmpty!22193 m!5794192))

(declare-fun m!5794194 () Bool)

(assert (=> b!4808048 m!5794194))

(declare-fun m!5794196 () Bool)

(assert (=> b!4808048 m!5794196))

(assert (=> b!4808048 m!5794196))

(declare-fun m!5794198 () Bool)

(assert (=> b!4808048 m!5794198))

(declare-fun m!5794200 () Bool)

(assert (=> b!4808048 m!5794200))

(declare-fun m!5794202 () Bool)

(assert (=> b!4808048 m!5794202))

(declare-fun m!5794204 () Bool)

(assert (=> b!4808048 m!5794204))

(check-sat (not b!4808044) (not b!4808043) (not b_next!130795) (not b!4808048) tp_is_empty!33891 (not b_next!130793) (not b!4808037) b_and!341775 (not mapNonEmpty!22193) (not b!4808042) b_and!341773 (not b!4808040))
(check-sat b_and!341773 b_and!341775 (not b_next!130793) (not b_next!130795))
