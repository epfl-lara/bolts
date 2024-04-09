; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14894 () Bool)

(assert start!14894)

(declare-fun b!143264 () Bool)

(declare-fun b_free!3041 () Bool)

(declare-fun b_next!3041 () Bool)

(assert (=> b!143264 (= b_free!3041 (not b_next!3041))))

(declare-fun tp!11603 () Bool)

(declare-fun b_and!8949 () Bool)

(assert (=> b!143264 (= tp!11603 b_and!8949)))

(declare-fun b!143263 () Bool)

(declare-fun b_free!3043 () Bool)

(declare-fun b_next!3043 () Bool)

(assert (=> b!143263 (= b_free!3043 (not b_next!3043))))

(declare-fun tp!11606 () Bool)

(declare-fun b_and!8951 () Bool)

(assert (=> b!143263 (= tp!11606 b_and!8951)))

(declare-fun b!143256 () Bool)

(declare-fun e!93358 () Bool)

(declare-fun e!93373 () Bool)

(assert (=> b!143256 (= e!93358 e!93373)))

(declare-fun b!143257 () Bool)

(declare-fun e!93365 () Bool)

(declare-fun e!93362 () Bool)

(assert (=> b!143257 (= e!93365 (not e!93362))))

(declare-fun res!68247 () Bool)

(assert (=> b!143257 (=> res!68247 e!93362)))

(declare-datatypes ((V!3563 0))(
  ( (V!3564 (val!1513 Int)) )
))
(declare-datatypes ((array!4910 0))(
  ( (array!4911 (arr!2320 (Array (_ BitVec 32) (_ BitVec 64))) (size!2593 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1125 0))(
  ( (ValueCellFull!1125 (v!3295 V!3563)) (EmptyCell!1125) )
))
(declare-datatypes ((array!4912 0))(
  ( (array!4913 (arr!2321 (Array (_ BitVec 32) ValueCell!1125)) (size!2594 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1158 0))(
  ( (LongMapFixedSize!1159 (defaultEntry!2963 Int) (mask!7315 (_ BitVec 32)) (extraKeys!2714 (_ BitVec 32)) (zeroValue!2811 V!3563) (minValue!2811 V!3563) (_size!628 (_ BitVec 32)) (_keys!4726 array!4910) (_values!2946 array!4912) (_vacant!628 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!944 0))(
  ( (Cell!945 (v!3296 LongMapFixedSize!1158)) )
))
(declare-datatypes ((LongMap!944 0))(
  ( (LongMap!945 (underlying!483 Cell!944)) )
))
(declare-fun thiss!992 () LongMap!944)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!143257 (= res!68247 (or (bvsge (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992)))))))))

(declare-datatypes ((List!1767 0))(
  ( (Nil!1764) (Cons!1763 (h!2371 (_ BitVec 64)) (t!6388 List!1767)) )
))
(declare-fun arrayNoDuplicates!0 (array!4910 (_ BitVec 32) List!1767) Bool)

(assert (=> b!143257 (arrayNoDuplicates!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) from!355 Nil!1764)))

(declare-datatypes ((Unit!4550 0))(
  ( (Unit!4551) )
))
(declare-fun lt!75050 () Unit!4550)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4910 (_ BitVec 32) (_ BitVec 32)) Unit!4550)

(assert (=> b!143257 (= lt!75050 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!143257 (arrayContainsKey!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!75049 () Unit!4550)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!145 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 64) (_ BitVec 32) Int) Unit!4550)

(assert (=> b!143257 (= lt!75049 (lemmaListMapContainsThenArrayContainsFrom!145 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun mapIsEmpty!4861 () Bool)

(declare-fun mapRes!4861 () Bool)

(assert (=> mapIsEmpty!4861 mapRes!4861))

(declare-fun mapIsEmpty!4862 () Bool)

(declare-fun mapRes!4862 () Bool)

(assert (=> mapIsEmpty!4862 mapRes!4862))

(declare-fun mapNonEmpty!4861 () Bool)

(declare-fun tp!11605 () Bool)

(declare-fun e!93363 () Bool)

(assert (=> mapNonEmpty!4861 (= mapRes!4861 (and tp!11605 e!93363))))

(declare-fun mapKey!4861 () (_ BitVec 32))

(declare-fun mapRest!4861 () (Array (_ BitVec 32) ValueCell!1125))

(declare-fun mapValue!4862 () ValueCell!1125)

(assert (=> mapNonEmpty!4861 (= (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (store mapRest!4861 mapKey!4861 mapValue!4862))))

(declare-fun res!68252 () Bool)

(declare-fun e!93366 () Bool)

(assert (=> start!14894 (=> (not res!68252) (not e!93366))))

(declare-fun valid!557 (LongMap!944) Bool)

(assert (=> start!14894 (= res!68252 (valid!557 thiss!992))))

(assert (=> start!14894 e!93366))

(declare-fun e!93364 () Bool)

(assert (=> start!14894 e!93364))

(assert (=> start!14894 true))

(declare-fun e!93360 () Bool)

(assert (=> start!14894 e!93360))

(declare-fun b!143258 () Bool)

(declare-fun e!93368 () Bool)

(declare-fun tp_is_empty!2937 () Bool)

(assert (=> b!143258 (= e!93368 tp_is_empty!2937)))

(declare-fun b!143259 () Bool)

(assert (=> b!143259 (= e!93363 tp_is_empty!2937)))

(declare-fun b!143260 () Bool)

(declare-fun e!93371 () Bool)

(assert (=> b!143260 (= e!93366 e!93371)))

(declare-fun res!68250 () Bool)

(assert (=> b!143260 (=> (not res!68250) (not e!93371))))

(declare-datatypes ((tuple2!2690 0))(
  ( (tuple2!2691 (_1!1355 (_ BitVec 64)) (_2!1355 V!3563)) )
))
(declare-datatypes ((List!1768 0))(
  ( (Nil!1765) (Cons!1764 (h!2372 tuple2!2690) (t!6389 List!1768)) )
))
(declare-datatypes ((ListLongMap!1751 0))(
  ( (ListLongMap!1752 (toList!891 List!1768)) )
))
(declare-fun lt!75052 () ListLongMap!1751)

(declare-fun lt!75048 () ListLongMap!1751)

(assert (=> b!143260 (= res!68250 (and (= lt!75048 lt!75052) (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1158)

(declare-fun map!1442 (LongMapFixedSize!1158) ListLongMap!1751)

(assert (=> b!143260 (= lt!75052 (map!1442 newMap!16))))

(declare-fun getCurrentListMap!557 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 32) Int) ListLongMap!1751)

(assert (=> b!143260 (= lt!75048 (getCurrentListMap!557 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun b!143261 () Bool)

(assert (=> b!143261 (= e!93364 e!93358)))

(declare-fun b!143262 () Bool)

(declare-fun e!93369 () Bool)

(declare-fun e!93361 () Bool)

(assert (=> b!143262 (= e!93369 (and e!93361 mapRes!4862))))

(declare-fun condMapEmpty!4861 () Bool)

(declare-fun mapDefault!4861 () ValueCell!1125)

(assert (=> b!143262 (= condMapEmpty!4861 (= (arr!2321 (_values!2946 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1125)) mapDefault!4861)))))

(declare-fun array_inv!1435 (array!4910) Bool)

(declare-fun array_inv!1436 (array!4912) Bool)

(assert (=> b!143263 (= e!93360 (and tp!11606 tp_is_empty!2937 (array_inv!1435 (_keys!4726 newMap!16)) (array_inv!1436 (_values!2946 newMap!16)) e!93369))))

(declare-fun mapNonEmpty!4862 () Bool)

(declare-fun tp!11604 () Bool)

(assert (=> mapNonEmpty!4862 (= mapRes!4862 (and tp!11604 e!93368))))

(declare-fun mapValue!4861 () ValueCell!1125)

(declare-fun mapRest!4862 () (Array (_ BitVec 32) ValueCell!1125))

(declare-fun mapKey!4862 () (_ BitVec 32))

(assert (=> mapNonEmpty!4862 (= (arr!2321 (_values!2946 newMap!16)) (store mapRest!4862 mapKey!4862 mapValue!4861))))

(declare-fun e!93372 () Bool)

(assert (=> b!143264 (= e!93373 (and tp!11603 tp_is_empty!2937 (array_inv!1435 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (array_inv!1436 (_values!2946 (v!3296 (underlying!483 thiss!992)))) e!93372))))

(declare-fun b!143265 () Bool)

(assert (=> b!143265 (= e!93371 e!93365)))

(declare-fun res!68251 () Bool)

(assert (=> b!143265 (=> (not res!68251) (not e!93365))))

(declare-fun contains!924 (ListLongMap!1751 (_ BitVec 64)) Bool)

(assert (=> b!143265 (= res!68251 (contains!924 lt!75052 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2692 0))(
  ( (tuple2!2693 (_1!1356 Bool) (_2!1356 LongMapFixedSize!1158)) )
))
(declare-fun lt!75051 () tuple2!2692)

(declare-fun update!211 (LongMapFixedSize!1158 (_ BitVec 64) V!3563) tuple2!2692)

(declare-fun get!1541 (ValueCell!1125 V!3563) V!3563)

(declare-fun dynLambda!444 (Int (_ BitVec 64)) V!3563)

(assert (=> b!143265 (= lt!75051 (update!211 newMap!16 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!143266 () Bool)

(declare-fun res!68249 () Bool)

(assert (=> b!143266 (=> (not res!68249) (not e!93366))))

(declare-fun valid!558 (LongMapFixedSize!1158) Bool)

(assert (=> b!143266 (= res!68249 (valid!558 newMap!16))))

(declare-fun b!143267 () Bool)

(declare-fun e!93370 () Bool)

(assert (=> b!143267 (= e!93372 (and e!93370 mapRes!4861))))

(declare-fun condMapEmpty!4862 () Bool)

(declare-fun mapDefault!4862 () ValueCell!1125)

(assert (=> b!143267 (= condMapEmpty!4862 (= (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1125)) mapDefault!4862)))))

(declare-fun b!143268 () Bool)

(assert (=> b!143268 (= e!93361 tp_is_empty!2937)))

(declare-fun b!143269 () Bool)

(declare-fun res!68246 () Bool)

(assert (=> b!143269 (=> (not res!68246) (not e!93366))))

(assert (=> b!143269 (= res!68246 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7315 newMap!16)) (_size!628 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun b!143270 () Bool)

(assert (=> b!143270 (= e!93370 tp_is_empty!2937)))

(declare-fun b!143271 () Bool)

(declare-fun noDuplicate!52 (List!1767) Bool)

(assert (=> b!143271 (= e!93362 (noDuplicate!52 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764)))))

(declare-fun b!143272 () Bool)

(declare-fun res!68248 () Bool)

(assert (=> b!143272 (=> (not res!68248) (not e!93366))))

(assert (=> b!143272 (= res!68248 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992)))))))))

(assert (= (and start!14894 res!68252) b!143272))

(assert (= (and b!143272 res!68248) b!143266))

(assert (= (and b!143266 res!68249) b!143269))

(assert (= (and b!143269 res!68246) b!143260))

(assert (= (and b!143260 res!68250) b!143265))

(assert (= (and b!143265 res!68251) b!143257))

(assert (= (and b!143257 (not res!68247)) b!143271))

(assert (= (and b!143267 condMapEmpty!4862) mapIsEmpty!4861))

(assert (= (and b!143267 (not condMapEmpty!4862)) mapNonEmpty!4861))

(get-info :version)

(assert (= (and mapNonEmpty!4861 ((_ is ValueCellFull!1125) mapValue!4862)) b!143259))

(assert (= (and b!143267 ((_ is ValueCellFull!1125) mapDefault!4862)) b!143270))

(assert (= b!143264 b!143267))

(assert (= b!143256 b!143264))

(assert (= b!143261 b!143256))

(assert (= start!14894 b!143261))

(assert (= (and b!143262 condMapEmpty!4861) mapIsEmpty!4862))

(assert (= (and b!143262 (not condMapEmpty!4861)) mapNonEmpty!4862))

(assert (= (and mapNonEmpty!4862 ((_ is ValueCellFull!1125) mapValue!4861)) b!143258))

(assert (= (and b!143262 ((_ is ValueCellFull!1125) mapDefault!4861)) b!143268))

(assert (= b!143263 b!143262))

(assert (= start!14894 b!143263))

(declare-fun b_lambda!6467 () Bool)

(assert (=> (not b_lambda!6467) (not b!143265)))

(declare-fun t!6385 () Bool)

(declare-fun tb!2581 () Bool)

(assert (=> (and b!143264 (= (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))) t!6385) tb!2581))

(declare-fun result!4221 () Bool)

(assert (=> tb!2581 (= result!4221 tp_is_empty!2937)))

(assert (=> b!143265 t!6385))

(declare-fun b_and!8953 () Bool)

(assert (= b_and!8949 (and (=> t!6385 result!4221) b_and!8953)))

(declare-fun t!6387 () Bool)

(declare-fun tb!2583 () Bool)

(assert (=> (and b!143263 (= (defaultEntry!2963 newMap!16) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))) t!6387) tb!2583))

(declare-fun result!4225 () Bool)

(assert (= result!4225 result!4221))

(assert (=> b!143265 t!6387))

(declare-fun b_and!8955 () Bool)

(assert (= b_and!8951 (and (=> t!6387 result!4225) b_and!8955)))

(declare-fun m!173139 () Bool)

(assert (=> start!14894 m!173139))

(declare-fun m!173141 () Bool)

(assert (=> b!143260 m!173141))

(declare-fun m!173143 () Bool)

(assert (=> b!143260 m!173143))

(declare-fun m!173145 () Bool)

(assert (=> b!143260 m!173145))

(declare-fun m!173147 () Bool)

(assert (=> mapNonEmpty!4861 m!173147))

(declare-fun m!173149 () Bool)

(assert (=> b!143257 m!173149))

(declare-fun m!173151 () Bool)

(assert (=> b!143257 m!173151))

(assert (=> b!143257 m!173141))

(declare-fun m!173153 () Bool)

(assert (=> b!143257 m!173153))

(assert (=> b!143257 m!173141))

(assert (=> b!143257 m!173141))

(declare-fun m!173155 () Bool)

(assert (=> b!143257 m!173155))

(declare-fun m!173157 () Bool)

(assert (=> b!143265 m!173157))

(declare-fun m!173159 () Bool)

(assert (=> b!143265 m!173159))

(declare-fun m!173161 () Bool)

(assert (=> b!143265 m!173161))

(assert (=> b!143265 m!173141))

(assert (=> b!143265 m!173159))

(assert (=> b!143265 m!173141))

(declare-fun m!173163 () Bool)

(assert (=> b!143265 m!173163))

(assert (=> b!143265 m!173141))

(assert (=> b!143265 m!173161))

(declare-fun m!173165 () Bool)

(assert (=> b!143265 m!173165))

(assert (=> b!143265 m!173157))

(declare-fun m!173167 () Bool)

(assert (=> b!143266 m!173167))

(assert (=> b!143271 m!173141))

(declare-fun m!173169 () Bool)

(assert (=> b!143271 m!173169))

(declare-fun m!173171 () Bool)

(assert (=> b!143264 m!173171))

(declare-fun m!173173 () Bool)

(assert (=> b!143264 m!173173))

(declare-fun m!173175 () Bool)

(assert (=> b!143263 m!173175))

(declare-fun m!173177 () Bool)

(assert (=> b!143263 m!173177))

(declare-fun m!173179 () Bool)

(assert (=> mapNonEmpty!4862 m!173179))

(check-sat (not b!143257) (not b!143263) (not b!143271) (not b_lambda!6467) (not mapNonEmpty!4861) (not mapNonEmpty!4862) (not b!143266) (not b_next!3041) (not b_next!3043) b_and!8953 tp_is_empty!2937 (not b!143265) b_and!8955 (not b!143260) (not b!143264) (not start!14894))
(check-sat b_and!8953 b_and!8955 (not b_next!3041) (not b_next!3043))
(get-model)

(declare-fun b_lambda!6471 () Bool)

(assert (= b_lambda!6467 (or (and b!143264 b_free!3041) (and b!143263 b_free!3043 (= (defaultEntry!2963 newMap!16) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))))) b_lambda!6471)))

(check-sat (not b!143257) (not b!143263) (not b!143271) (not mapNonEmpty!4861) (not mapNonEmpty!4862) (not b!143266) (not b_lambda!6471) (not b_next!3041) (not b_next!3043) b_and!8953 tp_is_empty!2937 (not b!143265) b_and!8955 (not b!143260) (not b!143264) (not start!14894))
(check-sat b_and!8953 b_and!8955 (not b_next!3041) (not b_next!3043))
(get-model)

(declare-fun d!45847 () Bool)

