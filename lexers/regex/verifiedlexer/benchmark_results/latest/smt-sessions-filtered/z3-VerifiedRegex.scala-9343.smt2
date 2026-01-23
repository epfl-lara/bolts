; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496720 () Bool)

(assert start!496720)

(declare-fun b!4806893 () Bool)

(declare-fun b_free!129923 () Bool)

(declare-fun b_next!130713 () Bool)

(assert (=> b!4806893 (= b_free!129923 (not b_next!130713))))

(declare-fun tp!1359215 () Bool)

(declare-fun b_and!341683 () Bool)

(assert (=> b!4806893 (= tp!1359215 b_and!341683)))

(declare-fun b!4806894 () Bool)

(declare-fun b_free!129925 () Bool)

(declare-fun b_next!130715 () Bool)

(assert (=> b!4806894 (= b_free!129925 (not b_next!130715))))

(declare-fun tp!1359220 () Bool)

(declare-fun b_and!341685 () Bool)

(assert (=> b!4806894 (= tp!1359220 b_and!341685)))

(declare-fun res!2045026 () Bool)

(declare-fun e!3002283 () Bool)

(assert (=> start!496720 (=> (not res!2045026) (not e!3002283))))

(declare-datatypes ((K!16004 0))(
  ( (K!16005 (val!21109 Int)) )
))
(declare-datatypes ((array!18330 0))(
  ( (array!18331 (arr!8175 (Array (_ BitVec 32) (_ BitVec 64))) (size!36421 (_ BitVec 32))) )
))
(declare-datatypes ((V!16250 0))(
  ( (V!16251 (val!21110 Int)) )
))
(declare-datatypes ((tuple2!57174 0))(
  ( (tuple2!57175 (_1!31881 K!16004) (_2!31881 V!16250)) )
))
(declare-datatypes ((List!54540 0))(
  ( (Nil!54416) (Cons!54416 (h!60848 tuple2!57174) (t!361996 List!54540)) )
))
(declare-datatypes ((array!18332 0))(
  ( (array!18333 (arr!8176 (Array (_ BitVec 32) List!54540)) (size!36422 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9990 0))(
  ( (LongMapFixedSize!9991 (defaultEntry!5413 Int) (mask!14963 (_ BitVec 32)) (extraKeys!5270 (_ BitVec 32)) (zeroValue!5283 List!54540) (minValue!5283 List!54540) (_size!10015 (_ BitVec 32)) (_keys!5337 array!18330) (_values!5308 array!18332) (_vacant!5060 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19745 0))(
  ( (Cell!19746 (v!48635 LongMapFixedSize!9990)) )
))
(declare-datatypes ((MutLongMap!4995 0))(
  ( (LongMap!4995 (underlying!10197 Cell!19745)) (MutLongMapExt!4994 (__x!33083 Int)) )
))
(declare-datatypes ((Hashable!7006 0))(
  ( (HashableExt!7005 (__x!33084 Int)) )
))
(declare-datatypes ((Cell!19747 0))(
  ( (Cell!19748 (v!48636 MutLongMap!4995)) )
))
(declare-datatypes ((MutableMap!4879 0))(
  ( (MutableMapExt!4878 (__x!33085 Int)) (HashMap!4879 (underlying!10198 Cell!19747) (hashF!13274 Hashable!7006) (_size!10016 (_ BitVec 32)) (defaultValue!5050 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4879)

(get-info :version)

(assert (=> start!496720 (= res!2045026 ((_ is HashMap!4879) thiss!41921))))

(assert (=> start!496720 e!3002283))

(declare-fun e!3002282 () Bool)

(assert (=> start!496720 e!3002282))

(declare-fun tp_is_empty!33841 () Bool)

(assert (=> start!496720 tp_is_empty!33841))

(declare-fun mapIsEmpty!22118 () Bool)

(declare-fun mapRes!22118 () Bool)

(assert (=> mapIsEmpty!22118 mapRes!22118))

(declare-fun tp!1359219 () Bool)

(declare-fun tp!1359217 () Bool)

(declare-fun e!3002285 () Bool)

(declare-fun e!3002287 () Bool)

(declare-fun array_inv!5885 (array!18330) Bool)

(declare-fun array_inv!5886 (array!18332) Bool)

(assert (=> b!4806893 (= e!3002285 (and tp!1359215 tp!1359219 tp!1359217 (array_inv!5885 (_keys!5337 (v!48635 (underlying!10197 (v!48636 (underlying!10198 thiss!41921)))))) (array_inv!5886 (_values!5308 (v!48635 (underlying!10197 (v!48636 (underlying!10198 thiss!41921)))))) e!3002287))))

(declare-fun e!3002281 () Bool)

(assert (=> b!4806894 (= e!3002282 (and e!3002281 tp!1359220))))

(declare-fun b!4806895 () Bool)

(declare-fun e!3002289 () Bool)

(assert (=> b!4806895 (= e!3002289 e!3002285)))

(declare-fun b!4806896 () Bool)

(declare-fun tp!1359216 () Bool)

(assert (=> b!4806896 (= e!3002287 (and tp!1359216 mapRes!22118))))

(declare-fun condMapEmpty!22118 () Bool)

(declare-fun mapDefault!22118 () List!54540)

(assert (=> b!4806896 (= condMapEmpty!22118 (= (arr!8176 (_values!5308 (v!48635 (underlying!10197 (v!48636 (underlying!10198 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54540)) mapDefault!22118)))))

(declare-fun mapNonEmpty!22118 () Bool)

(declare-fun tp!1359221 () Bool)

(declare-fun tp!1359218 () Bool)

(assert (=> mapNonEmpty!22118 (= mapRes!22118 (and tp!1359221 tp!1359218))))

(declare-fun mapValue!22118 () List!54540)

(declare-fun mapKey!22118 () (_ BitVec 32))

(declare-fun mapRest!22118 () (Array (_ BitVec 32) List!54540))

(assert (=> mapNonEmpty!22118 (= (arr!8176 (_values!5308 (v!48635 (underlying!10197 (v!48636 (underlying!10198 thiss!41921)))))) (store mapRest!22118 mapKey!22118 mapValue!22118))))

(declare-fun b!4806897 () Bool)

(declare-fun e!3002286 () Bool)

(assert (=> b!4806897 (= e!3002286 e!3002289)))

(declare-fun b!4806898 () Bool)

(declare-fun res!2045027 () Bool)

(assert (=> b!4806898 (=> (not res!2045027) (not e!3002283))))

(declare-fun valid!4005 (MutableMap!4879) Bool)

(assert (=> b!4806898 (= res!2045027 (valid!4005 thiss!41921))))

(declare-fun b!4806899 () Bool)

(declare-datatypes ((Unit!141275 0))(
  ( (Unit!141276) )
))
(declare-fun e!3002284 () Unit!141275)

(declare-fun Unit!141277 () Unit!141275)

(assert (=> b!4806899 (= e!3002284 Unit!141277)))

(declare-fun b!4806900 () Bool)

(declare-fun e!3002280 () Bool)

(assert (=> b!4806900 (= e!3002283 e!3002280)))

(declare-fun res!2045025 () Bool)

(assert (=> b!4806900 (=> (not res!2045025) (not e!3002280))))

(declare-fun lt!1960173 () (_ BitVec 64))

(declare-fun contains!18079 (MutLongMap!4995 (_ BitVec 64)) Bool)

(assert (=> b!4806900 (= res!2045025 (contains!18079 (v!48636 (underlying!10198 thiss!41921)) lt!1960173))))

(declare-fun key!1652 () K!16004)

(declare-fun hash!5072 (Hashable!7006 K!16004) (_ BitVec 64))

(assert (=> b!4806900 (= lt!1960173 (hash!5072 (hashF!13274 thiss!41921) key!1652))))

(declare-fun b!4806901 () Bool)

(declare-fun Unit!141278 () Unit!141275)

(assert (=> b!4806901 (= e!3002284 Unit!141278)))

(declare-fun lt!1960175 () Unit!141275)

(declare-datatypes ((tuple2!57176 0))(
  ( (tuple2!57177 (_1!31882 (_ BitVec 64)) (_2!31882 List!54540)) )
))
(declare-datatypes ((List!54541 0))(
  ( (Nil!54417) (Cons!54417 (h!60849 tuple2!57176) (t!361997 List!54541)) )
))
(declare-datatypes ((ListLongMap!5495 0))(
  ( (ListLongMap!5496 (toList!7055 List!54541)) )
))
(declare-fun lt!1960172 () ListLongMap!5495)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!225 (List!54541 (_ BitVec 64)) Unit!141275)

(assert (=> b!4806901 (= lt!1960175 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!225 (toList!7055 lt!1960172) lt!1960173))))

(declare-fun containsKey!4090 (List!54541 (_ BitVec 64)) Bool)

(assert (=> b!4806901 (containsKey!4090 (toList!7055 lt!1960172) lt!1960173)))

(declare-fun lt!1960177 () Unit!141275)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2223 (List!54541 (_ BitVec 64)) Unit!141275)

(assert (=> b!4806901 (= lt!1960177 (lemmaContainsKeyImpliesGetValueByKeyDefined!2223 (toList!7055 lt!1960172) lt!1960173))))

(declare-datatypes ((Option!13238 0))(
  ( (None!13237) (Some!13237 (v!48637 List!54540)) )
))
(declare-fun isDefined!10377 (Option!13238) Bool)

(declare-fun getValueByKey!2435 (List!54541 (_ BitVec 64)) Option!13238)

(assert (=> b!4806901 (isDefined!10377 (getValueByKey!2435 (toList!7055 lt!1960172) lt!1960173))))

(declare-fun lt!1960170 () Unit!141275)

(declare-fun lt!1960176 () List!54540)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!954 (List!54541 (_ BitVec 64) List!54540) Unit!141275)

(assert (=> b!4806901 (= lt!1960170 (lemmaGetValueByKeyImpliesContainsTuple!954 (toList!7055 lt!1960172) lt!1960173 lt!1960176))))

(assert (=> b!4806901 false))

(declare-fun b!4806902 () Bool)

(declare-fun lt!1960171 () MutLongMap!4995)

(assert (=> b!4806902 (= e!3002281 (and e!3002286 ((_ is LongMap!4995) lt!1960171)))))

(assert (=> b!4806902 (= lt!1960171 (v!48636 (underlying!10198 thiss!41921)))))

(declare-fun b!4806903 () Bool)

(assert (=> b!4806903 (= e!3002280 (not ((_ is LongMap!4995) (v!48636 (underlying!10198 thiss!41921)))))))

(declare-fun lt!1960174 () Unit!141275)

(assert (=> b!4806903 (= lt!1960174 e!3002284)))

(declare-fun c!819300 () Bool)

(declare-fun contains!18080 (List!54541 tuple2!57176) Bool)

(assert (=> b!4806903 (= c!819300 (not (contains!18080 (toList!7055 lt!1960172) (tuple2!57177 lt!1960173 lt!1960176))))))

(declare-fun apply!13077 (MutLongMap!4995 (_ BitVec 64)) List!54540)

(assert (=> b!4806903 (= lt!1960176 (apply!13077 (v!48636 (underlying!10198 thiss!41921)) lt!1960173))))

(declare-fun map!12326 (MutLongMap!4995) ListLongMap!5495)

(assert (=> b!4806903 (= lt!1960172 (map!12326 (v!48636 (underlying!10198 thiss!41921))))))

(assert (= (and start!496720 res!2045026) b!4806898))

(assert (= (and b!4806898 res!2045027) b!4806900))

(assert (= (and b!4806900 res!2045025) b!4806903))

(assert (= (and b!4806903 c!819300) b!4806901))

(assert (= (and b!4806903 (not c!819300)) b!4806899))

(assert (= (and b!4806896 condMapEmpty!22118) mapIsEmpty!22118))

(assert (= (and b!4806896 (not condMapEmpty!22118)) mapNonEmpty!22118))

(assert (= b!4806893 b!4806896))

(assert (= b!4806895 b!4806893))

(assert (= b!4806897 b!4806895))

(assert (= (and b!4806902 ((_ is LongMap!4995) (v!48636 (underlying!10198 thiss!41921)))) b!4806897))

(assert (= b!4806894 b!4806902))

(assert (= (and start!496720 ((_ is HashMap!4879) thiss!41921)) b!4806894))

(declare-fun m!5793178 () Bool)

(assert (=> b!4806893 m!5793178))

(declare-fun m!5793180 () Bool)

(assert (=> b!4806893 m!5793180))

(declare-fun m!5793182 () Bool)

(assert (=> mapNonEmpty!22118 m!5793182))

(declare-fun m!5793184 () Bool)

(assert (=> b!4806901 m!5793184))

(declare-fun m!5793186 () Bool)

(assert (=> b!4806901 m!5793186))

(declare-fun m!5793188 () Bool)

(assert (=> b!4806901 m!5793188))

(declare-fun m!5793190 () Bool)

(assert (=> b!4806901 m!5793190))

(declare-fun m!5793192 () Bool)

(assert (=> b!4806901 m!5793192))

(assert (=> b!4806901 m!5793184))

(declare-fun m!5793194 () Bool)

(assert (=> b!4806901 m!5793194))

(declare-fun m!5793196 () Bool)

(assert (=> b!4806903 m!5793196))

(declare-fun m!5793198 () Bool)

(assert (=> b!4806903 m!5793198))

(declare-fun m!5793200 () Bool)

(assert (=> b!4806903 m!5793200))

(declare-fun m!5793202 () Bool)

(assert (=> b!4806898 m!5793202))

(declare-fun m!5793204 () Bool)

(assert (=> b!4806900 m!5793204))

(declare-fun m!5793206 () Bool)

(assert (=> b!4806900 m!5793206))

(check-sat (not b_next!130713) (not b_next!130715) (not b!4806898) (not b!4806903) tp_is_empty!33841 b_and!341683 b_and!341685 (not b!4806900) (not b!4806901) (not b!4806893) (not mapNonEmpty!22118) (not b!4806896))
(check-sat b_and!341683 b_and!341685 (not b_next!130713) (not b_next!130715))
