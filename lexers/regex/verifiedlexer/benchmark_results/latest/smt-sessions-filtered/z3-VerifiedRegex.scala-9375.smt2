; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497392 () Bool)

(assert start!497392)

(declare-fun b!4811210 () Bool)

(declare-fun b_free!130179 () Bool)

(declare-fun b_next!130969 () Bool)

(assert (=> b!4811210 (= b_free!130179 (not b_next!130969))))

(declare-fun tp!1360780 () Bool)

(declare-fun b_and!341971 () Bool)

(assert (=> b!4811210 (= tp!1360780 b_and!341971)))

(declare-fun b!4811211 () Bool)

(declare-fun b_free!130181 () Bool)

(declare-fun b_next!130971 () Bool)

(assert (=> b!4811211 (= b_free!130181 (not b_next!130971))))

(declare-fun tp!1360778 () Bool)

(declare-fun b_and!341973 () Bool)

(assert (=> b!4811211 (= tp!1360778 b_and!341973)))

(declare-fun b!4811206 () Bool)

(declare-fun e!3005606 () Bool)

(declare-fun e!3005600 () Bool)

(assert (=> b!4811206 (= e!3005606 e!3005600)))

(declare-fun b!4811207 () Bool)

(declare-fun e!3005604 () Bool)

(declare-fun tp!1360781 () Bool)

(declare-fun mapRes!22351 () Bool)

(assert (=> b!4811207 (= e!3005604 (and tp!1360781 mapRes!22351))))

(declare-fun condMapEmpty!22351 () Bool)

