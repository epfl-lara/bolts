; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3406 () Bool)

(assert start!3406)

(declare-fun b!48570 () Bool)

(declare-fun b_free!1381 () Bool)

(declare-fun b_next!1381 () Bool)

(assert (=> b!48570 (= b_free!1381 (not b_next!1381))))

(declare-fun tp!32762 () Bool)

(declare-fun b_and!1417 () Bool)

(assert (=> b!48570 (= tp!32762 b_and!1417)))

(declare-fun b!48563 () Bool)

(declare-fun b_free!1383 () Bool)

(declare-fun b_next!1383 () Bool)

(assert (=> b!48563 (= b_free!1383 (not b_next!1383))))

(declare-fun tp!32764 () Bool)

(declare-fun b_and!1419 () Bool)

(assert (=> b!48563 (= tp!32764 b_and!1419)))

(declare-fun b!48562 () Bool)

(declare-fun e!28294 () Bool)

(declare-fun e!28299 () Bool)

(declare-datatypes ((K!610 0))(
  ( (K!611 (val!288 Int)) )
))
(declare-datatypes ((V!664 0))(
  ( (V!665 (val!289 Int)) )
))
(declare-datatypes ((tuple2!1094 0))(
  ( (tuple2!1095 (_1!754 K!610) (_2!754 V!664)) )
))
(declare-datatypes ((List!843 0))(
  ( (Nil!837) (Cons!837 (h!6233 tuple2!1094) (t!17040 List!843)) )
))
(declare-datatypes ((array!1038 0))(
  ( (array!1039 (arr!488 (Array (_ BitVec 32) (_ BitVec 64))) (size!837 (_ BitVec 32))) )
))
(declare-datatypes ((array!1040 0))(
  ( (array!1041 (arr!489 (Array (_ BitVec 32) List!843)) (size!838 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!602 0))(
  ( (LongMapFixedSize!603 (defaultEntry!640 Int) (mask!1043 (_ BitVec 32)) (extraKeys!547 (_ BitVec 32)) (zeroValue!557 List!843) (minValue!557 List!843) (_size!735 (_ BitVec 32)) (_keys!592 array!1038) (_values!579 array!1040) (_vacant!362 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1193 0))(
  ( (Cell!1194 (v!12618 LongMapFixedSize!602)) )
))
(declare-datatypes ((MutLongMap!301 0))(
  ( (LongMap!301 (underlying!801 Cell!1193)) (MutLongMapExt!300 (__x!1416 Int)) )
))
(declare-fun lt!6995 () MutLongMap!301)

(get-info :version)

(assert (=> b!48562 (= e!28294 (and e!28299 ((_ is LongMap!301) lt!6995)))))

(declare-datatypes ((Hashable!297 0))(
  ( (HashableExt!296 (__x!1417 Int)) )
))
(declare-datatypes ((Cell!1195 0))(
  ( (Cell!1196 (v!12619 MutLongMap!301)) )
))
(declare-datatypes ((MutableMap!297 0))(
  ( (MutableMapExt!296 (__x!1418 Int)) (HashMap!297 (underlying!802 Cell!1195) (hashF!2166 Hashable!297) (_size!736 (_ BitVec 32)) (defaultValue!446 Int)) )
))
(declare-fun thiss!47822 () MutableMap!297)

(assert (=> b!48562 (= lt!6995 (v!12619 (underlying!802 thiss!47822)))))

(declare-fun e!28297 () Bool)

(assert (=> b!48563 (= e!28297 (and e!28294 tp!32764))))

(declare-fun key!7227 () K!610)

(declare-fun v!11804 () V!664)

(declare-datatypes ((ListMap!73 0))(
  ( (ListMap!74 (toList!191 List!843)) )
))
(declare-fun e!28290 () ListMap!73)

(declare-fun call!3075 () ListMap!73)

(declare-fun b!48564 () Bool)

(declare-fun +!5 (ListMap!73 tuple2!1094) ListMap!73)

(assert (=> b!48564 (= e!28290 (+!5 call!3075 (tuple2!1095 key!7227 v!11804)))))

(declare-fun mapNonEmpty!1180 () Bool)

(declare-fun mapRes!1180 () Bool)

(declare-fun tp!32768 () Bool)

(declare-fun tp!32767 () Bool)

(assert (=> mapNonEmpty!1180 (= mapRes!1180 (and tp!32768 tp!32767))))

(declare-fun mapRest!1180 () (Array (_ BitVec 32) List!843))

(declare-fun mapKey!1180 () (_ BitVec 32))

(declare-fun mapValue!1180 () List!843)

(assert (=> mapNonEmpty!1180 (= (arr!489 (_values!579 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822)))))) (store mapRest!1180 mapKey!1180 mapValue!1180))))

