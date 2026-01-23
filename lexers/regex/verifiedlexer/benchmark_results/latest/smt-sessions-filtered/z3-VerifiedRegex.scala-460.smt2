; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13322 () Bool)

(assert start!13322)

(declare-fun b!128917 () Bool)

(declare-fun b_free!3987 () Bool)

(declare-fun b_next!3987 () Bool)

(assert (=> b!128917 (= b_free!3987 (not b_next!3987))))

(declare-fun tp!70050 () Bool)

(declare-fun b_and!6131 () Bool)

(assert (=> b!128917 (= tp!70050 b_and!6131)))

(declare-fun b!128913 () Bool)

(declare-fun res!59353 () Bool)

(declare-fun e!74226 () Bool)

(assert (=> b!128913 (=> (not res!59353) (not e!74226))))

(declare-datatypes ((V!951 0))(
  ( (V!952 (val!814 Int)) )
))
(declare-datatypes ((array!1677 0))(
  ( (array!1678 (arr!778 (Array (_ BitVec 32) V!951)) (size!1972 (_ BitVec 32))) )
))
(declare-datatypes ((array!1679 0))(
  ( (array!1680 (arr!779 (Array (_ BitVec 32) (_ BitVec 64))) (size!1973 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!894 0))(
  ( (LongMapFixedSize!895 (defaultEntry!791 Int) (mask!1432 (_ BitVec 32)) (extraKeys!693 (_ BitVec 32)) (zeroValue!703 V!951) (minValue!703 V!951) (_size!1012 (_ BitVec 32)) (_keys!738 array!1679) (_values!725 array!1677) (_vacant!508 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1747 0))(
  ( (Cell!1748 (v!13476 LongMapFixedSize!894)) )
))
(declare-datatypes ((MutLongMap!447 0))(
  ( (LongMap!447 (underlying!1078 Cell!1747)) (MutLongMapExt!446 (__x!2246 Int)) )
))
(declare-fun thiss!47465 () MutLongMap!447)

(get-info :version)

(assert (=> b!128913 (= res!59353 (not ((_ is LongMap!447) thiss!47465)))))

(declare-fun b!128914 () Bool)

(declare-fun e!74228 () Bool)

(assert (=> b!128914 (= e!74226 e!74228)))

(declare-fun c!28107 () Bool)

(declare-fun key!7065 () (_ BitVec 64))

(declare-fun contains!309 (MutLongMap!447 (_ BitVec 64)) Bool)

(assert (=> b!128914 (= c!28107 (contains!309 thiss!47465 key!7065))))

(declare-fun lt!38562 () V!951)

(declare-fun apply!292 (MutLongMap!447 (_ BitVec 64)) V!951)

(assert (=> b!128914 (= lt!38562 (apply!292 thiss!47465 key!7065))))

(declare-fun mapIsEmpty!1721 () Bool)

(declare-fun mapRes!1721 () Bool)

(assert (=> mapIsEmpty!1721 mapRes!1721))

(declare-fun b!128915 () Bool)

(declare-fun dynLambda!759 (Int (_ BitVec 64)) V!951)

(declare-fun defaultEntry!792 (MutLongMap!447) Int)

(assert (=> b!128915 (= e!74228 (not (= lt!38562 (dynLambda!759 (defaultEntry!792 thiss!47465) key!7065))))))

(declare-fun b!128916 () Bool)

(declare-fun e!74230 () Bool)

(declare-fun e!74225 () Bool)

(assert (=> b!128916 (= e!74230 e!74225)))

(declare-fun e!74224 () Bool)

(declare-fun e!74227 () Bool)

(declare-fun tp_is_empty!1301 () Bool)

(declare-fun array_inv!563 (array!1679) Bool)

(declare-fun array_inv!564 (array!1677) Bool)

(assert (=> b!128917 (= e!74227 (and tp!70050 tp_is_empty!1301 (array_inv!563 (_keys!738 (v!13476 (underlying!1078 thiss!47465)))) (array_inv!564 (_values!725 (v!13476 (underlying!1078 thiss!47465)))) e!74224))))

(declare-fun res!59352 () Bool)

(assert (=> start!13322 (=> (not res!59352) (not e!74226))))

(declare-fun valid!403 (MutLongMap!447) Bool)

(assert (=> start!13322 (= res!59352 (valid!403 thiss!47465))))

(assert (=> start!13322 e!74226))

(assert (=> start!13322 e!74230))

(assert (=> start!13322 true))

(declare-fun mapNonEmpty!1721 () Bool)

(declare-fun tp!70051 () Bool)

(assert (=> mapNonEmpty!1721 (= mapRes!1721 (and tp!70051 tp_is_empty!1301))))

(declare-fun mapValue!1721 () V!951)

(declare-fun mapRest!1721 () (Array (_ BitVec 32) V!951))

(declare-fun mapKey!1721 () (_ BitVec 32))

(assert (=> mapNonEmpty!1721 (= (arr!778 (_values!725 (v!13476 (underlying!1078 thiss!47465)))) (store mapRest!1721 mapKey!1721 mapValue!1721))))

(declare-fun b!128918 () Bool)

(declare-fun e!74229 () Bool)

(assert (=> b!128918 (= e!74228 e!74229)))

(declare-datatypes ((Option!207 0))(
  ( (None!206) (Some!206 (v!13477 V!951)) )
))
(declare-fun lt!38561 () Option!207)

(declare-datatypes ((tuple2!2418 0))(
  ( (tuple2!2419 (_1!1419 (_ BitVec 64)) (_2!1419 V!951)) )
))
(declare-datatypes ((List!2134 0))(
  ( (Nil!2128) (Cons!2128 (h!7525 tuple2!2418) (t!22720 List!2134)) )
))
(declare-fun getValueByKey!11 (List!2134 (_ BitVec 64)) Option!207)

(declare-datatypes ((ListLongMap!41 0))(
  ( (ListLongMap!42 (toList!292 List!2134)) )
))
(declare-fun abstractMap!28 (MutLongMap!447) ListLongMap!41)

(assert (=> b!128918 (= lt!38561 (getValueByKey!11 (toList!292 (abstractMap!28 thiss!47465)) key!7065))))

(declare-fun res!59351 () Bool)

(declare-fun isDefined!76 (Option!207) Bool)

(assert (=> b!128918 (= res!59351 (not (isDefined!76 lt!38561)))))

(assert (=> b!128918 (=> res!59351 e!74229)))

(declare-fun b!128919 () Bool)

(assert (=> b!128919 (= e!74224 (and tp_is_empty!1301 mapRes!1721))))

(declare-fun condMapEmpty!1721 () Bool)

(declare-fun mapDefault!1721 () V!951)

(assert (=> b!128919 (= condMapEmpty!1721 (= (arr!778 (_values!725 (v!13476 (underlying!1078 thiss!47465)))) ((as const (Array (_ BitVec 32) V!951)) mapDefault!1721)))))

(declare-fun b!128920 () Bool)

(assert (=> b!128920 (= e!74225 e!74227)))

(declare-fun b!128921 () Bool)

(declare-fun get!581 (Option!207) V!951)

(assert (=> b!128921 (= e!74229 (not (= lt!38562 (get!581 lt!38561))))))

(assert (= (and start!13322 res!59352) b!128913))

(assert (= (and b!128913 res!59353) b!128914))

(assert (= (and b!128914 c!28107) b!128918))

(assert (= (and b!128914 (not c!28107)) b!128915))

(assert (= (and b!128918 (not res!59351)) b!128921))

(assert (= (and b!128919 condMapEmpty!1721) mapIsEmpty!1721))

(assert (= (and b!128919 (not condMapEmpty!1721)) mapNonEmpty!1721))

(assert (= b!128917 b!128919))

(assert (= b!128920 b!128917))

(assert (= b!128916 b!128920))

(assert (= (and start!13322 ((_ is LongMap!447) thiss!47465)) b!128916))

(declare-fun b_lambda!1729 () Bool)

(assert (=> (not b_lambda!1729) (not b!128915)))

(declare-fun t!22719 () Bool)

(declare-fun tb!3663 () Bool)

(assert (=> (and b!128917 (= (defaultEntry!791 (v!13476 (underlying!1078 thiss!47465))) (defaultEntry!792 thiss!47465)) t!22719) tb!3663))

(declare-fun result!5548 () Bool)

(assert (=> tb!3663 (= result!5548 tp_is_empty!1301)))

(assert (=> b!128915 t!22719))

(declare-fun b_and!6133 () Bool)

(assert (= b_and!6131 (and (=> t!22719 result!5548) b_and!6133)))

(declare-fun m!113463 () Bool)

(assert (=> b!128921 m!113463))

(declare-fun m!113465 () Bool)

(assert (=> mapNonEmpty!1721 m!113465))

(declare-fun m!113467 () Bool)

(assert (=> b!128917 m!113467))

(declare-fun m!113469 () Bool)

(assert (=> b!128917 m!113469))

(declare-fun m!113471 () Bool)

(assert (=> start!13322 m!113471))

(declare-fun m!113473 () Bool)

(assert (=> b!128918 m!113473))

(declare-fun m!113475 () Bool)

(assert (=> b!128918 m!113475))

(declare-fun m!113477 () Bool)

(assert (=> b!128918 m!113477))

(declare-fun m!113479 () Bool)

(assert (=> b!128914 m!113479))

(declare-fun m!113481 () Bool)

(assert (=> b!128914 m!113481))

(declare-fun m!113483 () Bool)

(assert (=> b!128915 m!113483))

(declare-fun m!113485 () Bool)

(assert (=> b!128915 m!113485))

(check-sat (not b!128918) (not start!13322) (not b!128914) (not b!128917) b_and!6133 (not b_next!3987) tp_is_empty!1301 (not mapNonEmpty!1721) (not b!128921) (not b_lambda!1729) (not b!128915))
(check-sat b_and!6133 (not b_next!3987))
(get-model)

(declare-fun d!30373 () Bool)

(declare-fun c!28112 () Bool)

(assert (=> d!30373 (= c!28112 (and ((_ is Cons!2128) (toList!292 (abstractMap!28 thiss!47465))) (= (_1!1419 (h!7525 (toList!292 (abstractMap!28 thiss!47465)))) key!7065)))))

(declare-fun e!74236 () Option!207)

(assert (=> d!30373 (= (getValueByKey!11 (toList!292 (abstractMap!28 thiss!47465)) key!7065) e!74236)))

(declare-fun b!128933 () Bool)

(declare-fun e!74237 () Option!207)

(assert (=> b!128933 (= e!74236 e!74237)))

(declare-fun c!28113 () Bool)

(assert (=> b!128933 (= c!28113 (and ((_ is Cons!2128) (toList!292 (abstractMap!28 thiss!47465))) (not (= (_1!1419 (h!7525 (toList!292 (abstractMap!28 thiss!47465)))) key!7065))))))

(declare-fun b!128934 () Bool)

(assert (=> b!128934 (= e!74237 (getValueByKey!11 (t!22720 (toList!292 (abstractMap!28 thiss!47465))) key!7065))))

(declare-fun b!128932 () Bool)

(assert (=> b!128932 (= e!74236 (Some!206 (_2!1419 (h!7525 (toList!292 (abstractMap!28 thiss!47465))))))))

(declare-fun b!128935 () Bool)

(assert (=> b!128935 (= e!74237 None!206)))

(assert (= (and d!30373 c!28112) b!128932))

(assert (= (and d!30373 (not c!28112)) b!128933))

(assert (= (and b!128933 c!28113) b!128934))

(assert (= (and b!128933 (not c!28113)) b!128935))

(declare-fun m!113487 () Bool)

(assert (=> b!128934 m!113487))

(assert (=> b!128918 d!30373))

(declare-fun d!30375 () Bool)

(declare-fun c!28116 () Bool)

(assert (=> d!30375 (= c!28116 ((_ is LongMap!447) thiss!47465))))

(declare-fun e!74240 () ListLongMap!41)

(assert (=> d!30375 (= (abstractMap!28 thiss!47465) e!74240)))

(declare-fun b!128940 () Bool)

(declare-fun abstractMap!29 (MutLongMap!447) ListLongMap!41)

(assert (=> b!128940 (= e!74240 (abstractMap!29 thiss!47465))))

(declare-fun b!128941 () Bool)

(declare-fun abstractMap!30 (MutLongMap!447) ListLongMap!41)

(assert (=> b!128941 (= e!74240 (abstractMap!30 thiss!47465))))

(assert (= (and d!30375 c!28116) b!128940))

(assert (= (and d!30375 (not c!28116)) b!128941))

(declare-fun m!113489 () Bool)

(assert (=> b!128940 m!113489))

(declare-fun m!113491 () Bool)

(assert (=> b!128941 m!113491))

(assert (=> b!128918 d!30375))

(declare-fun d!30377 () Bool)

(declare-fun isEmpty!852 (Option!207) Bool)

(assert (=> d!30377 (= (isDefined!76 lt!38561) (not (isEmpty!852 lt!38561)))))

(declare-fun bs!12557 () Bool)

(assert (= bs!12557 d!30377))

(declare-fun m!113493 () Bool)

(assert (=> bs!12557 m!113493))

(assert (=> b!128918 d!30377))

(declare-fun d!30379 () Bool)

(declare-fun lt!38565 () Bool)

(declare-fun contains!310 (ListLongMap!41 (_ BitVec 64)) Bool)

(assert (=> d!30379 (= lt!38565 (contains!310 (abstractMap!28 thiss!47465) key!7065))))

(declare-fun e!74243 () Bool)

(assert (=> d!30379 (= lt!38565 e!74243)))

(declare-fun c!28119 () Bool)

(assert (=> d!30379 (= c!28119 ((_ is LongMap!447) thiss!47465))))

(assert (=> d!30379 (valid!403 thiss!47465)))

(assert (=> d!30379 (= (contains!309 thiss!47465 key!7065) lt!38565)))

(declare-fun b!128946 () Bool)

(declare-fun contains!311 (MutLongMap!447 (_ BitVec 64)) Bool)

(assert (=> b!128946 (= e!74243 (contains!311 thiss!47465 key!7065))))

(declare-fun b!128947 () Bool)

(declare-fun contains!312 (MutLongMap!447 (_ BitVec 64)) Bool)

(assert (=> b!128947 (= e!74243 (contains!312 thiss!47465 key!7065))))

(assert (= (and d!30379 c!28119) b!128946))

(assert (= (and d!30379 (not c!28119)) b!128947))

(assert (=> d!30379 m!113473))

(assert (=> d!30379 m!113473))

(declare-fun m!113495 () Bool)

(assert (=> d!30379 m!113495))

(assert (=> d!30379 m!113471))

(declare-fun m!113497 () Bool)

(assert (=> b!128946 m!113497))

(declare-fun m!113499 () Bool)

(assert (=> b!128947 m!113499))

(assert (=> b!128914 d!30379))

(declare-fun d!30381 () Bool)

(declare-fun e!74249 () Bool)

(assert (=> d!30381 e!74249))

(declare-fun c!28122 () Bool)

(assert (=> d!30381 (= c!28122 (contains!309 thiss!47465 key!7065))))

(declare-fun lt!38568 () V!951)

(declare-fun choose!1649 (MutLongMap!447 (_ BitVec 64)) V!951)

(assert (=> d!30381 (= lt!38568 (choose!1649 thiss!47465 key!7065))))

(assert (=> d!30381 (valid!403 thiss!47465)))

(assert (=> d!30381 (= (apply!292 thiss!47465 key!7065) lt!38568)))

(declare-fun b!128954 () Bool)

(declare-fun e!74248 () Bool)

(assert (=> b!128954 (= e!74249 e!74248)))

(declare-fun res!59356 () Bool)

(assert (=> b!128954 (= res!59356 (isDefined!76 (getValueByKey!11 (toList!292 (abstractMap!28 thiss!47465)) key!7065)))))

(assert (=> b!128954 (=> (not res!59356) (not e!74248))))

(declare-fun b!128956 () Bool)

(assert (=> b!128956 (= e!74248 (= lt!38568 (get!581 (getValueByKey!11 (toList!292 (abstractMap!28 thiss!47465)) key!7065))))))

(declare-fun b!128955 () Bool)

(assert (=> b!128955 (= e!74249 (= lt!38568 (dynLambda!759 (defaultEntry!792 thiss!47465) key!7065)))))

(assert (= (and d!30381 c!28122) b!128954))

(assert (= (and d!30381 (not c!28122)) b!128955))

(assert (= (and b!128954 res!59356) b!128956))

(declare-fun b_lambda!1731 () Bool)

(assert (=> (not b_lambda!1731) (not b!128955)))

(assert (=> b!128955 t!22719))

(declare-fun b_and!6135 () Bool)

(assert (= b_and!6133 (and (=> t!22719 result!5548) b_and!6135)))

(assert (=> d!30381 m!113479))

(declare-fun m!113501 () Bool)

(assert (=> d!30381 m!113501))

(assert (=> d!30381 m!113471))

(assert (=> b!128954 m!113473))

(assert (=> b!128954 m!113475))

(assert (=> b!128954 m!113475))

(declare-fun m!113503 () Bool)

(assert (=> b!128954 m!113503))

(assert (=> b!128956 m!113473))

(assert (=> b!128956 m!113475))

(assert (=> b!128956 m!113475))

(declare-fun m!113505 () Bool)

(assert (=> b!128956 m!113505))

(assert (=> b!128955 m!113483))

(assert (=> b!128955 m!113485))

(assert (=> b!128914 d!30381))

(declare-fun d!30383 () Bool)

(assert (=> d!30383 (= (array_inv!563 (_keys!738 (v!13476 (underlying!1078 thiss!47465)))) (bvsge (size!1973 (_keys!738 (v!13476 (underlying!1078 thiss!47465)))) #b00000000000000000000000000000000))))

(assert (=> b!128917 d!30383))

(declare-fun d!30385 () Bool)

(assert (=> d!30385 (= (array_inv!564 (_values!725 (v!13476 (underlying!1078 thiss!47465)))) (bvsge (size!1972 (_values!725 (v!13476 (underlying!1078 thiss!47465)))) #b00000000000000000000000000000000))))

(assert (=> b!128917 d!30385))

(declare-fun d!30387 () Bool)

(declare-fun c!28125 () Bool)

(assert (=> d!30387 (= c!28125 ((_ is LongMap!447) thiss!47465))))

(declare-fun e!74252 () Bool)

(assert (=> d!30387 (= (valid!403 thiss!47465) e!74252)))

(declare-fun b!128961 () Bool)

(declare-fun valid!404 (MutLongMap!447) Bool)

(assert (=> b!128961 (= e!74252 (valid!404 thiss!47465))))

(declare-fun b!128962 () Bool)

(declare-fun valid!405 (MutLongMap!447) Bool)

(assert (=> b!128962 (= e!74252 (valid!405 thiss!47465))))

(assert (= (and d!30387 c!28125) b!128961))

(assert (= (and d!30387 (not c!28125)) b!128962))

(declare-fun m!113507 () Bool)

(assert (=> b!128961 m!113507))

(declare-fun m!113509 () Bool)

(assert (=> b!128962 m!113509))

(assert (=> start!13322 d!30387))

(declare-fun d!30389 () Bool)

(assert (=> d!30389 (= (get!581 lt!38561) (v!13477 lt!38561))))

(assert (=> b!128921 d!30389))

(declare-fun d!30391 () Bool)

(declare-fun c!28128 () Bool)

(assert (=> d!30391 (= c!28128 ((_ is LongMap!447) thiss!47465))))

(declare-fun e!74255 () Int)

(assert (=> d!30391 (= (defaultEntry!792 thiss!47465) e!74255)))

(declare-fun b!128967 () Bool)

(declare-fun defaultEntry!793 (MutLongMap!447) Int)

(assert (=> b!128967 (= e!74255 (defaultEntry!793 thiss!47465))))

(declare-fun b!128968 () Bool)

(declare-fun defaultEntry!794 (MutLongMap!447) Int)

(assert (=> b!128968 (= e!74255 (defaultEntry!794 thiss!47465))))

(assert (= (and d!30391 c!28128) b!128967))

(assert (= (and d!30391 (not c!28128)) b!128968))

(declare-fun m!113511 () Bool)

(assert (=> b!128967 m!113511))

(declare-fun m!113513 () Bool)

(assert (=> b!128968 m!113513))

(assert (=> b!128915 d!30391))

(declare-fun condMapEmpty!1724 () Bool)

(declare-fun mapDefault!1724 () V!951)

(assert (=> mapNonEmpty!1721 (= condMapEmpty!1724 (= mapRest!1721 ((as const (Array (_ BitVec 32) V!951)) mapDefault!1724)))))

(declare-fun mapRes!1724 () Bool)

(assert (=> mapNonEmpty!1721 (= tp!70051 (and tp_is_empty!1301 mapRes!1724))))

(declare-fun mapIsEmpty!1724 () Bool)

(assert (=> mapIsEmpty!1724 mapRes!1724))

(declare-fun mapNonEmpty!1724 () Bool)

(declare-fun tp!70054 () Bool)

(assert (=> mapNonEmpty!1724 (= mapRes!1724 (and tp!70054 tp_is_empty!1301))))

(declare-fun mapValue!1724 () V!951)

(declare-fun mapKey!1724 () (_ BitVec 32))

(declare-fun mapRest!1724 () (Array (_ BitVec 32) V!951))

(assert (=> mapNonEmpty!1724 (= mapRest!1721 (store mapRest!1724 mapKey!1724 mapValue!1724))))

(assert (= (and mapNonEmpty!1721 condMapEmpty!1724) mapIsEmpty!1724))

(assert (= (and mapNonEmpty!1721 (not condMapEmpty!1724)) mapNonEmpty!1724))

(declare-fun m!113515 () Bool)

(assert (=> mapNonEmpty!1724 m!113515))

(declare-fun b_lambda!1733 () Bool)

(assert (= b_lambda!1729 (or (and b!128917 b_free!3987 (= (defaultEntry!791 (v!13476 (underlying!1078 thiss!47465))) (defaultEntry!792 thiss!47465))) b_lambda!1733)))

(check-sat (not b!128954) (not b!128962) (not b!128961) (not b!128946) (not b_lambda!1733) (not b!128967) (not b!128941) (not b!128955) (not b!128968) (not b!128956) (not d!30379) (not d!30377) (not mapNonEmpty!1724) (not b_next!3987) (not b!128947) tp_is_empty!1301 (not d!30381) (not b!128934) b_and!6135 (not b_lambda!1731) (not b!128940))
(check-sat b_and!6135 (not b_next!3987))