(declare-datatypes ((K!16164 0))(
  ( (K!16165 (val!21237 Int)) )
))
(declare-datatypes ((array!18612 0))(
  ( (array!18613 (arr!8303 (Array (_ BitVec 32) (_ BitVec 64))) (size!36549 (_ BitVec 32))) )
))
(declare-datatypes ((V!16410 0))(
  ( (V!16411 (val!21238 Int)) )
))
(declare-datatypes ((tuple2!57418 0))(
  ( (tuple2!57419 (_1!32003 K!16164) (_2!32003 V!16410)) )
))
(declare-datatypes ((List!54671 0))(
  ( (Nil!54547) (Cons!54547 (h!60979 tuple2!57418) (t!362153 List!54671)) )
))
(declare-datatypes ((array!18614 0))(
  ( (array!18615 (arr!8304 (Array (_ BitVec 32) List!54671)) (size!36550 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10118 0))(
  ( (LongMapFixedSize!10119 (defaultEntry!5481 Int) (mask!15069 (_ BitVec 32)) (extraKeys!5339 (_ BitVec 32)) (zeroValue!5352 List!54671) (minValue!5352 List!54671) (_size!10143 (_ BitVec 32)) (_keys!5408 array!18612) (_values!5377 array!18614) (_vacant!5124 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20001 0))(
  ( (Cell!20002 (v!48861 LongMapFixedSize!10118)) )
))
(declare-datatypes ((MutLongMap!5059 0))(
  ( (LongMap!5059 (underlying!10325 Cell!20001)) (MutLongMapExt!5058 (__x!33275 Int)) )
))
(declare-datatypes ((Hashable!7070 0))(
  ( (HashableExt!7069 (__x!33276 Int)) )
))
(declare-datatypes ((Cell!20003 0))(
  ( (Cell!20004 (v!48862 MutLongMap!5059)) )
))
(declare-datatypes ((MutableMap!4943 0))(
  ( (MutableMapExt!4942 (__x!33277 Int)) (HashMap!4943 (underlying!10326 Cell!20003) (hashF!13345 Hashable!7070) (_size!10144 (_ BitVec 32)) (defaultValue!5114 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4943)

(declare-fun mapDefault!22351 () List!54671)

(assert (=> b!4811207 (= condMapEmpty!22351 (= (arr!8304 (_values!5377 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54671)) mapDefault!22351)))))

(declare-fun mapNonEmpty!22351 () Bool)

(declare-fun tp!1360782 () Bool)

(declare-fun tp!1360779 () Bool)

(assert (=> mapNonEmpty!22351 (= mapRes!22351 (and tp!1360782 tp!1360779))))

(declare-fun mapValue!22351 () List!54671)

(declare-fun mapKey!22351 () (_ BitVec 32))

(declare-fun mapRest!22351 () (Array (_ BitVec 32) List!54671))

(assert (=> mapNonEmpty!22351 (= (arr!8304 (_values!5377 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))))) (store mapRest!22351 mapKey!22351 mapValue!22351))))

(declare-fun b!4811208 () Bool)

(declare-fun e!3005607 () Bool)

(declare-datatypes ((tuple2!57420 0))(
  ( (tuple2!57421 (_1!32004 (_ BitVec 64)) (_2!32004 List!54671)) )
))
(declare-datatypes ((List!54672 0))(
  ( (Nil!54548) (Cons!54548 (h!60980 tuple2!57420) (t!362154 List!54672)) )
))
(declare-datatypes ((ListLongMap!5611 0))(
  ( (ListLongMap!5612 (toList!7147 List!54672)) )
))
(declare-fun lt!1962950 () ListLongMap!5611)

(declare-fun isStrictlySorted!931 (List!54672) Bool)

(assert (=> b!4811208 (= e!3005607 (not (isStrictlySorted!931 (toList!7147 lt!1962950))))))

(declare-fun lt!1962948 () (_ BitVec 64))

(declare-fun containsKey!4154 (List!54672 (_ BitVec 64)) Bool)

(assert (=> b!4811208 (containsKey!4154 (toList!7147 lt!1962950) lt!1962948)))

(declare-datatypes ((Unit!141568 0))(
  ( (Unit!141569) )
))
(declare-fun lt!1962949 () Unit!141568)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!274 (List!54672 (_ BitVec 64)) Unit!141568)

(assert (=> b!4811208 (= lt!1962949 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!274 (toList!7147 lt!1962950) lt!1962948))))

(declare-fun b!4811209 () Bool)

(declare-fun e!3005609 () Bool)

(assert (=> b!4811209 (= e!3005609 e!3005607)))

(declare-fun res!2046508 () Bool)

(assert (=> b!4811209 (=> (not res!2046508) (not e!3005607))))

(declare-fun contains!18271 (List!54672 tuple2!57420) Bool)

(declare-fun apply!13160 (MutLongMap!5059 (_ BitVec 64)) List!54671)

(assert (=> b!4811209 (= res!2046508 (not (contains!18271 (toList!7147 lt!1962950) (tuple2!57421 lt!1962948 (apply!13160 (v!48862 (underlying!10326 thiss!41921)) lt!1962948)))))))

(declare-fun map!12425 (MutLongMap!5059) ListLongMap!5611)

(assert (=> b!4811209 (= lt!1962950 (map!12425 (v!48862 (underlying!10326 thiss!41921))))))

(declare-fun tp!1360776 () Bool)

(declare-fun tp!1360777 () Bool)

(declare-fun array_inv!5995 (array!18612) Bool)

(declare-fun array_inv!5996 (array!18614) Bool)

(assert (=> b!4811210 (= e!3005600 (and tp!1360780 tp!1360777 tp!1360776 (array_inv!5995 (_keys!5408 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))))) (array_inv!5996 (_values!5377 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))))) e!3005604))))

(declare-fun e!3005605 () Bool)

(declare-fun e!3005608 () Bool)

(assert (=> b!4811211 (= e!3005605 (and e!3005608 tp!1360778))))

(declare-fun res!2046507 () Bool)

(declare-fun e!3005601 () Bool)

(assert (=> start!497392 (=> (not res!2046507) (not e!3005601))))

(get-info :version)

(assert (=> start!497392 (= res!2046507 ((_ is HashMap!4943) thiss!41921))))

(assert (=> start!497392 e!3005601))

(assert (=> start!497392 e!3005605))

(declare-fun tp_is_empty!33995 () Bool)

(assert (=> start!497392 tp_is_empty!33995))

(declare-fun mapIsEmpty!22351 () Bool)