(declare-fun bm!3068 () Bool)

(declare-fun abstractMap!13 (MutableMap!297) ListMap!73)

(assert (=> bm!3068 (= call!3075 (abstractMap!13 thiss!47822))))

(declare-fun b!48565 () Bool)

(declare-fun e!28298 () Bool)

(declare-fun e!28293 () Bool)

(assert (=> b!48565 (= e!28298 e!28293)))

(declare-fun res!32171 () Bool)

(declare-fun e!28300 () Bool)

(assert (=> start!3406 (=> (not res!32171) (not e!28300))))

(declare-fun valid!277 (MutableMap!297) Bool)

(assert (=> start!3406 (= res!32171 (valid!277 thiss!47822))))

(assert (=> start!3406 e!28300))

(assert (=> start!3406 e!28297))

(declare-fun tp_is_empty!487 () Bool)

(assert (=> start!3406 tp_is_empty!487))

(declare-fun tp_is_empty!489 () Bool)

(assert (=> start!3406 tp_is_empty!489))

(declare-fun b!48566 () Bool)

(declare-fun e!28291 () Bool)

(declare-fun e!28295 () Bool)

(assert (=> b!48566 (= e!28291 e!28295)))

(declare-fun c!16333 () Bool)

(declare-datatypes ((tuple2!1096 0))(
  ( (tuple2!1097 (_1!755 Bool) (_2!755 MutableMap!297)) )
))
(declare-fun lt!6996 () tuple2!1096)

(assert (=> b!48566 (= c!16333 (_1!755 lt!6996))))

(declare-fun b!48567 () Bool)

(declare-fun res!32169 () Bool)

(assert (=> b!48567 (=> (not res!32169) (not e!28300))))

(assert (=> b!48567 (= res!32169 ((_ is MutableMapExt!296) thiss!47822))))

(declare-fun b!48568 () Bool)

(assert (=> b!48568 (= e!28299 e!28298)))

(declare-fun b!48569 () Bool)

(declare-fun e!28289 () Bool)

(declare-fun call!3074 () Bool)

(assert (=> b!48569 (= e!28289 (not call!3074))))

(declare-fun e!28296 () Bool)

(declare-fun tp!32766 () Bool)

(declare-fun tp!32763 () Bool)

(declare-fun array_inv!333 (array!1038) Bool)

(declare-fun array_inv!334 (array!1040) Bool)

(assert (=> b!48570 (= e!28293 (and tp!32762 tp!32763 tp!32766 (array_inv!333 (_keys!592 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822)))))) (array_inv!334 (_values!579 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822)))))) e!28296))))

(declare-fun b!48571 () Bool)

(assert (=> b!48571 (= e!28295 (not call!3074))))

(declare-fun b!48572 () Bool)

(assert (=> b!48572 (= e!28295 e!28289)))

(declare-fun lt!6997 () ListMap!73)

(declare-fun call!3073 () ListMap!73)

(assert (=> b!48572 (= lt!6997 call!3073)))

(declare-fun res!32168 () Bool)

(declare-fun contains!38 (ListMap!73 K!610) Bool)

(assert (=> b!48572 (= res!32168 (not (contains!38 lt!6997 key!7227)))))

(assert (=> b!48572 (=> res!32168 e!28289)))

(declare-fun b!48573 () Bool)

(declare-fun tp!32765 () Bool)

(assert (=> b!48573 (= e!28296 (and tp!32765 mapRes!1180))))

(declare-fun condMapEmpty!1180 () Bool)

(declare-fun mapDefault!1180 () List!843)

(assert (=> b!48573 (= condMapEmpty!1180 (= (arr!489 (_values!579 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!843)) mapDefault!1180)))))

(declare-fun b!48574 () Bool)

(assert (=> b!48574 (= e!28290 call!3075)))

(declare-fun bm!3069 () Bool)

(assert (=> bm!3069 (= call!3073 (abstractMap!13 (_2!755 lt!6996)))))

(declare-fun b!48575 () Bool)

(assert (=> b!48575 (= e!28300 e!28291)))

(declare-fun res!32170 () Bool)

(assert (=> b!48575 (=> res!32170 e!28291)))

(assert (=> b!48575 (= res!32170 (not (valid!277 (_2!755 lt!6996))))))

(declare-fun update!35 (MutableMap!297 K!610 V!664) tuple2!1096)

(assert (=> b!48575 (= lt!6996 (update!35 thiss!47822 key!7227 v!11804))))

(declare-fun mapIsEmpty!1180 () Bool)

(assert (=> mapIsEmpty!1180 mapRes!1180))