(assert (=> d!45847 (= (array_inv!1435 (_keys!4726 newMap!16)) (bvsge (size!2593 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!143263 d!45847))

(declare-fun d!45849 () Bool)

(assert (=> d!45849 (= (array_inv!1436 (_values!2946 newMap!16)) (bvsge (size!2594 (_values!2946 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!143263 d!45849))

(declare-fun d!45851 () Bool)

(assert (=> d!45851 (= (valid!557 thiss!992) (valid!558 (v!3296 (underlying!483 thiss!992))))))

(declare-fun bs!6074 () Bool)

(assert (= bs!6074 d!45851))

(declare-fun m!173223 () Bool)

(assert (=> bs!6074 m!173223))

(assert (=> start!14894 d!45851))

(declare-fun d!45853 () Bool)

(declare-fun res!68280 () Bool)

(declare-fun e!93424 () Bool)

(assert (=> d!45853 (=> (not res!68280) (not e!93424))))

(declare-fun simpleValid!96 (LongMapFixedSize!1158) Bool)

(assert (=> d!45853 (= res!68280 (simpleValid!96 newMap!16))))

(assert (=> d!45853 (= (valid!558 newMap!16) e!93424)))

(declare-fun b!143334 () Bool)

(declare-fun res!68281 () Bool)

(assert (=> b!143334 (=> (not res!68281) (not e!93424))))

(declare-fun arrayCountValidKeys!0 (array!4910 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!143334 (= res!68281 (= (arrayCountValidKeys!0 (_keys!4726 newMap!16) #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))) (_size!628 newMap!16)))))

(declare-fun b!143335 () Bool)

(declare-fun res!68282 () Bool)

(assert (=> b!143335 (=> (not res!68282) (not e!93424))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4910 (_ BitVec 32)) Bool)

(assert (=> b!143335 (= res!68282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4726 newMap!16) (mask!7315 newMap!16)))))

(declare-fun b!143336 () Bool)

(assert (=> b!143336 (= e!93424 (arrayNoDuplicates!0 (_keys!4726 newMap!16) #b00000000000000000000000000000000 Nil!1764))))

(assert (= (and d!45853 res!68280) b!143334))

(assert (= (and b!143334 res!68281) b!143335))

(assert (= (and b!143335 res!68282) b!143336))

(declare-fun m!173225 () Bool)

(assert (=> d!45853 m!173225))

(declare-fun m!173227 () Bool)

(assert (=> b!143334 m!173227))

(declare-fun m!173229 () Bool)

(assert (=> b!143335 m!173229))

(declare-fun m!173231 () Bool)

(assert (=> b!143336 m!173231))

(assert (=> b!143266 d!45853))

(declare-fun d!45855 () Bool)

(declare-fun res!68287 () Bool)

(declare-fun e!93429 () Bool)

(assert (=> d!45855 (=> res!68287 e!93429)))

(assert (=> d!45855 (= res!68287 ((_ is Nil!1764) (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764)))))

(assert (=> d!45855 (= (noDuplicate!52 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764)) e!93429)))

(declare-fun b!143341 () Bool)

(declare-fun e!93430 () Bool)

(assert (=> b!143341 (= e!93429 e!93430)))

(declare-fun res!68288 () Bool)

(assert (=> b!143341 (=> (not res!68288) (not e!93430))))

(declare-fun contains!925 (List!1767 (_ BitVec 64)) Bool)

(assert (=> b!143341 (= res!68288 (not (contains!925 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764)) (h!2371 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764)))))))

(declare-fun b!143342 () Bool)

(assert (=> b!143342 (= e!93430 (noDuplicate!52 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))))))

(assert (= (and d!45855 (not res!68287)) b!143341))

(assert (= (and b!143341 res!68288) b!143342))

(declare-fun m!173233 () Bool)

(assert (=> b!143341 m!173233))

(declare-fun m!173235 () Bool)

(assert (=> b!143342 m!173235))

(assert (=> b!143271 d!45855))

(declare-fun d!45857 () Bool)

(declare-fun e!93436 () Bool)

(assert (=> d!45857 e!93436))

(declare-fun res!68291 () Bool)

(assert (=> d!45857 (=> res!68291 e!93436)))

(declare-fun lt!75077 () Bool)

(assert (=> d!45857 (= res!68291 (not lt!75077))))

(declare-fun lt!75076 () Bool)

(assert (=> d!45857 (= lt!75077 lt!75076)))

(declare-fun lt!75079 () Unit!4550)

(declare-fun e!93435 () Unit!4550)

(assert (=> d!45857 (= lt!75079 e!93435)))

(declare-fun c!27128 () Bool)

(assert (=> d!45857 (= c!27128 lt!75076)))

(declare-fun containsKey!180 (List!1768 (_ BitVec 64)) Bool)

(assert (=> d!45857 (= lt!75076 (containsKey!180 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> d!45857 (= (contains!924 lt!75052 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) lt!75077)))

(declare-fun b!143349 () Bool)

(declare-fun lt!75078 () Unit!4550)

(assert (=> b!143349 (= e!93435 lt!75078)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!129 (List!1768 (_ BitVec 64)) Unit!4550)

(assert (=> b!143349 (= lt!75078 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-datatypes ((Option!182 0))(
  ( (Some!181 (v!3300 V!3563)) (None!180) )
))
(declare-fun isDefined!130 (Option!182) Bool)

(declare-fun getValueByKey!176 (List!1768 (_ BitVec 64)) Option!182)

(assert (=> b!143349 (isDefined!130 (getValueByKey!176 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun b!143350 () Bool)

(declare-fun Unit!4554 () Unit!4550)

(assert (=> b!143350 (= e!93435 Unit!4554)))

(declare-fun b!143351 () Bool)

(assert (=> b!143351 (= e!93436 (isDefined!130 (getValueByKey!176 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))))))

(assert (= (and d!45857 c!27128) b!143349))

(assert (= (and d!45857 (not c!27128)) b!143350))

(assert (= (and d!45857 (not res!68291)) b!143351))

(assert (=> d!45857 m!173141))

(declare-fun m!173237 () Bool)

(assert (=> d!45857 m!173237))

(assert (=> b!143349 m!173141))

(declare-fun m!173239 () Bool)

(assert (=> b!143349 m!173239))

(assert (=> b!143349 m!173141))

(declare-fun m!173241 () Bool)

(assert (=> b!143349 m!173241))

(assert (=> b!143349 m!173241))

(declare-fun m!173243 () Bool)

(assert (=> b!143349 m!173243))

(assert (=> b!143351 m!173141))

(assert (=> b!143351 m!173241))

(assert (=> b!143351 m!173241))

(assert (=> b!143351 m!173243))

(assert (=> b!143265 d!45857))

(declare-fun b!143436 () Bool)

(declare-fun e!93484 () Bool)

(declare-datatypes ((SeekEntryResult!290 0))(
  ( (MissingZero!290 (index!3324 (_ BitVec 32))) (Found!290 (index!3325 (_ BitVec 32))) (Intermediate!290 (undefined!1102 Bool) (index!3326 (_ BitVec 32)) (x!16344 (_ BitVec 32))) (Undefined!290) (MissingVacant!290 (index!3327 (_ BitVec 32))) )
))
(declare-fun lt!75146 () SeekEntryResult!290)

(assert (=> b!143436 (= e!93484 ((_ is Undefined!290) lt!75146))))

(declare-fun b!143437 () Bool)

(declare-fun lt!75144 () Unit!4550)

(declare-fun e!93496 () Unit!4550)

(assert (=> b!143437 (= lt!75144 e!93496)))

(declare-fun c!27167 () Bool)

(declare-fun call!15879 () Bool)

(assert (=> b!143437 (= c!27167 call!15879)))

(declare-fun e!93501 () tuple2!2692)

(assert (=> b!143437 (= e!93501 (tuple2!2693 false newMap!16))))

(declare-fun b!143438 () Bool)

(declare-fun res!68323 () Bool)

(declare-fun call!15883 () Bool)

(assert (=> b!143438 (= res!68323 call!15883)))

(declare-fun e!93502 () Bool)

(assert (=> b!143438 (=> (not res!68323) (not e!93502))))

(declare-fun b!143439 () Bool)

(declare-fun e!93499 () Bool)

(declare-fun e!93493 () Bool)

(assert (=> b!143439 (= e!93499 e!93493)))

(declare-fun res!68328 () Bool)

(declare-fun call!15886 () Bool)

(assert (=> b!143439 (= res!68328 call!15886)))

(assert (=> b!143439 (=> (not res!68328) (not e!93493))))

(declare-fun d!45859 () Bool)

(declare-fun e!93481 () Bool)

(assert (=> d!45859 e!93481))

(declare-fun res!68329 () Bool)

(assert (=> d!45859 (=> (not res!68329) (not e!93481))))

(declare-fun lt!75151 () tuple2!2692)

(assert (=> d!45859 (= res!68329 (valid!558 (_2!1356 lt!75151)))))

(declare-fun e!93497 () tuple2!2692)

(assert (=> d!45859 (= lt!75151 e!93497)))

(declare-fun c!27170 () Bool)

(assert (=> d!45859 (= c!27170 (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvneg (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))))))

(assert (=> d!45859 (valid!558 newMap!16)))

(assert (=> d!45859 (= (update!211 newMap!16 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!75151)))

(declare-fun b!143440 () Bool)

(declare-fun c!27160 () Bool)

(declare-fun lt!75153 () SeekEntryResult!290)

(assert (=> b!143440 (= c!27160 ((_ is MissingVacant!290) lt!75153))))

(declare-fun e!93492 () tuple2!2692)

(assert (=> b!143440 (= e!93501 e!93492)))

(declare-fun b!143441 () Bool)

(declare-fun e!93489 () ListLongMap!1751)

(assert (=> b!143441 (= e!93489 (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun b!143442 () Bool)

(declare-fun lt!75148 () Unit!4550)

(assert (=> b!143442 (= e!93496 lt!75148)))

(declare-fun call!15888 () Unit!4550)

(assert (=> b!143442 (= lt!75148 call!15888)))

(declare-fun call!15889 () SeekEntryResult!290)

(assert (=> b!143442 (= lt!75146 call!15889)))

(declare-fun c!27162 () Bool)

(assert (=> b!143442 (= c!27162 ((_ is MissingZero!290) lt!75146))))

(declare-fun e!93491 () Bool)

(assert (=> b!143442 e!93491))

(declare-fun b!143443 () Bool)

(declare-fun e!93490 () Bool)

(declare-fun e!93494 () Bool)

(assert (=> b!143443 (= e!93490 e!93494)))

(declare-fun call!15895 () ListLongMap!1751)

(declare-fun res!68324 () Bool)

(assert (=> b!143443 (= res!68324 (contains!924 call!15895 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> b!143443 (=> (not res!68324) (not e!93494))))

(declare-fun b!143444 () Bool)

(declare-fun e!93483 () ListLongMap!1751)

(assert (=> b!143444 (= e!93483 (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun bm!15870 () Bool)

(declare-fun call!15875 () ListLongMap!1751)

(declare-fun call!15880 () ListLongMap!1751)

(assert (=> bm!15870 (= call!15875 call!15880)))

(declare-fun bm!15871 () Bool)

(declare-fun call!15876 () Bool)

(declare-fun call!15887 () Bool)

(assert (=> bm!15871 (= call!15876 call!15887)))

(declare-fun bm!15872 () Bool)

(declare-fun call!15896 () Bool)

(assert (=> bm!15872 (= call!15896 call!15883)))

(declare-fun b!143445 () Bool)

(declare-fun lt!75160 () SeekEntryResult!290)

(assert (=> b!143445 (= e!93499 ((_ is Undefined!290) lt!75160))))

(declare-fun b!143446 () Bool)

(declare-fun lt!75155 () Unit!4550)

(declare-fun lt!75143 () Unit!4550)

(assert (=> b!143446 (= lt!75155 lt!75143)))

(declare-fun call!15894 () ListLongMap!1751)

(assert (=> b!143446 (= call!15875 call!15894)))

(declare-fun lt!75158 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!66 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 V!3563 Int) Unit!4550)

(assert (=> b!143446 (= lt!75143 (lemmaChangeLongMinValueKeyThenAddPairToListMap!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) lt!75158 (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2963 newMap!16)))))

(assert (=> b!143446 (= lt!75158 (bvor (extraKeys!2714 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!93500 () tuple2!2692)

(assert (=> b!143446 (= e!93500 (tuple2!2693 true (LongMapFixedSize!1159 (defaultEntry!2963 newMap!16) (mask!7315 newMap!16) (bvor (extraKeys!2714 newMap!16) #b00000000000000000000000000000010) (zeroValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!628 newMap!16) (_keys!4726 newMap!16) (_values!2946 newMap!16) (_vacant!628 newMap!16))))))

(declare-fun bm!15873 () Bool)

(declare-fun call!15878 () SeekEntryResult!290)

(assert (=> bm!15873 (= call!15889 call!15878)))

(declare-fun b!143447 () Bool)

(declare-fun e!93495 () Unit!4550)

(declare-fun Unit!4555 () Unit!4550)

(assert (=> b!143447 (= e!93495 Unit!4555)))

(declare-fun lt!75147 () Unit!4550)

(assert (=> b!143447 (= lt!75147 call!15888)))

(declare-fun call!15890 () SeekEntryResult!290)

(assert (=> b!143447 (= lt!75160 call!15890)))

(declare-fun c!27157 () Bool)

(assert (=> b!143447 (= c!27157 ((_ is MissingZero!290) lt!75160))))

(declare-fun e!93487 () Bool)

(assert (=> b!143447 e!93487))

(declare-fun lt!75150 () Unit!4550)

(assert (=> b!143447 (= lt!75150 lt!75147)))

(assert (=> b!143447 false))

(declare-fun b!143448 () Bool)

(declare-fun c!27166 () Bool)

(assert (=> b!143448 (= c!27166 ((_ is MissingVacant!290) lt!75160))))

(assert (=> b!143448 (= e!93487 e!93499)))

(declare-fun b!143449 () Bool)

(assert (=> b!143449 (= e!93481 e!93490)))

(declare-fun c!27163 () Bool)

(assert (=> b!143449 (= c!27163 (_1!1356 lt!75151))))

(declare-fun bm!15874 () Bool)

(declare-fun call!15882 () Bool)

(declare-fun call!15884 () Bool)

(assert (=> bm!15874 (= call!15882 call!15884)))

(declare-fun bm!15875 () Bool)

(assert (=> bm!15875 (= call!15886 call!15876)))

(declare-fun bm!15876 () Bool)

(declare-fun call!15881 () tuple2!2692)

(declare-fun updateHelperNewKey!66 (LongMapFixedSize!1158 (_ BitVec 64) V!3563 (_ BitVec 32)) tuple2!2692)

(assert (=> bm!15876 (= call!15881 (updateHelperNewKey!66 newMap!16 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153))))))

(declare-fun bm!15877 () Bool)

(assert (=> bm!15877 (= call!15890 call!15878)))

(declare-fun b!143450 () Bool)

(declare-fun call!15893 () ListLongMap!1751)

(assert (=> b!143450 (= e!93489 call!15893)))

(declare-fun b!143451 () Bool)

(declare-fun Unit!4556 () Unit!4550)

(assert (=> b!143451 (= e!93496 Unit!4556)))

(declare-fun lt!75152 () Unit!4550)

(declare-fun call!15891 () Unit!4550)

(assert (=> b!143451 (= lt!75152 call!15891)))

(declare-fun lt!75138 () SeekEntryResult!290)

(assert (=> b!143451 (= lt!75138 call!15889)))

(declare-fun res!68330 () Bool)

(assert (=> b!143451 (= res!68330 ((_ is Found!290) lt!75138))))

(assert (=> b!143451 (=> (not res!68330) (not e!93502))))

(assert (=> b!143451 e!93502))

(declare-fun lt!75137 () Unit!4550)

(assert (=> b!143451 (= lt!75137 lt!75152)))

(assert (=> b!143451 false))

(declare-fun b!143452 () Bool)

(assert (=> b!143452 (= e!93497 e!93501)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4910 (_ BitVec 32)) SeekEntryResult!290)

(assert (=> b!143452 (= lt!75153 (seekEntryOrOpen!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (_keys!4726 newMap!16) (mask!7315 newMap!16)))))

(declare-fun c!27168 () Bool)

(assert (=> b!143452 (= c!27168 ((_ is Undefined!290) lt!75153))))

(declare-fun b!143453 () Bool)

(declare-fun e!93482 () Bool)

(declare-fun call!15873 () Bool)

(assert (=> b!143453 (= e!93482 (not call!15873))))

(declare-fun bm!15878 () Bool)

(assert (=> bm!15878 (= call!15884 (arrayContainsKey!0 (_keys!4726 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun call!15892 () ListLongMap!1751)

(declare-fun bm!15879 () Bool)

(assert (=> bm!15879 (= call!15892 (getCurrentListMap!557 (_keys!4726 newMap!16) (ite c!27170 (_values!2946 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16)))) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun b!143454 () Bool)

(declare-fun lt!75141 () Unit!4550)

(declare-fun lt!75134 () Unit!4550)

(assert (=> b!143454 (= lt!75141 lt!75134)))

(assert (=> b!143454 (contains!924 call!15893 (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75153)))))

(declare-fun lt!75156 () array!4912)

(declare-fun lemmaValidKeyInArrayIsInListMap!124 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 32) Int) Unit!4550)

(assert (=> b!143454 (= lt!75134 (lemmaValidKeyInArrayIsInListMap!124 (_keys!4726 newMap!16) lt!75156 (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (index!3325 lt!75153) (defaultEntry!2963 newMap!16)))))

(assert (=> b!143454 (= lt!75156 (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16))))))

(declare-fun lt!75157 () Unit!4550)

(declare-fun lt!75159 () Unit!4550)

(assert (=> b!143454 (= lt!75157 lt!75159)))

(assert (=> b!143454 (= call!15880 call!15892)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!66 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 32) (_ BitVec 64) V!3563 Int) Unit!4550)

(assert (=> b!143454 (= lt!75159 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (index!3325 lt!75153) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75154 () Unit!4550)

(assert (=> b!143454 (= lt!75154 e!93495)))

(declare-fun c!27164 () Bool)

(assert (=> b!143454 (= c!27164 call!15879)))

(declare-fun e!93485 () tuple2!2692)

(assert (=> b!143454 (= e!93485 (tuple2!2693 true (LongMapFixedSize!1159 (defaultEntry!2963 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (_size!628 newMap!16) (_keys!4726 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16))) (_vacant!628 newMap!16))))))

(declare-fun bm!15880 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!66 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 64) Int) Unit!4550)

(assert (=> bm!15880 (= call!15891 (lemmaInListMapThenSeekEntryOrOpenFindsIt!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (defaultEntry!2963 newMap!16)))))

(declare-fun b!143455 () Bool)

(declare-fun lt!75142 () Unit!4550)

(declare-fun lt!75145 () Unit!4550)

(assert (=> b!143455 (= lt!75142 lt!75145)))

(assert (=> b!143455 (= call!15875 call!15894)))

(declare-fun lt!75135 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!66 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 V!3563 Int) Unit!4550)

(assert (=> b!143455 (= lt!75145 (lemmaChangeZeroKeyThenAddPairToListMap!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) lt!75135 (zeroValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2811 newMap!16) (defaultEntry!2963 newMap!16)))))

(assert (=> b!143455 (= lt!75135 (bvor (extraKeys!2714 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!143455 (= e!93500 (tuple2!2693 true (LongMapFixedSize!1159 (defaultEntry!2963 newMap!16) (mask!7315 newMap!16) (bvor (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2811 newMap!16) (_size!628 newMap!16) (_keys!4726 newMap!16) (_values!2946 newMap!16) (_vacant!628 newMap!16))))))

(declare-fun b!143456 () Bool)

(declare-fun e!93486 () Bool)

(assert (=> b!143456 (= e!93486 (not call!15882))))

(declare-fun b!143457 () Bool)

(declare-fun e!93488 () Bool)

(assert (=> b!143457 (= e!93488 (not call!15873))))

(declare-fun b!143458 () Bool)

(assert (=> b!143458 (= e!93492 e!93485)))

(declare-fun c!27158 () Bool)

(assert (=> b!143458 (= c!27158 ((_ is MissingZero!290) lt!75153))))

(declare-fun b!143459 () Bool)

(declare-fun res!68322 () Bool)

(assert (=> b!143459 (= res!68322 call!15876)))

(declare-fun e!93498 () Bool)

(assert (=> b!143459 (=> (not res!68322) (not e!93498))))

(declare-fun bm!15881 () Bool)

(assert (=> bm!15881 (= call!15895 (map!1442 (_2!1356 lt!75151)))))

(declare-fun call!15877 () ListLongMap!1751)

(declare-fun b!143460 () Bool)

(declare-fun +!175 (ListLongMap!1751 tuple2!2690) ListLongMap!1751)

(assert (=> b!143460 (= e!93494 (= call!15895 (+!175 call!15877 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!143461 () Bool)

(declare-fun res!68327 () Bool)

(assert (=> b!143461 (=> (not res!68327) (not e!93488))))

(assert (=> b!143461 (= res!68327 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3324 lt!75146)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143462 () Bool)

(declare-fun res!68333 () Bool)

(assert (=> b!143462 (= res!68333 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3327 lt!75146)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!143462 (=> (not res!68333) (not e!93482))))

(declare-fun bm!15882 () Bool)

(assert (=> bm!15882 (= call!15877 (map!1442 newMap!16))))

(declare-fun b!143463 () Bool)

(declare-fun res!68320 () Bool)

(assert (=> b!143463 (=> (not res!68320) (not e!93486))))

(assert (=> b!143463 (= res!68320 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3324 lt!75160)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143464 () Bool)

(declare-fun call!15874 () ListLongMap!1751)

(assert (=> b!143464 (= e!93483 call!15874)))

(declare-fun lt!75139 () SeekEntryResult!290)

(declare-fun b!143465 () Bool)

(assert (=> b!143465 (= e!93498 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75139)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun bm!15883 () Bool)

(assert (=> bm!15883 (= call!15878 (seekEntryOrOpen!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (_keys!4726 newMap!16) (mask!7315 newMap!16)))))

(declare-fun b!143466 () Bool)

(assert (=> b!143466 (= e!93490 (= call!15895 call!15877))))

(declare-fun bm!15884 () Bool)

(assert (=> bm!15884 (= call!15883 call!15887)))

(declare-fun bm!15885 () Bool)

(declare-fun c!27169 () Bool)

(assert (=> bm!15885 (= call!15880 (+!175 e!93483 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!27159 () Bool)

(assert (=> bm!15885 (= c!27159 c!27170)))

(declare-fun bm!15886 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!66 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 64) Int) Unit!4550)

(assert (=> bm!15886 (= call!15888 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (defaultEntry!2963 newMap!16)))))

(declare-fun bm!15887 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!15887 (= call!15887 (inRange!0 (ite c!27168 (ite c!27167 (index!3325 lt!75138) (ite c!27162 (index!3324 lt!75146) (index!3327 lt!75146))) (ite c!27164 (index!3325 lt!75139) (ite c!27157 (index!3324 lt!75160) (index!3327 lt!75160)))) (mask!7315 newMap!16)))))

(declare-fun b!143467 () Bool)

(declare-fun lt!75149 () tuple2!2692)

(assert (=> b!143467 (= lt!75149 call!15881)))

(assert (=> b!143467 (= e!93485 (tuple2!2693 (_1!1356 lt!75149) (_2!1356 lt!75149)))))

(declare-fun b!143468 () Bool)

(declare-fun c!27165 () Bool)

(assert (=> b!143468 (= c!27165 ((_ is MissingVacant!290) lt!75146))))

(assert (=> b!143468 (= e!93491 e!93484)))

(declare-fun b!143469 () Bool)

(declare-fun lt!75136 () Unit!4550)

(assert (=> b!143469 (= e!93495 lt!75136)))

(assert (=> b!143469 (= lt!75136 call!15891)))

(assert (=> b!143469 (= lt!75139 call!15890)))

(declare-fun res!68321 () Bool)

(assert (=> b!143469 (= res!68321 ((_ is Found!290) lt!75139))))

(assert (=> b!143469 (=> (not res!68321) (not e!93498))))

(assert (=> b!143469 e!93498))

(declare-fun b!143470 () Bool)

(assert (=> b!143470 (= e!93484 e!93482)))

(declare-fun res!68331 () Bool)

(assert (=> b!143470 (= res!68331 call!15896)))

(assert (=> b!143470 (=> (not res!68331) (not e!93482))))

(declare-fun b!143471 () Bool)

(declare-fun res!68325 () Bool)

(assert (=> b!143471 (=> (not res!68325) (not e!93488))))

(assert (=> b!143471 (= res!68325 call!15896)))

(assert (=> b!143471 (= e!93491 e!93488)))

(declare-fun b!143472 () Bool)

(declare-fun res!68332 () Bool)

(assert (=> b!143472 (= res!68332 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3327 lt!75160)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!143472 (=> (not res!68332) (not e!93493))))

(declare-fun bm!15888 () Bool)

(declare-fun call!15885 () ListLongMap!1751)

(assert (=> bm!15888 (= call!15893 call!15885)))

(declare-fun b!143473 () Bool)

(assert (=> b!143473 (= e!93493 (not call!15882))))

(declare-fun bm!15889 () Bool)

(assert (=> bm!15889 (= call!15885 (getCurrentListMap!557 (_keys!4726 newMap!16) (ite (or c!27170 c!27168) (_values!2946 newMap!16) lt!75156) (mask!7315 newMap!16) (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)) (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun bm!15890 () Bool)

(assert (=> bm!15890 (= call!15873 call!15884)))

(declare-fun b!143474 () Bool)

(assert (=> b!143474 (= e!93497 e!93500)))

(assert (=> b!143474 (= c!27169 (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15891 () Bool)

(declare-fun c!27161 () Bool)

(assert (=> bm!15891 (= c!27161 c!27168)))

(assert (=> bm!15891 (= call!15879 (contains!924 e!93489 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun b!143475 () Bool)

(assert (=> b!143475 (= e!93502 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75138)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun bm!15892 () Bool)

(assert (=> bm!15892 (= call!15874 call!15892)))

(declare-fun b!143476 () Bool)

(declare-fun lt!75140 () tuple2!2692)

(assert (=> b!143476 (= e!93492 (tuple2!2693 (_1!1356 lt!75140) (_2!1356 lt!75140)))))

(assert (=> b!143476 (= lt!75140 call!15881)))

(declare-fun b!143477 () Bool)

(declare-fun res!68326 () Bool)

(assert (=> b!143477 (=> (not res!68326) (not e!93486))))

(assert (=> b!143477 (= res!68326 call!15886)))

(assert (=> b!143477 (= e!93487 e!93486)))

(declare-fun bm!15893 () Bool)

(assert (=> bm!15893 (= call!15894 call!15885)))

(assert (= (and d!45859 c!27170) b!143474))

(assert (= (and d!45859 (not c!27170)) b!143452))

(assert (= (and b!143474 c!27169) b!143455))

(assert (= (and b!143474 (not c!27169)) b!143446))

(assert (= (or b!143455 b!143446) bm!15893))

(assert (= (or b!143455 b!143446) bm!15892))

(assert (= (or b!143455 b!143446) bm!15870))

(assert (= (and b!143452 c!27168) b!143437))

(assert (= (and b!143452 (not c!27168)) b!143440))

(assert (= (and b!143437 c!27167) b!143451))

(assert (= (and b!143437 (not c!27167)) b!143442))

(assert (= (and b!143451 res!68330) b!143438))

(assert (= (and b!143438 res!68323) b!143475))

(assert (= (and b!143442 c!27162) b!143471))

(assert (= (and b!143442 (not c!27162)) b!143468))

(assert (= (and b!143471 res!68325) b!143461))

(assert (= (and b!143461 res!68327) b!143457))

(assert (= (and b!143468 c!27165) b!143470))

(assert (= (and b!143468 (not c!27165)) b!143436))

(assert (= (and b!143470 res!68331) b!143462))

(assert (= (and b!143462 res!68333) b!143453))

(assert (= (or b!143471 b!143470) bm!15872))

(assert (= (or b!143457 b!143453) bm!15890))

(assert (= (or b!143438 bm!15872) bm!15884))

(assert (= (or b!143451 b!143442) bm!15873))

(assert (= (and b!143440 c!27160) b!143476))

(assert (= (and b!143440 (not c!27160)) b!143458))

(assert (= (and b!143458 c!27158) b!143467))

(assert (= (and b!143458 (not c!27158)) b!143454))

(assert (= (and b!143454 c!27164) b!143469))

(assert (= (and b!143454 (not c!27164)) b!143447))

(assert (= (and b!143469 res!68321) b!143459))

(assert (= (and b!143459 res!68322) b!143465))

(assert (= (and b!143447 c!27157) b!143477))

(assert (= (and b!143447 (not c!27157)) b!143448))

(assert (= (and b!143477 res!68326) b!143463))

(assert (= (and b!143463 res!68320) b!143456))

(assert (= (and b!143448 c!27166) b!143439))

(assert (= (and b!143448 (not c!27166)) b!143445))

(assert (= (and b!143439 res!68328) b!143472))

(assert (= (and b!143472 res!68332) b!143473))

(assert (= (or b!143477 b!143439) bm!15875))

(assert (= (or b!143456 b!143473) bm!15874))

(assert (= (or b!143459 bm!15875) bm!15871))

(assert (= (or b!143469 b!143447) bm!15877))

(assert (= (or b!143476 b!143467) bm!15876))

(assert (= (or b!143442 b!143447) bm!15886))

(assert (= (or bm!15884 bm!15871) bm!15887))

(assert (= (or b!143437 b!143454) bm!15888))

(assert (= (or bm!15873 bm!15877) bm!15883))

(assert (= (or b!143451 b!143469) bm!15880))

(assert (= (or bm!15890 bm!15874) bm!15878))

(assert (= (or b!143437 b!143454) bm!15891))

(assert (= (and bm!15891 c!27161) b!143450))

(assert (= (and bm!15891 (not c!27161)) b!143441))

(assert (= (or bm!15892 b!143454) bm!15879))

(assert (= (or bm!15893 bm!15888) bm!15889))

(assert (= (or bm!15870 b!143454) bm!15885))

(assert (= (and bm!15885 c!27159) b!143464))

(assert (= (and bm!15885 (not c!27159)) b!143444))

(assert (= (and d!45859 res!68329) b!143449))

(assert (= (and b!143449 c!27163) b!143443))

(assert (= (and b!143449 (not c!27163)) b!143466))

(assert (= (and b!143443 res!68324) b!143460))

(assert (= (or b!143460 b!143466) bm!15882))

(assert (= (or b!143443 b!143460 b!143466) bm!15881))

(declare-fun m!173245 () Bool)

(assert (=> bm!15889 m!173245))

(declare-fun m!173247 () Bool)

(assert (=> b!143441 m!173247))

(declare-fun m!173249 () Bool)

(assert (=> bm!15887 m!173249))

(declare-fun m!173251 () Bool)

(assert (=> b!143463 m!173251))

(assert (=> b!143444 m!173247))

(assert (=> bm!15886 m!173141))

(declare-fun m!173253 () Bool)

(assert (=> bm!15886 m!173253))

(assert (=> bm!15891 m!173141))

(declare-fun m!173255 () Bool)

(assert (=> bm!15891 m!173255))

(assert (=> bm!15876 m!173141))

(assert (=> bm!15876 m!173161))

(declare-fun m!173257 () Bool)

(assert (=> bm!15876 m!173257))

(assert (=> b!143443 m!173141))

(declare-fun m!173259 () Bool)

(assert (=> b!143443 m!173259))

(assert (=> bm!15880 m!173141))

(declare-fun m!173261 () Bool)

(assert (=> bm!15880 m!173261))

(assert (=> b!143452 m!173141))

(declare-fun m!173263 () Bool)

(assert (=> b!143452 m!173263))

(assert (=> bm!15883 m!173141))

(assert (=> bm!15883 m!173263))

(declare-fun m!173265 () Bool)

(assert (=> b!143472 m!173265))

(assert (=> b!143455 m!173161))

(declare-fun m!173267 () Bool)

(assert (=> b!143455 m!173267))

(assert (=> b!143446 m!173161))

(declare-fun m!173269 () Bool)

(assert (=> b!143446 m!173269))

(assert (=> bm!15882 m!173143))

(declare-fun m!173271 () Bool)

(assert (=> b!143454 m!173271))

(declare-fun m!173273 () Bool)

(assert (=> b!143454 m!173273))

(assert (=> b!143454 m!173271))

(assert (=> b!143454 m!173141))

(assert (=> b!143454 m!173161))

(declare-fun m!173275 () Bool)

(assert (=> b!143454 m!173275))

(declare-fun m!173277 () Bool)

(assert (=> b!143454 m!173277))

(declare-fun m!173279 () Bool)

(assert (=> b!143454 m!173279))

(declare-fun m!173281 () Bool)

(assert (=> b!143460 m!173281))

(declare-fun m!173283 () Bool)

(assert (=> bm!15885 m!173283))

(declare-fun m!173285 () Bool)

(assert (=> b!143465 m!173285))

(declare-fun m!173287 () Bool)

(assert (=> b!143475 m!173287))

(declare-fun m!173289 () Bool)

(assert (=> d!45859 m!173289))

(assert (=> d!45859 m!173167))

(assert (=> bm!15879 m!173279))

(declare-fun m!173291 () Bool)

(assert (=> bm!15879 m!173291))

(declare-fun m!173293 () Bool)

(assert (=> b!143462 m!173293))

(assert (=> bm!15878 m!173141))

(declare-fun m!173295 () Bool)

(assert (=> bm!15878 m!173295))

(declare-fun m!173297 () Bool)

(assert (=> b!143461 m!173297))

(declare-fun m!173299 () Bool)

(assert (=> bm!15881 m!173299))

(assert (=> b!143265 d!45859))

(declare-fun d!45861 () Bool)

(declare-fun c!27173 () Bool)

(assert (=> d!45861 (= c!27173 ((_ is ValueCellFull!1125) (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun e!93505 () V!3563)

(assert (=> d!45861 (= (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!93505)))

(declare-fun b!143482 () Bool)

(declare-fun get!1542 (ValueCell!1125 V!3563) V!3563)

(assert (=> b!143482 (= e!93505 (get!1542 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!143483 () Bool)

(declare-fun get!1543 (ValueCell!1125 V!3563) V!3563)

(assert (=> b!143483 (= e!93505 (get!1543 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!45861 c!27173) b!143482))

(assert (= (and d!45861 (not c!27173)) b!143483))

(assert (=> b!143482 m!173157))

(assert (=> b!143482 m!173159))

(declare-fun m!173301 () Bool)

(assert (=> b!143482 m!173301))

(assert (=> b!143483 m!173157))

(assert (=> b!143483 m!173159))

(declare-fun m!173303 () Bool)

(assert (=> b!143483 m!173303))

(assert (=> b!143265 d!45861))

(declare-fun d!45863 () Bool)

(assert (=> d!45863 (= (map!1442 newMap!16) (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun bs!6075 () Bool)

(assert (= bs!6075 d!45863))

(assert (=> bs!6075 m!173247))

(assert (=> b!143260 d!45863))

(declare-fun b!143526 () Bool)

(declare-fun e!93542 () Bool)

(declare-fun e!93532 () Bool)

(assert (=> b!143526 (= e!93542 e!93532)))

(declare-fun res!68355 () Bool)

(assert (=> b!143526 (=> (not res!68355) (not e!93532))))

(declare-fun lt!75214 () ListLongMap!1751)

(assert (=> b!143526 (= res!68355 (contains!924 lt!75214 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!143526 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun b!143527 () Bool)

(declare-fun e!93535 () Bool)

(declare-fun e!93534 () Bool)

(assert (=> b!143527 (= e!93535 e!93534)))

(declare-fun res!68359 () Bool)

(declare-fun call!15913 () Bool)

(assert (=> b!143527 (= res!68359 call!15913)))

(assert (=> b!143527 (=> (not res!68359) (not e!93534))))

(declare-fun b!143528 () Bool)

(declare-fun e!93537 () Bool)

(declare-fun e!93541 () Bool)

(assert (=> b!143528 (= e!93537 e!93541)))

(declare-fun res!68352 () Bool)

(declare-fun call!15912 () Bool)

(assert (=> b!143528 (= res!68352 call!15912)))

(assert (=> b!143528 (=> (not res!68352) (not e!93541))))

(declare-fun b!143529 () Bool)

(declare-fun e!93544 () Bool)

(assert (=> b!143529 (= e!93544 e!93535)))

(declare-fun c!27190 () Bool)

(assert (=> b!143529 (= c!27190 (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!15908 () Bool)

(assert (=> bm!15908 (= call!15912 (contains!924 lt!75214 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143530 () Bool)

(declare-fun res!68360 () Bool)

(assert (=> b!143530 (=> (not res!68360) (not e!93544))))

(assert (=> b!143530 (= res!68360 e!93542)))

(declare-fun res!68353 () Bool)

(assert (=> b!143530 (=> res!68353 e!93542)))

(declare-fun e!93538 () Bool)

(assert (=> b!143530 (= res!68353 (not e!93538))))

(declare-fun res!68357 () Bool)

(assert (=> b!143530 (=> (not res!68357) (not e!93538))))

(assert (=> b!143530 (= res!68357 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun bm!15909 () Bool)

(declare-fun call!15915 () ListLongMap!1751)

(declare-fun getCurrentListMapNoExtraKeys!142 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 32) Int) ListLongMap!1751)

(assert (=> bm!15909 (= call!15915 (getCurrentListMapNoExtraKeys!142 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun bm!15910 () Bool)

(assert (=> bm!15910 (= call!15913 (contains!924 lt!75214 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143531 () Bool)

(declare-fun apply!121 (ListLongMap!1751 (_ BitVec 64)) V!3563)

(assert (=> b!143531 (= e!93534 (= (apply!121 lt!75214 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun b!143532 () Bool)

(assert (=> b!143532 (= e!93532 (= (apply!121 lt!75214 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!143532 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2594 (_values!2946 (v!3296 (underlying!483 thiss!992))))))))

(assert (=> b!143532 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun b!143533 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!143533 (= e!93538 (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!143534 () Bool)

(declare-fun e!93543 () ListLongMap!1751)

(declare-fun call!15914 () ListLongMap!1751)

(assert (=> b!143534 (= e!93543 call!15914)))

(declare-fun d!45865 () Bool)

(assert (=> d!45865 e!93544))

(declare-fun res!68356 () Bool)

(assert (=> d!45865 (=> (not res!68356) (not e!93544))))

(assert (=> d!45865 (= res!68356 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))))

(declare-fun lt!75222 () ListLongMap!1751)

(assert (=> d!45865 (= lt!75214 lt!75222)))

(declare-fun lt!75212 () Unit!4550)

(declare-fun e!93540 () Unit!4550)

(assert (=> d!45865 (= lt!75212 e!93540)))

(declare-fun c!27186 () Bool)

(declare-fun e!93536 () Bool)

(assert (=> d!45865 (= c!27186 e!93536)))

(declare-fun res!68354 () Bool)

(assert (=> d!45865 (=> (not res!68354) (not e!93536))))

(assert (=> d!45865 (= res!68354 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun e!93533 () ListLongMap!1751)

(assert (=> d!45865 (= lt!75222 e!93533)))

(declare-fun c!27189 () Bool)

(assert (=> d!45865 (= c!27189 (and (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!45865 (validMask!0 (mask!7315 (v!3296 (underlying!483 thiss!992))))))

(assert (=> d!45865 (= (getCurrentListMap!557 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))) lt!75214)))

(declare-fun b!143535 () Bool)

(declare-fun res!68358 () Bool)

(assert (=> b!143535 (=> (not res!68358) (not e!93544))))

(assert (=> b!143535 (= res!68358 e!93537)))

(declare-fun c!27188 () Bool)

(assert (=> b!143535 (= c!27188 (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!143536 () Bool)

(assert (=> b!143536 (= e!93537 (not call!15912))))

(declare-fun bm!15911 () Bool)

(declare-fun call!15916 () ListLongMap!1751)

(declare-fun call!15917 () ListLongMap!1751)

(assert (=> bm!15911 (= call!15916 call!15917)))

(declare-fun b!143537 () Bool)

(declare-fun lt!75208 () Unit!4550)

(assert (=> b!143537 (= e!93540 lt!75208)))

(declare-fun lt!75225 () ListLongMap!1751)

(assert (=> b!143537 (= lt!75225 (getCurrentListMapNoExtraKeys!142 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun lt!75224 () (_ BitVec 64))

(assert (=> b!143537 (= lt!75224 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75205 () (_ BitVec 64))

(assert (=> b!143537 (= lt!75205 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!75223 () Unit!4550)

(declare-fun addStillContains!97 (ListLongMap!1751 (_ BitVec 64) V!3563 (_ BitVec 64)) Unit!4550)

(assert (=> b!143537 (= lt!75223 (addStillContains!97 lt!75225 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75205))))

(assert (=> b!143537 (contains!924 (+!175 lt!75225 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75205)))

(declare-fun lt!75216 () Unit!4550)

(assert (=> b!143537 (= lt!75216 lt!75223)))

(declare-fun lt!75207 () ListLongMap!1751)

(assert (=> b!143537 (= lt!75207 (getCurrentListMapNoExtraKeys!142 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun lt!75220 () (_ BitVec 64))

(assert (=> b!143537 (= lt!75220 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75206 () (_ BitVec 64))

(assert (=> b!143537 (= lt!75206 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!75215 () Unit!4550)

(declare-fun addApplyDifferent!97 (ListLongMap!1751 (_ BitVec 64) V!3563 (_ BitVec 64)) Unit!4550)

(assert (=> b!143537 (= lt!75215 (addApplyDifferent!97 lt!75207 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75206))))

(assert (=> b!143537 (= (apply!121 (+!175 lt!75207 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75206) (apply!121 lt!75207 lt!75206))))

(declare-fun lt!75210 () Unit!4550)

(assert (=> b!143537 (= lt!75210 lt!75215)))

(declare-fun lt!75213 () ListLongMap!1751)

(assert (=> b!143537 (= lt!75213 (getCurrentListMapNoExtraKeys!142 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun lt!75218 () (_ BitVec 64))

(assert (=> b!143537 (= lt!75218 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75211 () (_ BitVec 64))

(assert (=> b!143537 (= lt!75211 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!75209 () Unit!4550)

(assert (=> b!143537 (= lt!75209 (addApplyDifferent!97 lt!75213 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75211))))

(assert (=> b!143537 (= (apply!121 (+!175 lt!75213 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75211) (apply!121 lt!75213 lt!75211))))

(declare-fun lt!75219 () Unit!4550)

(assert (=> b!143537 (= lt!75219 lt!75209)))

(declare-fun lt!75226 () ListLongMap!1751)

(assert (=> b!143537 (= lt!75226 (getCurrentListMapNoExtraKeys!142 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun lt!75221 () (_ BitVec 64))

(assert (=> b!143537 (= lt!75221 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75217 () (_ BitVec 64))

(assert (=> b!143537 (= lt!75217 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!143537 (= lt!75208 (addApplyDifferent!97 lt!75226 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75217))))

(assert (=> b!143537 (= (apply!121 (+!175 lt!75226 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75217) (apply!121 lt!75226 lt!75217))))

(declare-fun b!143538 () Bool)

(assert (=> b!143538 (= e!93536 (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!143539 () Bool)

(assert (=> b!143539 (= e!93535 (not call!15913))))

(declare-fun bm!15912 () Bool)

(declare-fun call!15911 () ListLongMap!1751)

(declare-fun c!27187 () Bool)

(assert (=> bm!15912 (= call!15911 (+!175 (ite c!27189 call!15915 (ite c!27187 call!15917 call!15916)) (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(declare-fun b!143540 () Bool)

(assert (=> b!143540 (= e!93533 e!93543)))

(assert (=> b!143540 (= c!27187 (and (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!143541 () Bool)

(declare-fun Unit!4557 () Unit!4550)

(assert (=> b!143541 (= e!93540 Unit!4557)))

(declare-fun b!143542 () Bool)

(declare-fun e!93539 () ListLongMap!1751)

(assert (=> b!143542 (= e!93539 call!15914)))

(declare-fun b!143543 () Bool)

(assert (=> b!143543 (= e!93541 (= (apply!121 lt!75214 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun bm!15913 () Bool)

(assert (=> bm!15913 (= call!15914 call!15911)))

(declare-fun b!143544 () Bool)

(assert (=> b!143544 (= e!93539 call!15916)))

(declare-fun b!143545 () Bool)

(assert (=> b!143545 (= e!93533 (+!175 call!15911 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun b!143546 () Bool)

(declare-fun c!27191 () Bool)

(assert (=> b!143546 (= c!27191 (and (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!143546 (= e!93543 e!93539)))

(declare-fun bm!15914 () Bool)

(assert (=> bm!15914 (= call!15917 call!15915)))

(assert (= (and d!45865 c!27189) b!143545))

(assert (= (and d!45865 (not c!27189)) b!143540))

(assert (= (and b!143540 c!27187) b!143534))

(assert (= (and b!143540 (not c!27187)) b!143546))

(assert (= (and b!143546 c!27191) b!143542))

(assert (= (and b!143546 (not c!27191)) b!143544))

(assert (= (or b!143542 b!143544) bm!15911))

(assert (= (or b!143534 bm!15911) bm!15914))

(assert (= (or b!143534 b!143542) bm!15913))

(assert (= (or b!143545 bm!15914) bm!15909))

(assert (= (or b!143545 bm!15913) bm!15912))

(assert (= (and d!45865 res!68354) b!143538))

(assert (= (and d!45865 c!27186) b!143537))

(assert (= (and d!45865 (not c!27186)) b!143541))

(assert (= (and d!45865 res!68356) b!143530))

(assert (= (and b!143530 res!68357) b!143533))

(assert (= (and b!143530 (not res!68353)) b!143526))

(assert (= (and b!143526 res!68355) b!143532))

(assert (= (and b!143530 res!68360) b!143535))

(assert (= (and b!143535 c!27188) b!143528))

(assert (= (and b!143535 (not c!27188)) b!143536))

(assert (= (and b!143528 res!68352) b!143543))

(assert (= (or b!143528 b!143536) bm!15908))

(assert (= (and b!143535 res!68358) b!143529))

(assert (= (and b!143529 c!27190) b!143527))

(assert (= (and b!143529 (not c!27190)) b!143539))

(assert (= (and b!143527 res!68359) b!143531))

(assert (= (or b!143527 b!143539) bm!15910))

(declare-fun b_lambda!6473 () Bool)

(assert (=> (not b_lambda!6473) (not b!143532)))

(assert (=> b!143532 t!6385))

(declare-fun b_and!8965 () Bool)

(assert (= b_and!8953 (and (=> t!6385 result!4221) b_and!8965)))

(assert (=> b!143532 t!6387))

(declare-fun b_and!8967 () Bool)

(assert (= b_and!8955 (and (=> t!6387 result!4225) b_and!8967)))

(declare-fun m!173305 () Bool)

(assert (=> bm!15909 m!173305))

(declare-fun m!173307 () Bool)

(assert (=> b!143537 m!173307))

(declare-fun m!173309 () Bool)

(assert (=> b!143537 m!173309))

(declare-fun m!173311 () Bool)

(assert (=> b!143537 m!173311))

(declare-fun m!173313 () Bool)

(assert (=> b!143537 m!173313))

(declare-fun m!173315 () Bool)

(assert (=> b!143537 m!173315))

(assert (=> b!143537 m!173307))

(declare-fun m!173317 () Bool)

(assert (=> b!143537 m!173317))

(declare-fun m!173319 () Bool)

(assert (=> b!143537 m!173319))

(declare-fun m!173321 () Bool)

(assert (=> b!143537 m!173321))

(assert (=> b!143537 m!173305))

(declare-fun m!173323 () Bool)

(assert (=> b!143537 m!173323))

(declare-fun m!173325 () Bool)

(assert (=> b!143537 m!173325))

(declare-fun m!173327 () Bool)

(assert (=> b!143537 m!173327))

(assert (=> b!143537 m!173323))

(declare-fun m!173329 () Bool)

(assert (=> b!143537 m!173329))

(declare-fun m!173331 () Bool)

(assert (=> b!143537 m!173331))

(assert (=> b!143537 m!173319))

(declare-fun m!173333 () Bool)

(assert (=> b!143537 m!173333))

(declare-fun m!173335 () Bool)

(assert (=> b!143537 m!173335))

(declare-fun m!173337 () Bool)

(assert (=> b!143537 m!173337))

(assert (=> b!143537 m!173311))

(declare-fun m!173339 () Bool)

(assert (=> d!45865 m!173339))

(assert (=> b!143532 m!173159))

(declare-fun m!173341 () Bool)

(assert (=> b!143532 m!173341))

(assert (=> b!143532 m!173337))

(assert (=> b!143532 m!173337))

(declare-fun m!173343 () Bool)

(assert (=> b!143532 m!173343))

(assert (=> b!143532 m!173341))

(assert (=> b!143532 m!173159))

(declare-fun m!173345 () Bool)

(assert (=> b!143532 m!173345))

(assert (=> b!143538 m!173337))

(assert (=> b!143538 m!173337))

(declare-fun m!173347 () Bool)

(assert (=> b!143538 m!173347))

(declare-fun m!173349 () Bool)

(assert (=> b!143531 m!173349))

(declare-fun m!173351 () Bool)

(assert (=> b!143543 m!173351))

(declare-fun m!173353 () Bool)

(assert (=> b!143545 m!173353))

(declare-fun m!173355 () Bool)

(assert (=> bm!15910 m!173355))

(declare-fun m!173357 () Bool)

(assert (=> bm!15908 m!173357))

(assert (=> b!143533 m!173337))

(assert (=> b!143533 m!173337))

(assert (=> b!143533 m!173347))

(declare-fun m!173359 () Bool)

(assert (=> bm!15912 m!173359))

(assert (=> b!143526 m!173337))

(assert (=> b!143526 m!173337))

(declare-fun m!173361 () Bool)

(assert (=> b!143526 m!173361))

(assert (=> b!143260 d!45865))

(declare-fun d!45867 () Bool)

(assert (=> d!45867 (= (array_inv!1435 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvsge (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!143264 d!45867))

(declare-fun d!45869 () Bool)

(assert (=> d!45869 (= (array_inv!1436 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (bvsge (size!2594 (_values!2946 (v!3296 (underlying!483 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!143264 d!45869))

(declare-fun b!143557 () Bool)

(declare-fun e!93553 () Bool)

(declare-fun e!93555 () Bool)

(assert (=> b!143557 (= e!93553 e!93555)))

(declare-fun res!68367 () Bool)

(assert (=> b!143557 (=> (not res!68367) (not e!93555))))

(declare-fun e!93556 () Bool)

(assert (=> b!143557 (= res!68367 (not e!93556))))

(declare-fun res!68368 () Bool)

(assert (=> b!143557 (=> (not res!68368) (not e!93556))))

(assert (=> b!143557 (= res!68368 (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun b!143558 () Bool)

(assert (=> b!143558 (= e!93556 (contains!925 Nil!1764 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun b!143559 () Bool)

(declare-fun e!93554 () Bool)

(declare-fun call!15920 () Bool)

(assert (=> b!143559 (= e!93554 call!15920)))

(declare-fun b!143560 () Bool)

(assert (=> b!143560 (= e!93554 call!15920)))

(declare-fun c!27194 () Bool)

(declare-fun bm!15917 () Bool)

(assert (=> bm!15917 (= call!15920 (arrayNoDuplicates!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!27194 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764) Nil!1764)))))

(declare-fun b!143561 () Bool)

(assert (=> b!143561 (= e!93555 e!93554)))

(assert (=> b!143561 (= c!27194 (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun d!45871 () Bool)

(declare-fun res!68369 () Bool)

(assert (=> d!45871 (=> res!68369 e!93553)))

(assert (=> d!45871 (= res!68369 (bvsge from!355 (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(assert (=> d!45871 (= (arrayNoDuplicates!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) from!355 Nil!1764) e!93553)))

(assert (= (and d!45871 (not res!68369)) b!143557))

(assert (= (and b!143557 res!68368) b!143558))

(assert (= (and b!143557 res!68367) b!143561))

(assert (= (and b!143561 c!27194) b!143559))

(assert (= (and b!143561 (not c!27194)) b!143560))

(assert (= (or b!143559 b!143560) bm!15917))

(assert (=> b!143557 m!173141))

(assert (=> b!143557 m!173141))

(declare-fun m!173363 () Bool)

(assert (=> b!143557 m!173363))

(assert (=> b!143558 m!173141))

(assert (=> b!143558 m!173141))

(declare-fun m!173365 () Bool)

(assert (=> b!143558 m!173365))

(assert (=> bm!15917 m!173141))

(declare-fun m!173367 () Bool)

(assert (=> bm!15917 m!173367))

(assert (=> b!143561 m!173141))

(assert (=> b!143561 m!173141))

(assert (=> b!143561 m!173363))

(assert (=> b!143257 d!45871))

(declare-fun d!45873 () Bool)

(assert (=> d!45873 (arrayNoDuplicates!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) from!355 Nil!1764)))

(declare-fun lt!75229 () Unit!4550)

(declare-fun choose!39 (array!4910 (_ BitVec 32) (_ BitVec 32)) Unit!4550)

(assert (=> d!45873 (= lt!75229 (choose!39 (_keys!4726 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!45873 (bvslt (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!45873 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000000 from!355) lt!75229)))

(declare-fun bs!6076 () Bool)

(assert (= bs!6076 d!45873))

(assert (=> bs!6076 m!173151))

(declare-fun m!173369 () Bool)

(assert (=> bs!6076 m!173369))

(assert (=> b!143257 d!45873))

(declare-fun d!45875 () Bool)

(declare-fun res!68374 () Bool)

(declare-fun e!93561 () Bool)

(assert (=> d!45875 (=> res!68374 e!93561)))

(assert (=> d!45875 (= res!68374 (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> d!45875 (= (arrayContainsKey!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!93561)))

(declare-fun b!143566 () Bool)

(declare-fun e!93562 () Bool)

(assert (=> b!143566 (= e!93561 e!93562)))

(declare-fun res!68375 () Bool)

(assert (=> b!143566 (=> (not res!68375) (not e!93562))))

(assert (=> b!143566 (= res!68375 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun b!143567 () Bool)

(assert (=> b!143567 (= e!93562 (arrayContainsKey!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!45875 (not res!68374)) b!143566))

(assert (= (and b!143566 res!68375) b!143567))

(assert (=> d!45875 m!173337))

(assert (=> b!143567 m!173141))

(declare-fun m!173371 () Bool)

(assert (=> b!143567 m!173371))

(assert (=> b!143257 d!45875))

(declare-fun d!45877 () Bool)

(declare-fun e!93565 () Bool)

(assert (=> d!45877 e!93565))

(declare-fun c!27197 () Bool)

(assert (=> d!45877 (= c!27197 (and (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!75232 () Unit!4550)

(declare-fun choose!877 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 64) (_ BitVec 32) Int) Unit!4550)

(assert (=> d!45877 (= lt!75232 (choose!877 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))))))

(assert (=> d!45877 (validMask!0 (mask!7315 (v!3296 (underlying!483 thiss!992))))))

(assert (=> d!45877 (= (lemmaListMapContainsThenArrayContainsFrom!145 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))) lt!75232)))

(declare-fun b!143572 () Bool)

(assert (=> b!143572 (= e!93565 (arrayContainsKey!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!143573 () Bool)

(assert (=> b!143573 (= e!93565 (ite (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!45877 c!27197) b!143572))

(assert (= (and d!45877 (not c!27197)) b!143573))

(assert (=> d!45877 m!173141))

(declare-fun m!173373 () Bool)

(assert (=> d!45877 m!173373))

(assert (=> d!45877 m!173339))

(assert (=> b!143572 m!173141))

(assert (=> b!143572 m!173155))

(assert (=> b!143257 d!45877))

(declare-fun mapNonEmpty!4871 () Bool)

(declare-fun mapRes!4871 () Bool)

(declare-fun tp!11621 () Bool)

(declare-fun e!93571 () Bool)

(assert (=> mapNonEmpty!4871 (= mapRes!4871 (and tp!11621 e!93571))))

(declare-fun mapValue!4871 () ValueCell!1125)

(declare-fun mapRest!4871 () (Array (_ BitVec 32) ValueCell!1125))

(declare-fun mapKey!4871 () (_ BitVec 32))

(assert (=> mapNonEmpty!4871 (= mapRest!4861 (store mapRest!4871 mapKey!4871 mapValue!4871))))

(declare-fun b!143581 () Bool)

(declare-fun e!93570 () Bool)

(assert (=> b!143581 (= e!93570 tp_is_empty!2937)))

(declare-fun mapIsEmpty!4871 () Bool)

(assert (=> mapIsEmpty!4871 mapRes!4871))

(declare-fun condMapEmpty!4871 () Bool)

(declare-fun mapDefault!4871 () ValueCell!1125)

(assert (=> mapNonEmpty!4861 (= condMapEmpty!4871 (= mapRest!4861 ((as const (Array (_ BitVec 32) ValueCell!1125)) mapDefault!4871)))))

(assert (=> mapNonEmpty!4861 (= tp!11605 (and e!93570 mapRes!4871))))

(declare-fun b!143580 () Bool)

(assert (=> b!143580 (= e!93571 tp_is_empty!2937)))

(assert (= (and mapNonEmpty!4861 condMapEmpty!4871) mapIsEmpty!4871))

(assert (= (and mapNonEmpty!4861 (not condMapEmpty!4871)) mapNonEmpty!4871))

(assert (= (and mapNonEmpty!4871 ((_ is ValueCellFull!1125) mapValue!4871)) b!143580))

(assert (= (and mapNonEmpty!4861 ((_ is ValueCellFull!1125) mapDefault!4871)) b!143581))

(declare-fun m!173375 () Bool)

(assert (=> mapNonEmpty!4871 m!173375))

(declare-fun mapNonEmpty!4872 () Bool)

(declare-fun mapRes!4872 () Bool)

(declare-fun tp!11622 () Bool)

(declare-fun e!93573 () Bool)

(assert (=> mapNonEmpty!4872 (= mapRes!4872 (and tp!11622 e!93573))))

(declare-fun mapRest!4872 () (Array (_ BitVec 32) ValueCell!1125))

(declare-fun mapKey!4872 () (_ BitVec 32))

(declare-fun mapValue!4872 () ValueCell!1125)

(assert (=> mapNonEmpty!4872 (= mapRest!4862 (store mapRest!4872 mapKey!4872 mapValue!4872))))

(declare-fun b!143583 () Bool)

(declare-fun e!93572 () Bool)

(assert (=> b!143583 (= e!93572 tp_is_empty!2937)))

(declare-fun mapIsEmpty!4872 () Bool)

(assert (=> mapIsEmpty!4872 mapRes!4872))

(declare-fun condMapEmpty!4872 () Bool)

(declare-fun mapDefault!4872 () ValueCell!1125)

(assert (=> mapNonEmpty!4862 (= condMapEmpty!4872 (= mapRest!4862 ((as const (Array (_ BitVec 32) ValueCell!1125)) mapDefault!4872)))))

(assert (=> mapNonEmpty!4862 (= tp!11604 (and e!93572 mapRes!4872))))

(declare-fun b!143582 () Bool)

(assert (=> b!143582 (= e!93573 tp_is_empty!2937)))

(assert (= (and mapNonEmpty!4862 condMapEmpty!4872) mapIsEmpty!4872))

(assert (= (and mapNonEmpty!4862 (not condMapEmpty!4872)) mapNonEmpty!4872))

(assert (= (and mapNonEmpty!4872 ((_ is ValueCellFull!1125) mapValue!4872)) b!143582))

(assert (= (and mapNonEmpty!4862 ((_ is ValueCellFull!1125) mapDefault!4872)) b!143583))

(declare-fun m!173377 () Bool)

(assert (=> mapNonEmpty!4872 m!173377))

(declare-fun b_lambda!6475 () Bool)

(assert (= b_lambda!6473 (or (and b!143264 b_free!3041) (and b!143263 b_free!3043 (= (defaultEntry!2963 newMap!16) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))))) b_lambda!6475)))

(check-sat b_and!8967 (not bm!15912) tp_is_empty!2937 (not bm!15879) (not d!45863) (not bm!15909) (not bm!15910) (not d!45851) (not bm!15889) (not b!143446) (not b!143443) (not bm!15908) (not d!45853) (not b!143452) (not b!143567) (not bm!15882) (not b!143460) (not b!143557) (not bm!15881) (not b_next!3043) (not bm!15880) (not b!143537) (not bm!15917) (not bm!15887) (not b!143349) (not b!143558) b_and!8965 (not b!143335) (not b!143336) (not d!45859) (not b!143533) (not b!143538) (not d!45865) (not bm!15878) (not b!143444) (not bm!15876) (not b!143543) (not d!45857) (not b!143342) (not mapNonEmpty!4872) (not b!143545) (not b!143532) (not b!143483) (not d!45873) (not b!143351) (not bm!15883) (not mapNonEmpty!4871) (not d!45877) (not b!143526) (not bm!15891) (not b!143455) (not b!143561) (not b!143531) (not b!143341) (not b!143441) (not b!143334) (not b_lambda!6475) (not b_lambda!6471) (not bm!15886) (not b!143482) (not b!143454) (not b_next!3041) (not b!143572) (not bm!15885))
(check-sat b_and!8965 b_and!8967 (not b_next!3041) (not b_next!3043))
(get-model)

(declare-fun b!143584 () Bool)

(declare-fun e!93584 () Bool)

(declare-fun e!93574 () Bool)

(assert (=> b!143584 (= e!93584 e!93574)))

(declare-fun res!68379 () Bool)

(assert (=> b!143584 (=> (not res!68379) (not e!93574))))

(declare-fun lt!75242 () ListLongMap!1751)

(assert (=> b!143584 (= res!68379 (contains!924 lt!75242 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!143584 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun b!143585 () Bool)

(declare-fun e!93577 () Bool)

(declare-fun e!93576 () Bool)

(assert (=> b!143585 (= e!93577 e!93576)))

(declare-fun res!68383 () Bool)

(declare-fun call!15923 () Bool)

(assert (=> b!143585 (= res!68383 call!15923)))

(assert (=> b!143585 (=> (not res!68383) (not e!93576))))

(declare-fun b!143586 () Bool)

(declare-fun e!93579 () Bool)

(declare-fun e!93583 () Bool)

(assert (=> b!143586 (= e!93579 e!93583)))

(declare-fun res!68376 () Bool)

(declare-fun call!15922 () Bool)

(assert (=> b!143586 (= res!68376 call!15922)))

(assert (=> b!143586 (=> (not res!68376) (not e!93583))))

(declare-fun b!143587 () Bool)

(declare-fun e!93586 () Bool)

(assert (=> b!143587 (= e!93586 e!93577)))

(declare-fun c!27202 () Bool)

(assert (=> b!143587 (= c!27202 (not (= (bvand (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!15918 () Bool)

(assert (=> bm!15918 (= call!15922 (contains!924 lt!75242 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143588 () Bool)

(declare-fun res!68384 () Bool)

(assert (=> b!143588 (=> (not res!68384) (not e!93586))))

(assert (=> b!143588 (= res!68384 e!93584)))

(declare-fun res!68377 () Bool)

(assert (=> b!143588 (=> res!68377 e!93584)))

(declare-fun e!93580 () Bool)

(assert (=> b!143588 (= res!68377 (not e!93580))))

(declare-fun res!68381 () Bool)

(assert (=> b!143588 (=> (not res!68381) (not e!93580))))

(assert (=> b!143588 (= res!68381 (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun bm!15919 () Bool)

(declare-fun call!15925 () ListLongMap!1751)

(assert (=> bm!15919 (= call!15925 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite (or c!27170 c!27168) (_values!2946 newMap!16) lt!75156) (mask!7315 newMap!16) (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)) (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun bm!15920 () Bool)

(assert (=> bm!15920 (= call!15923 (contains!924 lt!75242 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143589 () Bool)

(assert (=> b!143589 (= e!93576 (= (apply!121 lt!75242 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16))))))

(declare-fun b!143590 () Bool)

(assert (=> b!143590 (= e!93574 (= (apply!121 lt!75242 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)) (get!1541 (select (arr!2321 (ite (or c!27170 c!27168) (_values!2946 newMap!16) lt!75156)) #b00000000000000000000000000000000) (dynLambda!444 (defaultEntry!2963 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!143590 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2594 (ite (or c!27170 c!27168) (_values!2946 newMap!16) lt!75156))))))

(assert (=> b!143590 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun b!143591 () Bool)

(assert (=> b!143591 (= e!93580 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!143592 () Bool)

(declare-fun e!93585 () ListLongMap!1751)

(declare-fun call!15924 () ListLongMap!1751)

(assert (=> b!143592 (= e!93585 call!15924)))

(declare-fun d!45879 () Bool)

(assert (=> d!45879 e!93586))

(declare-fun res!68380 () Bool)

(assert (=> d!45879 (=> (not res!68380) (not e!93586))))

(assert (=> d!45879 (= res!68380 (or (bvsge #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))))

(declare-fun lt!75250 () ListLongMap!1751)

(assert (=> d!45879 (= lt!75242 lt!75250)))

(declare-fun lt!75240 () Unit!4550)

(declare-fun e!93582 () Unit!4550)

(assert (=> d!45879 (= lt!75240 e!93582)))

(declare-fun c!27198 () Bool)

(declare-fun e!93578 () Bool)

(assert (=> d!45879 (= c!27198 e!93578)))

(declare-fun res!68378 () Bool)

(assert (=> d!45879 (=> (not res!68378) (not e!93578))))

(assert (=> d!45879 (= res!68378 (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun e!93575 () ListLongMap!1751)

(assert (=> d!45879 (= lt!75250 e!93575)))

(declare-fun c!27201 () Bool)

(assert (=> d!45879 (= c!27201 (and (not (= (bvand (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!45879 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45879 (= (getCurrentListMap!557 (_keys!4726 newMap!16) (ite (or c!27170 c!27168) (_values!2946 newMap!16) lt!75156) (mask!7315 newMap!16) (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)) (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) lt!75242)))

(declare-fun b!143593 () Bool)

(declare-fun res!68382 () Bool)

(assert (=> b!143593 (=> (not res!68382) (not e!93586))))

(assert (=> b!143593 (= res!68382 e!93579)))

(declare-fun c!27200 () Bool)

(assert (=> b!143593 (= c!27200 (not (= (bvand (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!143594 () Bool)

(assert (=> b!143594 (= e!93579 (not call!15922))))

(declare-fun bm!15921 () Bool)

(declare-fun call!15926 () ListLongMap!1751)

(declare-fun call!15927 () ListLongMap!1751)

(assert (=> bm!15921 (= call!15926 call!15927)))

(declare-fun b!143595 () Bool)

(declare-fun lt!75236 () Unit!4550)

(assert (=> b!143595 (= e!93582 lt!75236)))

(declare-fun lt!75253 () ListLongMap!1751)

(assert (=> b!143595 (= lt!75253 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite (or c!27170 c!27168) (_values!2946 newMap!16) lt!75156) (mask!7315 newMap!16) (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)) (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75252 () (_ BitVec 64))

(assert (=> b!143595 (= lt!75252 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75233 () (_ BitVec 64))

(assert (=> b!143595 (= lt!75233 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75251 () Unit!4550)

(assert (=> b!143595 (= lt!75251 (addStillContains!97 lt!75253 lt!75252 (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)) lt!75233))))

(assert (=> b!143595 (contains!924 (+!175 lt!75253 (tuple2!2691 lt!75252 (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)))) lt!75233)))

(declare-fun lt!75244 () Unit!4550)

(assert (=> b!143595 (= lt!75244 lt!75251)))

(declare-fun lt!75235 () ListLongMap!1751)

(assert (=> b!143595 (= lt!75235 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite (or c!27170 c!27168) (_values!2946 newMap!16) lt!75156) (mask!7315 newMap!16) (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)) (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75248 () (_ BitVec 64))

(assert (=> b!143595 (= lt!75248 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75234 () (_ BitVec 64))

(assert (=> b!143595 (= lt!75234 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75243 () Unit!4550)

(assert (=> b!143595 (= lt!75243 (addApplyDifferent!97 lt!75235 lt!75248 (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)) lt!75234))))

(assert (=> b!143595 (= (apply!121 (+!175 lt!75235 (tuple2!2691 lt!75248 (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)))) lt!75234) (apply!121 lt!75235 lt!75234))))

(declare-fun lt!75238 () Unit!4550)

(assert (=> b!143595 (= lt!75238 lt!75243)))

(declare-fun lt!75241 () ListLongMap!1751)

(assert (=> b!143595 (= lt!75241 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite (or c!27170 c!27168) (_values!2946 newMap!16) lt!75156) (mask!7315 newMap!16) (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)) (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75246 () (_ BitVec 64))

(assert (=> b!143595 (= lt!75246 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75239 () (_ BitVec 64))

(assert (=> b!143595 (= lt!75239 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75237 () Unit!4550)

(assert (=> b!143595 (= lt!75237 (addApplyDifferent!97 lt!75241 lt!75246 (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)) lt!75239))))

(assert (=> b!143595 (= (apply!121 (+!175 lt!75241 (tuple2!2691 lt!75246 (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)))) lt!75239) (apply!121 lt!75241 lt!75239))))

(declare-fun lt!75247 () Unit!4550)

(assert (=> b!143595 (= lt!75247 lt!75237)))

(declare-fun lt!75254 () ListLongMap!1751)

(assert (=> b!143595 (= lt!75254 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite (or c!27170 c!27168) (_values!2946 newMap!16) lt!75156) (mask!7315 newMap!16) (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16)) (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75249 () (_ BitVec 64))

(assert (=> b!143595 (= lt!75249 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75245 () (_ BitVec 64))

(assert (=> b!143595 (= lt!75245 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!143595 (= lt!75236 (addApplyDifferent!97 lt!75254 lt!75249 (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)) lt!75245))))

(assert (=> b!143595 (= (apply!121 (+!175 lt!75254 (tuple2!2691 lt!75249 (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)))) lt!75245) (apply!121 lt!75254 lt!75245))))

(declare-fun b!143596 () Bool)

(assert (=> b!143596 (= e!93578 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!143597 () Bool)

(assert (=> b!143597 (= e!93577 (not call!15923))))

(declare-fun bm!15922 () Bool)

(declare-fun call!15921 () ListLongMap!1751)

(declare-fun c!27199 () Bool)

(assert (=> bm!15922 (= call!15921 (+!175 (ite c!27201 call!15925 (ite c!27199 call!15927 call!15926)) (ite (or c!27201 c!27199) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16))))))))

(declare-fun b!143598 () Bool)

(assert (=> b!143598 (= e!93575 e!93585)))

(assert (=> b!143598 (= c!27199 (and (not (= (bvand (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!143599 () Bool)

(declare-fun Unit!4558 () Unit!4550)

(assert (=> b!143599 (= e!93582 Unit!4558)))

(declare-fun b!143600 () Bool)

(declare-fun e!93581 () ListLongMap!1751)

(assert (=> b!143600 (= e!93581 call!15924)))

(declare-fun b!143601 () Bool)

(assert (=> b!143601 (= e!93583 (= (apply!121 lt!75242 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!27170 c!27169) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2811 newMap!16))))))

(declare-fun bm!15923 () Bool)

(assert (=> bm!15923 (= call!15924 call!15921)))

(declare-fun b!143602 () Bool)

(assert (=> b!143602 (= e!93581 call!15926)))

(declare-fun b!143603 () Bool)

(assert (=> b!143603 (= e!93575 (+!175 call!15921 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!27170 (ite c!27169 (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2811 newMap!16)))))))

(declare-fun c!27203 () Bool)

(declare-fun b!143604 () Bool)

(assert (=> b!143604 (= c!27203 (and (not (= (bvand (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!27170 (ite c!27169 lt!75135 lt!75158) (extraKeys!2714 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!143604 (= e!93585 e!93581)))

(declare-fun bm!15924 () Bool)

(assert (=> bm!15924 (= call!15927 call!15925)))

(assert (= (and d!45879 c!27201) b!143603))

(assert (= (and d!45879 (not c!27201)) b!143598))

(assert (= (and b!143598 c!27199) b!143592))

(assert (= (and b!143598 (not c!27199)) b!143604))

(assert (= (and b!143604 c!27203) b!143600))

(assert (= (and b!143604 (not c!27203)) b!143602))

(assert (= (or b!143600 b!143602) bm!15921))

(assert (= (or b!143592 bm!15921) bm!15924))

(assert (= (or b!143592 b!143600) bm!15923))

(assert (= (or b!143603 bm!15924) bm!15919))

(assert (= (or b!143603 bm!15923) bm!15922))

(assert (= (and d!45879 res!68378) b!143596))

(assert (= (and d!45879 c!27198) b!143595))

(assert (= (and d!45879 (not c!27198)) b!143599))

(assert (= (and d!45879 res!68380) b!143588))

(assert (= (and b!143588 res!68381) b!143591))

(assert (= (and b!143588 (not res!68377)) b!143584))

(assert (= (and b!143584 res!68379) b!143590))

(assert (= (and b!143588 res!68384) b!143593))

(assert (= (and b!143593 c!27200) b!143586))

(assert (= (and b!143593 (not c!27200)) b!143594))

(assert (= (and b!143586 res!68376) b!143601))

(assert (= (or b!143586 b!143594) bm!15918))

(assert (= (and b!143593 res!68382) b!143587))

(assert (= (and b!143587 c!27202) b!143585))

(assert (= (and b!143587 (not c!27202)) b!143597))

(assert (= (and b!143585 res!68383) b!143589))

(assert (= (or b!143585 b!143597) bm!15920))

(declare-fun b_lambda!6477 () Bool)

(assert (=> (not b_lambda!6477) (not b!143590)))

(declare-fun t!6396 () Bool)

(declare-fun tb!2589 () Bool)

(assert (=> (and b!143264 (= (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) (defaultEntry!2963 newMap!16)) t!6396) tb!2589))

(declare-fun result!4235 () Bool)

(assert (=> tb!2589 (= result!4235 tp_is_empty!2937)))

(assert (=> b!143590 t!6396))

(declare-fun b_and!8969 () Bool)

(assert (= b_and!8965 (and (=> t!6396 result!4235) b_and!8969)))

(declare-fun t!6398 () Bool)

(declare-fun tb!2591 () Bool)

(assert (=> (and b!143263 (= (defaultEntry!2963 newMap!16) (defaultEntry!2963 newMap!16)) t!6398) tb!2591))

(declare-fun result!4237 () Bool)

(assert (= result!4237 result!4235))

(assert (=> b!143590 t!6398))

(declare-fun b_and!8971 () Bool)

(assert (= b_and!8967 (and (=> t!6398 result!4237) b_and!8971)))

(declare-fun m!173379 () Bool)

(assert (=> bm!15919 m!173379))

(declare-fun m!173381 () Bool)

(assert (=> b!143595 m!173381))

(declare-fun m!173383 () Bool)

(assert (=> b!143595 m!173383))

(declare-fun m!173385 () Bool)

(assert (=> b!143595 m!173385))

(declare-fun m!173387 () Bool)

(assert (=> b!143595 m!173387))

(declare-fun m!173389 () Bool)

(assert (=> b!143595 m!173389))

(assert (=> b!143595 m!173381))

(declare-fun m!173391 () Bool)

(assert (=> b!143595 m!173391))

(declare-fun m!173393 () Bool)

(assert (=> b!143595 m!173393))

(declare-fun m!173395 () Bool)

(assert (=> b!143595 m!173395))

(assert (=> b!143595 m!173379))

(declare-fun m!173397 () Bool)

(assert (=> b!143595 m!173397))

(declare-fun m!173399 () Bool)

(assert (=> b!143595 m!173399))

(declare-fun m!173401 () Bool)

(assert (=> b!143595 m!173401))

(assert (=> b!143595 m!173397))

(declare-fun m!173403 () Bool)

(assert (=> b!143595 m!173403))

(declare-fun m!173405 () Bool)

(assert (=> b!143595 m!173405))

(assert (=> b!143595 m!173393))

(declare-fun m!173407 () Bool)

(assert (=> b!143595 m!173407))

(declare-fun m!173409 () Bool)

(assert (=> b!143595 m!173409))

(declare-fun m!173411 () Bool)

(assert (=> b!143595 m!173411))

(assert (=> b!143595 m!173385))

(declare-fun m!173413 () Bool)

(assert (=> d!45879 m!173413))

(declare-fun m!173415 () Bool)

(assert (=> b!143590 m!173415))

(declare-fun m!173417 () Bool)

(assert (=> b!143590 m!173417))

(assert (=> b!143590 m!173411))

(assert (=> b!143590 m!173411))

(declare-fun m!173419 () Bool)

(assert (=> b!143590 m!173419))

(assert (=> b!143590 m!173417))

(assert (=> b!143590 m!173415))

(declare-fun m!173421 () Bool)

(assert (=> b!143590 m!173421))

(assert (=> b!143596 m!173411))

(assert (=> b!143596 m!173411))

(declare-fun m!173423 () Bool)

(assert (=> b!143596 m!173423))

(declare-fun m!173425 () Bool)

(assert (=> b!143589 m!173425))

(declare-fun m!173427 () Bool)

(assert (=> b!143601 m!173427))

(declare-fun m!173429 () Bool)

(assert (=> b!143603 m!173429))

(declare-fun m!173431 () Bool)

(assert (=> bm!15920 m!173431))

(declare-fun m!173433 () Bool)

(assert (=> bm!15918 m!173433))

(assert (=> b!143591 m!173411))

(assert (=> b!143591 m!173411))

(assert (=> b!143591 m!173423))

(declare-fun m!173435 () Bool)

(assert (=> bm!15922 m!173435))

(assert (=> b!143584 m!173411))

(assert (=> b!143584 m!173411))

(declare-fun m!173437 () Bool)

(assert (=> b!143584 m!173437))

(assert (=> bm!15889 d!45879))

(declare-fun d!45881 () Bool)

(declare-fun e!93589 () Bool)

(assert (=> d!45881 e!93589))

(declare-fun res!68389 () Bool)

(assert (=> d!45881 (=> (not res!68389) (not e!93589))))

(declare-fun lt!75264 () ListLongMap!1751)

(assert (=> d!45881 (= res!68389 (contains!924 lt!75264 (_1!1355 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!75263 () List!1768)

(assert (=> d!45881 (= lt!75264 (ListLongMap!1752 lt!75263))))

(declare-fun lt!75265 () Unit!4550)

(declare-fun lt!75266 () Unit!4550)

(assert (=> d!45881 (= lt!75265 lt!75266)))

(assert (=> d!45881 (= (getValueByKey!176 lt!75263 (_1!1355 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!181 (_2!1355 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!92 (List!1768 (_ BitVec 64) V!3563) Unit!4550)

(assert (=> d!45881 (= lt!75266 (lemmaContainsTupThenGetReturnValue!92 lt!75263 (_1!1355 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1355 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!94 (List!1768 (_ BitVec 64) V!3563) List!1768)

(assert (=> d!45881 (= lt!75263 (insertStrictlySorted!94 (toList!891 call!15877) (_1!1355 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1355 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!45881 (= (+!175 call!15877 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!75264)))

(declare-fun b!143609 () Bool)

(declare-fun res!68390 () Bool)

(assert (=> b!143609 (=> (not res!68390) (not e!93589))))

(assert (=> b!143609 (= res!68390 (= (getValueByKey!176 (toList!891 lt!75264) (_1!1355 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!181 (_2!1355 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!143610 () Bool)

(declare-fun contains!926 (List!1768 tuple2!2690) Bool)

(assert (=> b!143610 (= e!93589 (contains!926 (toList!891 lt!75264) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!45881 res!68389) b!143609))

(assert (= (and b!143609 res!68390) b!143610))

(declare-fun m!173439 () Bool)

(assert (=> d!45881 m!173439))

(declare-fun m!173441 () Bool)

(assert (=> d!45881 m!173441))

(declare-fun m!173443 () Bool)

(assert (=> d!45881 m!173443))

(declare-fun m!173445 () Bool)

(assert (=> d!45881 m!173445))

(declare-fun m!173447 () Bool)

(assert (=> b!143609 m!173447))

(declare-fun m!173449 () Bool)

(assert (=> b!143610 m!173449))

(assert (=> b!143460 d!45881))

(declare-fun d!45883 () Bool)

(assert (=> d!45883 (= (+!175 (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) lt!75158 (zeroValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75269 () Unit!4550)

(declare-fun choose!878 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 V!3563 Int) Unit!4550)

(assert (=> d!45883 (= lt!75269 (choose!878 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) lt!75158 (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2963 newMap!16)))))

(assert (=> d!45883 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45883 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) lt!75158 (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2963 newMap!16)) lt!75269)))

(declare-fun bs!6077 () Bool)

(assert (= bs!6077 d!45883))

(assert (=> bs!6077 m!173247))

(assert (=> bs!6077 m!173247))

(declare-fun m!173451 () Bool)

(assert (=> bs!6077 m!173451))

(assert (=> bs!6077 m!173413))

(assert (=> bs!6077 m!173161))

(declare-fun m!173453 () Bool)

(assert (=> bs!6077 m!173453))

(assert (=> bs!6077 m!173161))

(declare-fun m!173455 () Bool)

(assert (=> bs!6077 m!173455))

(assert (=> b!143446 d!45883))

(declare-fun d!45885 () Bool)

(declare-fun get!1544 (Option!182) V!3563)

(assert (=> d!45885 (= (apply!121 lt!75214 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1544 (getValueByKey!176 (toList!891 lt!75214) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6078 () Bool)

(assert (= bs!6078 d!45885))

(declare-fun m!173457 () Bool)

(assert (=> bs!6078 m!173457))

(assert (=> bs!6078 m!173457))

(declare-fun m!173459 () Bool)

(assert (=> bs!6078 m!173459))

(assert (=> b!143531 d!45885))

(declare-fun b!143611 () Bool)

(declare-fun e!93600 () Bool)

(declare-fun e!93590 () Bool)

(assert (=> b!143611 (= e!93600 e!93590)))

(declare-fun res!68394 () Bool)

(assert (=> b!143611 (=> (not res!68394) (not e!93590))))

(declare-fun lt!75279 () ListLongMap!1751)

(assert (=> b!143611 (= res!68394 (contains!924 lt!75279 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!143611 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun b!143612 () Bool)

(declare-fun e!93593 () Bool)

(declare-fun e!93592 () Bool)

(assert (=> b!143612 (= e!93593 e!93592)))

(declare-fun res!68398 () Bool)

(declare-fun call!15930 () Bool)

(assert (=> b!143612 (= res!68398 call!15930)))

(assert (=> b!143612 (=> (not res!68398) (not e!93592))))

(declare-fun b!143613 () Bool)

(declare-fun e!93595 () Bool)

(declare-fun e!93599 () Bool)

(assert (=> b!143613 (= e!93595 e!93599)))

(declare-fun res!68391 () Bool)

(declare-fun call!15929 () Bool)

(assert (=> b!143613 (= res!68391 call!15929)))

(assert (=> b!143613 (=> (not res!68391) (not e!93599))))

(declare-fun b!143614 () Bool)

(declare-fun e!93602 () Bool)

(assert (=> b!143614 (= e!93602 e!93593)))

(declare-fun c!27208 () Bool)

(assert (=> b!143614 (= c!27208 (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!15925 () Bool)

(assert (=> bm!15925 (= call!15929 (contains!924 lt!75279 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143615 () Bool)

(declare-fun res!68399 () Bool)

(assert (=> b!143615 (=> (not res!68399) (not e!93602))))

(assert (=> b!143615 (= res!68399 e!93600)))

(declare-fun res!68392 () Bool)

(assert (=> b!143615 (=> res!68392 e!93600)))

(declare-fun e!93596 () Bool)

(assert (=> b!143615 (= res!68392 (not e!93596))))

(declare-fun res!68396 () Bool)

(assert (=> b!143615 (=> (not res!68396) (not e!93596))))

(assert (=> b!143615 (= res!68396 (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun bm!15926 () Bool)

(declare-fun call!15932 () ListLongMap!1751)

(assert (=> bm!15926 (= call!15932 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun bm!15927 () Bool)

(assert (=> bm!15927 (= call!15930 (contains!924 lt!75279 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143616 () Bool)

(assert (=> b!143616 (= e!93592 (= (apply!121 lt!75279 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2811 newMap!16)))))

(declare-fun b!143617 () Bool)

(assert (=> b!143617 (= e!93590 (= (apply!121 lt!75279 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)) (get!1541 (select (arr!2321 (_values!2946 newMap!16)) #b00000000000000000000000000000000) (dynLambda!444 (defaultEntry!2963 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!143617 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2594 (_values!2946 newMap!16))))))

(assert (=> b!143617 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun b!143618 () Bool)

(assert (=> b!143618 (= e!93596 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!143619 () Bool)

(declare-fun e!93601 () ListLongMap!1751)

(declare-fun call!15931 () ListLongMap!1751)

(assert (=> b!143619 (= e!93601 call!15931)))

(declare-fun d!45887 () Bool)

(assert (=> d!45887 e!93602))

(declare-fun res!68395 () Bool)

(assert (=> d!45887 (=> (not res!68395) (not e!93602))))

(assert (=> d!45887 (= res!68395 (or (bvsge #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))))

(declare-fun lt!75287 () ListLongMap!1751)

(assert (=> d!45887 (= lt!75279 lt!75287)))

(declare-fun lt!75277 () Unit!4550)

(declare-fun e!93598 () Unit!4550)

(assert (=> d!45887 (= lt!75277 e!93598)))

(declare-fun c!27204 () Bool)

(declare-fun e!93594 () Bool)

(assert (=> d!45887 (= c!27204 e!93594)))

(declare-fun res!68393 () Bool)

(assert (=> d!45887 (=> (not res!68393) (not e!93594))))

(assert (=> d!45887 (= res!68393 (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun e!93591 () ListLongMap!1751)

(assert (=> d!45887 (= lt!75287 e!93591)))

(declare-fun c!27207 () Bool)

(assert (=> d!45887 (= c!27207 (and (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!45887 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45887 (= (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) lt!75279)))

(declare-fun b!143620 () Bool)

(declare-fun res!68397 () Bool)

(assert (=> b!143620 (=> (not res!68397) (not e!93602))))

(assert (=> b!143620 (= res!68397 e!93595)))

(declare-fun c!27206 () Bool)

(assert (=> b!143620 (= c!27206 (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!143621 () Bool)

(assert (=> b!143621 (= e!93595 (not call!15929))))

(declare-fun bm!15928 () Bool)

(declare-fun call!15933 () ListLongMap!1751)

(declare-fun call!15934 () ListLongMap!1751)

(assert (=> bm!15928 (= call!15933 call!15934)))

(declare-fun b!143622 () Bool)

(declare-fun lt!75273 () Unit!4550)

(assert (=> b!143622 (= e!93598 lt!75273)))

(declare-fun lt!75290 () ListLongMap!1751)

(assert (=> b!143622 (= lt!75290 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75289 () (_ BitVec 64))

(assert (=> b!143622 (= lt!75289 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75270 () (_ BitVec 64))

(assert (=> b!143622 (= lt!75270 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75288 () Unit!4550)

(assert (=> b!143622 (= lt!75288 (addStillContains!97 lt!75290 lt!75289 (zeroValue!2811 newMap!16) lt!75270))))

(assert (=> b!143622 (contains!924 (+!175 lt!75290 (tuple2!2691 lt!75289 (zeroValue!2811 newMap!16))) lt!75270)))

(declare-fun lt!75281 () Unit!4550)

(assert (=> b!143622 (= lt!75281 lt!75288)))

(declare-fun lt!75272 () ListLongMap!1751)

(assert (=> b!143622 (= lt!75272 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75285 () (_ BitVec 64))

(assert (=> b!143622 (= lt!75285 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75271 () (_ BitVec 64))

(assert (=> b!143622 (= lt!75271 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75280 () Unit!4550)

(assert (=> b!143622 (= lt!75280 (addApplyDifferent!97 lt!75272 lt!75285 (minValue!2811 newMap!16) lt!75271))))

(assert (=> b!143622 (= (apply!121 (+!175 lt!75272 (tuple2!2691 lt!75285 (minValue!2811 newMap!16))) lt!75271) (apply!121 lt!75272 lt!75271))))

(declare-fun lt!75275 () Unit!4550)

(assert (=> b!143622 (= lt!75275 lt!75280)))

(declare-fun lt!75278 () ListLongMap!1751)

(assert (=> b!143622 (= lt!75278 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75283 () (_ BitVec 64))

(assert (=> b!143622 (= lt!75283 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75276 () (_ BitVec 64))

(assert (=> b!143622 (= lt!75276 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75274 () Unit!4550)

(assert (=> b!143622 (= lt!75274 (addApplyDifferent!97 lt!75278 lt!75283 (zeroValue!2811 newMap!16) lt!75276))))

(assert (=> b!143622 (= (apply!121 (+!175 lt!75278 (tuple2!2691 lt!75283 (zeroValue!2811 newMap!16))) lt!75276) (apply!121 lt!75278 lt!75276))))

(declare-fun lt!75284 () Unit!4550)

(assert (=> b!143622 (= lt!75284 lt!75274)))

(declare-fun lt!75291 () ListLongMap!1751)

(assert (=> b!143622 (= lt!75291 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75286 () (_ BitVec 64))

(assert (=> b!143622 (= lt!75286 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75282 () (_ BitVec 64))

(assert (=> b!143622 (= lt!75282 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!143622 (= lt!75273 (addApplyDifferent!97 lt!75291 lt!75286 (minValue!2811 newMap!16) lt!75282))))

(assert (=> b!143622 (= (apply!121 (+!175 lt!75291 (tuple2!2691 lt!75286 (minValue!2811 newMap!16))) lt!75282) (apply!121 lt!75291 lt!75282))))

(declare-fun b!143623 () Bool)

(assert (=> b!143623 (= e!93594 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!143624 () Bool)

(assert (=> b!143624 (= e!93593 (not call!15930))))

(declare-fun c!27205 () Bool)

(declare-fun call!15928 () ListLongMap!1751)

(declare-fun bm!15929 () Bool)

(assert (=> bm!15929 (= call!15928 (+!175 (ite c!27207 call!15932 (ite c!27205 call!15934 call!15933)) (ite (or c!27207 c!27205) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 newMap!16)) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 newMap!16)))))))

(declare-fun b!143625 () Bool)

(assert (=> b!143625 (= e!93591 e!93601)))

(assert (=> b!143625 (= c!27205 (and (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!143626 () Bool)

(declare-fun Unit!4559 () Unit!4550)

(assert (=> b!143626 (= e!93598 Unit!4559)))

(declare-fun b!143627 () Bool)

(declare-fun e!93597 () ListLongMap!1751)

(assert (=> b!143627 (= e!93597 call!15931)))

(declare-fun b!143628 () Bool)

(assert (=> b!143628 (= e!93599 (= (apply!121 lt!75279 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2811 newMap!16)))))

(declare-fun bm!15930 () Bool)

(assert (=> bm!15930 (= call!15931 call!15928)))

(declare-fun b!143629 () Bool)

(assert (=> b!143629 (= e!93597 call!15933)))

(declare-fun b!143630 () Bool)

(assert (=> b!143630 (= e!93591 (+!175 call!15928 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 newMap!16))))))

(declare-fun b!143631 () Bool)

(declare-fun c!27209 () Bool)

(assert (=> b!143631 (= c!27209 (and (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!143631 (= e!93601 e!93597)))

(declare-fun bm!15931 () Bool)

(assert (=> bm!15931 (= call!15934 call!15932)))

(assert (= (and d!45887 c!27207) b!143630))

(assert (= (and d!45887 (not c!27207)) b!143625))

(assert (= (and b!143625 c!27205) b!143619))

(assert (= (and b!143625 (not c!27205)) b!143631))

(assert (= (and b!143631 c!27209) b!143627))

(assert (= (and b!143631 (not c!27209)) b!143629))

(assert (= (or b!143627 b!143629) bm!15928))

(assert (= (or b!143619 bm!15928) bm!15931))

(assert (= (or b!143619 b!143627) bm!15930))

(assert (= (or b!143630 bm!15931) bm!15926))

(assert (= (or b!143630 bm!15930) bm!15929))

(assert (= (and d!45887 res!68393) b!143623))

(assert (= (and d!45887 c!27204) b!143622))

(assert (= (and d!45887 (not c!27204)) b!143626))

(assert (= (and d!45887 res!68395) b!143615))

(assert (= (and b!143615 res!68396) b!143618))

(assert (= (and b!143615 (not res!68392)) b!143611))

(assert (= (and b!143611 res!68394) b!143617))

(assert (= (and b!143615 res!68399) b!143620))

(assert (= (and b!143620 c!27206) b!143613))

(assert (= (and b!143620 (not c!27206)) b!143621))

(assert (= (and b!143613 res!68391) b!143628))

(assert (= (or b!143613 b!143621) bm!15925))

(assert (= (and b!143620 res!68397) b!143614))

(assert (= (and b!143614 c!27208) b!143612))

(assert (= (and b!143614 (not c!27208)) b!143624))

(assert (= (and b!143612 res!68398) b!143616))

(assert (= (or b!143612 b!143624) bm!15927))

(declare-fun b_lambda!6479 () Bool)

(assert (=> (not b_lambda!6479) (not b!143617)))

(assert (=> b!143617 t!6396))

(declare-fun b_and!8973 () Bool)

(assert (= b_and!8969 (and (=> t!6396 result!4235) b_and!8973)))

(assert (=> b!143617 t!6398))

(declare-fun b_and!8975 () Bool)

(assert (= b_and!8971 (and (=> t!6398 result!4237) b_and!8975)))

(declare-fun m!173461 () Bool)

(assert (=> bm!15926 m!173461))

(declare-fun m!173463 () Bool)

(assert (=> b!143622 m!173463))

(declare-fun m!173465 () Bool)

(assert (=> b!143622 m!173465))

(declare-fun m!173467 () Bool)

(assert (=> b!143622 m!173467))

(declare-fun m!173469 () Bool)

(assert (=> b!143622 m!173469))

(declare-fun m!173471 () Bool)

(assert (=> b!143622 m!173471))

(assert (=> b!143622 m!173463))

(declare-fun m!173473 () Bool)

(assert (=> b!143622 m!173473))

(declare-fun m!173475 () Bool)

(assert (=> b!143622 m!173475))

(declare-fun m!173477 () Bool)

(assert (=> b!143622 m!173477))

(assert (=> b!143622 m!173461))

(declare-fun m!173479 () Bool)

(assert (=> b!143622 m!173479))

(declare-fun m!173481 () Bool)

(assert (=> b!143622 m!173481))

(declare-fun m!173483 () Bool)

(assert (=> b!143622 m!173483))

(assert (=> b!143622 m!173479))

(declare-fun m!173485 () Bool)

(assert (=> b!143622 m!173485))

(declare-fun m!173487 () Bool)

(assert (=> b!143622 m!173487))

(assert (=> b!143622 m!173475))

(declare-fun m!173489 () Bool)

(assert (=> b!143622 m!173489))

(declare-fun m!173491 () Bool)

(assert (=> b!143622 m!173491))

(assert (=> b!143622 m!173411))

(assert (=> b!143622 m!173467))

(assert (=> d!45887 m!173413))

(assert (=> b!143617 m!173415))

(declare-fun m!173493 () Bool)

(assert (=> b!143617 m!173493))

(assert (=> b!143617 m!173411))

(assert (=> b!143617 m!173411))

(declare-fun m!173495 () Bool)

(assert (=> b!143617 m!173495))

(assert (=> b!143617 m!173493))

(assert (=> b!143617 m!173415))

(declare-fun m!173497 () Bool)

(assert (=> b!143617 m!173497))

(assert (=> b!143623 m!173411))

(assert (=> b!143623 m!173411))

(assert (=> b!143623 m!173423))

(declare-fun m!173499 () Bool)

(assert (=> b!143616 m!173499))

(declare-fun m!173501 () Bool)

(assert (=> b!143628 m!173501))

(declare-fun m!173503 () Bool)

(assert (=> b!143630 m!173503))

(declare-fun m!173505 () Bool)

(assert (=> bm!15927 m!173505))

(declare-fun m!173507 () Bool)

(assert (=> bm!15925 m!173507))

(assert (=> b!143618 m!173411))

(assert (=> b!143618 m!173411))

(assert (=> b!143618 m!173423))

(declare-fun m!173509 () Bool)

(assert (=> bm!15929 m!173509))

(assert (=> b!143611 m!173411))

(assert (=> b!143611 m!173411))

(declare-fun m!173511 () Bool)

(assert (=> b!143611 m!173511))

(assert (=> d!45863 d!45887))

(declare-fun d!45889 () Bool)

(declare-fun lt!75294 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!138 (List!1767) (InoxSet (_ BitVec 64)))

(assert (=> d!45889 (= lt!75294 (select (content!138 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))) (h!2371 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))))))

(declare-fun e!93608 () Bool)

(assert (=> d!45889 (= lt!75294 e!93608)))

(declare-fun res!68405 () Bool)

(assert (=> d!45889 (=> (not res!68405) (not e!93608))))

(assert (=> d!45889 (= res!68405 ((_ is Cons!1763) (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))))))

(assert (=> d!45889 (= (contains!925 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764)) (h!2371 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))) lt!75294)))

(declare-fun b!143636 () Bool)

(declare-fun e!93607 () Bool)

(assert (=> b!143636 (= e!93608 e!93607)))

(declare-fun res!68404 () Bool)

(assert (=> b!143636 (=> res!68404 e!93607)))

(assert (=> b!143636 (= res!68404 (= (h!2371 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))) (h!2371 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))))))

(declare-fun b!143637 () Bool)

(assert (=> b!143637 (= e!93607 (contains!925 (t!6388 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))) (h!2371 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))))))

(assert (= (and d!45889 res!68405) b!143636))

(assert (= (and b!143636 (not res!68404)) b!143637))

(declare-fun m!173513 () Bool)

(assert (=> d!45889 m!173513))

(declare-fun m!173515 () Bool)

(assert (=> d!45889 m!173515))

(declare-fun m!173517 () Bool)

(assert (=> b!143637 m!173517))

(assert (=> b!143341 d!45889))

(declare-fun d!45891 () Bool)

(assert (=> d!45891 (isDefined!130 (getValueByKey!176 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun lt!75297 () Unit!4550)

(declare-fun choose!879 (List!1768 (_ BitVec 64)) Unit!4550)

(assert (=> d!45891 (= lt!75297 (choose!879 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun e!93611 () Bool)

(assert (=> d!45891 e!93611))

(declare-fun res!68408 () Bool)

(assert (=> d!45891 (=> (not res!68408) (not e!93611))))

(declare-fun isStrictlySorted!321 (List!1768) Bool)

(assert (=> d!45891 (= res!68408 (isStrictlySorted!321 (toList!891 lt!75052)))))

(assert (=> d!45891 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!129 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) lt!75297)))

(declare-fun b!143640 () Bool)

(assert (=> b!143640 (= e!93611 (containsKey!180 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (= (and d!45891 res!68408) b!143640))

(assert (=> d!45891 m!173141))

(assert (=> d!45891 m!173241))

(assert (=> d!45891 m!173241))

(assert (=> d!45891 m!173243))

(assert (=> d!45891 m!173141))

(declare-fun m!173519 () Bool)

(assert (=> d!45891 m!173519))

(declare-fun m!173521 () Bool)

(assert (=> d!45891 m!173521))

(assert (=> b!143640 m!173141))

(assert (=> b!143640 m!173237))

(assert (=> b!143349 d!45891))

(declare-fun d!45893 () Bool)

(declare-fun isEmpty!425 (Option!182) Bool)

(assert (=> d!45893 (= (isDefined!130 (getValueByKey!176 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))) (not (isEmpty!425 (getValueByKey!176 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))))

(declare-fun bs!6079 () Bool)

(assert (= bs!6079 d!45893))

(assert (=> bs!6079 m!173241))

(declare-fun m!173523 () Bool)

(assert (=> bs!6079 m!173523))

(assert (=> b!143349 d!45893))

(declare-fun b!143649 () Bool)

(declare-fun e!93616 () Option!182)

(assert (=> b!143649 (= e!93616 (Some!181 (_2!1355 (h!2372 (toList!891 lt!75052)))))))

(declare-fun d!45895 () Bool)

(declare-fun c!27214 () Bool)

(assert (=> d!45895 (= c!27214 (and ((_ is Cons!1764) (toList!891 lt!75052)) (= (_1!1355 (h!2372 (toList!891 lt!75052))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))))))

(assert (=> d!45895 (= (getValueByKey!176 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) e!93616)))

(declare-fun b!143650 () Bool)

(declare-fun e!93617 () Option!182)

(assert (=> b!143650 (= e!93616 e!93617)))

(declare-fun c!27215 () Bool)

(assert (=> b!143650 (= c!27215 (and ((_ is Cons!1764) (toList!891 lt!75052)) (not (= (_1!1355 (h!2372 (toList!891 lt!75052))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))))

(declare-fun b!143652 () Bool)

(assert (=> b!143652 (= e!93617 None!180)))

(declare-fun b!143651 () Bool)

(assert (=> b!143651 (= e!93617 (getValueByKey!176 (t!6389 (toList!891 lt!75052)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (= (and d!45895 c!27214) b!143649))

(assert (= (and d!45895 (not c!27214)) b!143650))

(assert (= (and b!143650 c!27215) b!143651))

(assert (= (and b!143650 (not c!27215)) b!143652))

(assert (=> b!143651 m!173141))

(declare-fun m!173525 () Bool)

(assert (=> b!143651 m!173525))

(assert (=> b!143349 d!45895))

(declare-fun d!45897 () Bool)

(assert (=> d!45897 (= (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!143533 d!45897))

(declare-fun d!45899 () Bool)

(declare-fun e!93618 () Bool)

(assert (=> d!45899 e!93618))

(declare-fun res!68409 () Bool)

(assert (=> d!45899 (=> (not res!68409) (not e!93618))))

(declare-fun lt!75299 () ListLongMap!1751)

(assert (=> d!45899 (= res!68409 (contains!924 lt!75299 (_1!1355 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(declare-fun lt!75298 () List!1768)

(assert (=> d!45899 (= lt!75299 (ListLongMap!1752 lt!75298))))

(declare-fun lt!75300 () Unit!4550)

(declare-fun lt!75301 () Unit!4550)

(assert (=> d!45899 (= lt!75300 lt!75301)))

(assert (=> d!45899 (= (getValueByKey!176 lt!75298 (_1!1355 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45899 (= lt!75301 (lemmaContainsTupThenGetReturnValue!92 lt!75298 (_1!1355 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45899 (= lt!75298 (insertStrictlySorted!94 (toList!891 call!15911) (_1!1355 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45899 (= (+!175 call!15911 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75299)))

(declare-fun b!143653 () Bool)

(declare-fun res!68410 () Bool)

(assert (=> b!143653 (=> (not res!68410) (not e!93618))))

(assert (=> b!143653 (= res!68410 (= (getValueByKey!176 (toList!891 lt!75299) (_1!1355 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))))

(declare-fun b!143654 () Bool)

(assert (=> b!143654 (= e!93618 (contains!926 (toList!891 lt!75299) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))

(assert (= (and d!45899 res!68409) b!143653))

(assert (= (and b!143653 res!68410) b!143654))

(declare-fun m!173527 () Bool)

(assert (=> d!45899 m!173527))

(declare-fun m!173529 () Bool)

(assert (=> d!45899 m!173529))

(declare-fun m!173531 () Bool)

(assert (=> d!45899 m!173531))

(declare-fun m!173533 () Bool)

(assert (=> d!45899 m!173533))

(declare-fun m!173535 () Bool)

(assert (=> b!143653 m!173535))

(declare-fun m!173537 () Bool)

(assert (=> b!143654 m!173537))

(assert (=> b!143545 d!45899))

(declare-fun d!45901 () Bool)

(assert (=> d!45901 (= (+!175 (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) lt!75135 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75304 () Unit!4550)

(declare-fun choose!880 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 V!3563 Int) Unit!4550)

(assert (=> d!45901 (= lt!75304 (choose!880 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) lt!75135 (zeroValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2811 newMap!16) (defaultEntry!2963 newMap!16)))))

(assert (=> d!45901 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45901 (= (lemmaChangeZeroKeyThenAddPairToListMap!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) lt!75135 (zeroValue!2811 newMap!16) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2811 newMap!16) (defaultEntry!2963 newMap!16)) lt!75304)))

(declare-fun bs!6080 () Bool)

(assert (= bs!6080 d!45901))

(assert (=> bs!6080 m!173161))

(declare-fun m!173539 () Bool)

(assert (=> bs!6080 m!173539))

(assert (=> bs!6080 m!173413))

(assert (=> bs!6080 m!173247))

(declare-fun m!173541 () Bool)

(assert (=> bs!6080 m!173541))

(assert (=> bs!6080 m!173161))

(declare-fun m!173543 () Bool)

(assert (=> bs!6080 m!173543))

(assert (=> bs!6080 m!173247))

(assert (=> b!143455 d!45901))

(declare-fun d!45903 () Bool)

(declare-fun e!93620 () Bool)

(assert (=> d!45903 e!93620))

(declare-fun res!68411 () Bool)

(assert (=> d!45903 (=> res!68411 e!93620)))

(declare-fun lt!75306 () Bool)

(assert (=> d!45903 (= res!68411 (not lt!75306))))

(declare-fun lt!75305 () Bool)

(assert (=> d!45903 (= lt!75306 lt!75305)))

(declare-fun lt!75308 () Unit!4550)

(declare-fun e!93619 () Unit!4550)

(assert (=> d!45903 (= lt!75308 e!93619)))

(declare-fun c!27216 () Bool)

(assert (=> d!45903 (= c!27216 lt!75305)))

(assert (=> d!45903 (= lt!75305 (containsKey!180 (toList!891 lt!75214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!45903 (= (contains!924 lt!75214 #b0000000000000000000000000000000000000000000000000000000000000000) lt!75306)))

(declare-fun b!143655 () Bool)

(declare-fun lt!75307 () Unit!4550)

(assert (=> b!143655 (= e!93619 lt!75307)))

(assert (=> b!143655 (= lt!75307 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 (toList!891 lt!75214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!143655 (isDefined!130 (getValueByKey!176 (toList!891 lt!75214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143656 () Bool)

(declare-fun Unit!4560 () Unit!4550)

(assert (=> b!143656 (= e!93619 Unit!4560)))

(declare-fun b!143657 () Bool)

(assert (=> b!143657 (= e!93620 (isDefined!130 (getValueByKey!176 (toList!891 lt!75214) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!45903 c!27216) b!143655))

(assert (= (and d!45903 (not c!27216)) b!143656))

(assert (= (and d!45903 (not res!68411)) b!143657))

(declare-fun m!173545 () Bool)

(assert (=> d!45903 m!173545))

(declare-fun m!173547 () Bool)

(assert (=> b!143655 m!173547))

(declare-fun m!173549 () Bool)

(assert (=> b!143655 m!173549))

(assert (=> b!143655 m!173549))

(declare-fun m!173551 () Bool)

(assert (=> b!143655 m!173551))

(assert (=> b!143657 m!173549))

(assert (=> b!143657 m!173549))

(assert (=> b!143657 m!173551))

(assert (=> bm!15908 d!45903))

(declare-fun d!45905 () Bool)

(declare-fun e!93622 () Bool)

(assert (=> d!45905 e!93622))

(declare-fun res!68412 () Bool)

(assert (=> d!45905 (=> res!68412 e!93622)))

(declare-fun lt!75310 () Bool)

(assert (=> d!45905 (= res!68412 (not lt!75310))))

(declare-fun lt!75309 () Bool)

(assert (=> d!45905 (= lt!75310 lt!75309)))

(declare-fun lt!75312 () Unit!4550)

(declare-fun e!93621 () Unit!4550)

(assert (=> d!45905 (= lt!75312 e!93621)))

(declare-fun c!27217 () Bool)

(assert (=> d!45905 (= c!27217 lt!75309)))

(assert (=> d!45905 (= lt!75309 (containsKey!180 (toList!891 call!15895) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> d!45905 (= (contains!924 call!15895 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) lt!75310)))

(declare-fun b!143658 () Bool)

(declare-fun lt!75311 () Unit!4550)

(assert (=> b!143658 (= e!93621 lt!75311)))

(assert (=> b!143658 (= lt!75311 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 (toList!891 call!15895) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> b!143658 (isDefined!130 (getValueByKey!176 (toList!891 call!15895) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun b!143659 () Bool)

(declare-fun Unit!4561 () Unit!4550)

(assert (=> b!143659 (= e!93621 Unit!4561)))

(declare-fun b!143660 () Bool)

(assert (=> b!143660 (= e!93622 (isDefined!130 (getValueByKey!176 (toList!891 call!15895) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))))))

(assert (= (and d!45905 c!27217) b!143658))

(assert (= (and d!45905 (not c!27217)) b!143659))

(assert (= (and d!45905 (not res!68412)) b!143660))

(assert (=> d!45905 m!173141))

(declare-fun m!173553 () Bool)

(assert (=> d!45905 m!173553))

(assert (=> b!143658 m!173141))

(declare-fun m!173555 () Bool)

(assert (=> b!143658 m!173555))

(assert (=> b!143658 m!173141))

(declare-fun m!173557 () Bool)

(assert (=> b!143658 m!173557))

(assert (=> b!143658 m!173557))

(declare-fun m!173559 () Bool)

(assert (=> b!143658 m!173559))

(assert (=> b!143660 m!173141))

(assert (=> b!143660 m!173557))

(assert (=> b!143660 m!173557))

(assert (=> b!143660 m!173559))

(assert (=> b!143443 d!45905))

(declare-fun d!45907 () Bool)

(declare-fun e!93625 () Bool)

(assert (=> d!45907 e!93625))

(declare-fun c!27220 () Bool)

(assert (=> d!45907 (= c!27220 (and (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!45907 true))

(declare-fun _$29!168 () Unit!4550)

(assert (=> d!45907 (= (choose!877 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))) _$29!168)))

(declare-fun b!143665 () Bool)

(assert (=> b!143665 (= e!93625 (arrayContainsKey!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!143666 () Bool)

(assert (=> b!143666 (= e!93625 (ite (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!45907 c!27220) b!143665))

(assert (= (and d!45907 (not c!27220)) b!143666))

(assert (=> b!143665 m!173141))

(assert (=> b!143665 m!173155))

(assert (=> d!45877 d!45907))

(declare-fun d!45909 () Bool)

(assert (=> d!45909 (= (validMask!0 (mask!7315 (v!3296 (underlying!483 thiss!992)))) (and (or (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000001111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000011111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000001111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000011111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000001111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000011111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000001111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000011111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000000111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000001111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000011111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000000111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000001111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000011111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000000111111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000001111111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000011111111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000000111111111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000001111111111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000011111111111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00000111111111111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00001111111111111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00011111111111111111111111111111) (= (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7315 (v!3296 (underlying!483 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> d!45877 d!45909))

(declare-fun b!143675 () Bool)

(declare-fun e!93634 () Bool)

(declare-fun e!93632 () Bool)

(assert (=> b!143675 (= e!93634 e!93632)))

(declare-fun lt!75319 () (_ BitVec 64))

(assert (=> b!143675 (= lt!75319 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75321 () Unit!4550)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4910 (_ BitVec 64) (_ BitVec 32)) Unit!4550)

(assert (=> b!143675 (= lt!75321 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4726 newMap!16) lt!75319 #b00000000000000000000000000000000))))

(assert (=> b!143675 (arrayContainsKey!0 (_keys!4726 newMap!16) lt!75319 #b00000000000000000000000000000000)))

(declare-fun lt!75320 () Unit!4550)

(assert (=> b!143675 (= lt!75320 lt!75321)))

(declare-fun res!68417 () Bool)

(assert (=> b!143675 (= res!68417 (= (seekEntryOrOpen!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000) (_keys!4726 newMap!16) (mask!7315 newMap!16)) (Found!290 #b00000000000000000000000000000000)))))

(assert (=> b!143675 (=> (not res!68417) (not e!93632))))

(declare-fun bm!15934 () Bool)

(declare-fun call!15937 () Bool)

(assert (=> bm!15934 (= call!15937 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4726 newMap!16) (mask!7315 newMap!16)))))

(declare-fun b!143676 () Bool)

(assert (=> b!143676 (= e!93634 call!15937)))

(declare-fun b!143677 () Bool)

(assert (=> b!143677 (= e!93632 call!15937)))

(declare-fun d!45911 () Bool)

(declare-fun res!68418 () Bool)

(declare-fun e!93633 () Bool)

(assert (=> d!45911 (=> res!68418 e!93633)))

(assert (=> d!45911 (= res!68418 (bvsge #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(assert (=> d!45911 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4726 newMap!16) (mask!7315 newMap!16)) e!93633)))

(declare-fun b!143678 () Bool)

(assert (=> b!143678 (= e!93633 e!93634)))

(declare-fun c!27223 () Bool)

(assert (=> b!143678 (= c!27223 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!45911 (not res!68418)) b!143678))

(assert (= (and b!143678 c!27223) b!143675))

(assert (= (and b!143678 (not c!27223)) b!143676))

(assert (= (and b!143675 res!68417) b!143677))

(assert (= (or b!143677 b!143676) bm!15934))

(assert (=> b!143675 m!173411))

(declare-fun m!173561 () Bool)

(assert (=> b!143675 m!173561))

(declare-fun m!173563 () Bool)

(assert (=> b!143675 m!173563))

(assert (=> b!143675 m!173411))

(declare-fun m!173565 () Bool)

(assert (=> b!143675 m!173565))

(declare-fun m!173567 () Bool)

(assert (=> bm!15934 m!173567))

(assert (=> b!143678 m!173411))

(assert (=> b!143678 m!173411))

(assert (=> b!143678 m!173423))

(assert (=> b!143335 d!45911))

(declare-fun b!143704 () Bool)

(declare-fun e!93650 () Bool)

(declare-fun e!93655 () Bool)

(assert (=> b!143704 (= e!93650 e!93655)))

(declare-fun c!27233 () Bool)

(declare-fun e!93651 () Bool)

(assert (=> b!143704 (= c!27233 e!93651)))

(declare-fun res!68427 () Bool)

(assert (=> b!143704 (=> (not res!68427) (not e!93651))))

(assert (=> b!143704 (= res!68427 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun bm!15937 () Bool)

(declare-fun call!15940 () ListLongMap!1751)

(assert (=> bm!15937 (= call!15940 (getCurrentListMapNoExtraKeys!142 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun b!143705 () Bool)

(declare-fun e!93654 () Bool)

(declare-fun lt!75336 () ListLongMap!1751)

(declare-fun isEmpty!426 (ListLongMap!1751) Bool)

(assert (=> b!143705 (= e!93654 (isEmpty!426 lt!75336))))

(declare-fun b!143706 () Bool)

(declare-fun e!93649 () ListLongMap!1751)

(declare-fun e!93652 () ListLongMap!1751)

(assert (=> b!143706 (= e!93649 e!93652)))

(declare-fun c!27235 () Bool)

(assert (=> b!143706 (= c!27235 (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!143707 () Bool)

(declare-fun lt!75339 () Unit!4550)

(declare-fun lt!75340 () Unit!4550)

(assert (=> b!143707 (= lt!75339 lt!75340)))

(declare-fun lt!75342 () ListLongMap!1751)

(declare-fun lt!75337 () (_ BitVec 64))

(declare-fun lt!75338 () (_ BitVec 64))

(declare-fun lt!75341 () V!3563)

(assert (=> b!143707 (not (contains!924 (+!175 lt!75342 (tuple2!2691 lt!75338 lt!75341)) lt!75337))))

(declare-fun addStillNotContains!67 (ListLongMap!1751 (_ BitVec 64) V!3563 (_ BitVec 64)) Unit!4550)

(assert (=> b!143707 (= lt!75340 (addStillNotContains!67 lt!75342 lt!75338 lt!75341 lt!75337))))

(assert (=> b!143707 (= lt!75337 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!143707 (= lt!75341 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!143707 (= lt!75338 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!143707 (= lt!75342 call!15940)))

(assert (=> b!143707 (= e!93652 (+!175 call!15940 (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!143708 () Bool)

(assert (=> b!143708 (= e!93652 call!15940)))

(declare-fun b!143709 () Bool)

(assert (=> b!143709 (= e!93651 (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!143709 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!143710 () Bool)

(assert (=> b!143710 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(assert (=> b!143710 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2594 (_values!2946 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun e!93653 () Bool)

(assert (=> b!143710 (= e!93653 (= (apply!121 lt!75336 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!143711 () Bool)

(assert (=> b!143711 (= e!93655 e!93654)))

(declare-fun c!27232 () Bool)

(assert (=> b!143711 (= c!27232 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun b!143712 () Bool)

(declare-fun res!68428 () Bool)

(assert (=> b!143712 (=> (not res!68428) (not e!93650))))

(assert (=> b!143712 (= res!68428 (not (contains!924 lt!75336 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!143703 () Bool)

(assert (=> b!143703 (= e!93655 e!93653)))

(assert (=> b!143703 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun res!68430 () Bool)

(assert (=> b!143703 (= res!68430 (contains!924 lt!75336 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!143703 (=> (not res!68430) (not e!93653))))

(declare-fun d!45913 () Bool)

(assert (=> d!45913 e!93650))

(declare-fun res!68429 () Bool)

(assert (=> d!45913 (=> (not res!68429) (not e!93650))))

(assert (=> d!45913 (= res!68429 (not (contains!924 lt!75336 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!45913 (= lt!75336 e!93649)))

(declare-fun c!27234 () Bool)

(assert (=> d!45913 (= c!27234 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(assert (=> d!45913 (validMask!0 (mask!7315 (v!3296 (underlying!483 thiss!992))))))

(assert (=> d!45913 (= (getCurrentListMapNoExtraKeys!142 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992)))) lt!75336)))

(declare-fun b!143713 () Bool)

(assert (=> b!143713 (= e!93654 (= lt!75336 (getCurrentListMapNoExtraKeys!142 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (_values!2946 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992))) (extraKeys!2714 (v!3296 (underlying!483 thiss!992))) (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) (minValue!2811 (v!3296 (underlying!483 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun b!143714 () Bool)

(assert (=> b!143714 (= e!93649 (ListLongMap!1752 Nil!1765))))

(assert (= (and d!45913 c!27234) b!143714))

(assert (= (and d!45913 (not c!27234)) b!143706))

(assert (= (and b!143706 c!27235) b!143707))

(assert (= (and b!143706 (not c!27235)) b!143708))

(assert (= (or b!143707 b!143708) bm!15937))

(assert (= (and d!45913 res!68429) b!143712))

(assert (= (and b!143712 res!68428) b!143704))

(assert (= (and b!143704 res!68427) b!143709))

(assert (= (and b!143704 c!27233) b!143703))

(assert (= (and b!143704 (not c!27233)) b!143711))

(assert (= (and b!143703 res!68430) b!143710))

(assert (= (and b!143711 c!27232) b!143713))

(assert (= (and b!143711 (not c!27232)) b!143705))

(declare-fun b_lambda!6481 () Bool)

(assert (=> (not b_lambda!6481) (not b!143707)))

(assert (=> b!143707 t!6385))

(declare-fun b_and!8977 () Bool)

(assert (= b_and!8973 (and (=> t!6385 result!4221) b_and!8977)))

(assert (=> b!143707 t!6387))

(declare-fun b_and!8979 () Bool)

(assert (= b_and!8975 (and (=> t!6387 result!4225) b_and!8979)))

(declare-fun b_lambda!6483 () Bool)

(assert (=> (not b_lambda!6483) (not b!143710)))

(assert (=> b!143710 t!6385))

(declare-fun b_and!8981 () Bool)

(assert (= b_and!8977 (and (=> t!6385 result!4221) b_and!8981)))

(assert (=> b!143710 t!6387))

(declare-fun b_and!8983 () Bool)

(assert (= b_and!8979 (and (=> t!6387 result!4225) b_and!8983)))

(declare-fun m!173569 () Bool)

(assert (=> b!143713 m!173569))

(assert (=> b!143709 m!173337))

(assert (=> b!143709 m!173337))

(assert (=> b!143709 m!173347))

(declare-fun m!173571 () Bool)

(assert (=> b!143707 m!173571))

(declare-fun m!173573 () Bool)

(assert (=> b!143707 m!173573))

(assert (=> b!143707 m!173159))

(assert (=> b!143707 m!173341))

(assert (=> b!143707 m!173341))

(assert (=> b!143707 m!173159))

(assert (=> b!143707 m!173345))

(declare-fun m!173575 () Bool)

(assert (=> b!143707 m!173575))

(declare-fun m!173577 () Bool)

(assert (=> b!143707 m!173577))

(assert (=> b!143707 m!173337))

(assert (=> b!143707 m!173575))

(declare-fun m!173579 () Bool)

(assert (=> b!143712 m!173579))

(assert (=> b!143706 m!173337))

(assert (=> b!143706 m!173337))

(assert (=> b!143706 m!173347))

(declare-fun m!173581 () Bool)

(assert (=> b!143705 m!173581))

(assert (=> bm!15937 m!173569))

(declare-fun m!173583 () Bool)

(assert (=> d!45913 m!173583))

(assert (=> d!45913 m!173339))

(assert (=> b!143710 m!173337))

(declare-fun m!173585 () Bool)

(assert (=> b!143710 m!173585))

(assert (=> b!143710 m!173159))

(assert (=> b!143710 m!173341))

(assert (=> b!143710 m!173341))

(assert (=> b!143710 m!173159))

(assert (=> b!143710 m!173345))

(assert (=> b!143710 m!173337))

(assert (=> b!143703 m!173337))

(assert (=> b!143703 m!173337))

(declare-fun m!173587 () Bool)

(assert (=> b!143703 m!173587))

(assert (=> bm!15909 d!45913))

(declare-fun d!45915 () Bool)

(assert (=> d!45915 (= (get!1543 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!143483 d!45915))

(assert (=> b!143572 d!45875))

(assert (=> d!45873 d!45871))

(declare-fun d!45917 () Bool)

(assert (=> d!45917 (arrayNoDuplicates!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) from!355 Nil!1764)))

(assert (=> d!45917 true))

(declare-fun _$71!168 () Unit!4550)

(assert (=> d!45917 (= (choose!39 (_keys!4726 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!168)))

(declare-fun bs!6081 () Bool)

(assert (= bs!6081 d!45917))

(assert (=> bs!6081 m!173151))

(assert (=> d!45873 d!45917))

(declare-fun d!45919 () Bool)

(declare-fun e!93656 () Bool)

(assert (=> d!45919 e!93656))

(declare-fun res!68431 () Bool)

(assert (=> d!45919 (=> (not res!68431) (not e!93656))))

(declare-fun lt!75344 () ListLongMap!1751)

(assert (=> d!45919 (= res!68431 (contains!924 lt!75344 (_1!1355 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!75343 () List!1768)

(assert (=> d!45919 (= lt!75344 (ListLongMap!1752 lt!75343))))

(declare-fun lt!75345 () Unit!4550)

(declare-fun lt!75346 () Unit!4550)

(assert (=> d!45919 (= lt!75345 lt!75346)))

(assert (=> d!45919 (= (getValueByKey!176 lt!75343 (_1!1355 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!181 (_2!1355 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!45919 (= lt!75346 (lemmaContainsTupThenGetReturnValue!92 lt!75343 (_1!1355 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1355 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!45919 (= lt!75343 (insertStrictlySorted!94 (toList!891 e!93483) (_1!1355 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1355 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!45919 (= (+!175 e!93483 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!75344)))

(declare-fun b!143715 () Bool)

(declare-fun res!68432 () Bool)

(assert (=> b!143715 (=> (not res!68432) (not e!93656))))

(assert (=> b!143715 (= res!68432 (= (getValueByKey!176 (toList!891 lt!75344) (_1!1355 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!181 (_2!1355 (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!143716 () Bool)

(assert (=> b!143716 (= e!93656 (contains!926 (toList!891 lt!75344) (ite c!27170 (ite c!27169 (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!45919 res!68431) b!143715))

(assert (= (and b!143715 res!68432) b!143716))

(declare-fun m!173589 () Bool)

(assert (=> d!45919 m!173589))

(declare-fun m!173591 () Bool)

(assert (=> d!45919 m!173591))

(declare-fun m!173593 () Bool)

(assert (=> d!45919 m!173593))

(declare-fun m!173595 () Bool)

(assert (=> d!45919 m!173595))

(declare-fun m!173597 () Bool)

(assert (=> b!143715 m!173597))

(declare-fun m!173599 () Bool)

(assert (=> b!143716 m!173599))

(assert (=> bm!15885 d!45919))

(declare-fun b!143717 () Bool)

(declare-fun e!93657 () Bool)

(declare-fun e!93659 () Bool)

(assert (=> b!143717 (= e!93657 e!93659)))

(declare-fun res!68433 () Bool)

(assert (=> b!143717 (=> (not res!68433) (not e!93659))))

(declare-fun e!93660 () Bool)

(assert (=> b!143717 (= res!68433 (not e!93660))))

(declare-fun res!68434 () Bool)

(assert (=> b!143717 (=> (not res!68434) (not e!93660))))

(assert (=> b!143717 (= res!68434 (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!143718 () Bool)

(assert (=> b!143718 (= e!93660 (contains!925 (ite c!27194 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764) Nil!1764) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!143719 () Bool)

(declare-fun e!93658 () Bool)

(declare-fun call!15941 () Bool)

(assert (=> b!143719 (= e!93658 call!15941)))

(declare-fun b!143720 () Bool)

(assert (=> b!143720 (= e!93658 call!15941)))

(declare-fun c!27236 () Bool)

(declare-fun bm!15938 () Bool)

(assert (=> bm!15938 (= call!15941 (arrayNoDuplicates!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!27236 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!27194 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764) Nil!1764)) (ite c!27194 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764) Nil!1764))))))

(declare-fun b!143721 () Bool)

(assert (=> b!143721 (= e!93659 e!93658)))

(assert (=> b!143721 (= c!27236 (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun d!45921 () Bool)

(declare-fun res!68435 () Bool)

(assert (=> d!45921 (=> res!68435 e!93657)))

(assert (=> d!45921 (= res!68435 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(assert (=> d!45921 (= (arrayNoDuplicates!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!27194 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764) Nil!1764)) e!93657)))

(assert (= (and d!45921 (not res!68435)) b!143717))

(assert (= (and b!143717 res!68434) b!143718))

(assert (= (and b!143717 res!68433) b!143721))

(assert (= (and b!143721 c!27236) b!143719))

(assert (= (and b!143721 (not c!27236)) b!143720))

(assert (= (or b!143719 b!143720) bm!15938))

(declare-fun m!173601 () Bool)

(assert (=> b!143717 m!173601))

(assert (=> b!143717 m!173601))

(declare-fun m!173603 () Bool)

(assert (=> b!143717 m!173603))

(assert (=> b!143718 m!173601))

(assert (=> b!143718 m!173601))

(declare-fun m!173605 () Bool)

(assert (=> b!143718 m!173605))

(assert (=> bm!15938 m!173601))

(declare-fun m!173607 () Bool)

(assert (=> bm!15938 m!173607))

(assert (=> b!143721 m!173601))

(assert (=> b!143721 m!173601))

(assert (=> b!143721 m!173603))

(assert (=> bm!15917 d!45921))

(declare-fun d!45923 () Bool)

(declare-fun e!93661 () Bool)

(assert (=> d!45923 e!93661))

(declare-fun res!68436 () Bool)

(assert (=> d!45923 (=> (not res!68436) (not e!93661))))

(declare-fun lt!75348 () ListLongMap!1751)

(assert (=> d!45923 (= res!68436 (contains!924 lt!75348 (_1!1355 (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))))

(declare-fun lt!75347 () List!1768)

(assert (=> d!45923 (= lt!75348 (ListLongMap!1752 lt!75347))))

(declare-fun lt!75349 () Unit!4550)

(declare-fun lt!75350 () Unit!4550)

(assert (=> d!45923 (= lt!75349 lt!75350)))

(assert (=> d!45923 (= (getValueByKey!176 lt!75347 (_1!1355 (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))) (Some!181 (_2!1355 (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))))

(assert (=> d!45923 (= lt!75350 (lemmaContainsTupThenGetReturnValue!92 lt!75347 (_1!1355 (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) (_2!1355 (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))))

(assert (=> d!45923 (= lt!75347 (insertStrictlySorted!94 (toList!891 (ite c!27189 call!15915 (ite c!27187 call!15917 call!15916))) (_1!1355 (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) (_2!1355 (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))))

(assert (=> d!45923 (= (+!175 (ite c!27189 call!15915 (ite c!27187 call!15917 call!15916)) (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) lt!75348)))

(declare-fun b!143722 () Bool)

(declare-fun res!68437 () Bool)

(assert (=> b!143722 (=> (not res!68437) (not e!93661))))

(assert (=> b!143722 (= res!68437 (= (getValueByKey!176 (toList!891 lt!75348) (_1!1355 (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))) (Some!181 (_2!1355 (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))))

(declare-fun b!143723 () Bool)

(assert (=> b!143723 (= e!93661 (contains!926 (toList!891 lt!75348) (ite (or c!27189 c!27187) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (= (and d!45923 res!68436) b!143722))

(assert (= (and b!143722 res!68437) b!143723))

(declare-fun m!173609 () Bool)

(assert (=> d!45923 m!173609))

(declare-fun m!173611 () Bool)

(assert (=> d!45923 m!173611))

(declare-fun m!173613 () Bool)

(assert (=> d!45923 m!173613))

(declare-fun m!173615 () Bool)

(assert (=> d!45923 m!173615))

(declare-fun m!173617 () Bool)

(assert (=> b!143722 m!173617))

(declare-fun m!173619 () Bool)

(assert (=> b!143723 m!173619))

(assert (=> bm!15912 d!45923))

(assert (=> d!45865 d!45909))

(declare-fun bm!15941 () Bool)

(declare-fun call!15944 () (_ BitVec 32))

(assert (=> bm!15941 (= call!15944 (arrayCountValidKeys!0 (_keys!4726 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2593 (_keys!4726 newMap!16))))))

(declare-fun d!45925 () Bool)

(declare-fun lt!75353 () (_ BitVec 32))

(assert (=> d!45925 (and (bvsge lt!75353 #b00000000000000000000000000000000) (bvsle lt!75353 (bvsub (size!2593 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!93667 () (_ BitVec 32))

(assert (=> d!45925 (= lt!75353 e!93667)))

(declare-fun c!27241 () Bool)

(assert (=> d!45925 (= c!27241 (bvsge #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(assert (=> d!45925 (and (bvsle #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2593 (_keys!4726 newMap!16)) (size!2593 (_keys!4726 newMap!16))))))

(assert (=> d!45925 (= (arrayCountValidKeys!0 (_keys!4726 newMap!16) #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))) lt!75353)))

(declare-fun b!143732 () Bool)

(declare-fun e!93666 () (_ BitVec 32))

(assert (=> b!143732 (= e!93667 e!93666)))

(declare-fun c!27242 () Bool)

(assert (=> b!143732 (= c!27242 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!143733 () Bool)

(assert (=> b!143733 (= e!93666 (bvadd #b00000000000000000000000000000001 call!15944))))

(declare-fun b!143734 () Bool)

(assert (=> b!143734 (= e!93667 #b00000000000000000000000000000000)))

(declare-fun b!143735 () Bool)

(assert (=> b!143735 (= e!93666 call!15944)))

(assert (= (and d!45925 c!27241) b!143734))

(assert (= (and d!45925 (not c!27241)) b!143732))

(assert (= (and b!143732 c!27242) b!143733))

(assert (= (and b!143732 (not c!27242)) b!143735))

(assert (= (or b!143733 b!143735) bm!15941))

(declare-fun m!173621 () Bool)

(assert (=> bm!15941 m!173621))

(assert (=> b!143732 m!173411))

(assert (=> b!143732 m!173411))

(assert (=> b!143732 m!173423))

(assert (=> b!143334 d!45925))

(declare-fun d!45927 () Bool)

(assert (=> d!45927 (= (apply!121 lt!75214 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1544 (getValueByKey!176 (toList!891 lt!75214) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6082 () Bool)

(assert (= bs!6082 d!45927))

(assert (=> bs!6082 m!173549))

(assert (=> bs!6082 m!173549))

(declare-fun m!173623 () Bool)

(assert (=> bs!6082 m!173623))

(assert (=> b!143543 d!45927))

(declare-fun b!143736 () Bool)

(declare-fun e!93678 () Bool)

(declare-fun e!93668 () Bool)

(assert (=> b!143736 (= e!93678 e!93668)))

(declare-fun res!68441 () Bool)

(assert (=> b!143736 (=> (not res!68441) (not e!93668))))

(declare-fun lt!75363 () ListLongMap!1751)

(assert (=> b!143736 (= res!68441 (contains!924 lt!75363 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!143736 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun b!143737 () Bool)

(declare-fun e!93671 () Bool)

(declare-fun e!93670 () Bool)

(assert (=> b!143737 (= e!93671 e!93670)))

(declare-fun res!68445 () Bool)

(declare-fun call!15947 () Bool)

(assert (=> b!143737 (= res!68445 call!15947)))

(assert (=> b!143737 (=> (not res!68445) (not e!93670))))

(declare-fun b!143738 () Bool)

(declare-fun e!93673 () Bool)

(declare-fun e!93677 () Bool)

(assert (=> b!143738 (= e!93673 e!93677)))

(declare-fun res!68438 () Bool)

(declare-fun call!15946 () Bool)

(assert (=> b!143738 (= res!68438 call!15946)))

(assert (=> b!143738 (=> (not res!68438) (not e!93677))))

(declare-fun b!143739 () Bool)

(declare-fun e!93680 () Bool)

(assert (=> b!143739 (= e!93680 e!93671)))

(declare-fun c!27247 () Bool)

(assert (=> b!143739 (= c!27247 (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!15942 () Bool)

(assert (=> bm!15942 (= call!15946 (contains!924 lt!75363 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143740 () Bool)

(declare-fun res!68446 () Bool)

(assert (=> b!143740 (=> (not res!68446) (not e!93680))))

(assert (=> b!143740 (= res!68446 e!93678)))

(declare-fun res!68439 () Bool)

(assert (=> b!143740 (=> res!68439 e!93678)))

(declare-fun e!93674 () Bool)

(assert (=> b!143740 (= res!68439 (not e!93674))))

(declare-fun res!68443 () Bool)

(assert (=> b!143740 (=> (not res!68443) (not e!93674))))

(assert (=> b!143740 (= res!68443 (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun call!15949 () ListLongMap!1751)

(declare-fun bm!15943 () Bool)

(assert (=> bm!15943 (= call!15949 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite c!27170 (_values!2946 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16)))) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun bm!15944 () Bool)

(assert (=> bm!15944 (= call!15947 (contains!924 lt!75363 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143741 () Bool)

(assert (=> b!143741 (= e!93670 (= (apply!121 lt!75363 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2811 newMap!16)))))

(declare-fun b!143742 () Bool)

(assert (=> b!143742 (= e!93668 (= (apply!121 lt!75363 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)) (get!1541 (select (arr!2321 (ite c!27170 (_values!2946 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!444 (defaultEntry!2963 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!143742 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2594 (ite c!27170 (_values!2946 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16)))))))))

(assert (=> b!143742 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun b!143743 () Bool)

(assert (=> b!143743 (= e!93674 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!143744 () Bool)

(declare-fun e!93679 () ListLongMap!1751)

(declare-fun call!15948 () ListLongMap!1751)

(assert (=> b!143744 (= e!93679 call!15948)))

(declare-fun d!45929 () Bool)

(assert (=> d!45929 e!93680))

(declare-fun res!68442 () Bool)

(assert (=> d!45929 (=> (not res!68442) (not e!93680))))

(assert (=> d!45929 (= res!68442 (or (bvsge #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))))

(declare-fun lt!75371 () ListLongMap!1751)

(assert (=> d!45929 (= lt!75363 lt!75371)))

(declare-fun lt!75361 () Unit!4550)

(declare-fun e!93676 () Unit!4550)

(assert (=> d!45929 (= lt!75361 e!93676)))

(declare-fun c!27243 () Bool)

(declare-fun e!93672 () Bool)

(assert (=> d!45929 (= c!27243 e!93672)))

(declare-fun res!68440 () Bool)

(assert (=> d!45929 (=> (not res!68440) (not e!93672))))

(assert (=> d!45929 (= res!68440 (bvslt #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(declare-fun e!93669 () ListLongMap!1751)

(assert (=> d!45929 (= lt!75371 e!93669)))

(declare-fun c!27246 () Bool)

(assert (=> d!45929 (= c!27246 (and (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!45929 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45929 (= (getCurrentListMap!557 (_keys!4726 newMap!16) (ite c!27170 (_values!2946 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16)))) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) lt!75363)))

(declare-fun b!143745 () Bool)

(declare-fun res!68444 () Bool)

(assert (=> b!143745 (=> (not res!68444) (not e!93680))))

(assert (=> b!143745 (= res!68444 e!93673)))

(declare-fun c!27245 () Bool)

(assert (=> b!143745 (= c!27245 (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!143746 () Bool)

(assert (=> b!143746 (= e!93673 (not call!15946))))

(declare-fun bm!15945 () Bool)

(declare-fun call!15950 () ListLongMap!1751)

(declare-fun call!15951 () ListLongMap!1751)

(assert (=> bm!15945 (= call!15950 call!15951)))

(declare-fun b!143747 () Bool)

(declare-fun lt!75357 () Unit!4550)

(assert (=> b!143747 (= e!93676 lt!75357)))

(declare-fun lt!75374 () ListLongMap!1751)

(assert (=> b!143747 (= lt!75374 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite c!27170 (_values!2946 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16)))) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75373 () (_ BitVec 64))

(assert (=> b!143747 (= lt!75373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75354 () (_ BitVec 64))

(assert (=> b!143747 (= lt!75354 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75372 () Unit!4550)

(assert (=> b!143747 (= lt!75372 (addStillContains!97 lt!75374 lt!75373 (zeroValue!2811 newMap!16) lt!75354))))

(assert (=> b!143747 (contains!924 (+!175 lt!75374 (tuple2!2691 lt!75373 (zeroValue!2811 newMap!16))) lt!75354)))

(declare-fun lt!75365 () Unit!4550)

(assert (=> b!143747 (= lt!75365 lt!75372)))

(declare-fun lt!75356 () ListLongMap!1751)

(assert (=> b!143747 (= lt!75356 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite c!27170 (_values!2946 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16)))) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75369 () (_ BitVec 64))

(assert (=> b!143747 (= lt!75369 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75355 () (_ BitVec 64))

(assert (=> b!143747 (= lt!75355 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75364 () Unit!4550)

(assert (=> b!143747 (= lt!75364 (addApplyDifferent!97 lt!75356 lt!75369 (minValue!2811 newMap!16) lt!75355))))

(assert (=> b!143747 (= (apply!121 (+!175 lt!75356 (tuple2!2691 lt!75369 (minValue!2811 newMap!16))) lt!75355) (apply!121 lt!75356 lt!75355))))

(declare-fun lt!75359 () Unit!4550)

(assert (=> b!143747 (= lt!75359 lt!75364)))

(declare-fun lt!75362 () ListLongMap!1751)

(assert (=> b!143747 (= lt!75362 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite c!27170 (_values!2946 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16)))) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75367 () (_ BitVec 64))

(assert (=> b!143747 (= lt!75367 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75360 () (_ BitVec 64))

(assert (=> b!143747 (= lt!75360 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75358 () Unit!4550)

(assert (=> b!143747 (= lt!75358 (addApplyDifferent!97 lt!75362 lt!75367 (zeroValue!2811 newMap!16) lt!75360))))

(assert (=> b!143747 (= (apply!121 (+!175 lt!75362 (tuple2!2691 lt!75367 (zeroValue!2811 newMap!16))) lt!75360) (apply!121 lt!75362 lt!75360))))

(declare-fun lt!75368 () Unit!4550)

(assert (=> b!143747 (= lt!75368 lt!75358)))

(declare-fun lt!75375 () ListLongMap!1751)

(assert (=> b!143747 (= lt!75375 (getCurrentListMapNoExtraKeys!142 (_keys!4726 newMap!16) (ite c!27170 (_values!2946 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16)))) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75370 () (_ BitVec 64))

(assert (=> b!143747 (= lt!75370 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75366 () (_ BitVec 64))

(assert (=> b!143747 (= lt!75366 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!143747 (= lt!75357 (addApplyDifferent!97 lt!75375 lt!75370 (minValue!2811 newMap!16) lt!75366))))

(assert (=> b!143747 (= (apply!121 (+!175 lt!75375 (tuple2!2691 lt!75370 (minValue!2811 newMap!16))) lt!75366) (apply!121 lt!75375 lt!75366))))

(declare-fun b!143748 () Bool)

(assert (=> b!143748 (= e!93672 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!143749 () Bool)

(assert (=> b!143749 (= e!93671 (not call!15947))))

(declare-fun bm!15946 () Bool)

(declare-fun call!15945 () ListLongMap!1751)

(declare-fun c!27244 () Bool)

(assert (=> bm!15946 (= call!15945 (+!175 (ite c!27246 call!15949 (ite c!27244 call!15951 call!15950)) (ite (or c!27246 c!27244) (tuple2!2691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2811 newMap!16)) (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 newMap!16)))))))

(declare-fun b!143750 () Bool)

(assert (=> b!143750 (= e!93669 e!93679)))

(assert (=> b!143750 (= c!27244 (and (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!143751 () Bool)

(declare-fun Unit!4562 () Unit!4550)

(assert (=> b!143751 (= e!93676 Unit!4562)))

(declare-fun b!143752 () Bool)

(declare-fun e!93675 () ListLongMap!1751)

(assert (=> b!143752 (= e!93675 call!15948)))

(declare-fun b!143753 () Bool)

(assert (=> b!143753 (= e!93677 (= (apply!121 lt!75363 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2811 newMap!16)))))

(declare-fun bm!15947 () Bool)

(assert (=> bm!15947 (= call!15948 call!15945)))

(declare-fun b!143754 () Bool)

(assert (=> b!143754 (= e!93675 call!15950)))

(declare-fun b!143755 () Bool)

(assert (=> b!143755 (= e!93669 (+!175 call!15945 (tuple2!2691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2811 newMap!16))))))

(declare-fun b!143756 () Bool)

(declare-fun c!27248 () Bool)

(assert (=> b!143756 (= c!27248 (and (not (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!143756 (= e!93679 e!93675)))

(declare-fun bm!15948 () Bool)

(assert (=> bm!15948 (= call!15951 call!15949)))

(assert (= (and d!45929 c!27246) b!143755))

(assert (= (and d!45929 (not c!27246)) b!143750))

(assert (= (and b!143750 c!27244) b!143744))

(assert (= (and b!143750 (not c!27244)) b!143756))

(assert (= (and b!143756 c!27248) b!143752))

(assert (= (and b!143756 (not c!27248)) b!143754))

(assert (= (or b!143752 b!143754) bm!15945))

(assert (= (or b!143744 bm!15945) bm!15948))

(assert (= (or b!143744 b!143752) bm!15947))

(assert (= (or b!143755 bm!15948) bm!15943))

(assert (= (or b!143755 bm!15947) bm!15946))

(assert (= (and d!45929 res!68440) b!143748))

(assert (= (and d!45929 c!27243) b!143747))

(assert (= (and d!45929 (not c!27243)) b!143751))

(assert (= (and d!45929 res!68442) b!143740))

(assert (= (and b!143740 res!68443) b!143743))

(assert (= (and b!143740 (not res!68439)) b!143736))

(assert (= (and b!143736 res!68441) b!143742))

(assert (= (and b!143740 res!68446) b!143745))

(assert (= (and b!143745 c!27245) b!143738))

(assert (= (and b!143745 (not c!27245)) b!143746))

(assert (= (and b!143738 res!68438) b!143753))

(assert (= (or b!143738 b!143746) bm!15942))

(assert (= (and b!143745 res!68444) b!143739))

(assert (= (and b!143739 c!27247) b!143737))

(assert (= (and b!143739 (not c!27247)) b!143749))

(assert (= (and b!143737 res!68445) b!143741))

(assert (= (or b!143737 b!143749) bm!15944))

(declare-fun b_lambda!6485 () Bool)

(assert (=> (not b_lambda!6485) (not b!143742)))

(assert (=> b!143742 t!6396))

(declare-fun b_and!8985 () Bool)

(assert (= b_and!8981 (and (=> t!6396 result!4235) b_and!8985)))

(assert (=> b!143742 t!6398))

(declare-fun b_and!8987 () Bool)

(assert (= b_and!8983 (and (=> t!6398 result!4237) b_and!8987)))

(declare-fun m!173625 () Bool)

(assert (=> bm!15943 m!173625))

(declare-fun m!173627 () Bool)

(assert (=> b!143747 m!173627))

(declare-fun m!173629 () Bool)

(assert (=> b!143747 m!173629))

(declare-fun m!173631 () Bool)

(assert (=> b!143747 m!173631))

(declare-fun m!173633 () Bool)

(assert (=> b!143747 m!173633))

(declare-fun m!173635 () Bool)

(assert (=> b!143747 m!173635))

(assert (=> b!143747 m!173627))

(declare-fun m!173637 () Bool)

(assert (=> b!143747 m!173637))

(declare-fun m!173639 () Bool)

(assert (=> b!143747 m!173639))

(declare-fun m!173641 () Bool)

(assert (=> b!143747 m!173641))

(assert (=> b!143747 m!173625))

(declare-fun m!173643 () Bool)

(assert (=> b!143747 m!173643))

(declare-fun m!173645 () Bool)

(assert (=> b!143747 m!173645))

(declare-fun m!173647 () Bool)

(assert (=> b!143747 m!173647))

(assert (=> b!143747 m!173643))

(declare-fun m!173649 () Bool)

(assert (=> b!143747 m!173649))

(declare-fun m!173651 () Bool)

(assert (=> b!143747 m!173651))

(assert (=> b!143747 m!173639))

(declare-fun m!173653 () Bool)

(assert (=> b!143747 m!173653))

(declare-fun m!173655 () Bool)

(assert (=> b!143747 m!173655))

(assert (=> b!143747 m!173411))

(assert (=> b!143747 m!173631))

(assert (=> d!45929 m!173413))

(assert (=> b!143742 m!173415))

(declare-fun m!173657 () Bool)

(assert (=> b!143742 m!173657))

(assert (=> b!143742 m!173411))

(assert (=> b!143742 m!173411))

(declare-fun m!173659 () Bool)

(assert (=> b!143742 m!173659))

(assert (=> b!143742 m!173657))

(assert (=> b!143742 m!173415))

(declare-fun m!173661 () Bool)

(assert (=> b!143742 m!173661))

(assert (=> b!143748 m!173411))

(assert (=> b!143748 m!173411))

(assert (=> b!143748 m!173423))

(declare-fun m!173663 () Bool)

(assert (=> b!143741 m!173663))

(declare-fun m!173665 () Bool)

(assert (=> b!143753 m!173665))

(declare-fun m!173667 () Bool)

(assert (=> b!143755 m!173667))

(declare-fun m!173669 () Bool)

(assert (=> bm!15944 m!173669))

(declare-fun m!173671 () Bool)

(assert (=> bm!15942 m!173671))

(assert (=> b!143743 m!173411))

(assert (=> b!143743 m!173411))

(assert (=> b!143743 m!173423))

(declare-fun m!173673 () Bool)

(assert (=> bm!15946 m!173673))

(assert (=> b!143736 m!173411))

(assert (=> b!143736 m!173411))

(declare-fun m!173675 () Bool)

(assert (=> b!143736 m!173675))

(assert (=> bm!15879 d!45929))

(declare-fun d!45931 () Bool)

(assert (=> d!45931 (= (inRange!0 (ite c!27168 (ite c!27167 (index!3325 lt!75138) (ite c!27162 (index!3324 lt!75146) (index!3327 lt!75146))) (ite c!27164 (index!3325 lt!75139) (ite c!27157 (index!3324 lt!75160) (index!3327 lt!75160)))) (mask!7315 newMap!16)) (and (bvsge (ite c!27168 (ite c!27167 (index!3325 lt!75138) (ite c!27162 (index!3324 lt!75146) (index!3327 lt!75146))) (ite c!27164 (index!3325 lt!75139) (ite c!27157 (index!3324 lt!75160) (index!3327 lt!75160)))) #b00000000000000000000000000000000) (bvslt (ite c!27168 (ite c!27167 (index!3325 lt!75138) (ite c!27162 (index!3324 lt!75146) (index!3327 lt!75146))) (ite c!27164 (index!3325 lt!75139) (ite c!27157 (index!3324 lt!75160) (index!3327 lt!75160)))) (bvadd (mask!7315 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!15887 d!45931))

(declare-fun d!45933 () Bool)

(assert (=> d!45933 (= (validKeyInArray!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (and (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!143557 d!45933))

(assert (=> b!143351 d!45893))

(assert (=> b!143351 d!45895))

(assert (=> b!143538 d!45897))

(declare-fun d!45935 () Bool)

(assert (=> d!45935 (= (apply!121 lt!75214 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1544 (getValueByKey!176 (toList!891 lt!75214) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!6083 () Bool)

(assert (= bs!6083 d!45935))

(assert (=> bs!6083 m!173337))

(declare-fun m!173677 () Bool)

(assert (=> bs!6083 m!173677))

(assert (=> bs!6083 m!173677))

(declare-fun m!173679 () Bool)

(assert (=> bs!6083 m!173679))

(assert (=> b!143532 d!45935))

(declare-fun d!45937 () Bool)

(declare-fun c!27249 () Bool)

(assert (=> d!45937 (= c!27249 ((_ is ValueCellFull!1125) (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!93681 () V!3563)

(assert (=> d!45937 (= (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!93681)))

(declare-fun b!143757 () Bool)

(assert (=> b!143757 (= e!93681 (get!1542 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!143758 () Bool)

(assert (=> b!143758 (= e!93681 (get!1543 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!45937 c!27249) b!143757))

(assert (= (and d!45937 (not c!27249)) b!143758))

(assert (=> b!143757 m!173341))

(assert (=> b!143757 m!173159))

(declare-fun m!173681 () Bool)

(assert (=> b!143757 m!173681))

(assert (=> b!143758 m!173341))

(assert (=> b!143758 m!173159))

(declare-fun m!173683 () Bool)

(assert (=> b!143758 m!173683))

(assert (=> b!143532 d!45937))

(declare-fun d!45939 () Bool)

(assert (=> d!45939 (= (map!1442 (_2!1356 lt!75151)) (getCurrentListMap!557 (_keys!4726 (_2!1356 lt!75151)) (_values!2946 (_2!1356 lt!75151)) (mask!7315 (_2!1356 lt!75151)) (extraKeys!2714 (_2!1356 lt!75151)) (zeroValue!2811 (_2!1356 lt!75151)) (minValue!2811 (_2!1356 lt!75151)) #b00000000000000000000000000000000 (defaultEntry!2963 (_2!1356 lt!75151))))))

(declare-fun bs!6084 () Bool)

(assert (= bs!6084 d!45939))

(declare-fun m!173685 () Bool)

(assert (=> bs!6084 m!173685))

(assert (=> bm!15881 d!45939))

(declare-fun d!45941 () Bool)

(declare-fun e!93683 () Bool)

(assert (=> d!45941 e!93683))

(declare-fun res!68447 () Bool)

(assert (=> d!45941 (=> res!68447 e!93683)))

(declare-fun lt!75377 () Bool)

(assert (=> d!45941 (= res!68447 (not lt!75377))))

(declare-fun lt!75376 () Bool)

(assert (=> d!45941 (= lt!75377 lt!75376)))

(declare-fun lt!75379 () Unit!4550)

(declare-fun e!93682 () Unit!4550)

(assert (=> d!45941 (= lt!75379 e!93682)))

(declare-fun c!27250 () Bool)

(assert (=> d!45941 (= c!27250 lt!75376)))

(assert (=> d!45941 (= lt!75376 (containsKey!180 (toList!891 e!93489) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> d!45941 (= (contains!924 e!93489 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) lt!75377)))

(declare-fun b!143759 () Bool)

(declare-fun lt!75378 () Unit!4550)

(assert (=> b!143759 (= e!93682 lt!75378)))

(assert (=> b!143759 (= lt!75378 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 (toList!891 e!93489) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> b!143759 (isDefined!130 (getValueByKey!176 (toList!891 e!93489) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun b!143760 () Bool)

(declare-fun Unit!4563 () Unit!4550)

(assert (=> b!143760 (= e!93682 Unit!4563)))

(declare-fun b!143761 () Bool)

(assert (=> b!143761 (= e!93683 (isDefined!130 (getValueByKey!176 (toList!891 e!93489) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))))))

(assert (= (and d!45941 c!27250) b!143759))

(assert (= (and d!45941 (not c!27250)) b!143760))

(assert (= (and d!45941 (not res!68447)) b!143761))

(assert (=> d!45941 m!173141))

(declare-fun m!173687 () Bool)

(assert (=> d!45941 m!173687))

(assert (=> b!143759 m!173141))

(declare-fun m!173689 () Bool)

(assert (=> b!143759 m!173689))

(assert (=> b!143759 m!173141))

(declare-fun m!173691 () Bool)

(assert (=> b!143759 m!173691))

(assert (=> b!143759 m!173691))

(declare-fun m!173693 () Bool)

(assert (=> b!143759 m!173693))

(assert (=> b!143761 m!173141))

(assert (=> b!143761 m!173691))

(assert (=> b!143761 m!173691))

(assert (=> b!143761 m!173693))

(assert (=> bm!15891 d!45941))

(declare-fun b!143762 () Bool)

(declare-fun e!93684 () Bool)

(declare-fun e!93686 () Bool)

(assert (=> b!143762 (= e!93684 e!93686)))

(declare-fun res!68448 () Bool)

(assert (=> b!143762 (=> (not res!68448) (not e!93686))))

(declare-fun e!93687 () Bool)

(assert (=> b!143762 (= res!68448 (not e!93687))))

(declare-fun res!68449 () Bool)

(assert (=> b!143762 (=> (not res!68449) (not e!93687))))

(assert (=> b!143762 (= res!68449 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!143763 () Bool)

(assert (=> b!143763 (= e!93687 (contains!925 Nil!1764 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!143764 () Bool)

(declare-fun e!93685 () Bool)

(declare-fun call!15952 () Bool)

(assert (=> b!143764 (= e!93685 call!15952)))

(declare-fun b!143765 () Bool)

(assert (=> b!143765 (= e!93685 call!15952)))

(declare-fun bm!15949 () Bool)

(declare-fun c!27251 () Bool)

(assert (=> bm!15949 (= call!15952 (arrayNoDuplicates!0 (_keys!4726 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!27251 (Cons!1763 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000) Nil!1764) Nil!1764)))))

(declare-fun b!143766 () Bool)

(assert (=> b!143766 (= e!93686 e!93685)))

(assert (=> b!143766 (= c!27251 (validKeyInArray!0 (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!45943 () Bool)

(declare-fun res!68450 () Bool)

(assert (=> d!45943 (=> res!68450 e!93684)))

(assert (=> d!45943 (= res!68450 (bvsge #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))))))

(assert (=> d!45943 (= (arrayNoDuplicates!0 (_keys!4726 newMap!16) #b00000000000000000000000000000000 Nil!1764) e!93684)))

(assert (= (and d!45943 (not res!68450)) b!143762))

(assert (= (and b!143762 res!68449) b!143763))

(assert (= (and b!143762 res!68448) b!143766))

(assert (= (and b!143766 c!27251) b!143764))

(assert (= (and b!143766 (not c!27251)) b!143765))

(assert (= (or b!143764 b!143765) bm!15949))

(assert (=> b!143762 m!173411))

(assert (=> b!143762 m!173411))

(assert (=> b!143762 m!173423))

(assert (=> b!143763 m!173411))

(assert (=> b!143763 m!173411))

(declare-fun m!173695 () Bool)

(assert (=> b!143763 m!173695))

(assert (=> bm!15949 m!173411))

(declare-fun m!173697 () Bool)

(assert (=> bm!15949 m!173697))

(assert (=> b!143766 m!173411))

(assert (=> b!143766 m!173411))

(assert (=> b!143766 m!173423))

(assert (=> b!143336 d!45943))

(declare-fun d!45945 () Bool)

(declare-fun e!93690 () Bool)

(assert (=> d!45945 e!93690))

(declare-fun res!68456 () Bool)

(assert (=> d!45945 (=> (not res!68456) (not e!93690))))

(declare-fun lt!75385 () SeekEntryResult!290)

(assert (=> d!45945 (= res!68456 ((_ is Found!290) lt!75385))))

(assert (=> d!45945 (= lt!75385 (seekEntryOrOpen!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (_keys!4726 newMap!16) (mask!7315 newMap!16)))))

(declare-fun lt!75384 () Unit!4550)

(declare-fun choose!881 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 64) Int) Unit!4550)

(assert (=> d!45945 (= lt!75384 (choose!881 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (defaultEntry!2963 newMap!16)))))

(assert (=> d!45945 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45945 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (defaultEntry!2963 newMap!16)) lt!75384)))

(declare-fun b!143771 () Bool)

(declare-fun res!68455 () Bool)

(assert (=> b!143771 (=> (not res!68455) (not e!93690))))

(assert (=> b!143771 (= res!68455 (inRange!0 (index!3325 lt!75385) (mask!7315 newMap!16)))))

(declare-fun b!143772 () Bool)

(assert (=> b!143772 (= e!93690 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75385)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> b!143772 (and (bvsge (index!3325 lt!75385) #b00000000000000000000000000000000) (bvslt (index!3325 lt!75385) (size!2593 (_keys!4726 newMap!16))))))

(assert (= (and d!45945 res!68456) b!143771))

(assert (= (and b!143771 res!68455) b!143772))

(assert (=> d!45945 m!173141))

(assert (=> d!45945 m!173263))

(assert (=> d!45945 m!173141))

(declare-fun m!173699 () Bool)

(assert (=> d!45945 m!173699))

(assert (=> d!45945 m!173413))

(declare-fun m!173701 () Bool)

(assert (=> b!143771 m!173701))

(declare-fun m!173703 () Bool)

(assert (=> b!143772 m!173703))

(assert (=> bm!15880 d!45945))

(assert (=> b!143444 d!45887))

(declare-fun d!45947 () Bool)

(declare-fun res!68457 () Bool)

(declare-fun e!93691 () Bool)

(assert (=> d!45947 (=> (not res!68457) (not e!93691))))

(assert (=> d!45947 (= res!68457 (simpleValid!96 (_2!1356 lt!75151)))))

(assert (=> d!45947 (= (valid!558 (_2!1356 lt!75151)) e!93691)))

(declare-fun b!143773 () Bool)

(declare-fun res!68458 () Bool)

(assert (=> b!143773 (=> (not res!68458) (not e!93691))))

(assert (=> b!143773 (= res!68458 (= (arrayCountValidKeys!0 (_keys!4726 (_2!1356 lt!75151)) #b00000000000000000000000000000000 (size!2593 (_keys!4726 (_2!1356 lt!75151)))) (_size!628 (_2!1356 lt!75151))))))

(declare-fun b!143774 () Bool)

(declare-fun res!68459 () Bool)

(assert (=> b!143774 (=> (not res!68459) (not e!93691))))

(assert (=> b!143774 (= res!68459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4726 (_2!1356 lt!75151)) (mask!7315 (_2!1356 lt!75151))))))

(declare-fun b!143775 () Bool)

(assert (=> b!143775 (= e!93691 (arrayNoDuplicates!0 (_keys!4726 (_2!1356 lt!75151)) #b00000000000000000000000000000000 Nil!1764))))

(assert (= (and d!45947 res!68457) b!143773))

(assert (= (and b!143773 res!68458) b!143774))

(assert (= (and b!143774 res!68459) b!143775))

(declare-fun m!173705 () Bool)

(assert (=> d!45947 m!173705))

(declare-fun m!173707 () Bool)

(assert (=> b!143773 m!173707))

(declare-fun m!173709 () Bool)

(assert (=> b!143774 m!173709))

(declare-fun m!173711 () Bool)

(assert (=> b!143775 m!173711))

(assert (=> d!45859 d!45947))

(assert (=> d!45859 d!45853))

(declare-fun d!45949 () Bool)

(declare-fun e!93693 () Bool)

(assert (=> d!45949 e!93693))

(declare-fun res!68460 () Bool)

(assert (=> d!45949 (=> res!68460 e!93693)))

(declare-fun lt!75387 () Bool)

(assert (=> d!45949 (= res!68460 (not lt!75387))))

(declare-fun lt!75386 () Bool)

(assert (=> d!45949 (= lt!75387 lt!75386)))

(declare-fun lt!75389 () Unit!4550)

(declare-fun e!93692 () Unit!4550)

(assert (=> d!45949 (= lt!75389 e!93692)))

(declare-fun c!27252 () Bool)

(assert (=> d!45949 (= c!27252 lt!75386)))

(assert (=> d!45949 (= lt!75386 (containsKey!180 (toList!891 lt!75214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!45949 (= (contains!924 lt!75214 #b1000000000000000000000000000000000000000000000000000000000000000) lt!75387)))

(declare-fun b!143776 () Bool)

(declare-fun lt!75388 () Unit!4550)

(assert (=> b!143776 (= e!93692 lt!75388)))

(assert (=> b!143776 (= lt!75388 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 (toList!891 lt!75214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!143776 (isDefined!130 (getValueByKey!176 (toList!891 lt!75214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!143777 () Bool)

(declare-fun Unit!4564 () Unit!4550)

(assert (=> b!143777 (= e!93692 Unit!4564)))

(declare-fun b!143778 () Bool)

(assert (=> b!143778 (= e!93693 (isDefined!130 (getValueByKey!176 (toList!891 lt!75214) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!45949 c!27252) b!143776))

(assert (= (and d!45949 (not c!27252)) b!143777))

(assert (= (and d!45949 (not res!68460)) b!143778))

(declare-fun m!173713 () Bool)

(assert (=> d!45949 m!173713))

(declare-fun m!173715 () Bool)

(assert (=> b!143776 m!173715))

(assert (=> b!143776 m!173457))

(assert (=> b!143776 m!173457))

(declare-fun m!173717 () Bool)

(assert (=> b!143776 m!173717))

(assert (=> b!143778 m!173457))

(assert (=> b!143778 m!173457))

(assert (=> b!143778 m!173717))

(assert (=> bm!15910 d!45949))

(declare-fun d!45951 () Bool)

(assert (=> d!45951 (= (get!1542 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3295 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> b!143482 d!45951))

(declare-fun d!45953 () Bool)

(declare-fun res!68461 () Bool)

(declare-fun e!93694 () Bool)

(assert (=> d!45953 (=> res!68461 e!93694)))

(assert (=> d!45953 (= res!68461 (= (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> d!45953 (= (arrayContainsKey!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!93694)))

(declare-fun b!143779 () Bool)

(declare-fun e!93695 () Bool)

(assert (=> b!143779 (= e!93694 e!93695)))

(declare-fun res!68462 () Bool)

(assert (=> b!143779 (=> (not res!68462) (not e!93695))))

(assert (=> b!143779 (= res!68462 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))))))

(declare-fun b!143780 () Bool)

(assert (=> b!143780 (= e!93695 (arrayContainsKey!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!45953 (not res!68461)) b!143779))

(assert (= (and b!143779 res!68462) b!143780))

(declare-fun m!173719 () Bool)

(assert (=> d!45953 m!173719))

(assert (=> b!143780 m!173141))

(declare-fun m!173721 () Bool)

(assert (=> b!143780 m!173721))

(assert (=> b!143567 d!45953))

(declare-fun b!143793 () Bool)

(declare-fun e!93704 () SeekEntryResult!290)

(declare-fun lt!75397 () SeekEntryResult!290)

(assert (=> b!143793 (= e!93704 (Found!290 (index!3326 lt!75397)))))

(declare-fun b!143794 () Bool)

(declare-fun e!93703 () SeekEntryResult!290)

(assert (=> b!143794 (= e!93703 e!93704)))

(declare-fun lt!75398 () (_ BitVec 64))

(assert (=> b!143794 (= lt!75398 (select (arr!2320 (_keys!4726 newMap!16)) (index!3326 lt!75397)))))

(declare-fun c!27260 () Bool)

(assert (=> b!143794 (= c!27260 (= lt!75398 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun lt!75396 () SeekEntryResult!290)

(declare-fun d!45955 () Bool)

(assert (=> d!45955 (and (or ((_ is Undefined!290) lt!75396) (not ((_ is Found!290) lt!75396)) (and (bvsge (index!3325 lt!75396) #b00000000000000000000000000000000) (bvslt (index!3325 lt!75396) (size!2593 (_keys!4726 newMap!16))))) (or ((_ is Undefined!290) lt!75396) ((_ is Found!290) lt!75396) (not ((_ is MissingZero!290) lt!75396)) (and (bvsge (index!3324 lt!75396) #b00000000000000000000000000000000) (bvslt (index!3324 lt!75396) (size!2593 (_keys!4726 newMap!16))))) (or ((_ is Undefined!290) lt!75396) ((_ is Found!290) lt!75396) ((_ is MissingZero!290) lt!75396) (not ((_ is MissingVacant!290) lt!75396)) (and (bvsge (index!3327 lt!75396) #b00000000000000000000000000000000) (bvslt (index!3327 lt!75396) (size!2593 (_keys!4726 newMap!16))))) (or ((_ is Undefined!290) lt!75396) (ite ((_ is Found!290) lt!75396) (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75396)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (ite ((_ is MissingZero!290) lt!75396) (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3324 lt!75396)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!290) lt!75396) (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3327 lt!75396)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!45955 (= lt!75396 e!93703)))

(declare-fun c!27261 () Bool)

(assert (=> d!45955 (= c!27261 (and ((_ is Intermediate!290) lt!75397) (undefined!1102 lt!75397)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4910 (_ BitVec 32)) SeekEntryResult!290)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!45955 (= lt!75397 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (mask!7315 newMap!16)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (_keys!4726 newMap!16) (mask!7315 newMap!16)))))

(assert (=> d!45955 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45955 (= (seekEntryOrOpen!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (_keys!4726 newMap!16) (mask!7315 newMap!16)) lt!75396)))

(declare-fun b!143795 () Bool)

(declare-fun c!27259 () Bool)

(assert (=> b!143795 (= c!27259 (= lt!75398 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!93702 () SeekEntryResult!290)

(assert (=> b!143795 (= e!93704 e!93702)))

(declare-fun b!143796 () Bool)

(assert (=> b!143796 (= e!93703 Undefined!290)))

(declare-fun b!143797 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4910 (_ BitVec 32)) SeekEntryResult!290)

(assert (=> b!143797 (= e!93702 (seekKeyOrZeroReturnVacant!0 (x!16344 lt!75397) (index!3326 lt!75397) (index!3326 lt!75397) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (_keys!4726 newMap!16) (mask!7315 newMap!16)))))

(declare-fun b!143798 () Bool)

(assert (=> b!143798 (= e!93702 (MissingZero!290 (index!3326 lt!75397)))))

(assert (= (and d!45955 c!27261) b!143796))

(assert (= (and d!45955 (not c!27261)) b!143794))

(assert (= (and b!143794 c!27260) b!143793))

(assert (= (and b!143794 (not c!27260)) b!143795))

(assert (= (and b!143795 c!27259) b!143798))

(assert (= (and b!143795 (not c!27259)) b!143797))

(declare-fun m!173723 () Bool)

(assert (=> b!143794 m!173723))

(declare-fun m!173725 () Bool)

(assert (=> d!45955 m!173725))

(assert (=> d!45955 m!173141))

(declare-fun m!173727 () Bool)

(assert (=> d!45955 m!173727))

(declare-fun m!173729 () Bool)

(assert (=> d!45955 m!173729))

(declare-fun m!173731 () Bool)

(assert (=> d!45955 m!173731))

(assert (=> d!45955 m!173413))

(assert (=> d!45955 m!173727))

(assert (=> d!45955 m!173141))

(declare-fun m!173733 () Bool)

(assert (=> d!45955 m!173733))

(assert (=> b!143797 m!173141))

(declare-fun m!173735 () Bool)

(assert (=> b!143797 m!173735))

(assert (=> b!143452 d!45955))

(declare-fun d!45957 () Bool)

(declare-fun res!68467 () Bool)

(declare-fun e!93709 () Bool)

(assert (=> d!45957 (=> res!68467 e!93709)))

(assert (=> d!45957 (= res!68467 (and ((_ is Cons!1764) (toList!891 lt!75052)) (= (_1!1355 (h!2372 (toList!891 lt!75052))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))))))

(assert (=> d!45957 (= (containsKey!180 (toList!891 lt!75052) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) e!93709)))

(declare-fun b!143803 () Bool)

(declare-fun e!93710 () Bool)

(assert (=> b!143803 (= e!93709 e!93710)))

(declare-fun res!68468 () Bool)

(assert (=> b!143803 (=> (not res!68468) (not e!93710))))

(assert (=> b!143803 (= res!68468 (and (or (not ((_ is Cons!1764) (toList!891 lt!75052))) (bvsle (_1!1355 (h!2372 (toList!891 lt!75052))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))) ((_ is Cons!1764) (toList!891 lt!75052)) (bvslt (_1!1355 (h!2372 (toList!891 lt!75052))) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))))))

(declare-fun b!143804 () Bool)

(assert (=> b!143804 (= e!93710 (containsKey!180 (t!6389 (toList!891 lt!75052)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (= (and d!45957 (not res!68467)) b!143803))

(assert (= (and b!143803 res!68468) b!143804))

(assert (=> b!143804 m!173141))

(declare-fun m!173737 () Bool)

(assert (=> b!143804 m!173737))

(assert (=> d!45857 d!45957))

(assert (=> b!143561 d!45933))

(declare-fun d!45959 () Bool)

(declare-fun e!93712 () Bool)

(assert (=> d!45959 e!93712))

(declare-fun res!68469 () Bool)

(assert (=> d!45959 (=> res!68469 e!93712)))

(declare-fun lt!75400 () Bool)

(assert (=> d!45959 (= res!68469 (not lt!75400))))

(declare-fun lt!75399 () Bool)

(assert (=> d!45959 (= lt!75400 lt!75399)))

(declare-fun lt!75402 () Unit!4550)

(declare-fun e!93711 () Unit!4550)

(assert (=> d!45959 (= lt!75402 e!93711)))

(declare-fun c!27262 () Bool)

(assert (=> d!45959 (= c!27262 lt!75399)))

(assert (=> d!45959 (= lt!75399 (containsKey!180 (toList!891 call!15893) (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75153))))))

(assert (=> d!45959 (= (contains!924 call!15893 (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75153))) lt!75400)))

(declare-fun b!143805 () Bool)

(declare-fun lt!75401 () Unit!4550)

(assert (=> b!143805 (= e!93711 lt!75401)))

(assert (=> b!143805 (= lt!75401 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 (toList!891 call!15893) (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75153))))))

(assert (=> b!143805 (isDefined!130 (getValueByKey!176 (toList!891 call!15893) (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75153))))))

(declare-fun b!143806 () Bool)

(declare-fun Unit!4565 () Unit!4550)

(assert (=> b!143806 (= e!93711 Unit!4565)))

(declare-fun b!143807 () Bool)

(assert (=> b!143807 (= e!93712 (isDefined!130 (getValueByKey!176 (toList!891 call!15893) (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75153)))))))

(assert (= (and d!45959 c!27262) b!143805))

(assert (= (and d!45959 (not c!27262)) b!143806))

(assert (= (and d!45959 (not res!68469)) b!143807))

(assert (=> d!45959 m!173271))

(declare-fun m!173739 () Bool)

(assert (=> d!45959 m!173739))

(assert (=> b!143805 m!173271))

(declare-fun m!173741 () Bool)

(assert (=> b!143805 m!173741))

(assert (=> b!143805 m!173271))

(declare-fun m!173743 () Bool)

(assert (=> b!143805 m!173743))

(assert (=> b!143805 m!173743))

(declare-fun m!173745 () Bool)

(assert (=> b!143805 m!173745))

(assert (=> b!143807 m!173271))

(assert (=> b!143807 m!173743))

(assert (=> b!143807 m!173743))

(assert (=> b!143807 m!173745))

(assert (=> b!143454 d!45959))

(declare-fun d!45961 () Bool)

(declare-fun e!93715 () Bool)

(assert (=> d!45961 e!93715))

(declare-fun res!68472 () Bool)

(assert (=> d!45961 (=> (not res!68472) (not e!93715))))

(assert (=> d!45961 (= res!68472 (and (bvsge (index!3325 lt!75153) #b00000000000000000000000000000000) (bvslt (index!3325 lt!75153) (size!2593 (_keys!4726 newMap!16)))))))

(declare-fun lt!75405 () Unit!4550)

(declare-fun choose!882 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 32) Int) Unit!4550)

(assert (=> d!45961 (= lt!75405 (choose!882 (_keys!4726 newMap!16) lt!75156 (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (index!3325 lt!75153) (defaultEntry!2963 newMap!16)))))

(assert (=> d!45961 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45961 (= (lemmaValidKeyInArrayIsInListMap!124 (_keys!4726 newMap!16) lt!75156 (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (index!3325 lt!75153) (defaultEntry!2963 newMap!16)) lt!75405)))

(declare-fun b!143810 () Bool)

(assert (=> b!143810 (= e!93715 (contains!924 (getCurrentListMap!557 (_keys!4726 newMap!16) lt!75156 (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75153))))))

(assert (= (and d!45961 res!68472) b!143810))

(declare-fun m!173747 () Bool)

(assert (=> d!45961 m!173747))

(assert (=> d!45961 m!173413))

(declare-fun m!173749 () Bool)

(assert (=> b!143810 m!173749))

(assert (=> b!143810 m!173271))

(assert (=> b!143810 m!173749))

(assert (=> b!143810 m!173271))

(declare-fun m!173751 () Bool)

(assert (=> b!143810 m!173751))

(assert (=> b!143454 d!45961))

(declare-fun d!45963 () Bool)

(declare-fun e!93718 () Bool)

(assert (=> d!45963 e!93718))

(declare-fun res!68475 () Bool)

(assert (=> d!45963 (=> (not res!68475) (not e!93718))))

(assert (=> d!45963 (= res!68475 (and (bvsge (index!3325 lt!75153) #b00000000000000000000000000000000) (bvslt (index!3325 lt!75153) (size!2594 (_values!2946 newMap!16)))))))

(declare-fun lt!75408 () Unit!4550)

(declare-fun choose!883 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 32) (_ BitVec 64) V!3563 Int) Unit!4550)

(assert (=> d!45963 (= lt!75408 (choose!883 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (index!3325 lt!75153) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2963 newMap!16)))))

(assert (=> d!45963 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45963 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (index!3325 lt!75153) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2963 newMap!16)) lt!75408)))

(declare-fun b!143813 () Bool)

(assert (=> b!143813 (= e!93718 (= (+!175 (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!557 (_keys!4726 newMap!16) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (index!3325 lt!75153) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16))) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16))))))

(assert (= (and d!45963 res!68475) b!143813))

(assert (=> d!45963 m!173141))

(assert (=> d!45963 m!173161))

(declare-fun m!173753 () Bool)

(assert (=> d!45963 m!173753))

(assert (=> d!45963 m!173413))

(assert (=> b!143813 m!173247))

(assert (=> b!143813 m!173247))

(declare-fun m!173755 () Bool)

(assert (=> b!143813 m!173755))

(assert (=> b!143813 m!173279))

(declare-fun m!173757 () Bool)

(assert (=> b!143813 m!173757))

(assert (=> b!143454 d!45963))

(declare-fun b!143822 () Bool)

(declare-fun res!68486 () Bool)

(declare-fun e!93721 () Bool)

(assert (=> b!143822 (=> (not res!68486) (not e!93721))))

(assert (=> b!143822 (= res!68486 (and (= (size!2594 (_values!2946 newMap!16)) (bvadd (mask!7315 newMap!16) #b00000000000000000000000000000001)) (= (size!2593 (_keys!4726 newMap!16)) (size!2594 (_values!2946 newMap!16))) (bvsge (_size!628 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!628 newMap!16) (bvadd (mask!7315 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!143824 () Bool)

(declare-fun res!68484 () Bool)

(assert (=> b!143824 (=> (not res!68484) (not e!93721))))

(declare-fun size!2597 (LongMapFixedSize!1158) (_ BitVec 32))

(assert (=> b!143824 (= res!68484 (= (size!2597 newMap!16) (bvadd (_size!628 newMap!16) (bvsdiv (bvadd (extraKeys!2714 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!45965 () Bool)

(declare-fun res!68485 () Bool)

(assert (=> d!45965 (=> (not res!68485) (not e!93721))))

(assert (=> d!45965 (= res!68485 (validMask!0 (mask!7315 newMap!16)))))

(assert (=> d!45965 (= (simpleValid!96 newMap!16) e!93721)))

(declare-fun b!143825 () Bool)

(assert (=> b!143825 (= e!93721 (and (bvsge (extraKeys!2714 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2714 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!628 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!143823 () Bool)

(declare-fun res!68487 () Bool)

(assert (=> b!143823 (=> (not res!68487) (not e!93721))))

(assert (=> b!143823 (= res!68487 (bvsge (size!2597 newMap!16) (_size!628 newMap!16)))))

(assert (= (and d!45965 res!68485) b!143822))

(assert (= (and b!143822 res!68486) b!143823))

(assert (= (and b!143823 res!68487) b!143824))

(assert (= (and b!143824 res!68484) b!143825))

(declare-fun m!173759 () Bool)

(assert (=> b!143824 m!173759))

(assert (=> d!45965 m!173413))

(assert (=> b!143823 m!173759))

(assert (=> d!45853 d!45965))

(assert (=> b!143441 d!45887))

(declare-fun b!143842 () Bool)

(declare-fun e!93731 () Bool)

(declare-fun call!15957 () Bool)

(assert (=> b!143842 (= e!93731 (not call!15957))))

(declare-fun b!143843 () Bool)

(declare-fun e!93730 () Bool)

(declare-fun e!93733 () Bool)

(assert (=> b!143843 (= e!93730 e!93733)))

(declare-fun c!27268 () Bool)

(declare-fun lt!75414 () SeekEntryResult!290)

(assert (=> b!143843 (= c!27268 ((_ is MissingVacant!290) lt!75414))))

(declare-fun b!143844 () Bool)

(assert (=> b!143844 (and (bvsge (index!3324 lt!75414) #b00000000000000000000000000000000) (bvslt (index!3324 lt!75414) (size!2593 (_keys!4726 newMap!16))))))

(declare-fun res!68498 () Bool)

(assert (=> b!143844 (= res!68498 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3324 lt!75414)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!93732 () Bool)

(assert (=> b!143844 (=> (not res!68498) (not e!93732))))

(declare-fun b!143845 () Bool)

(declare-fun res!68497 () Bool)

(assert (=> b!143845 (=> (not res!68497) (not e!93731))))

(declare-fun call!15958 () Bool)

(assert (=> b!143845 (= res!68497 call!15958)))

(assert (=> b!143845 (= e!93733 e!93731)))

(declare-fun bm!15954 () Bool)

(declare-fun c!27267 () Bool)

(assert (=> bm!15954 (= call!15958 (inRange!0 (ite c!27267 (index!3324 lt!75414) (index!3327 lt!75414)) (mask!7315 newMap!16)))))

(declare-fun b!143846 () Bool)

(declare-fun res!68496 () Bool)

(assert (=> b!143846 (=> (not res!68496) (not e!93731))))

(assert (=> b!143846 (= res!68496 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3327 lt!75414)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!143846 (and (bvsge (index!3327 lt!75414) #b00000000000000000000000000000000) (bvslt (index!3327 lt!75414) (size!2593 (_keys!4726 newMap!16))))))

(declare-fun bm!15955 () Bool)

(assert (=> bm!15955 (= call!15957 (arrayContainsKey!0 (_keys!4726 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!143847 () Bool)

(assert (=> b!143847 (= e!93732 (not call!15957))))

(declare-fun b!143848 () Bool)

(assert (=> b!143848 (= e!93733 ((_ is Undefined!290) lt!75414))))

(declare-fun d!45967 () Bool)

(assert (=> d!45967 e!93730))

(assert (=> d!45967 (= c!27267 ((_ is MissingZero!290) lt!75414))))

(assert (=> d!45967 (= lt!75414 (seekEntryOrOpen!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (_keys!4726 newMap!16) (mask!7315 newMap!16)))))

(declare-fun lt!75413 () Unit!4550)

(declare-fun choose!884 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 64) Int) Unit!4550)

(assert (=> d!45967 (= lt!75413 (choose!884 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (defaultEntry!2963 newMap!16)))))

(assert (=> d!45967 (validMask!0 (mask!7315 newMap!16))))

(assert (=> d!45967 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (defaultEntry!2963 newMap!16)) lt!75413)))

(declare-fun b!143849 () Bool)

(assert (=> b!143849 (= e!93730 e!93732)))

(declare-fun res!68499 () Bool)

(assert (=> b!143849 (= res!68499 call!15958)))

(assert (=> b!143849 (=> (not res!68499) (not e!93732))))

(assert (= (and d!45967 c!27267) b!143849))

(assert (= (and d!45967 (not c!27267)) b!143843))

(assert (= (and b!143849 res!68499) b!143844))

(assert (= (and b!143844 res!68498) b!143847))

(assert (= (and b!143843 c!27268) b!143845))

(assert (= (and b!143843 (not c!27268)) b!143848))

(assert (= (and b!143845 res!68497) b!143846))

(assert (= (and b!143846 res!68496) b!143842))

(assert (= (or b!143849 b!143845) bm!15954))

(assert (= (or b!143847 b!143842) bm!15955))

(declare-fun m!173761 () Bool)

(assert (=> bm!15954 m!173761))

(declare-fun m!173763 () Bool)

(assert (=> b!143846 m!173763))

(declare-fun m!173765 () Bool)

(assert (=> b!143844 m!173765))

(assert (=> bm!15955 m!173141))

(assert (=> bm!15955 m!173295))

(assert (=> d!45967 m!173141))

(assert (=> d!45967 m!173263))

(assert (=> d!45967 m!173141))

(declare-fun m!173767 () Bool)

(assert (=> d!45967 m!173767))

(assert (=> d!45967 m!173413))

(assert (=> bm!15886 d!45967))

(declare-fun d!45969 () Bool)

(declare-fun res!68500 () Bool)

(declare-fun e!93734 () Bool)

(assert (=> d!45969 (=> res!68500 e!93734)))

(assert (=> d!45969 (= res!68500 (= (select (arr!2320 (_keys!4726 newMap!16)) #b00000000000000000000000000000000) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> d!45969 (= (arrayContainsKey!0 (_keys!4726 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b00000000000000000000000000000000) e!93734)))

(declare-fun b!143850 () Bool)

(declare-fun e!93735 () Bool)

(assert (=> b!143850 (= e!93734 e!93735)))

(declare-fun res!68501 () Bool)

(assert (=> b!143850 (=> (not res!68501) (not e!93735))))

(assert (=> b!143850 (= res!68501 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2593 (_keys!4726 newMap!16))))))

(declare-fun b!143851 () Bool)

(assert (=> b!143851 (= e!93735 (arrayContainsKey!0 (_keys!4726 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!45969 (not res!68500)) b!143850))

(assert (= (and b!143850 res!68501) b!143851))

(assert (=> d!45969 m!173411))

(assert (=> b!143851 m!173141))

(declare-fun m!173769 () Bool)

(assert (=> b!143851 m!173769))

(assert (=> bm!15878 d!45969))

(declare-fun d!45971 () Bool)

(declare-fun e!93737 () Bool)

(assert (=> d!45971 e!93737))

(declare-fun res!68502 () Bool)

(assert (=> d!45971 (=> res!68502 e!93737)))

(declare-fun lt!75416 () Bool)

(assert (=> d!45971 (= res!68502 (not lt!75416))))

(declare-fun lt!75415 () Bool)

(assert (=> d!45971 (= lt!75416 lt!75415)))

(declare-fun lt!75418 () Unit!4550)

(declare-fun e!93736 () Unit!4550)

(assert (=> d!45971 (= lt!75418 e!93736)))

(declare-fun c!27269 () Bool)

(assert (=> d!45971 (= c!27269 lt!75415)))

(assert (=> d!45971 (= lt!75415 (containsKey!180 (toList!891 lt!75214) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!45971 (= (contains!924 lt!75214 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!75416)))

(declare-fun b!143852 () Bool)

(declare-fun lt!75417 () Unit!4550)

(assert (=> b!143852 (= e!93736 lt!75417)))

(assert (=> b!143852 (= lt!75417 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 (toList!891 lt!75214) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!143852 (isDefined!130 (getValueByKey!176 (toList!891 lt!75214) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!143853 () Bool)

(declare-fun Unit!4566 () Unit!4550)

(assert (=> b!143853 (= e!93736 Unit!4566)))

(declare-fun b!143854 () Bool)

(assert (=> b!143854 (= e!93737 (isDefined!130 (getValueByKey!176 (toList!891 lt!75214) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!45971 c!27269) b!143852))

(assert (= (and d!45971 (not c!27269)) b!143853))

(assert (= (and d!45971 (not res!68502)) b!143854))

(assert (=> d!45971 m!173337))

(declare-fun m!173771 () Bool)

(assert (=> d!45971 m!173771))

(assert (=> b!143852 m!173337))

(declare-fun m!173773 () Bool)

(assert (=> b!143852 m!173773))

(assert (=> b!143852 m!173337))

(assert (=> b!143852 m!173677))

(assert (=> b!143852 m!173677))

(declare-fun m!173775 () Bool)

(assert (=> b!143852 m!173775))

(assert (=> b!143854 m!173337))

(assert (=> b!143854 m!173677))

(assert (=> b!143854 m!173677))

(assert (=> b!143854 m!173775))

(assert (=> b!143526 d!45971))

(declare-fun bm!15964 () Bool)

(declare-fun call!15969 () Bool)

(declare-fun call!15970 () Bool)

(assert (=> bm!15964 (= call!15969 call!15970)))

(declare-fun lt!75483 () SeekEntryResult!290)

(declare-fun e!93761 () Bool)

(declare-fun b!143889 () Bool)

(assert (=> b!143889 (= e!93761 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3325 lt!75483)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun b!143890 () Bool)

(declare-fun res!68529 () Bool)

(declare-fun lt!75503 () SeekEntryResult!290)

(assert (=> b!143890 (= res!68529 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3327 lt!75503)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!93757 () Bool)

(assert (=> b!143890 (=> (not res!68529) (not e!93757))))

(declare-fun b!143891 () Bool)

(declare-fun c!27280 () Bool)

(assert (=> b!143891 (= c!27280 ((_ is MissingVacant!290) lt!75503))))

(declare-fun e!93756 () Bool)

(declare-fun e!93754 () Bool)

(assert (=> b!143891 (= e!93756 e!93754)))

(declare-fun e!93759 () Bool)

(declare-fun lt!75506 () tuple2!2692)

(declare-fun b!143892 () Bool)

(assert (=> b!143892 (= e!93759 (= (map!1442 (_2!1356 lt!75506)) (+!175 (map!1442 newMap!16) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun call!15968 () SeekEntryResult!290)

(declare-fun bm!15965 () Bool)

(assert (=> bm!15965 (= call!15968 (seekEntryOrOpen!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (_keys!4726 newMap!16) (mask!7315 newMap!16)))))

(declare-fun b!143893 () Bool)

(declare-fun e!93755 () Unit!4550)

(declare-fun Unit!4567 () Unit!4550)

(assert (=> b!143893 (= e!93755 Unit!4567)))

(declare-fun lt!75507 () Unit!4550)

(declare-fun lemmaArrayContainsKeyThenInListMap!46 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 64) (_ BitVec 32) Int) Unit!4550)

(assert (=> b!143893 (= lt!75507 (lemmaArrayContainsKeyThenInListMap!46 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(assert (=> b!143893 (contains!924 (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355))))

(declare-fun lt!75508 () Unit!4550)

(assert (=> b!143893 (= lt!75508 lt!75507)))

(assert (=> b!143893 false))

(declare-fun b!143894 () Bool)

(declare-fun res!68521 () Bool)

(declare-fun e!93760 () Bool)

(assert (=> b!143894 (=> (not res!68521) (not e!93760))))

(assert (=> b!143894 (= res!68521 (= (select (arr!2320 (_keys!4726 newMap!16)) (index!3324 lt!75503)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15966 () Bool)

(declare-fun c!27279 () Bool)

(declare-fun c!27278 () Bool)

(assert (=> bm!15966 (= call!15970 (inRange!0 (ite c!27278 (index!3325 lt!75483) (ite c!27279 (index!3324 lt!75503) (index!3327 lt!75503))) (mask!7315 newMap!16)))))

(declare-fun b!143895 () Bool)

(declare-fun res!68528 () Bool)

(assert (=> b!143895 (=> (not res!68528) (not e!93760))))

(assert (=> b!143895 (= res!68528 call!15969)))

(assert (=> b!143895 (= e!93756 e!93760)))

(declare-fun b!143896 () Bool)

(assert (=> b!143896 (= e!93754 e!93757)))

(declare-fun res!68525 () Bool)

(assert (=> b!143896 (= res!68525 call!15969)))

(assert (=> b!143896 (=> (not res!68525) (not e!93757))))

(declare-fun b!143897 () Bool)

(declare-fun call!15967 () Bool)

(assert (=> b!143897 (= e!93760 (not call!15967))))

(declare-fun b!143898 () Bool)

(declare-fun res!68526 () Bool)

(assert (=> b!143898 (=> (not res!68526) (not e!93759))))

(assert (=> b!143898 (= res!68526 (contains!924 (map!1442 (_2!1356 lt!75506)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun b!143899 () Bool)

(declare-fun e!93758 () Unit!4550)

(declare-fun lt!75499 () Unit!4550)

(assert (=> b!143899 (= e!93758 lt!75499)))

(assert (=> b!143899 (= lt!75499 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (defaultEntry!2963 newMap!16)))))

(assert (=> b!143899 (= lt!75503 call!15968)))

(assert (=> b!143899 (= c!27279 ((_ is MissingZero!290) lt!75503))))

(assert (=> b!143899 e!93756))

(declare-fun b!143900 () Bool)

(declare-fun res!68522 () Bool)

(assert (=> b!143900 (= res!68522 call!15970)))

(assert (=> b!143900 (=> (not res!68522) (not e!93761))))

(declare-fun b!143901 () Bool)

(declare-fun res!68523 () Bool)

(assert (=> b!143901 (=> (not res!68523) (not e!93759))))

(assert (=> b!143901 (= res!68523 (valid!558 (_2!1356 lt!75506)))))

(declare-fun b!143902 () Bool)

(declare-fun Unit!4568 () Unit!4550)

(assert (=> b!143902 (= e!93758 Unit!4568)))

(declare-fun lt!75494 () Unit!4550)

(assert (=> b!143902 (= lt!75494 (lemmaInListMapThenSeekEntryOrOpenFindsIt!66 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (defaultEntry!2963 newMap!16)))))

(assert (=> b!143902 (= lt!75483 call!15968)))

(declare-fun res!68524 () Bool)

(assert (=> b!143902 (= res!68524 ((_ is Found!290) lt!75483))))

(assert (=> b!143902 (=> (not res!68524) (not e!93761))))

(assert (=> b!143902 e!93761))

(declare-fun lt!75484 () Unit!4550)

(assert (=> b!143902 (= lt!75484 lt!75494)))

(assert (=> b!143902 false))

(declare-fun b!143903 () Bool)

(assert (=> b!143903 (= e!93754 ((_ is Undefined!290) lt!75503))))

(declare-fun bm!15967 () Bool)

(assert (=> bm!15967 (= call!15967 (arrayContainsKey!0 (_keys!4726 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!143904 () Bool)

(assert (=> b!143904 (= e!93757 (not call!15967))))

(declare-fun b!143905 () Bool)

(declare-fun Unit!4569 () Unit!4550)

(assert (=> b!143905 (= e!93755 Unit!4569)))

(declare-fun d!45973 () Bool)

(assert (=> d!45973 e!93759))

(declare-fun res!68527 () Bool)

(assert (=> d!45973 (=> (not res!68527) (not e!93759))))

(assert (=> d!45973 (= res!68527 (_1!1356 lt!75506))))

(assert (=> d!45973 (= lt!75506 (tuple2!2693 true (LongMapFixedSize!1159 (defaultEntry!2963 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (bvadd (_size!628 newMap!16) #b00000000000000000000000000000001) (array!4911 (store (arr!2320 (_keys!4726 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (size!2593 (_keys!4726 newMap!16))) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16))) (_vacant!628 newMap!16))))))

(declare-fun lt!75495 () Unit!4550)

(declare-fun lt!75480 () Unit!4550)

(assert (=> d!45973 (= lt!75495 lt!75480)))

(declare-fun lt!75481 () array!4910)

(declare-fun lt!75493 () array!4912)

(assert (=> d!45973 (contains!924 (getCurrentListMap!557 lt!75481 lt!75493 (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) (select (store (arr!2320 (_keys!4726 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153))))))

(assert (=> d!45973 (= lt!75480 (lemmaValidKeyInArrayIsInListMap!124 lt!75481 lt!75493 (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (defaultEntry!2963 newMap!16)))))

(assert (=> d!45973 (= lt!75493 (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16))))))

(assert (=> d!45973 (= lt!75481 (array!4911 (store (arr!2320 (_keys!4726 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (size!2593 (_keys!4726 newMap!16))))))

(declare-fun lt!75487 () Unit!4550)

(declare-fun lt!75502 () Unit!4550)

(assert (=> d!45973 (= lt!75487 lt!75502)))

(declare-fun lt!75490 () array!4910)

(assert (=> d!45973 (= (arrayCountValidKeys!0 lt!75490 (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (bvadd (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4910 (_ BitVec 32)) Unit!4550)

(assert (=> d!45973 (= lt!75502 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!75490 (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153))))))

(assert (=> d!45973 (= lt!75490 (array!4911 (store (arr!2320 (_keys!4726 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (size!2593 (_keys!4726 newMap!16))))))

(declare-fun lt!75498 () Unit!4550)

(declare-fun lt!75505 () Unit!4550)

(assert (=> d!45973 (= lt!75498 lt!75505)))

(declare-fun lt!75501 () array!4910)

(assert (=> d!45973 (arrayContainsKey!0 lt!75501 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!45973 (= lt!75505 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!75501 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153))))))

(assert (=> d!45973 (= lt!75501 (array!4911 (store (arr!2320 (_keys!4726 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (size!2593 (_keys!4726 newMap!16))))))

(declare-fun lt!75486 () Unit!4550)

(declare-fun lt!75491 () Unit!4550)

(assert (=> d!45973 (= lt!75486 lt!75491)))

(assert (=> d!45973 (= (+!175 (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) (tuple2!2691 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!557 (array!4911 (store (arr!2320 (_keys!4726 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (size!2593 (_keys!4726 newMap!16))) (array!4913 (store (arr!2321 (_values!2946 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (ValueCellFull!1125 (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2594 (_values!2946 newMap!16))) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!46 (array!4910 array!4912 (_ BitVec 32) (_ BitVec 32) V!3563 V!3563 (_ BitVec 32) (_ BitVec 64) V!3563 Int) Unit!4550)

(assert (=> d!45973 (= lt!75491 (lemmaAddValidKeyToArrayThenAddPairToListMap!46 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2963 newMap!16)))))

(declare-fun lt!75496 () Unit!4550)

(declare-fun lt!75489 () Unit!4550)

(assert (=> d!45973 (= lt!75496 lt!75489)))

(assert (=> d!45973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4911 (store (arr!2320 (_keys!4726 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (size!2593 (_keys!4726 newMap!16))) (mask!7315 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4910 (_ BitVec 32) (_ BitVec 32)) Unit!4550)

(assert (=> d!45973 (= lt!75489 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (_keys!4726 newMap!16) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (mask!7315 newMap!16)))))

(declare-fun lt!75497 () Unit!4550)

(declare-fun lt!75482 () Unit!4550)

(assert (=> d!45973 (= lt!75497 lt!75482)))

(assert (=> d!45973 (= (arrayCountValidKeys!0 (array!4911 (store (arr!2320 (_keys!4726 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (size!2593 (_keys!4726 newMap!16))) #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4726 newMap!16) #b00000000000000000000000000000000 (size!2593 (_keys!4726 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4910 (_ BitVec 32) (_ BitVec 64)) Unit!4550)

(assert (=> d!45973 (= lt!75482 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4726 newMap!16) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun lt!75500 () Unit!4550)

(declare-fun lt!75479 () Unit!4550)

(assert (=> d!45973 (= lt!75500 lt!75479)))

(declare-fun lt!75488 () List!1767)

(declare-fun lt!75504 () (_ BitVec 32))

(assert (=> d!45973 (arrayNoDuplicates!0 (array!4911 (store (arr!2320 (_keys!4726 newMap!16)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) (size!2593 (_keys!4726 newMap!16))) lt!75504 lt!75488)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4910 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1767) Unit!4550)

(assert (=> d!45973 (= lt!75479 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4726 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153)) lt!75504 lt!75488))))

(assert (=> d!45973 (= lt!75488 Nil!1764)))

(assert (=> d!45973 (= lt!75504 #b00000000000000000000000000000000)))

(declare-fun lt!75492 () Unit!4550)

(assert (=> d!45973 (= lt!75492 e!93755)))

(declare-fun c!27281 () Bool)

(assert (=> d!45973 (= c!27281 (arrayContainsKey!0 (_keys!4726 newMap!16) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!75485 () Unit!4550)

(assert (=> d!45973 (= lt!75485 e!93758)))

(assert (=> d!45973 (= c!27278 (contains!924 (getCurrentListMap!557 (_keys!4726 newMap!16) (_values!2946 newMap!16) (mask!7315 newMap!16) (extraKeys!2714 newMap!16) (zeroValue!2811 newMap!16) (minValue!2811 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2963 newMap!16)) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (=> d!45973 (valid!558 newMap!16)))

(assert (=> d!45973 (= (updateHelperNewKey!66 newMap!16 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) (get!1541 (select (arr!2321 (_values!2946 (v!3296 (underlying!483 thiss!992)))) from!355) (dynLambda!444 (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!27160 (index!3327 lt!75153) (index!3324 lt!75153))) lt!75506)))

(assert (= (and d!45973 c!27278) b!143902))

(assert (= (and d!45973 (not c!27278)) b!143899))

(assert (= (and b!143902 res!68524) b!143900))

(assert (= (and b!143900 res!68522) b!143889))

(assert (= (and b!143899 c!27279) b!143895))

(assert (= (and b!143899 (not c!27279)) b!143891))

(assert (= (and b!143895 res!68528) b!143894))

(assert (= (and b!143894 res!68521) b!143897))

(assert (= (and b!143891 c!27280) b!143896))

(assert (= (and b!143891 (not c!27280)) b!143903))

(assert (= (and b!143896 res!68525) b!143890))

(assert (= (and b!143890 res!68529) b!143904))

(assert (= (or b!143895 b!143896) bm!15964))

(assert (= (or b!143897 b!143904) bm!15967))

(assert (= (or b!143900 bm!15964) bm!15966))

(assert (= (or b!143902 b!143899) bm!15965))

(assert (= (and d!45973 c!27281) b!143893))

(assert (= (and d!45973 (not c!27281)) b!143905))

(assert (= (and d!45973 res!68527) b!143901))

(assert (= (and b!143901 res!68523) b!143898))

(assert (= (and b!143898 res!68526) b!143892))

(declare-fun m!173777 () Bool)

(assert (=> b!143894 m!173777))

(assert (=> b!143902 m!173141))

(assert (=> b!143902 m!173261))

(declare-fun m!173779 () Bool)

(assert (=> b!143892 m!173779))

(assert (=> b!143892 m!173143))

(assert (=> b!143892 m!173143))

(declare-fun m!173781 () Bool)

(assert (=> b!143892 m!173781))

(assert (=> b!143898 m!173779))

(assert (=> b!143898 m!173779))

(assert (=> b!143898 m!173141))

(declare-fun m!173783 () Bool)

(assert (=> b!143898 m!173783))

(assert (=> b!143893 m!173141))

(declare-fun m!173785 () Bool)

(assert (=> b!143893 m!173785))

(assert (=> b!143893 m!173247))

(assert (=> b!143893 m!173247))

(assert (=> b!143893 m!173141))

(declare-fun m!173787 () Bool)

(assert (=> b!143893 m!173787))

(declare-fun m!173789 () Bool)

(assert (=> b!143890 m!173789))

(declare-fun m!173791 () Bool)

(assert (=> b!143901 m!173791))

(declare-fun m!173793 () Bool)

(assert (=> bm!15966 m!173793))

(assert (=> bm!15967 m!173141))

(assert (=> bm!15967 m!173295))

(declare-fun m!173795 () Bool)

(assert (=> d!45973 m!173795))

(assert (=> d!45973 m!173141))

(declare-fun m!173797 () Bool)

(assert (=> d!45973 m!173797))

(declare-fun m!173799 () Bool)

(assert (=> d!45973 m!173799))

(assert (=> d!45973 m!173141))

(declare-fun m!173801 () Bool)

(assert (=> d!45973 m!173801))

(assert (=> d!45973 m!173247))

(assert (=> d!45973 m!173755))

(assert (=> d!45973 m!173141))

(declare-fun m!173803 () Bool)

(assert (=> d!45973 m!173803))

(declare-fun m!173805 () Bool)

(assert (=> d!45973 m!173805))

(declare-fun m!173807 () Bool)

(assert (=> d!45973 m!173807))

(declare-fun m!173809 () Bool)

(assert (=> d!45973 m!173809))

(assert (=> d!45973 m!173247))

(assert (=> d!45973 m!173141))

(assert (=> d!45973 m!173787))

(declare-fun m!173811 () Bool)

(assert (=> d!45973 m!173811))

(declare-fun m!173813 () Bool)

(assert (=> d!45973 m!173813))

(declare-fun m!173815 () Bool)

(assert (=> d!45973 m!173815))

(declare-fun m!173817 () Bool)

(assert (=> d!45973 m!173817))

(assert (=> d!45973 m!173227))

(assert (=> d!45973 m!173247))

(declare-fun m!173819 () Bool)

(assert (=> d!45973 m!173819))

(assert (=> d!45973 m!173167))

(assert (=> d!45973 m!173805))

(assert (=> d!45973 m!173799))

(declare-fun m!173821 () Bool)

(assert (=> d!45973 m!173821))

(assert (=> d!45973 m!173141))

(assert (=> d!45973 m!173295))

(assert (=> d!45973 m!173141))

(declare-fun m!173823 () Bool)

(assert (=> d!45973 m!173823))

(assert (=> d!45973 m!173141))

(declare-fun m!173825 () Bool)

(assert (=> d!45973 m!173825))

(declare-fun m!173827 () Bool)

(assert (=> d!45973 m!173827))

(assert (=> d!45973 m!173141))

(assert (=> d!45973 m!173161))

(declare-fun m!173829 () Bool)

(assert (=> d!45973 m!173829))

(assert (=> b!143899 m!173141))

(assert (=> b!143899 m!173253))

(assert (=> bm!15965 m!173141))

(assert (=> bm!15965 m!173263))

(declare-fun m!173831 () Bool)

(assert (=> b!143889 m!173831))

(assert (=> bm!15876 d!45973))

(declare-fun d!45975 () Bool)

(declare-fun res!68530 () Bool)

(declare-fun e!93762 () Bool)

(assert (=> d!45975 (=> (not res!68530) (not e!93762))))

(assert (=> d!45975 (= res!68530 (simpleValid!96 (v!3296 (underlying!483 thiss!992))))))

(assert (=> d!45975 (= (valid!558 (v!3296 (underlying!483 thiss!992))) e!93762)))

(declare-fun b!143906 () Bool)

(declare-fun res!68531 () Bool)

(assert (=> b!143906 (=> (not res!68531) (not e!93762))))

(assert (=> b!143906 (= res!68531 (= (arrayCountValidKeys!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000000 (size!2593 (_keys!4726 (v!3296 (underlying!483 thiss!992))))) (_size!628 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun b!143907 () Bool)

(declare-fun res!68532 () Bool)

(assert (=> b!143907 (=> (not res!68532) (not e!93762))))

(assert (=> b!143907 (= res!68532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4726 (v!3296 (underlying!483 thiss!992))) (mask!7315 (v!3296 (underlying!483 thiss!992)))))))

(declare-fun b!143908 () Bool)

(assert (=> b!143908 (= e!93762 (arrayNoDuplicates!0 (_keys!4726 (v!3296 (underlying!483 thiss!992))) #b00000000000000000000000000000000 Nil!1764))))

(assert (= (and d!45975 res!68530) b!143906))

(assert (= (and b!143906 res!68531) b!143907))

(assert (= (and b!143907 res!68532) b!143908))

(declare-fun m!173833 () Bool)

(assert (=> d!45975 m!173833))

(declare-fun m!173835 () Bool)

(assert (=> b!143906 m!173835))

(declare-fun m!173837 () Bool)

(assert (=> b!143907 m!173837))

(declare-fun m!173839 () Bool)

(assert (=> b!143908 m!173839))

(assert (=> d!45851 d!45975))

(declare-fun d!45977 () Bool)

(declare-fun lt!75509 () Bool)

(assert (=> d!45977 (= lt!75509 (select (content!138 Nil!1764) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun e!93764 () Bool)

(assert (=> d!45977 (= lt!75509 e!93764)))

(declare-fun res!68534 () Bool)

(assert (=> d!45977 (=> (not res!68534) (not e!93764))))

(assert (=> d!45977 (= res!68534 ((_ is Cons!1763) Nil!1764))))

(assert (=> d!45977 (= (contains!925 Nil!1764 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)) lt!75509)))

(declare-fun b!143909 () Bool)

(declare-fun e!93763 () Bool)

(assert (=> b!143909 (= e!93764 e!93763)))

(declare-fun res!68533 () Bool)

(assert (=> b!143909 (=> res!68533 e!93763)))

(assert (=> b!143909 (= res!68533 (= (h!2371 Nil!1764) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(declare-fun b!143910 () Bool)

(assert (=> b!143910 (= e!93763 (contains!925 (t!6388 Nil!1764) (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355)))))

(assert (= (and d!45977 res!68534) b!143909))

(assert (= (and b!143909 (not res!68533)) b!143910))

(declare-fun m!173841 () Bool)

(assert (=> d!45977 m!173841))

(assert (=> d!45977 m!173141))

(declare-fun m!173843 () Bool)

(assert (=> d!45977 m!173843))

(assert (=> b!143910 m!173141))

(declare-fun m!173845 () Bool)

(assert (=> b!143910 m!173845))

(assert (=> b!143558 d!45977))

(declare-fun d!45979 () Bool)

(assert (=> d!45979 (= (apply!121 lt!75226 lt!75217) (get!1544 (getValueByKey!176 (toList!891 lt!75226) lt!75217)))))

(declare-fun bs!6085 () Bool)

(assert (= bs!6085 d!45979))

(declare-fun m!173847 () Bool)

(assert (=> bs!6085 m!173847))

(assert (=> bs!6085 m!173847))

(declare-fun m!173849 () Bool)

(assert (=> bs!6085 m!173849))

(assert (=> b!143537 d!45979))

(declare-fun d!45981 () Bool)

(assert (=> d!45981 (= (apply!121 (+!175 lt!75207 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75206) (apply!121 lt!75207 lt!75206))))

(declare-fun lt!75512 () Unit!4550)

(declare-fun choose!885 (ListLongMap!1751 (_ BitVec 64) V!3563 (_ BitVec 64)) Unit!4550)

(assert (=> d!45981 (= lt!75512 (choose!885 lt!75207 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75206))))

(declare-fun e!93767 () Bool)

(assert (=> d!45981 e!93767))

(declare-fun res!68537 () Bool)

(assert (=> d!45981 (=> (not res!68537) (not e!93767))))

(assert (=> d!45981 (= res!68537 (contains!924 lt!75207 lt!75206))))

(assert (=> d!45981 (= (addApplyDifferent!97 lt!75207 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75206) lt!75512)))

(declare-fun b!143914 () Bool)

(assert (=> b!143914 (= e!93767 (not (= lt!75206 lt!75220)))))

(assert (= (and d!45981 res!68537) b!143914))

(assert (=> d!45981 m!173321))

(declare-fun m!173851 () Bool)

(assert (=> d!45981 m!173851))

(declare-fun m!173853 () Bool)

(assert (=> d!45981 m!173853))

(assert (=> d!45981 m!173307))

(assert (=> d!45981 m!173317))

(assert (=> d!45981 m!173307))

(assert (=> b!143537 d!45981))

(declare-fun d!45983 () Bool)

(assert (=> d!45983 (= (apply!121 lt!75213 lt!75211) (get!1544 (getValueByKey!176 (toList!891 lt!75213) lt!75211)))))

(declare-fun bs!6086 () Bool)

(assert (= bs!6086 d!45983))

(declare-fun m!173855 () Bool)

(assert (=> bs!6086 m!173855))

(assert (=> bs!6086 m!173855))

(declare-fun m!173857 () Bool)

(assert (=> bs!6086 m!173857))

(assert (=> b!143537 d!45983))

(declare-fun d!45985 () Bool)

(declare-fun e!93768 () Bool)

(assert (=> d!45985 e!93768))

(declare-fun res!68538 () Bool)

(assert (=> d!45985 (=> (not res!68538) (not e!93768))))

(declare-fun lt!75514 () ListLongMap!1751)

(assert (=> d!45985 (= res!68538 (contains!924 lt!75514 (_1!1355 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(declare-fun lt!75513 () List!1768)

(assert (=> d!45985 (= lt!75514 (ListLongMap!1752 lt!75513))))

(declare-fun lt!75515 () Unit!4550)

(declare-fun lt!75516 () Unit!4550)

(assert (=> d!45985 (= lt!75515 lt!75516)))

(assert (=> d!45985 (= (getValueByKey!176 lt!75513 (_1!1355 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45985 (= lt!75516 (lemmaContainsTupThenGetReturnValue!92 lt!75513 (_1!1355 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45985 (= lt!75513 (insertStrictlySorted!94 (toList!891 lt!75226) (_1!1355 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45985 (= (+!175 lt!75226 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75514)))

(declare-fun b!143915 () Bool)

(declare-fun res!68539 () Bool)

(assert (=> b!143915 (=> (not res!68539) (not e!93768))))

(assert (=> b!143915 (= res!68539 (= (getValueByKey!176 (toList!891 lt!75514) (_1!1355 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))))

(declare-fun b!143916 () Bool)

(assert (=> b!143916 (= e!93768 (contains!926 (toList!891 lt!75514) (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))

(assert (= (and d!45985 res!68538) b!143915))

(assert (= (and b!143915 res!68539) b!143916))

(declare-fun m!173859 () Bool)

(assert (=> d!45985 m!173859))

(declare-fun m!173861 () Bool)

(assert (=> d!45985 m!173861))

(declare-fun m!173863 () Bool)

(assert (=> d!45985 m!173863))

(declare-fun m!173865 () Bool)

(assert (=> d!45985 m!173865))

(declare-fun m!173867 () Bool)

(assert (=> b!143915 m!173867))

(declare-fun m!173869 () Bool)

(assert (=> b!143916 m!173869))

(assert (=> b!143537 d!45985))

(declare-fun d!45987 () Bool)

(declare-fun e!93769 () Bool)

(assert (=> d!45987 e!93769))

(declare-fun res!68540 () Bool)

(assert (=> d!45987 (=> (not res!68540) (not e!93769))))

(declare-fun lt!75518 () ListLongMap!1751)

(assert (=> d!45987 (= res!68540 (contains!924 lt!75518 (_1!1355 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(declare-fun lt!75517 () List!1768)

(assert (=> d!45987 (= lt!75518 (ListLongMap!1752 lt!75517))))

(declare-fun lt!75519 () Unit!4550)

(declare-fun lt!75520 () Unit!4550)

(assert (=> d!45987 (= lt!75519 lt!75520)))

(assert (=> d!45987 (= (getValueByKey!176 lt!75517 (_1!1355 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45987 (= lt!75520 (lemmaContainsTupThenGetReturnValue!92 lt!75517 (_1!1355 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45987 (= lt!75517 (insertStrictlySorted!94 (toList!891 lt!75225) (_1!1355 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45987 (= (+!175 lt!75225 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75518)))

(declare-fun b!143917 () Bool)

(declare-fun res!68541 () Bool)

(assert (=> b!143917 (=> (not res!68541) (not e!93769))))

(assert (=> b!143917 (= res!68541 (= (getValueByKey!176 (toList!891 lt!75518) (_1!1355 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))))))))

(declare-fun b!143918 () Bool)

(assert (=> b!143918 (= e!93769 (contains!926 (toList!891 lt!75518) (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))))))

(assert (= (and d!45987 res!68540) b!143917))

(assert (= (and b!143917 res!68541) b!143918))

(declare-fun m!173871 () Bool)

(assert (=> d!45987 m!173871))

(declare-fun m!173873 () Bool)

(assert (=> d!45987 m!173873))

(declare-fun m!173875 () Bool)

(assert (=> d!45987 m!173875))

(declare-fun m!173877 () Bool)

(assert (=> d!45987 m!173877))

(declare-fun m!173879 () Bool)

(assert (=> b!143917 m!173879))

(declare-fun m!173881 () Bool)

(assert (=> b!143918 m!173881))

(assert (=> b!143537 d!45987))

(declare-fun d!45989 () Bool)

(declare-fun e!93771 () Bool)

(assert (=> d!45989 e!93771))

(declare-fun res!68542 () Bool)

(assert (=> d!45989 (=> res!68542 e!93771)))

(declare-fun lt!75522 () Bool)

(assert (=> d!45989 (= res!68542 (not lt!75522))))

(declare-fun lt!75521 () Bool)

(assert (=> d!45989 (= lt!75522 lt!75521)))

(declare-fun lt!75524 () Unit!4550)

(declare-fun e!93770 () Unit!4550)

(assert (=> d!45989 (= lt!75524 e!93770)))

(declare-fun c!27282 () Bool)

(assert (=> d!45989 (= c!27282 lt!75521)))

(assert (=> d!45989 (= lt!75521 (containsKey!180 (toList!891 (+!175 lt!75225 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))) lt!75205))))

(assert (=> d!45989 (= (contains!924 (+!175 lt!75225 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75205) lt!75522)))

(declare-fun b!143919 () Bool)

(declare-fun lt!75523 () Unit!4550)

(assert (=> b!143919 (= e!93770 lt!75523)))

(assert (=> b!143919 (= lt!75523 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 (toList!891 (+!175 lt!75225 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))) lt!75205))))

(assert (=> b!143919 (isDefined!130 (getValueByKey!176 (toList!891 (+!175 lt!75225 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))) lt!75205))))

(declare-fun b!143920 () Bool)

(declare-fun Unit!4570 () Unit!4550)

(assert (=> b!143920 (= e!93770 Unit!4570)))

(declare-fun b!143921 () Bool)

(assert (=> b!143921 (= e!93771 (isDefined!130 (getValueByKey!176 (toList!891 (+!175 lt!75225 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))) lt!75205)))))

(assert (= (and d!45989 c!27282) b!143919))

(assert (= (and d!45989 (not c!27282)) b!143920))

(assert (= (and d!45989 (not res!68542)) b!143921))

(declare-fun m!173883 () Bool)

(assert (=> d!45989 m!173883))

(declare-fun m!173885 () Bool)

(assert (=> b!143919 m!173885))

(declare-fun m!173887 () Bool)

(assert (=> b!143919 m!173887))

(assert (=> b!143919 m!173887))

(declare-fun m!173889 () Bool)

(assert (=> b!143919 m!173889))

(assert (=> b!143921 m!173887))

(assert (=> b!143921 m!173887))

(assert (=> b!143921 m!173889))

(assert (=> b!143537 d!45989))

(declare-fun d!45991 () Bool)

(assert (=> d!45991 (= (apply!121 (+!175 lt!75226 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75217) (get!1544 (getValueByKey!176 (toList!891 (+!175 lt!75226 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) lt!75217)))))

(declare-fun bs!6087 () Bool)

(assert (= bs!6087 d!45991))

(declare-fun m!173891 () Bool)

(assert (=> bs!6087 m!173891))

(assert (=> bs!6087 m!173891))

(declare-fun m!173893 () Bool)

(assert (=> bs!6087 m!173893))

(assert (=> b!143537 d!45991))

(declare-fun d!45993 () Bool)

(declare-fun e!93772 () Bool)

(assert (=> d!45993 e!93772))

(declare-fun res!68543 () Bool)

(assert (=> d!45993 (=> (not res!68543) (not e!93772))))

(declare-fun lt!75526 () ListLongMap!1751)

(assert (=> d!45993 (= res!68543 (contains!924 lt!75526 (_1!1355 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(declare-fun lt!75525 () List!1768)

(assert (=> d!45993 (= lt!75526 (ListLongMap!1752 lt!75525))))

(declare-fun lt!75527 () Unit!4550)

(declare-fun lt!75528 () Unit!4550)

(assert (=> d!45993 (= lt!75527 lt!75528)))

(assert (=> d!45993 (= (getValueByKey!176 lt!75525 (_1!1355 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45993 (= lt!75528 (lemmaContainsTupThenGetReturnValue!92 lt!75525 (_1!1355 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45993 (= lt!75525 (insertStrictlySorted!94 (toList!891 lt!75207) (_1!1355 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!45993 (= (+!175 lt!75207 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75526)))

(declare-fun b!143922 () Bool)

(declare-fun res!68544 () Bool)

(assert (=> b!143922 (=> (not res!68544) (not e!93772))))

(assert (=> b!143922 (= res!68544 (= (getValueByKey!176 (toList!891 lt!75526) (_1!1355 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))))

(declare-fun b!143923 () Bool)

(assert (=> b!143923 (= e!93772 (contains!926 (toList!891 lt!75526) (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))))))))

(assert (= (and d!45993 res!68543) b!143922))

(assert (= (and b!143922 res!68544) b!143923))

(declare-fun m!173895 () Bool)

(assert (=> d!45993 m!173895))

(declare-fun m!173897 () Bool)

(assert (=> d!45993 m!173897))

(declare-fun m!173899 () Bool)

(assert (=> d!45993 m!173899))

(declare-fun m!173901 () Bool)

(assert (=> d!45993 m!173901))

(declare-fun m!173903 () Bool)

(assert (=> b!143922 m!173903))

(declare-fun m!173905 () Bool)

(assert (=> b!143923 m!173905))

(assert (=> b!143537 d!45993))

(declare-fun d!45995 () Bool)

(assert (=> d!45995 (= (apply!121 (+!175 lt!75213 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75211) (apply!121 lt!75213 lt!75211))))

(declare-fun lt!75529 () Unit!4550)

(assert (=> d!45995 (= lt!75529 (choose!885 lt!75213 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75211))))

(declare-fun e!93773 () Bool)

(assert (=> d!45995 e!93773))

(declare-fun res!68545 () Bool)

(assert (=> d!45995 (=> (not res!68545) (not e!93773))))

(assert (=> d!45995 (= res!68545 (contains!924 lt!75213 lt!75211))))

(assert (=> d!45995 (= (addApplyDifferent!97 lt!75213 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75211) lt!75529)))

(declare-fun b!143924 () Bool)

(assert (=> b!143924 (= e!93773 (not (= lt!75211 lt!75218)))))

(assert (= (and d!45995 res!68545) b!143924))

(assert (=> d!45995 m!173309))

(declare-fun m!173907 () Bool)

(assert (=> d!45995 m!173907))

(declare-fun m!173909 () Bool)

(assert (=> d!45995 m!173909))

(assert (=> d!45995 m!173319))

(assert (=> d!45995 m!173333))

(assert (=> d!45995 m!173319))

(assert (=> b!143537 d!45995))

(declare-fun d!45997 () Bool)

(assert (=> d!45997 (= (apply!121 (+!175 lt!75207 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75206) (get!1544 (getValueByKey!176 (toList!891 (+!175 lt!75207 (tuple2!2691 lt!75220 (minValue!2811 (v!3296 (underlying!483 thiss!992)))))) lt!75206)))))

(declare-fun bs!6088 () Bool)

(assert (= bs!6088 d!45997))

(declare-fun m!173911 () Bool)

(assert (=> bs!6088 m!173911))

(assert (=> bs!6088 m!173911))

(declare-fun m!173913 () Bool)

(assert (=> bs!6088 m!173913))

(assert (=> b!143537 d!45997))

(declare-fun d!45999 () Bool)

(assert (=> d!45999 (= (apply!121 (+!175 lt!75226 (tuple2!2691 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75217) (apply!121 lt!75226 lt!75217))))

(declare-fun lt!75530 () Unit!4550)

(assert (=> d!45999 (= lt!75530 (choose!885 lt!75226 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75217))))

(declare-fun e!93774 () Bool)

(assert (=> d!45999 e!93774))

(declare-fun res!68546 () Bool)

(assert (=> d!45999 (=> (not res!68546) (not e!93774))))

(assert (=> d!45999 (= res!68546 (contains!924 lt!75226 lt!75217))))

(assert (=> d!45999 (= (addApplyDifferent!97 lt!75226 lt!75221 (minValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75217) lt!75530)))

(declare-fun b!143925 () Bool)

(assert (=> b!143925 (= e!93774 (not (= lt!75217 lt!75221)))))

(assert (= (and d!45999 res!68546) b!143925))

(assert (=> d!45999 m!173331))

(declare-fun m!173915 () Bool)

(assert (=> d!45999 m!173915))

(declare-fun m!173917 () Bool)

(assert (=> d!45999 m!173917))

(assert (=> d!45999 m!173311))

(assert (=> d!45999 m!173313))

(assert (=> d!45999 m!173311))

(assert (=> b!143537 d!45999))

(declare-fun d!46001 () Bool)

(assert (=> d!46001 (= (apply!121 lt!75207 lt!75206) (get!1544 (getValueByKey!176 (toList!891 lt!75207) lt!75206)))))

(declare-fun bs!6089 () Bool)

(assert (= bs!6089 d!46001))

(declare-fun m!173919 () Bool)

(assert (=> bs!6089 m!173919))

(assert (=> bs!6089 m!173919))

(declare-fun m!173921 () Bool)

(assert (=> bs!6089 m!173921))

(assert (=> b!143537 d!46001))

(declare-fun d!46003 () Bool)

(declare-fun e!93775 () Bool)

(assert (=> d!46003 e!93775))

(declare-fun res!68547 () Bool)

(assert (=> d!46003 (=> (not res!68547) (not e!93775))))

(declare-fun lt!75532 () ListLongMap!1751)

(assert (=> d!46003 (= res!68547 (contains!924 lt!75532 (_1!1355 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(declare-fun lt!75531 () List!1768)

(assert (=> d!46003 (= lt!75532 (ListLongMap!1752 lt!75531))))

(declare-fun lt!75533 () Unit!4550)

(declare-fun lt!75534 () Unit!4550)

(assert (=> d!46003 (= lt!75533 lt!75534)))

(assert (=> d!46003 (= (getValueByKey!176 lt!75531 (_1!1355 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!46003 (= lt!75534 (lemmaContainsTupThenGetReturnValue!92 lt!75531 (_1!1355 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!46003 (= lt!75531 (insertStrictlySorted!94 (toList!891 lt!75213) (_1!1355 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) (_2!1355 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))))))

(assert (=> d!46003 (= (+!175 lt!75213 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75532)))

(declare-fun b!143926 () Bool)

(declare-fun res!68548 () Bool)

(assert (=> b!143926 (=> (not res!68548) (not e!93775))))

(assert (=> b!143926 (= res!68548 (= (getValueByKey!176 (toList!891 lt!75532) (_1!1355 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))) (Some!181 (_2!1355 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))))))))

(declare-fun b!143927 () Bool)

(assert (=> b!143927 (= e!93775 (contains!926 (toList!891 lt!75532) (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))))))

(assert (= (and d!46003 res!68547) b!143926))

(assert (= (and b!143926 res!68548) b!143927))

(declare-fun m!173923 () Bool)

(assert (=> d!46003 m!173923))

(declare-fun m!173925 () Bool)

(assert (=> d!46003 m!173925))

(declare-fun m!173927 () Bool)

(assert (=> d!46003 m!173927))

(declare-fun m!173929 () Bool)

(assert (=> d!46003 m!173929))

(declare-fun m!173931 () Bool)

(assert (=> b!143926 m!173931))

(declare-fun m!173933 () Bool)

(assert (=> b!143927 m!173933))

(assert (=> b!143537 d!46003))

(assert (=> b!143537 d!45913))

(declare-fun d!46005 () Bool)

(assert (=> d!46005 (contains!924 (+!175 lt!75225 (tuple2!2691 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75205)))

(declare-fun lt!75537 () Unit!4550)

(declare-fun choose!886 (ListLongMap!1751 (_ BitVec 64) V!3563 (_ BitVec 64)) Unit!4550)

(assert (=> d!46005 (= lt!75537 (choose!886 lt!75225 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75205))))

(assert (=> d!46005 (contains!924 lt!75225 lt!75205)))

(assert (=> d!46005 (= (addStillContains!97 lt!75225 lt!75224 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))) lt!75205) lt!75537)))

(declare-fun bs!6090 () Bool)

(assert (= bs!6090 d!46005))

(assert (=> bs!6090 m!173323))

(assert (=> bs!6090 m!173323))

(assert (=> bs!6090 m!173325))

(declare-fun m!173935 () Bool)

(assert (=> bs!6090 m!173935))

(declare-fun m!173937 () Bool)

(assert (=> bs!6090 m!173937))

(assert (=> b!143537 d!46005))

(declare-fun d!46007 () Bool)

(assert (=> d!46007 (= (apply!121 (+!175 lt!75213 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992))))) lt!75211) (get!1544 (getValueByKey!176 (toList!891 (+!175 lt!75213 (tuple2!2691 lt!75218 (zeroValue!2811 (v!3296 (underlying!483 thiss!992)))))) lt!75211)))))

(declare-fun bs!6091 () Bool)

(assert (= bs!6091 d!46007))

(declare-fun m!173939 () Bool)

(assert (=> bs!6091 m!173939))

(assert (=> bs!6091 m!173939))

(declare-fun m!173941 () Bool)

(assert (=> bs!6091 m!173941))

(assert (=> b!143537 d!46007))

(assert (=> bm!15882 d!45863))

(declare-fun d!46009 () Bool)

(declare-fun res!68549 () Bool)

(declare-fun e!93776 () Bool)

(assert (=> d!46009 (=> res!68549 e!93776)))

(assert (=> d!46009 (= res!68549 ((_ is Nil!1764) (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))))))

(assert (=> d!46009 (= (noDuplicate!52 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))) e!93776)))

(declare-fun b!143929 () Bool)

(declare-fun e!93777 () Bool)

(assert (=> b!143929 (= e!93776 e!93777)))

(declare-fun res!68550 () Bool)

(assert (=> b!143929 (=> (not res!68550) (not e!93777))))

(assert (=> b!143929 (= res!68550 (not (contains!925 (t!6388 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))) (h!2371 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764))))))))

(declare-fun b!143930 () Bool)

(assert (=> b!143930 (= e!93777 (noDuplicate!52 (t!6388 (t!6388 (Cons!1763 (select (arr!2320 (_keys!4726 (v!3296 (underlying!483 thiss!992)))) from!355) Nil!1764)))))))

(assert (= (and d!46009 (not res!68549)) b!143929))

(assert (= (and b!143929 res!68550) b!143930))

(declare-fun m!173943 () Bool)

(assert (=> b!143929 m!173943))

(declare-fun m!173945 () Bool)

(assert (=> b!143930 m!173945))

(assert (=> b!143342 d!46009))

(assert (=> bm!15883 d!45955))

(declare-fun mapNonEmpty!4873 () Bool)

(declare-fun mapRes!4873 () Bool)

(declare-fun tp!11623 () Bool)

(declare-fun e!93779 () Bool)

(assert (=> mapNonEmpty!4873 (= mapRes!4873 (and tp!11623 e!93779))))

(declare-fun mapKey!4873 () (_ BitVec 32))

(declare-fun mapValue!4873 () ValueCell!1125)

(declare-fun mapRest!4873 () (Array (_ BitVec 32) ValueCell!1125))

(assert (=> mapNonEmpty!4873 (= mapRest!4872 (store mapRest!4873 mapKey!4873 mapValue!4873))))

(declare-fun b!143932 () Bool)

(declare-fun e!93778 () Bool)

(assert (=> b!143932 (= e!93778 tp_is_empty!2937)))

(declare-fun mapIsEmpty!4873 () Bool)

(assert (=> mapIsEmpty!4873 mapRes!4873))

(declare-fun condMapEmpty!4873 () Bool)

(declare-fun mapDefault!4873 () ValueCell!1125)

(assert (=> mapNonEmpty!4872 (= condMapEmpty!4873 (= mapRest!4872 ((as const (Array (_ BitVec 32) ValueCell!1125)) mapDefault!4873)))))

(assert (=> mapNonEmpty!4872 (= tp!11622 (and e!93778 mapRes!4873))))

(declare-fun b!143931 () Bool)

(assert (=> b!143931 (= e!93779 tp_is_empty!2937)))

(assert (= (and mapNonEmpty!4872 condMapEmpty!4873) mapIsEmpty!4873))

(assert (= (and mapNonEmpty!4872 (not condMapEmpty!4873)) mapNonEmpty!4873))

(assert (= (and mapNonEmpty!4873 ((_ is ValueCellFull!1125) mapValue!4873)) b!143931))

(assert (= (and mapNonEmpty!4872 ((_ is ValueCellFull!1125) mapDefault!4873)) b!143932))

(declare-fun m!173947 () Bool)

(assert (=> mapNonEmpty!4873 m!173947))

(declare-fun mapNonEmpty!4874 () Bool)

(declare-fun mapRes!4874 () Bool)

(declare-fun tp!11624 () Bool)

(declare-fun e!93781 () Bool)

(assert (=> mapNonEmpty!4874 (= mapRes!4874 (and tp!11624 e!93781))))

(declare-fun mapKey!4874 () (_ BitVec 32))

(declare-fun mapValue!4874 () ValueCell!1125)

(declare-fun mapRest!4874 () (Array (_ BitVec 32) ValueCell!1125))

(assert (=> mapNonEmpty!4874 (= mapRest!4871 (store mapRest!4874 mapKey!4874 mapValue!4874))))

(declare-fun b!143934 () Bool)

(declare-fun e!93780 () Bool)

(assert (=> b!143934 (= e!93780 tp_is_empty!2937)))

(declare-fun mapIsEmpty!4874 () Bool)

(assert (=> mapIsEmpty!4874 mapRes!4874))

(declare-fun condMapEmpty!4874 () Bool)

(declare-fun mapDefault!4874 () ValueCell!1125)

(assert (=> mapNonEmpty!4871 (= condMapEmpty!4874 (= mapRest!4871 ((as const (Array (_ BitVec 32) ValueCell!1125)) mapDefault!4874)))))

(assert (=> mapNonEmpty!4871 (= tp!11621 (and e!93780 mapRes!4874))))

(declare-fun b!143933 () Bool)

(assert (=> b!143933 (= e!93781 tp_is_empty!2937)))

(assert (= (and mapNonEmpty!4871 condMapEmpty!4874) mapIsEmpty!4874))

(assert (= (and mapNonEmpty!4871 (not condMapEmpty!4874)) mapNonEmpty!4874))

(assert (= (and mapNonEmpty!4874 ((_ is ValueCellFull!1125) mapValue!4874)) b!143933))

(assert (= (and mapNonEmpty!4871 ((_ is ValueCellFull!1125) mapDefault!4874)) b!143934))

(declare-fun m!173949 () Bool)

(assert (=> mapNonEmpty!4874 m!173949))

(declare-fun b_lambda!6487 () Bool)

(assert (= b_lambda!6481 (or (and b!143264 b_free!3041) (and b!143263 b_free!3043 (= (defaultEntry!2963 newMap!16) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))))) b_lambda!6487)))

(declare-fun b_lambda!6489 () Bool)

(assert (= b_lambda!6485 (or (and b!143264 b_free!3041 (= (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) (defaultEntry!2963 newMap!16))) (and b!143263 b_free!3043) b_lambda!6489)))

(declare-fun b_lambda!6491 () Bool)

(assert (= b_lambda!6479 (or (and b!143264 b_free!3041 (= (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) (defaultEntry!2963 newMap!16))) (and b!143263 b_free!3043) b_lambda!6491)))

(declare-fun b_lambda!6493 () Bool)

(assert (= b_lambda!6483 (or (and b!143264 b_free!3041) (and b!143263 b_free!3043 (= (defaultEntry!2963 newMap!16) (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))))) b_lambda!6493)))

(declare-fun b_lambda!6495 () Bool)

(assert (= b_lambda!6477 (or (and b!143264 b_free!3041 (= (defaultEntry!2963 (v!3296 (underlying!483 thiss!992))) (defaultEntry!2963 newMap!16))) (and b!143263 b_free!3043) b_lambda!6495)))

(check-sat (not d!45905) (not d!45913) (not d!45891) (not b!143921) (not b!143748) (not b!143596) (not b!143771) (not d!45997) (not b!143852) (not b!143898) (not b_lambda!6487) (not b!143907) (not d!45929) (not b!143706) (not b!143713) (not d!46003) (not d!45939) (not bm!15920) (not b!143653) (not b!143678) (not d!45889) (not b!143618) (not b!143910) (not b!143915) (not b_lambda!6493) (not b!143741) (not b!143611) (not d!45985) (not b!143658) (not b!143807) (not d!45927) (not b!143851) (not b!143660) (not b!143655) (not b!143590) (not bm!15925) (not b!143716) (not bm!15942) (not d!45903) (not b!143710) (not b!143757) (not b!143609) (not b!143742) (not d!45935) (not b!143930) (not b!143916) (not d!45885) (not b_next!3043) (not bm!15967) (not d!45945) (not d!45979) tp_is_empty!2937 b_and!8987 (not b!143810) (not bm!15926) (not d!45977) (not d!45975) (not d!45919) (not b!143622) (not bm!15938) (not b!143747) (not b!143623) (not b!143616) (not b_lambda!6489) (not b!143654) (not b!143703) (not bm!15927) (not bm!15949) (not d!45999) (not b!143902) (not b!143715) (not b!143589) (not b!143736) (not b!143908) (not d!45989) (not b!143899) (not b!143823) (not d!45991) (not d!45995) (not b!143919) (not b!143759) (not b!143775) (not bm!15937) (not b!143617) (not b!143893) (not b!143743) (not b!143712) (not b!143773) (not bm!15944) (not b!143758) (not d!45947) (not d!45941) (not b!143603) (not b!143906) (not b!143665) (not d!46005) (not b_lambda!6491) (not b!143755) (not b!143761) (not b!143797) (not d!45987) (not b!143610) (not b!143723) (not bm!15946) (not b!143657) (not d!46007) (not b!143630) (not b!143640) (not b!143918) b_and!8985 (not b!143805) (not b!143854) (not d!45923) (not d!45971) (not b!143732) (not bm!15954) (not b!143707) (not b_lambda!6495) (not b!143753) (not bm!15918) (not b!143651) (not bm!15934) (not d!45959) (not b!143722) (not b!143709) (not b!143922) (not b!143628) (not d!45881) (not b!143766) (not d!45893) (not d!45983) (not b!143917) (not b!143721) (not bm!15941) (not d!46001) (not b!143718) (not b!143675) (not d!45961) (not bm!15922) (not b!143763) (not mapNonEmpty!4873) (not b!143637) (not b!143776) (not b!143717) (not d!45883) (not b!143927) (not b!143705) (not b!143601) (not d!45973) (not b!143824) (not bm!15966) (not b!143762) (not b!143778) (not d!45917) (not b!143584) (not b!143774) (not d!45965) (not d!45899) (not b!143929) (not bm!15955) (not bm!15943) (not bm!15919) (not d!45901) (not bm!15929) (not b_lambda!6471) (not b!143780) (not d!45963) (not b_lambda!6475) (not d!45981) (not b!143804) (not mapNonEmpty!4874) (not d!45967) (not b!143591) (not d!45955) (not b!143813) (not bm!15965) (not d!45949) (not b!143892) (not b!143926) (not d!45879) (not b_next!3041) (not b!143901) (not d!45993) (not b!143923) (not d!45887) (not b!143595))
(check-sat b_and!8985 b_and!8987 (not b_next!3041) (not b_next!3043))