(assert (=> mapIsEmpty!22351 mapRes!22351))

(declare-fun b!4811212 () Bool)

(declare-fun res!2046510 () Bool)

(assert (=> b!4811212 (=> (not res!2046510) (not e!3005601))))

(declare-fun valid!4087 (MutableMap!4943) Bool)

(assert (=> b!4811212 (= res!2046510 (valid!4087 thiss!41921))))

(declare-fun b!4811213 () Bool)

(declare-fun e!3005603 () Bool)

(declare-fun lt!1962947 () MutLongMap!5059)

(assert (=> b!4811213 (= e!3005608 (and e!3005603 ((_ is LongMap!5059) lt!1962947)))))

(assert (=> b!4811213 (= lt!1962947 (v!48862 (underlying!10326 thiss!41921)))))

(declare-fun b!4811214 () Bool)

(assert (=> b!4811214 (= e!3005601 e!3005609)))

(declare-fun res!2046509 () Bool)

(assert (=> b!4811214 (=> (not res!2046509) (not e!3005609))))

(declare-fun contains!18272 (MutLongMap!5059 (_ BitVec 64)) Bool)

(assert (=> b!4811214 (= res!2046509 (contains!18272 (v!48862 (underlying!10326 thiss!41921)) lt!1962948))))

(declare-fun key!1652 () K!16164)

(declare-fun hash!5138 (Hashable!7070 K!16164) (_ BitVec 64))

(assert (=> b!4811214 (= lt!1962948 (hash!5138 (hashF!13345 thiss!41921) key!1652))))

(declare-fun b!4811215 () Bool)

(assert (=> b!4811215 (= e!3005603 e!3005606)))

(assert (= (and start!497392 res!2046507) b!4811212))

(assert (= (and b!4811212 res!2046510) b!4811214))

(assert (= (and b!4811214 res!2046509) b!4811209))

(assert (= (and b!4811209 res!2046508) b!4811208))

(assert (= (and b!4811207 condMapEmpty!22351) mapIsEmpty!22351))

(assert (= (and b!4811207 (not condMapEmpty!22351)) mapNonEmpty!22351))

(assert (= b!4811210 b!4811207))

(assert (= b!4811206 b!4811210))

(assert (= b!4811215 b!4811206))

(assert (= (and b!4811213 ((_ is LongMap!5059) (v!48862 (underlying!10326 thiss!41921)))) b!4811215))

(assert (= b!4811211 b!4811213))

(assert (= (and start!497392 ((_ is HashMap!4943) thiss!41921)) b!4811211))

(declare-fun m!5796956 () Bool)

(assert (=> b!4811208 m!5796956))

(declare-fun m!5796958 () Bool)

(assert (=> b!4811208 m!5796958))

(declare-fun m!5796960 () Bool)

(assert (=> b!4811208 m!5796960))

(declare-fun m!5796962 () Bool)

(assert (=> b!4811212 m!5796962))

(declare-fun m!5796964 () Bool)

(assert (=> b!4811209 m!5796964))

(declare-fun m!5796966 () Bool)

(assert (=> b!4811209 m!5796966))

(declare-fun m!5796968 () Bool)

(assert (=> b!4811209 m!5796968))

(declare-fun m!5796970 () Bool)

(assert (=> mapNonEmpty!22351 m!5796970))

(declare-fun m!5796972 () Bool)

(assert (=> b!4811214 m!5796972))

(declare-fun m!5796974 () Bool)

(assert (=> b!4811214 m!5796974))

(declare-fun m!5796976 () Bool)

(assert (=> b!4811210 m!5796976))

(declare-fun m!5796978 () Bool)

(assert (=> b!4811210 m!5796978))

(check-sat (not mapNonEmpty!22351) tp_is_empty!33995 b_and!341973 (not b!4811214) (not b!4811207) (not b!4811212) (not b_next!130969) (not b!4811208) (not b!4811210) (not b!4811209) b_and!341971 (not b_next!130971))
(check-sat b_and!341971 b_and!341973 (not b_next!130969) (not b_next!130971))
(get-model)