(declare-fun bm!3070 () Bool)

(declare-fun eq!3 (ListMap!73 ListMap!73) Bool)

(assert (=> bm!3070 (= call!3074 (eq!3 (ite c!16333 lt!6997 call!3073) e!28290))))

(declare-fun c!16334 () Bool)

(assert (=> bm!3070 (= c!16334 c!16333)))

(assert (= (and start!3406 res!32171) b!48567))

(assert (= (and b!48567 res!32169) b!48575))

(assert (= (and b!48575 (not res!32170)) b!48566))

(assert (= (and b!48566 c!16333) b!48572))

(assert (= (and b!48566 (not c!16333)) b!48571))

(assert (= (and b!48572 (not res!32168)) b!48569))

(assert (= (or b!48572 b!48571) bm!3069))

(assert (= (or b!48569 b!48571) bm!3068))

(assert (= (or b!48569 b!48571) bm!3070))

(assert (= (and bm!3070 c!16334) b!48564))

(assert (= (and bm!3070 (not c!16334)) b!48574))

(assert (= (and b!48573 condMapEmpty!1180) mapIsEmpty!1180))

(assert (= (and b!48573 (not condMapEmpty!1180)) mapNonEmpty!1180))

(assert (= b!48570 b!48573))

(assert (= b!48565 b!48570))

(assert (= b!48568 b!48565))

(assert (= (and b!48562 ((_ is LongMap!301) (v!12619 (underlying!802 thiss!47822)))) b!48568))

(assert (= b!48563 b!48562))

(assert (= (and start!3406 ((_ is HashMap!297) thiss!47822)) b!48563))

(declare-fun m!22230 () Bool)

(assert (=> bm!3068 m!22230))

(declare-fun m!22232 () Bool)

(assert (=> b!48570 m!22232))

(declare-fun m!22234 () Bool)

(assert (=> b!48570 m!22234))

(declare-fun m!22236 () Bool)

(assert (=> start!3406 m!22236))

(declare-fun m!22238 () Bool)

(assert (=> bm!3069 m!22238))

(declare-fun m!22240 () Bool)

(assert (=> b!48575 m!22240))

(declare-fun m!22242 () Bool)

(assert (=> b!48575 m!22242))

(declare-fun m!22244 () Bool)

(assert (=> b!48564 m!22244))

(declare-fun m!22246 () Bool)

(assert (=> bm!3070 m!22246))

(declare-fun m!22248 () Bool)

(assert (=> mapNonEmpty!1180 m!22248))

(declare-fun m!22250 () Bool)

(assert (=> b!48572 m!22250))

(check-sat (not b!48575) (not b!48564) (not bm!3070) (not b!48570) (not b!48572) (not bm!3068) b_and!1419 b_and!1417 tp_is_empty!487 (not b_next!1381) (not bm!3069) (not b_next!1383) (not mapNonEmpty!1180) (not start!3406) tp_is_empty!489 (not b!48573))
(check-sat b_and!1417 b_and!1419 (not b_next!1383) (not b_next!1381))
(get-model)

(declare-fun d!5818 () Bool)

(declare-fun c!16337 () Bool)

(assert (=> d!5818 (= c!16337 ((_ is MutableMapExt!296) (_2!755 lt!6996)))))

(declare-fun e!28303 () ListMap!73)

(assert (=> d!5818 (= (abstractMap!13 (_2!755 lt!6996)) e!28303)))

(declare-fun b!48580 () Bool)

(declare-fun abstractMap!14 (MutableMap!297) ListMap!73)

(assert (=> b!48580 (= e!28303 (abstractMap!14 (_2!755 lt!6996)))))

(declare-fun b!48581 () Bool)

(declare-fun abstractMap!15 (MutableMap!297) ListMap!73)

(assert (=> b!48581 (= e!28303 (abstractMap!15 (_2!755 lt!6996)))))

(assert (= (and d!5818 c!16337) b!48580))

(assert (= (and d!5818 (not c!16337)) b!48581))

(declare-fun m!22252 () Bool)

(assert (=> b!48580 m!22252))

(declare-fun m!22254 () Bool)

(assert (=> b!48581 m!22254))

(assert (=> bm!3069 d!5818))

(declare-fun d!5820 () Bool)

(assert (=> d!5820 (= (array_inv!333 (_keys!592 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822)))))) (bvsge (size!837 (_keys!592 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822)))))) #b00000000000000000000000000000000))))

(assert (=> b!48570 d!5820))

(declare-fun d!5822 () Bool)

(assert (=> d!5822 (= (array_inv!334 (_values!579 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822)))))) (bvsge (size!838 (_values!579 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822)))))) #b00000000000000000000000000000000))))