(declare-fun d!1540458 () Bool)

(assert (=> d!1540458 (= (array_inv!5995 (_keys!5408 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))))) (bvsge (size!36549 (_keys!5408 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4811210 d!1540458))

(declare-fun d!1540460 () Bool)

(assert (=> d!1540460 (= (array_inv!5996 (_values!5377 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))))) (bvsge (size!36550 (_values!5377 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4811210 d!1540460))

(declare-fun d!1540462 () Bool)

(declare-fun lt!1962953 () Bool)

(declare-fun contains!18273 (ListLongMap!5611 (_ BitVec 64)) Bool)

(assert (=> d!1540462 (= lt!1962953 (contains!18273 (map!12425 (v!48862 (underlying!10326 thiss!41921))) lt!1962948))))

(declare-fun contains!18274 (LongMapFixedSize!10118 (_ BitVec 64)) Bool)

(assert (=> d!1540462 (= lt!1962953 (contains!18274 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))) lt!1962948))))

(declare-fun valid!4088 (MutLongMap!5059) Bool)

(assert (=> d!1540462 (valid!4088 (v!48862 (underlying!10326 thiss!41921)))))

(assert (=> d!1540462 (= (contains!18272 (v!48862 (underlying!10326 thiss!41921)) lt!1962948) lt!1962953)))

(declare-fun bs!1160119 () Bool)

(assert (= bs!1160119 d!1540462))

(assert (=> bs!1160119 m!5796968))

(assert (=> bs!1160119 m!5796968))

(declare-fun m!5796980 () Bool)

(assert (=> bs!1160119 m!5796980))

(declare-fun m!5796982 () Bool)

(assert (=> bs!1160119 m!5796982))

(declare-fun m!5796984 () Bool)

(assert (=> bs!1160119 m!5796984))

(assert (=> b!4811214 d!1540462))

(declare-fun d!1540464 () Bool)

(declare-fun hash!5139 (Hashable!7070 K!16164) (_ BitVec 64))

(assert (=> d!1540464 (= (hash!5138 (hashF!13345 thiss!41921) key!1652) (hash!5139 (hashF!13345 thiss!41921) key!1652))))

(declare-fun bs!1160120 () Bool)

(assert (= bs!1160120 d!1540464))

(declare-fun m!5796986 () Bool)

(assert (=> bs!1160120 m!5796986))

(assert (=> b!4811214 d!1540464))

(declare-fun lt!1962956 () Bool)

(declare-fun d!1540466 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9777 (List!54672) (InoxSet tuple2!57420))

(assert (=> d!1540466 (= lt!1962956 (select (content!9777 (toList!7147 lt!1962950)) (tuple2!57421 lt!1962948 (apply!13160 (v!48862 (underlying!10326 thiss!41921)) lt!1962948))))))

(declare-fun e!3005615 () Bool)

(assert (=> d!1540466 (= lt!1962956 e!3005615)))

(declare-fun res!2046515 () Bool)

(assert (=> d!1540466 (=> (not res!2046515) (not e!3005615))))

(assert (=> d!1540466 (= res!2046515 ((_ is Cons!54548) (toList!7147 lt!1962950)))))

(assert (=> d!1540466 (= (contains!18271 (toList!7147 lt!1962950) (tuple2!57421 lt!1962948 (apply!13160 (v!48862 (underlying!10326 thiss!41921)) lt!1962948))) lt!1962956)))

(declare-fun b!4811220 () Bool)

(declare-fun e!3005614 () Bool)

(assert (=> b!4811220 (= e!3005615 e!3005614)))

(declare-fun res!2046516 () Bool)

(assert (=> b!4811220 (=> res!2046516 e!3005614)))

(assert (=> b!4811220 (= res!2046516 (= (h!60980 (toList!7147 lt!1962950)) (tuple2!57421 lt!1962948 (apply!13160 (v!48862 (underlying!10326 thiss!41921)) lt!1962948))))))

(declare-fun b!4811221 () Bool)

(assert (=> b!4811221 (= e!3005614 (contains!18271 (t!362154 (toList!7147 lt!1962950)) (tuple2!57421 lt!1962948 (apply!13160 (v!48862 (underlying!10326 thiss!41921)) lt!1962948))))))

(assert (= (and d!1540466 res!2046515) b!4811220))

(assert (= (and b!4811220 (not res!2046516)) b!4811221))

(declare-fun m!5796988 () Bool)

(assert (=> d!1540466 m!5796988))

(declare-fun m!5796990 () Bool)

(assert (=> d!1540466 m!5796990))

(declare-fun m!5796992 () Bool)

(assert (=> b!4811221 m!5796992))

(assert (=> b!4811209 d!1540466))

(declare-fun d!1540468 () Bool)

(declare-fun e!3005618 () Bool)

(assert (=> d!1540468 e!3005618))

(declare-fun c!820028 () Bool)

(assert (=> d!1540468 (= c!820028 (contains!18272 (v!48862 (underlying!10326 thiss!41921)) lt!1962948))))

(declare-fun lt!1962959 () List!54671)

(declare-fun apply!13161 (LongMapFixedSize!10118 (_ BitVec 64)) List!54671)

(assert (=> d!1540468 (= lt!1962959 (apply!13161 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))) lt!1962948))))

(assert (=> d!1540468 (valid!4088 (v!48862 (underlying!10326 thiss!41921)))))

(assert (=> d!1540468 (= (apply!13160 (v!48862 (underlying!10326 thiss!41921)) lt!1962948) lt!1962959)))

(declare-fun b!4811226 () Bool)

(declare-datatypes ((Option!13311 0))(
  ( (None!13310) (Some!13310 (v!48864 List!54671)) )
))
(declare-fun get!18662 (Option!13311) List!54671)

(declare-fun getValueByKey!2490 (List!54672 (_ BitVec 64)) Option!13311)

(assert (=> b!4811226 (= e!3005618 (= lt!1962959 (get!18662 (getValueByKey!2490 (toList!7147 (map!12425 (v!48862 (underlying!10326 thiss!41921)))) lt!1962948))))))

(declare-fun b!4811227 () Bool)

(declare-fun dynLambda!22138 (Int (_ BitVec 64)) List!54671)

(assert (=> b!4811227 (= e!3005618 (= lt!1962959 (dynLambda!22138 (defaultEntry!5481 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921))))) lt!1962948)))))

(assert (=> b!4811227 ((_ is LongMap!5059) (v!48862 (underlying!10326 thiss!41921)))))

(assert (= (and d!1540468 c!820028) b!4811226))

(assert (= (and d!1540468 (not c!820028)) b!4811227))

(declare-fun b_lambda!188241 () Bool)

(assert (=> (not b_lambda!188241) (not b!4811227)))

(declare-fun t!362156 () Bool)

(declare-fun tb!257535 () Bool)

(assert (=> (and b!4811210 (= (defaultEntry!5481 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921))))) (defaultEntry!5481 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921)))))) t!362156) tb!257535))

(assert (=> b!4811227 t!362156))

(declare-fun result!319618 () Bool)

(declare-fun b_and!341975 () Bool)

(assert (= b_and!341971 (and (=> t!362156 result!319618) b_and!341975)))

(assert (=> d!1540468 m!5796972))

(declare-fun m!5796994 () Bool)

(assert (=> d!1540468 m!5796994))

(assert (=> d!1540468 m!5796984))

(assert (=> b!4811226 m!5796968))

(declare-fun m!5796996 () Bool)

(assert (=> b!4811226 m!5796996))

(assert (=> b!4811226 m!5796996))

(declare-fun m!5796998 () Bool)

(assert (=> b!4811226 m!5796998))

(declare-fun m!5797000 () Bool)

(assert (=> b!4811227 m!5797000))

(assert (=> b!4811209 d!1540468))

(declare-fun d!1540470 () Bool)

(declare-fun map!12426 (LongMapFixedSize!10118) ListLongMap!5611)

(assert (=> d!1540470 (= (map!12425 (v!48862 (underlying!10326 thiss!41921))) (map!12426 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921))))))))