(assert (=> b!48570 d!5822))

(declare-fun d!5824 () Bool)

(declare-fun c!16338 () Bool)

(assert (=> d!5824 (= c!16338 ((_ is MutableMapExt!296) thiss!47822))))

(declare-fun e!28304 () ListMap!73)

(assert (=> d!5824 (= (abstractMap!13 thiss!47822) e!28304)))

(declare-fun b!48582 () Bool)

(assert (=> b!48582 (= e!28304 (abstractMap!14 thiss!47822))))

(declare-fun b!48583 () Bool)

(assert (=> b!48583 (= e!28304 (abstractMap!15 thiss!47822))))

(assert (= (and d!5824 c!16338) b!48582))

(assert (= (and d!5824 (not c!16338)) b!48583))

(declare-fun m!22256 () Bool)

(assert (=> b!48582 m!22256))

(declare-fun m!22258 () Bool)

(assert (=> b!48583 m!22258))

(assert (=> bm!3068 d!5824))

(declare-fun d!5826 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!21 (List!843) (InoxSet tuple2!1094))

(assert (=> d!5826 (= (eq!3 (ite c!16333 lt!6997 call!3073) e!28290) (= (content!21 (toList!191 (ite c!16333 lt!6997 call!3073))) (content!21 (toList!191 e!28290))))))

(declare-fun bs!6443 () Bool)

(assert (= bs!6443 d!5826))

(declare-fun m!22260 () Bool)

(assert (=> bs!6443 m!22260))

(declare-fun m!22262 () Bool)

(assert (=> bs!6443 m!22262))

(assert (=> bm!3070 d!5826))

(declare-fun d!5828 () Bool)

(declare-fun e!28307 () Bool)

(assert (=> d!5828 e!28307))

(declare-fun res!32176 () Bool)

(assert (=> d!5828 (=> (not res!32176) (not e!28307))))

(declare-fun lt!7006 () ListMap!73)

(assert (=> d!5828 (= res!32176 (contains!38 lt!7006 (_1!754 (tuple2!1095 key!7227 v!11804))))))

(declare-fun lt!7009 () List!843)

(assert (=> d!5828 (= lt!7006 (ListMap!74 lt!7009))))

(declare-datatypes ((Unit!377 0))(
  ( (Unit!378) )
))
(declare-fun lt!7007 () Unit!377)

(declare-fun lt!7008 () Unit!377)

(assert (=> d!5828 (= lt!7007 lt!7008)))

(declare-datatypes ((Option!57 0))(
  ( (None!56) (Some!56 (v!12621 V!664)) )
))
(declare-fun getValueByKey!2 (List!843 K!610) Option!57)

(assert (=> d!5828 (= (getValueByKey!2 lt!7009 (_1!754 (tuple2!1095 key!7227 v!11804))) (Some!56 (_2!754 (tuple2!1095 key!7227 v!11804))))))

(declare-fun lemmaContainsTupThenGetReturnValue!2 (List!843 K!610 V!664) Unit!377)

(assert (=> d!5828 (= lt!7008 (lemmaContainsTupThenGetReturnValue!2 lt!7009 (_1!754 (tuple2!1095 key!7227 v!11804)) (_2!754 (tuple2!1095 key!7227 v!11804))))))

(declare-fun insertNoDuplicatedKeys!1 (List!843 K!610 V!664) List!843)

(assert (=> d!5828 (= lt!7009 (insertNoDuplicatedKeys!1 (toList!191 call!3075) (_1!754 (tuple2!1095 key!7227 v!11804)) (_2!754 (tuple2!1095 key!7227 v!11804))))))

(assert (=> d!5828 (= (+!5 call!3075 (tuple2!1095 key!7227 v!11804)) lt!7006)))

(declare-fun b!48588 () Bool)

(declare-fun res!32177 () Bool)

(assert (=> b!48588 (=> (not res!32177) (not e!28307))))

(assert (=> b!48588 (= res!32177 (= (getValueByKey!2 (toList!191 lt!7006) (_1!754 (tuple2!1095 key!7227 v!11804))) (Some!56 (_2!754 (tuple2!1095 key!7227 v!11804)))))))

(declare-fun b!48589 () Bool)

(declare-fun contains!39 (List!843 tuple2!1094) Bool)

(assert (=> b!48589 (= e!28307 (contains!39 (toList!191 lt!7006) (tuple2!1095 key!7227 v!11804)))))

(assert (= (and d!5828 res!32176) b!48588))

(assert (= (and b!48588 res!32177) b!48589))

(declare-fun m!22264 () Bool)

(assert (=> d!5828 m!22264))

(declare-fun m!22266 () Bool)