(declare-fun bs!1160121 () Bool)

(assert (= bs!1160121 d!1540470))

(declare-fun m!5797002 () Bool)

(assert (=> bs!1160121 m!5797002))

(assert (=> b!4811209 d!1540470))

(declare-fun d!1540472 () Bool)

(declare-fun res!2046521 () Bool)

(declare-fun e!3005623 () Bool)

(assert (=> d!1540472 (=> res!2046521 e!3005623)))

(assert (=> d!1540472 (= res!2046521 (or ((_ is Nil!54548) (toList!7147 lt!1962950)) ((_ is Nil!54548) (t!362154 (toList!7147 lt!1962950)))))))

(assert (=> d!1540472 (= (isStrictlySorted!931 (toList!7147 lt!1962950)) e!3005623)))

(declare-fun b!4811232 () Bool)

(declare-fun e!3005624 () Bool)

(assert (=> b!4811232 (= e!3005623 e!3005624)))

(declare-fun res!2046522 () Bool)

(assert (=> b!4811232 (=> (not res!2046522) (not e!3005624))))

(assert (=> b!4811232 (= res!2046522 (bvslt (_1!32004 (h!60980 (toList!7147 lt!1962950))) (_1!32004 (h!60980 (t!362154 (toList!7147 lt!1962950))))))))

(declare-fun b!4811233 () Bool)

(assert (=> b!4811233 (= e!3005624 (isStrictlySorted!931 (t!362154 (toList!7147 lt!1962950))))))

(assert (= (and d!1540472 (not res!2046521)) b!4811232))

(assert (= (and b!4811232 res!2046522) b!4811233))

(declare-fun m!5797004 () Bool)

(assert (=> b!4811233 m!5797004))

(assert (=> b!4811208 d!1540472))

(declare-fun d!1540474 () Bool)

(declare-fun res!2046527 () Bool)

(declare-fun e!3005629 () Bool)

(assert (=> d!1540474 (=> res!2046527 e!3005629)))

(assert (=> d!1540474 (= res!2046527 (and ((_ is Cons!54548) (toList!7147 lt!1962950)) (= (_1!32004 (h!60980 (toList!7147 lt!1962950))) lt!1962948)))))

(assert (=> d!1540474 (= (containsKey!4154 (toList!7147 lt!1962950) lt!1962948) e!3005629)))

(declare-fun b!4811238 () Bool)

(declare-fun e!3005630 () Bool)

(assert (=> b!4811238 (= e!3005629 e!3005630)))

(declare-fun res!2046528 () Bool)

(assert (=> b!4811238 (=> (not res!2046528) (not e!3005630))))

(assert (=> b!4811238 (= res!2046528 (and (or (not ((_ is Cons!54548) (toList!7147 lt!1962950))) (bvsle (_1!32004 (h!60980 (toList!7147 lt!1962950))) lt!1962948)) ((_ is Cons!54548) (toList!7147 lt!1962950)) (bvslt (_1!32004 (h!60980 (toList!7147 lt!1962950))) lt!1962948)))))

(declare-fun b!4811239 () Bool)

(assert (=> b!4811239 (= e!3005630 (containsKey!4154 (t!362154 (toList!7147 lt!1962950)) lt!1962948))))

(assert (= (and d!1540474 (not res!2046527)) b!4811238))

(assert (= (and b!4811238 res!2046528) b!4811239))

(declare-fun m!5797006 () Bool)

(assert (=> b!4811239 m!5797006))

(assert (=> b!4811208 d!1540474))

(declare-fun d!1540476 () Bool)

(assert (=> d!1540476 (containsKey!4154 (toList!7147 lt!1962950) lt!1962948)))

(declare-fun lt!1962962 () Unit!141568)

(declare-fun choose!34860 (List!54672 (_ BitVec 64)) Unit!141568)

(assert (=> d!1540476 (= lt!1962962 (choose!34860 (toList!7147 lt!1962950) lt!1962948))))

(declare-fun e!3005633 () Bool)

(assert (=> d!1540476 e!3005633))

(declare-fun res!2046531 () Bool)