(assert (=> d!5828 m!22266))

(declare-fun m!22268 () Bool)

(assert (=> d!5828 m!22268))

(declare-fun m!22270 () Bool)

(assert (=> d!5828 m!22270))

(declare-fun m!22272 () Bool)

(assert (=> b!48588 m!22272))

(declare-fun m!22274 () Bool)

(assert (=> b!48589 m!22274))

(assert (=> b!48564 d!5828))

(declare-fun b!48608 () Bool)

(assert (=> b!48608 false))

(declare-fun lt!7029 () Unit!377)

(declare-fun lt!7031 () Unit!377)

(assert (=> b!48608 (= lt!7029 lt!7031)))

(declare-fun containsKey!5 (List!843 K!610) Bool)

(assert (=> b!48608 (containsKey!5 (toList!191 lt!6997) key!7227)))

(declare-fun lemmaInGetKeysListThenContainsKey!1 (List!843 K!610) Unit!377)

(assert (=> b!48608 (= lt!7031 (lemmaInGetKeysListThenContainsKey!1 (toList!191 lt!6997) key!7227))))

(declare-fun e!28320 () Unit!377)

(declare-fun Unit!379 () Unit!377)

(assert (=> b!48608 (= e!28320 Unit!379)))

(declare-fun b!48609 () Bool)

(declare-fun Unit!380 () Unit!377)

(assert (=> b!48609 (= e!28320 Unit!380)))

(declare-fun b!48610 () Bool)

(declare-fun e!28324 () Bool)

(declare-datatypes ((List!844 0))(
  ( (Nil!838) (Cons!838 (h!6234 K!610) (t!17041 List!844)) )
))
(declare-fun contains!40 (List!844 K!610) Bool)

(declare-fun keys!473 (ListMap!73) List!844)

(assert (=> b!48610 (= e!28324 (not (contains!40 (keys!473 lt!6997) key!7227)))))

(declare-fun b!48611 () Bool)

(declare-fun e!28321 () Unit!377)

(assert (=> b!48611 (= e!28321 e!28320)))

(declare-fun c!16346 () Bool)

(declare-fun call!3078 () Bool)

(assert (=> b!48611 (= c!16346 call!3078)))

(declare-fun b!48612 () Bool)

(declare-fun e!28323 () List!844)

(assert (=> b!48612 (= e!28323 (keys!473 lt!6997))))

(declare-fun b!48613 () Bool)

(declare-fun e!28322 () Bool)

(assert (=> b!48613 (= e!28322 (contains!40 (keys!473 lt!6997) key!7227))))

(declare-fun d!5830 () Bool)

(declare-fun e!28325 () Bool)

(assert (=> d!5830 e!28325))

(declare-fun res!32185 () Bool)

(assert (=> d!5830 (=> res!32185 e!28325)))

(assert (=> d!5830 (= res!32185 e!28324)))

(declare-fun res!32184 () Bool)

(assert (=> d!5830 (=> (not res!32184) (not e!28324))))

(declare-fun lt!7026 () Bool)

(assert (=> d!5830 (= res!32184 (not lt!7026))))

(declare-fun lt!7028 () Bool)

(assert (=> d!5830 (= lt!7026 lt!7028)))

(declare-fun lt!7027 () Unit!377)

(assert (=> d!5830 (= lt!7027 e!28321)))

(declare-fun c!16345 () Bool)

(assert (=> d!5830 (= c!16345 lt!7028)))

(assert (=> d!5830 (= lt!7028 (containsKey!5 (toList!191 lt!6997) key!7227))))

(assert (=> d!5830 (= (contains!38 lt!6997 key!7227) lt!7026)))

(declare-fun b!48614 () Bool)

(assert (=> b!48614 (= e!28325 e!28322)))

(declare-fun res!32186 () Bool)

(assert (=> b!48614 (=> (not res!32186) (not e!28322))))

(declare-fun isDefined!8 (Option!57) Bool)

(assert (=> b!48614 (= res!32186 (isDefined!8 (getValueByKey!2 (toList!191 lt!6997) key!7227)))))

(declare-fun bm!3073 () Bool)

(assert (=> bm!3073 (= call!3078 (contains!40 e!28323 key!7227))))

(declare-fun c!16347 () Bool)

(assert (=> bm!3073 (= c!16347 c!16345)))

(declare-fun b!48615 () Bool)

(declare-fun getKeysList!2 (List!843) List!844)

(assert (=> b!48615 (= e!28323 (getKeysList!2 (toList!191 lt!6997)))))

(declare-fun b!48616 () Bool)

(declare-fun lt!7030 () Unit!377)