(assert (=> d!1540476 (=> (not res!2046531) (not e!3005633))))

(assert (=> d!1540476 (= res!2046531 (isStrictlySorted!931 (toList!7147 lt!1962950)))))

(assert (=> d!1540476 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!274 (toList!7147 lt!1962950) lt!1962948) lt!1962962)))

(declare-fun b!4811242 () Bool)

(declare-fun isDefined!10449 (Option!13311) Bool)

(assert (=> b!4811242 (= e!3005633 (isDefined!10449 (getValueByKey!2490 (toList!7147 lt!1962950) lt!1962948)))))

(assert (= (and d!1540476 res!2046531) b!4811242))

(assert (=> d!1540476 m!5796958))

(declare-fun m!5797008 () Bool)

(assert (=> d!1540476 m!5797008))

(assert (=> d!1540476 m!5796956))

(declare-fun m!5797010 () Bool)

(assert (=> b!4811242 m!5797010))

(assert (=> b!4811242 m!5797010))

(declare-fun m!5797012 () Bool)

(assert (=> b!4811242 m!5797012))

(assert (=> b!4811208 d!1540476))

(declare-fun d!1540478 () Bool)

(declare-fun res!2046536 () Bool)

(declare-fun e!3005636 () Bool)

(assert (=> d!1540478 (=> (not res!2046536) (not e!3005636))))

(assert (=> d!1540478 (= res!2046536 (valid!4088 (v!48862 (underlying!10326 thiss!41921))))))

(assert (=> d!1540478 (= (valid!4087 thiss!41921) e!3005636)))

(declare-fun b!4811247 () Bool)

(declare-fun res!2046537 () Bool)

(assert (=> b!4811247 (=> (not res!2046537) (not e!3005636))))

(declare-fun lambda!233769 () Int)

(declare-fun forall!12395 (List!54672 Int) Bool)

(assert (=> b!4811247 (= res!2046537 (forall!12395 (toList!7147 (map!12425 (v!48862 (underlying!10326 thiss!41921)))) lambda!233769))))

(declare-fun b!4811248 () Bool)

(declare-fun allKeysSameHashInMap!2410 (ListLongMap!5611 Hashable!7070) Bool)

(assert (=> b!4811248 (= e!3005636 (allKeysSameHashInMap!2410 (map!12425 (v!48862 (underlying!10326 thiss!41921))) (hashF!13345 thiss!41921)))))

(assert (= (and d!1540478 res!2046536) b!4811247))

(assert (= (and b!4811247 res!2046537) b!4811248))

(assert (=> d!1540478 m!5796984))

(assert (=> b!4811247 m!5796968))

(declare-fun m!5797014 () Bool)

(assert (=> b!4811247 m!5797014))

(assert (=> b!4811248 m!5796968))

(assert (=> b!4811248 m!5796968))

(declare-fun m!5797016 () Bool)

(assert (=> b!4811248 m!5797016))

(assert (=> b!4811212 d!1540478))

(declare-fun b!4811253 () Bool)

(declare-fun tp_is_empty!33997 () Bool)

(declare-fun tp!1360785 () Bool)

(declare-fun e!3005639 () Bool)

(assert (=> b!4811253 (= e!3005639 (and tp_is_empty!33995 tp_is_empty!33997 tp!1360785))))

(assert (=> b!4811210 (= tp!1360777 e!3005639)))

(assert (= (and b!4811210 ((_ is Cons!54547) (zeroValue!5352 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921))))))) b!4811253))

(declare-fun e!3005640 () Bool)

(declare-fun b!4811254 () Bool)

(declare-fun tp!1360786 () Bool)

(assert (=> b!4811254 (= e!3005640 (and tp_is_empty!33995 tp_is_empty!33997 tp!1360786))))

(assert (=> b!4811210 (= tp!1360776 e!3005640)))

(assert (= (and b!4811210 ((_ is Cons!54547) (minValue!5352 (v!48861 (underlying!10325 (v!48862 (underlying!10326 thiss!41921))))))) b!4811254))

(declare-fun tp!1360793 () Bool)