(assert (=> b!48616 (= e!28321 lt!7030)))

(declare-fun lt!7032 () Unit!377)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2 (List!843 K!610) Unit!377)

(assert (=> b!48616 (= lt!7032 (lemmaContainsKeyImpliesGetValueByKeyDefined!2 (toList!191 lt!6997) key!7227))))

(assert (=> b!48616 (isDefined!8 (getValueByKey!2 (toList!191 lt!6997) key!7227))))

(declare-fun lt!7033 () Unit!377)

(assert (=> b!48616 (= lt!7033 lt!7032)))

(declare-fun lemmaInListThenGetKeysListContains!1 (List!843 K!610) Unit!377)

(assert (=> b!48616 (= lt!7030 (lemmaInListThenGetKeysListContains!1 (toList!191 lt!6997) key!7227))))

(assert (=> b!48616 call!3078))

(assert (= (and d!5830 c!16345) b!48616))

(assert (= (and d!5830 (not c!16345)) b!48611))

(assert (= (and b!48611 c!16346) b!48608))

(assert (= (and b!48611 (not c!16346)) b!48609))

(assert (= (or b!48616 b!48611) bm!3073))

(assert (= (and bm!3073 c!16347) b!48615))

(assert (= (and bm!3073 (not c!16347)) b!48612))

(assert (= (and d!5830 res!32184) b!48610))

(assert (= (and d!5830 (not res!32185)) b!48614))

(assert (= (and b!48614 res!32186) b!48613))

(declare-fun m!22276 () Bool)

(assert (=> b!48616 m!22276))

(declare-fun m!22278 () Bool)

(assert (=> b!48616 m!22278))

(assert (=> b!48616 m!22278))

(declare-fun m!22280 () Bool)

(assert (=> b!48616 m!22280))

(declare-fun m!22282 () Bool)

(assert (=> b!48616 m!22282))

(declare-fun m!22284 () Bool)

(assert (=> b!48610 m!22284))

(assert (=> b!48610 m!22284))

(declare-fun m!22286 () Bool)

(assert (=> b!48610 m!22286))

(assert (=> b!48613 m!22284))

(assert (=> b!48613 m!22284))

(assert (=> b!48613 m!22286))

(declare-fun m!22288 () Bool)

(assert (=> d!5830 m!22288))

(assert (=> b!48614 m!22278))

(assert (=> b!48614 m!22278))

(assert (=> b!48614 m!22280))

(assert (=> b!48612 m!22284))

(assert (=> b!48608 m!22288))

(declare-fun m!22290 () Bool)

(assert (=> b!48608 m!22290))

(declare-fun m!22292 () Bool)

(assert (=> bm!3073 m!22292))

(declare-fun m!22294 () Bool)

(assert (=> b!48615 m!22294))

(assert (=> b!48572 d!5830))

(declare-fun d!5832 () Bool)

(declare-fun c!16350 () Bool)

(assert (=> d!5832 (= c!16350 ((_ is MutableMapExt!296) thiss!47822))))

(declare-fun e!28328 () Bool)

(assert (=> d!5832 (= (valid!277 thiss!47822) e!28328)))

(declare-fun b!48621 () Bool)

(declare-fun valid!278 (MutableMap!297) Bool)

(assert (=> b!48621 (= e!28328 (valid!278 thiss!47822))))

(declare-fun b!48622 () Bool)

(declare-fun valid!279 (MutableMap!297) Bool)

(assert (=> b!48622 (= e!28328 (valid!279 thiss!47822))))

(assert (= (and d!5832 c!16350) b!48621))

(assert (= (and d!5832 (not c!16350)) b!48622))

(declare-fun m!22296 () Bool)

(assert (=> b!48621 m!22296))

(declare-fun m!22298 () Bool)

(assert (=> b!48622 m!22298))

(assert (=> start!3406 d!5832))

(declare-fun d!5834 () Bool)

(declare-fun c!16351 () Bool)

(assert (=> d!5834 (= c!16351 ((_ is MutableMapExt!296) (_2!755 lt!6996)))))

(declare-fun e!28329 () Bool)

(assert (=> d!5834 (= (valid!277 (_2!755 lt!6996)) e!28329)))

(declare-fun b!48623 () Bool)

(assert (=> b!48623 (= e!28329 (valid!278 (_2!755 lt!6996)))))

(declare-fun b!48624 () Bool)

(assert (=> b!48624 (= e!28329 (valid!279 (_2!755 lt!6996)))))

(assert (= (and d!5834 c!16351) b!48623))

(assert (= (and d!5834 (not c!16351)) b!48624))

(declare-fun m!22300 () Bool)

(assert (=> b!48623 m!22300))

(declare-fun m!22302 () Bool)

(assert (=> b!48624 m!22302))

(assert (=> b!48575 d!5834))

(declare-fun b!48639 () Bool)

(declare-fun e!28338 () Bool)

(declare-fun e!28340 () Bool)

(assert (=> b!48639 (= e!28338 e!28340)))

(declare-fun res!32194 () Bool)

(declare-fun call!3087 () ListMap!73)

(assert (=> b!48639 (= res!32194 (contains!38 call!3087 key!7227))))

(assert (=> b!48639 (=> (not res!32194) (not e!28340))))

(declare-fun c!16357 () Bool)

(declare-fun call!3086 () ListMap!73)

(declare-fun lt!7036 () tuple2!1096)

(declare-fun bm!3080 () Bool)

(assert (=> bm!3080 (= call!3086 (abstractMap!13 (ite c!16357 thiss!47822 (_2!755 lt!7036))))))

(declare-fun b!48640 () Bool)

(declare-fun e!28341 () ListMap!73)

(assert (=> b!48640 (= e!28341 call!3087)))

(declare-fun d!5836 () Bool)

(declare-fun e!28339 () Bool)

(assert (=> d!5836 e!28339))

(declare-fun res!32195 () Bool)

(assert (=> d!5836 (=> (not res!32195) (not e!28339))))

(assert (=> d!5836 (= res!32195 ((_ is MutableMapExt!296) (_2!755 lt!7036)))))

(declare-fun choose!1158 (MutableMap!297 K!610 V!664) tuple2!1096)

(assert (=> d!5836 (= lt!7036 (choose!1158 thiss!47822 key!7227 v!11804))))

(assert (=> d!5836 (valid!277 thiss!47822)))

(assert (=> d!5836 (= (update!35 thiss!47822 key!7227 v!11804) lt!7036)))

(declare-fun b!48641 () Bool)

(assert (=> b!48641 (= e!28341 (+!5 call!3086 (tuple2!1095 key!7227 v!11804)))))

(declare-fun b!48642 () Bool)

(assert (=> b!48642 (= e!28339 e!28338)))

(assert (=> b!48642 (= c!16357 (_1!755 lt!7036))))

(declare-fun b!48643 () Bool)

(declare-fun res!32193 () Bool)

(assert (=> b!48643 (=> (not res!32193) (not e!28339))))

(assert (=> b!48643 (= res!32193 (valid!277 (_2!755 lt!7036)))))

(declare-fun bm!3081 () Bool)

(assert (=> bm!3081 (= call!3087 (abstractMap!13 (ite c!16357 (_2!755 lt!7036) thiss!47822)))))

(declare-fun b!48644 () Bool)

(declare-fun call!3085 () Bool)

(assert (=> b!48644 (= e!28340 call!3085)))

(declare-fun bm!3082 () Bool)

(assert (=> bm!3082 (= call!3085 (eq!3 (ite c!16357 call!3087 call!3086) e!28341))))

(declare-fun c!16356 () Bool)

(assert (=> bm!3082 (= c!16356 c!16357)))

(declare-fun b!48645 () Bool)

(assert (=> b!48645 (= e!28338 call!3085)))

(assert (= (and d!5836 res!32195) b!48643))

(assert (= (and b!48643 res!32193) b!48642))

(assert (= (and b!48642 c!16357) b!48639))

(assert (= (and b!48642 (not c!16357)) b!48645))

(assert (= (and b!48639 res!32194) b!48644))

(assert (= (or b!48639 b!48644 b!48645) bm!3081))

(assert (= (or b!48644 b!48645) bm!3080))

(assert (= (or b!48644 b!48645) bm!3082))

(assert (= (and bm!3082 c!16356) b!48641))

(assert (= (and bm!3082 (not c!16356)) b!48640))

(declare-fun m!22304 () Bool)

(assert (=> b!48639 m!22304))

(declare-fun m!22306 () Bool)

(assert (=> d!5836 m!22306))

(assert (=> d!5836 m!22236))

(declare-fun m!22308 () Bool)

(assert (=> b!48641 m!22308))

(declare-fun m!22310 () Bool)

(assert (=> bm!3081 m!22310))

(declare-fun m!22312 () Bool)

(assert (=> bm!3082 m!22312))

(declare-fun m!22314 () Bool)

(assert (=> b!48643 m!22314))

(declare-fun m!22316 () Bool)

(assert (=> bm!3080 m!22316))

(assert (=> b!48575 d!5836))

(declare-fun e!28344 () Bool)

(declare-fun b!48650 () Bool)

(declare-fun tp!32771 () Bool)

(assert (=> b!48650 (= e!28344 (and tp_is_empty!487 tp_is_empty!489 tp!32771))))