(declare-fun e!3005646 () Bool)

(declare-fun b!4811261 () Bool)

(assert (=> b!4811261 (= e!3005646 (and tp_is_empty!33995 tp_is_empty!33997 tp!1360793))))

(declare-fun mapIsEmpty!22354 () Bool)

(declare-fun mapRes!22354 () Bool)

(assert (=> mapIsEmpty!22354 mapRes!22354))

(declare-fun tp!1360795 () Bool)

(declare-fun e!3005645 () Bool)

(declare-fun b!4811262 () Bool)

(assert (=> b!4811262 (= e!3005645 (and tp_is_empty!33995 tp_is_empty!33997 tp!1360795))))

(declare-fun mapNonEmpty!22354 () Bool)

(declare-fun tp!1360794 () Bool)

(assert (=> mapNonEmpty!22354 (= mapRes!22354 (and tp!1360794 e!3005646))))

(declare-fun mapValue!22354 () List!54671)

(declare-fun mapKey!22354 () (_ BitVec 32))

(declare-fun mapRest!22354 () (Array (_ BitVec 32) List!54671))

(assert (=> mapNonEmpty!22354 (= mapRest!22351 (store mapRest!22354 mapKey!22354 mapValue!22354))))

(declare-fun condMapEmpty!22354 () Bool)

(declare-fun mapDefault!22354 () List!54671)

(assert (=> mapNonEmpty!22351 (= condMapEmpty!22354 (= mapRest!22351 ((as const (Array (_ BitVec 32) List!54671)) mapDefault!22354)))))

(assert (=> mapNonEmpty!22351 (= tp!1360782 (and e!3005645 mapRes!22354))))

(assert (= (and mapNonEmpty!22351 condMapEmpty!22354) mapIsEmpty!22354))

(assert (= (and mapNonEmpty!22351 (not condMapEmpty!22354)) mapNonEmpty!22354))

(assert (= (and mapNonEmpty!22354 ((_ is Cons!54547) mapValue!22354)) b!4811261))

(assert (= (and mapNonEmpty!22351 ((_ is Cons!54547) mapDefault!22354)) b!4811262))

(declare-fun m!5797018 () Bool)

(assert (=> mapNonEmpty!22354 m!5797018))

(declare-fun b!4811263 () Bool)

(declare-fun e!3005647 () Bool)

(declare-fun tp!1360796 () Bool)

(assert (=> b!4811263 (= e!3005647 (and tp_is_empty!33995 tp_is_empty!33997 tp!1360796))))

(assert (=> mapNonEmpty!22351 (= tp!1360779 e!3005647)))

(assert (= (and mapNonEmpty!22351 ((_ is Cons!54547) mapValue!22351)) b!4811263))

(declare-fun tp!1360797 () Bool)

(declare-fun e!3005648 () Bool)

(declare-fun b!4811264 () Bool)

(assert (=> b!4811264 (= e!3005648 (and tp_is_empty!33995 tp_is_empty!33997 tp!1360797))))

(assert (=> b!4811207 (= tp!1360781 e!3005648)))

(assert (= (and b!4811207 ((_ is Cons!54547) mapDefault!22351)) b!4811264))

(declare-fun b_lambda!188243 () Bool)

(assert (= b_lambda!188241 (or (and b!4811210 b_free!130179) b_lambda!188243)))

(check-sat (not b!4811239) (not b!4811226) (not b_next!130971) (not d!1540478) (not b!4811262) tp_is_empty!33995 (not mapNonEmpty!22354) (not b!4811253) (not b!4811221) (not b!4811264) (not b!4811261) (not b_lambda!188243) (not d!1540476) tp_is_empty!33997 b_and!341975 (not d!1540468) b_and!341973 (not b!4811254) (not d!1540470) (not d!1540466) (not b!4811247) (not b!4811242) (not d!1540464) (not tb!257535) (not b!4811248) (not d!1540462) (not b!4811233) (not b!4811263) (not b_next!130969))
(check-sat b_and!341975 b_and!341973 (not b_next!130969) (not b_next!130971))