(assert (=> b!48570 (= tp!32763 e!28344)))

(assert (= (and b!48570 ((_ is Cons!837) (zeroValue!557 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822))))))) b!48650))

(declare-fun b!48651 () Bool)

(declare-fun tp!32772 () Bool)

(declare-fun e!28345 () Bool)

(assert (=> b!48651 (= e!28345 (and tp_is_empty!487 tp_is_empty!489 tp!32772))))

(assert (=> b!48570 (= tp!32766 e!28345)))

(assert (= (and b!48570 ((_ is Cons!837) (minValue!557 (v!12618 (underlying!801 (v!12619 (underlying!802 thiss!47822))))))) b!48651))

(declare-fun mapIsEmpty!1183 () Bool)

(declare-fun mapRes!1183 () Bool)

(assert (=> mapIsEmpty!1183 mapRes!1183))

(declare-fun tp!32779 () Bool)

(declare-fun b!48658 () Bool)

(declare-fun e!28351 () Bool)

(assert (=> b!48658 (= e!28351 (and tp_is_empty!487 tp_is_empty!489 tp!32779))))

(declare-fun condMapEmpty!1183 () Bool)

(declare-fun mapDefault!1183 () List!843)

(assert (=> mapNonEmpty!1180 (= condMapEmpty!1183 (= mapRest!1180 ((as const (Array (_ BitVec 32) List!843)) mapDefault!1183)))))

(declare-fun e!28350 () Bool)

(assert (=> mapNonEmpty!1180 (= tp!32768 (and e!28350 mapRes!1183))))

(declare-fun b!48659 () Bool)

(declare-fun tp!32780 () Bool)

(assert (=> b!48659 (= e!28350 (and tp_is_empty!487 tp_is_empty!489 tp!32780))))

(declare-fun mapNonEmpty!1183 () Bool)

(declare-fun tp!32781 () Bool)

(assert (=> mapNonEmpty!1183 (= mapRes!1183 (and tp!32781 e!28351))))

(declare-fun mapRest!1183 () (Array (_ BitVec 32) List!843))

(declare-fun mapKey!1183 () (_ BitVec 32))

(declare-fun mapValue!1183 () List!843)

(assert (=> mapNonEmpty!1183 (= mapRest!1180 (store mapRest!1183 mapKey!1183 mapValue!1183))))

(assert (= (and mapNonEmpty!1180 condMapEmpty!1183) mapIsEmpty!1183))

(assert (= (and mapNonEmpty!1180 (not condMapEmpty!1183)) mapNonEmpty!1183))

(assert (= (and mapNonEmpty!1183 ((_ is Cons!837) mapValue!1183)) b!48658))

(assert (= (and mapNonEmpty!1180 ((_ is Cons!837) mapDefault!1183)) b!48659))

(declare-fun m!22318 () Bool)

(assert (=> mapNonEmpty!1183 m!22318))

(declare-fun b!48660 () Bool)

(declare-fun tp!32782 () Bool)

(declare-fun e!28352 () Bool)

(assert (=> b!48660 (= e!28352 (and tp_is_empty!487 tp_is_empty!489 tp!32782))))

(assert (=> mapNonEmpty!1180 (= tp!32767 e!28352)))

(assert (= (and mapNonEmpty!1180 ((_ is Cons!837) mapValue!1180)) b!48660))

(declare-fun tp!32783 () Bool)

(declare-fun e!28353 () Bool)

(declare-fun b!48661 () Bool)

(assert (=> b!48661 (= e!28353 (and tp_is_empty!487 tp_is_empty!489 tp!32783))))

(assert (=> b!48573 (= tp!32765 e!28353)))

(assert (= (and b!48573 ((_ is Cons!837) mapDefault!1180)) b!48661))

(check-sat (not b!48622) (not b!48641) (not b_next!1383) (not b!48643) (not b!48639) (not d!5836) (not b!48623) (not b!48659) (not b!48650) (not b!48621) (not b!48608) (not d!5828) (not bm!3080) b_and!1417 (not d!5830) tp_is_empty!487 (not b_next!1381) (not b!48589) (not bm!3082) (not b!48612) (not b!48658) (not b!48613) (not b!48588) (not b!48580) (not b!48581) (not b!48582) (not mapNonEmpty!1183) (not d!5826) (not b!48616) (not b!48651) (not bm!3073) (not b!48610) (not bm!3081) (not b!48660) (not b!48615) (not b!48614) (not b!48583) (not b!48624) tp_is_empty!489 (not b!48661) b_and!1419)
(check-sat b_and!1417 b_and!1419 (not b_next!1383) (not b_next!1381))
