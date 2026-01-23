; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496796 () Bool)

(assert start!496796)

(declare-fun b!4807317 () Bool)

(declare-fun b_free!129955 () Bool)

(declare-fun b_next!130745 () Bool)

(assert (=> b!4807317 (= b_free!129955 (not b_next!130745))))

(declare-fun tp!1359418 () Bool)

(declare-fun b_and!341719 () Bool)

(assert (=> b!4807317 (= tp!1359418 b_and!341719)))

(declare-fun b!4807321 () Bool)

(declare-fun b_free!129957 () Bool)

(declare-fun b_next!130747 () Bool)

(assert (=> b!4807321 (= b_free!129957 (not b_next!130747))))

(declare-fun tp!1359419 () Bool)

(declare-fun b_and!341721 () Bool)

(assert (=> b!4807321 (= tp!1359419 b_and!341721)))

(declare-fun res!2045163 () Bool)

(declare-fun e!3002638 () Bool)

(assert (=> start!496796 (=> (not res!2045163) (not e!3002638))))

(declare-datatypes ((K!16024 0))(
  ( (K!16025 (val!21125 Int)) )
))
(declare-datatypes ((array!18366 0))(
  ( (array!18367 (arr!8191 (Array (_ BitVec 32) (_ BitVec 64))) (size!36437 (_ BitVec 32))) )
))
(declare-datatypes ((V!16270 0))(
  ( (V!16271 (val!21126 Int)) )
))
(declare-datatypes ((tuple2!57204 0))(
  ( (tuple2!57205 (_1!31896 K!16024) (_2!31896 V!16270)) )
))
(declare-datatypes ((List!54555 0))(
  ( (Nil!54431) (Cons!54431 (h!60863 tuple2!57204) (t!362015 List!54555)) )
))
(declare-datatypes ((array!18368 0))(
  ( (array!18369 (arr!8192 (Array (_ BitVec 32) List!54555)) (size!36438 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10006 0))(
  ( (LongMapFixedSize!10007 (defaultEntry!5421 Int) (mask!14975 (_ BitVec 32)) (extraKeys!5278 (_ BitVec 32)) (zeroValue!5291 List!54555) (minValue!5291 List!54555) (_size!10031 (_ BitVec 32)) (_keys!5345 array!18366) (_values!5316 array!18368) (_vacant!5068 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19777 0))(
  ( (Cell!19778 (v!48662 LongMapFixedSize!10006)) )
))
(declare-datatypes ((MutLongMap!5003 0))(
  ( (LongMap!5003 (underlying!10213 Cell!19777)) (MutLongMapExt!5002 (__x!33107 Int)) )
))
(declare-datatypes ((Hashable!7014 0))(
  ( (HashableExt!7013 (__x!33108 Int)) )
))
(declare-datatypes ((Cell!19779 0))(
  ( (Cell!19780 (v!48663 MutLongMap!5003)) )
))
(declare-datatypes ((MutableMap!4887 0))(
  ( (MutableMapExt!4886 (__x!33109 Int)) (HashMap!4887 (underlying!10214 Cell!19779) (hashF!13282 Hashable!7014) (_size!10032 (_ BitVec 32)) (defaultValue!5058 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4887)

(get-info :version)

(assert (=> start!496796 (= res!2045163 ((_ is HashMap!4887) thiss!41921))))

(assert (=> start!496796 e!3002638))

(declare-fun e!3002634 () Bool)

(assert (=> start!496796 e!3002634))

(declare-fun tp_is_empty!33861 () Bool)

(assert (=> start!496796 tp_is_empty!33861))

(declare-fun mapNonEmpty!22148 () Bool)

(declare-fun mapRes!22148 () Bool)

(declare-fun tp!1359416 () Bool)

(declare-fun tp!1359414 () Bool)

(assert (=> mapNonEmpty!22148 (= mapRes!22148 (and tp!1359416 tp!1359414))))

(declare-fun mapValue!22148 () List!54555)

(declare-fun mapRest!22148 () (Array (_ BitVec 32) List!54555))

(declare-fun mapKey!22148 () (_ BitVec 32))

(assert (=> mapNonEmpty!22148 (= (arr!8192 (_values!5316 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))))) (store mapRest!22148 mapKey!22148 mapValue!22148))))

(declare-fun b!4807313 () Bool)

(assert (=> b!4807313 false))

(declare-datatypes ((tuple2!57206 0))(
  ( (tuple2!57207 (_1!31897 (_ BitVec 64)) (_2!31897 List!54555)) )
))
(declare-datatypes ((List!54556 0))(
  ( (Nil!54432) (Cons!54432 (h!60864 tuple2!57206) (t!362016 List!54556)) )
))
(declare-datatypes ((ListLongMap!5509 0))(
  ( (ListLongMap!5510 (toList!7062 List!54556)) )
))
(declare-fun lt!1960431 () ListLongMap!5509)

(declare-datatypes ((Unit!141307 0))(
  ( (Unit!141308) )
))
(declare-fun lt!1960432 () Unit!141307)

(declare-fun lt!1960433 () (_ BitVec 64))

(declare-fun lt!1960427 () List!54555)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!961 (List!54556 (_ BitVec 64) List!54555) Unit!141307)

(assert (=> b!4807313 (= lt!1960432 (lemmaGetValueByKeyImpliesContainsTuple!961 (toList!7062 lt!1960431) lt!1960433 lt!1960427))))

(declare-datatypes ((Option!13245 0))(
  ( (None!13244) (Some!13244 (v!48664 List!54555)) )
))
(declare-fun isDefined!10384 (Option!13245) Bool)

(declare-fun getValueByKey!2442 (List!54556 (_ BitVec 64)) Option!13245)

(assert (=> b!4807313 (isDefined!10384 (getValueByKey!2442 (toList!7062 lt!1960431) lt!1960433))))

(declare-fun lt!1960428 () Unit!141307)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2230 (List!54556 (_ BitVec 64)) Unit!141307)

(assert (=> b!4807313 (= lt!1960428 (lemmaContainsKeyImpliesGetValueByKeyDefined!2230 (toList!7062 lt!1960431) lt!1960433))))

(declare-fun containsKey!4097 (List!54556 (_ BitVec 64)) Bool)

(assert (=> b!4807313 (containsKey!4097 (toList!7062 lt!1960431) lt!1960433)))

(declare-fun lt!1960430 () Unit!141307)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!232 (List!54556 (_ BitVec 64)) Unit!141307)

(assert (=> b!4807313 (= lt!1960430 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!232 (toList!7062 lt!1960431) lt!1960433))))

(declare-fun e!3002636 () Unit!141307)

(declare-fun Unit!141309 () Unit!141307)

(assert (=> b!4807313 (= e!3002636 Unit!141309)))

(declare-fun lambda!233492 () Int)

(declare-fun b!4807314 () Bool)

(declare-fun lt!1960435 () tuple2!57206)

(declare-fun e!3002643 () Unit!141307)

(declare-fun forallContained!4233 (List!54556 Int tuple2!57206) Unit!141307)

(assert (=> b!4807314 (= e!3002643 (forallContained!4233 (toList!7062 lt!1960431) lambda!233492 lt!1960435))))

(declare-fun map!12338 (MutLongMap!5003) ListLongMap!5509)

(assert (=> b!4807314 (= lt!1960431 (map!12338 (v!48663 (underlying!10214 thiss!41921))))))

(declare-fun apply!13085 (MutLongMap!5003 (_ BitVec 64)) List!54555)

(assert (=> b!4807314 (= lt!1960427 (apply!13085 (v!48663 (underlying!10214 thiss!41921)) lt!1960433))))

(assert (=> b!4807314 (= lt!1960435 (tuple2!57207 lt!1960433 lt!1960427))))

(declare-fun c!819353 () Bool)

(declare-fun contains!18097 (List!54556 tuple2!57206) Bool)

(assert (=> b!4807314 (= c!819353 (not (contains!18097 (toList!7062 lt!1960431) lt!1960435)))))

(declare-fun lt!1960426 () Unit!141307)

(assert (=> b!4807314 (= lt!1960426 e!3002636)))

(declare-fun b!4807315 () Bool)

(declare-fun e!3002640 () Bool)

(declare-fun tp!1359417 () Bool)

(assert (=> b!4807315 (= e!3002640 (and tp!1359417 mapRes!22148))))

(declare-fun condMapEmpty!22148 () Bool)

(declare-fun mapDefault!22148 () List!54555)

(assert (=> b!4807315 (= condMapEmpty!22148 (= (arr!8192 (_values!5316 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54555)) mapDefault!22148)))))

(declare-fun b!4807316 () Bool)

(declare-fun res!2045165 () Bool)

(assert (=> b!4807316 (=> (not res!2045165) (not e!3002638))))

(declare-fun valid!4015 (MutableMap!4887) Bool)

(assert (=> b!4807316 (= res!2045165 (valid!4015 thiss!41921))))

(declare-fun tp!1359413 () Bool)

(declare-fun tp!1359415 () Bool)

(declare-fun e!3002639 () Bool)

(declare-fun array_inv!5901 (array!18366) Bool)

(declare-fun array_inv!5902 (array!18368) Bool)

(assert (=> b!4807317 (= e!3002639 (and tp!1359418 tp!1359413 tp!1359415 (array_inv!5901 (_keys!5345 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))))) (array_inv!5902 (_values!5316 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))))) e!3002640))))

(declare-fun b!4807318 () Bool)

(declare-fun e!3002642 () Bool)

(declare-fun e!3002637 () Bool)

(assert (=> b!4807318 (= e!3002642 e!3002637)))

(declare-fun b!4807319 () Bool)

(assert (=> b!4807319 (= e!3002637 e!3002639)))

(declare-fun b!4807320 () Bool)

(declare-fun e!3002641 () Bool)

(declare-fun lt!1960434 () MutLongMap!5003)

(assert (=> b!4807320 (= e!3002641 (and e!3002642 ((_ is LongMap!5003) lt!1960434)))))

(assert (=> b!4807320 (= lt!1960434 (v!48663 (underlying!10214 thiss!41921)))))

(assert (=> b!4807321 (= e!3002634 (and e!3002641 tp!1359419))))

(declare-fun b!4807322 () Bool)

(declare-fun Unit!141310 () Unit!141307)

(assert (=> b!4807322 (= e!3002636 Unit!141310)))

(declare-fun b!4807323 () Bool)

(declare-fun Unit!141311 () Unit!141307)

(assert (=> b!4807323 (= e!3002643 Unit!141311)))

(declare-fun b!4807324 () Bool)

(declare-fun e!3002635 () Bool)

(assert (=> b!4807324 (= e!3002638 e!3002635)))

(declare-fun res!2045164 () Bool)

(assert (=> b!4807324 (=> (not res!2045164) (not e!3002635))))

(assert (=> b!4807324 (= res!2045164 ((_ is LongMap!5003) (v!48663 (underlying!10214 thiss!41921))))))

(declare-fun lt!1960429 () Unit!141307)

(assert (=> b!4807324 (= lt!1960429 e!3002643)))

(declare-fun c!819354 () Bool)

(declare-fun contains!18098 (MutLongMap!5003 (_ BitVec 64)) Bool)

(assert (=> b!4807324 (= c!819354 (contains!18098 (v!48663 (underlying!10214 thiss!41921)) lt!1960433))))

(declare-fun key!1652 () K!16024)

(declare-fun hash!5082 (Hashable!7014 K!16024) (_ BitVec 64))

(assert (=> b!4807324 (= lt!1960433 (hash!5082 (hashF!13282 thiss!41921) key!1652))))

(declare-fun mapIsEmpty!22148 () Bool)

(assert (=> mapIsEmpty!22148 mapRes!22148))

(declare-fun b!4807325 () Bool)

(declare-fun valid!4016 (MutLongMap!5003) Bool)

(assert (=> b!4807325 (= e!3002635 (not (valid!4016 (v!48663 (underlying!10214 thiss!41921)))))))

(assert (= (and start!496796 res!2045163) b!4807316))

(assert (= (and b!4807316 res!2045165) b!4807324))

(assert (= (and b!4807324 c!819354) b!4807314))

(assert (= (and b!4807324 (not c!819354)) b!4807323))

(assert (= (and b!4807314 c!819353) b!4807313))

(assert (= (and b!4807314 (not c!819353)) b!4807322))

(assert (= (and b!4807324 res!2045164) b!4807325))

(assert (= (and b!4807315 condMapEmpty!22148) mapIsEmpty!22148))

(assert (= (and b!4807315 (not condMapEmpty!22148)) mapNonEmpty!22148))

(assert (= b!4807317 b!4807315))

(assert (= b!4807319 b!4807317))

(assert (= b!4807318 b!4807319))

(assert (= (and b!4807320 ((_ is LongMap!5003) (v!48663 (underlying!10214 thiss!41921)))) b!4807318))

(assert (= b!4807321 b!4807320))

(assert (= (and start!496796 ((_ is HashMap!4887) thiss!41921)) b!4807321))

(declare-fun m!5793528 () Bool)

(assert (=> b!4807317 m!5793528))

(declare-fun m!5793530 () Bool)

(assert (=> b!4807317 m!5793530))

(declare-fun m!5793532 () Bool)

(assert (=> b!4807313 m!5793532))

(declare-fun m!5793534 () Bool)

(assert (=> b!4807313 m!5793534))

(declare-fun m!5793536 () Bool)

(assert (=> b!4807313 m!5793536))

(declare-fun m!5793538 () Bool)

(assert (=> b!4807313 m!5793538))

(declare-fun m!5793540 () Bool)

(assert (=> b!4807313 m!5793540))

(assert (=> b!4807313 m!5793536))

(declare-fun m!5793542 () Bool)

(assert (=> b!4807313 m!5793542))

(declare-fun m!5793544 () Bool)

(assert (=> b!4807325 m!5793544))

(declare-fun m!5793546 () Bool)

(assert (=> mapNonEmpty!22148 m!5793546))

(declare-fun m!5793548 () Bool)

(assert (=> b!4807314 m!5793548))

(declare-fun m!5793550 () Bool)

(assert (=> b!4807314 m!5793550))

(declare-fun m!5793552 () Bool)

(assert (=> b!4807314 m!5793552))

(declare-fun m!5793554 () Bool)

(assert (=> b!4807314 m!5793554))

(declare-fun m!5793556 () Bool)

(assert (=> b!4807316 m!5793556))

(declare-fun m!5793558 () Bool)

(assert (=> b!4807324 m!5793558))

(declare-fun m!5793560 () Bool)

(assert (=> b!4807324 m!5793560))

(check-sat (not b!4807325) (not b!4807313) b_and!341719 b_and!341721 (not b!4807314) tp_is_empty!33861 (not b_next!130747) (not b!4807324) (not b_next!130745) (not b!4807316) (not mapNonEmpty!22148) (not b!4807315) (not b!4807317))
(check-sat b_and!341719 b_and!341721 (not b_next!130745) (not b_next!130747))
(get-model)

(declare-fun d!1539880 () Bool)

(assert (=> d!1539880 (= (array_inv!5901 (_keys!5345 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))))) (bvsge (size!36437 (_keys!5345 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4807317 d!1539880))

(declare-fun d!1539882 () Bool)

(assert (=> d!1539882 (= (array_inv!5902 (_values!5316 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))))) (bvsge (size!36438 (_values!5316 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4807317 d!1539882))

(declare-fun d!1539884 () Bool)

(declare-fun lt!1960438 () Bool)

(declare-fun contains!18099 (ListLongMap!5509 (_ BitVec 64)) Bool)

(assert (=> d!1539884 (= lt!1960438 (contains!18099 (map!12338 (v!48663 (underlying!10214 thiss!41921))) lt!1960433))))

(declare-fun contains!18100 (LongMapFixedSize!10006 (_ BitVec 64)) Bool)

(assert (=> d!1539884 (= lt!1960438 (contains!18100 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))) lt!1960433))))

(assert (=> d!1539884 (valid!4016 (v!48663 (underlying!10214 thiss!41921)))))

(assert (=> d!1539884 (= (contains!18098 (v!48663 (underlying!10214 thiss!41921)) lt!1960433) lt!1960438)))

(declare-fun bs!1159915 () Bool)

(assert (= bs!1159915 d!1539884))

(assert (=> bs!1159915 m!5793550))

(assert (=> bs!1159915 m!5793550))

(declare-fun m!5793562 () Bool)

(assert (=> bs!1159915 m!5793562))

(declare-fun m!5793564 () Bool)

(assert (=> bs!1159915 m!5793564))

(assert (=> bs!1159915 m!5793544))

(assert (=> b!4807324 d!1539884))

(declare-fun d!1539886 () Bool)

(declare-fun hash!5083 (Hashable!7014 K!16024) (_ BitVec 64))

(assert (=> d!1539886 (= (hash!5082 (hashF!13282 thiss!41921) key!1652) (hash!5083 (hashF!13282 thiss!41921) key!1652))))

(declare-fun bs!1159916 () Bool)

(assert (= bs!1159916 d!1539886))

(declare-fun m!5793566 () Bool)

(assert (=> bs!1159916 m!5793566))

(assert (=> b!4807324 d!1539886))

(declare-fun d!1539888 () Bool)

(assert (=> d!1539888 (contains!18097 (toList!7062 lt!1960431) (tuple2!57207 lt!1960433 lt!1960427))))

(declare-fun lt!1960441 () Unit!141307)

(declare-fun choose!34808 (List!54556 (_ BitVec 64) List!54555) Unit!141307)

(assert (=> d!1539888 (= lt!1960441 (choose!34808 (toList!7062 lt!1960431) lt!1960433 lt!1960427))))

(declare-fun e!3002646 () Bool)

(assert (=> d!1539888 e!3002646))

(declare-fun res!2045168 () Bool)

(assert (=> d!1539888 (=> (not res!2045168) (not e!3002646))))

(declare-fun isStrictlySorted!919 (List!54556) Bool)

(assert (=> d!1539888 (= res!2045168 (isStrictlySorted!919 (toList!7062 lt!1960431)))))

(assert (=> d!1539888 (= (lemmaGetValueByKeyImpliesContainsTuple!961 (toList!7062 lt!1960431) lt!1960433 lt!1960427) lt!1960441)))

(declare-fun b!4807328 () Bool)

(assert (=> b!4807328 (= e!3002646 (= (getValueByKey!2442 (toList!7062 lt!1960431) lt!1960433) (Some!13244 lt!1960427)))))

(assert (= (and d!1539888 res!2045168) b!4807328))

(declare-fun m!5793568 () Bool)

(assert (=> d!1539888 m!5793568))

(declare-fun m!5793570 () Bool)

(assert (=> d!1539888 m!5793570))

(declare-fun m!5793572 () Bool)

(assert (=> d!1539888 m!5793572))

(assert (=> b!4807328 m!5793536))

(assert (=> b!4807313 d!1539888))

(declare-fun d!1539890 () Bool)

(assert (=> d!1539890 (containsKey!4097 (toList!7062 lt!1960431) lt!1960433)))

(declare-fun lt!1960444 () Unit!141307)

(declare-fun choose!34809 (List!54556 (_ BitVec 64)) Unit!141307)

(assert (=> d!1539890 (= lt!1960444 (choose!34809 (toList!7062 lt!1960431) lt!1960433))))

(declare-fun e!3002649 () Bool)

(assert (=> d!1539890 e!3002649))

(declare-fun res!2045171 () Bool)

(assert (=> d!1539890 (=> (not res!2045171) (not e!3002649))))

(assert (=> d!1539890 (= res!2045171 (isStrictlySorted!919 (toList!7062 lt!1960431)))))

(assert (=> d!1539890 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!232 (toList!7062 lt!1960431) lt!1960433) lt!1960444)))

(declare-fun b!4807331 () Bool)

(assert (=> b!4807331 (= e!3002649 (isDefined!10384 (getValueByKey!2442 (toList!7062 lt!1960431) lt!1960433)))))

(assert (= (and d!1539890 res!2045171) b!4807331))

(assert (=> d!1539890 m!5793534))

(declare-fun m!5793574 () Bool)

(assert (=> d!1539890 m!5793574))

(assert (=> d!1539890 m!5793572))

(assert (=> b!4807331 m!5793536))

(assert (=> b!4807331 m!5793536))

(assert (=> b!4807331 m!5793542))

(assert (=> b!4807313 d!1539890))

(declare-fun b!4807340 () Bool)

(declare-fun e!3002654 () Option!13245)

(assert (=> b!4807340 (= e!3002654 (Some!13244 (_2!31897 (h!60864 (toList!7062 lt!1960431)))))))

(declare-fun b!4807343 () Bool)

(declare-fun e!3002655 () Option!13245)

(assert (=> b!4807343 (= e!3002655 None!13244)))

(declare-fun b!4807341 () Bool)

(assert (=> b!4807341 (= e!3002654 e!3002655)))

(declare-fun c!819360 () Bool)

(assert (=> b!4807341 (= c!819360 (and ((_ is Cons!54432) (toList!7062 lt!1960431)) (not (= (_1!31897 (h!60864 (toList!7062 lt!1960431))) lt!1960433))))))

(declare-fun d!1539892 () Bool)

(declare-fun c!819359 () Bool)

(assert (=> d!1539892 (= c!819359 (and ((_ is Cons!54432) (toList!7062 lt!1960431)) (= (_1!31897 (h!60864 (toList!7062 lt!1960431))) lt!1960433)))))

(assert (=> d!1539892 (= (getValueByKey!2442 (toList!7062 lt!1960431) lt!1960433) e!3002654)))

(declare-fun b!4807342 () Bool)

(assert (=> b!4807342 (= e!3002655 (getValueByKey!2442 (t!362016 (toList!7062 lt!1960431)) lt!1960433))))

(assert (= (and d!1539892 c!819359) b!4807340))

(assert (= (and d!1539892 (not c!819359)) b!4807341))

(assert (= (and b!4807341 c!819360) b!4807342))

(assert (= (and b!4807341 (not c!819360)) b!4807343))

(declare-fun m!5793576 () Bool)

(assert (=> b!4807342 m!5793576))

(assert (=> b!4807313 d!1539892))

(declare-fun d!1539894 () Bool)

(declare-fun isEmpty!29537 (Option!13245) Bool)

(assert (=> d!1539894 (= (isDefined!10384 (getValueByKey!2442 (toList!7062 lt!1960431) lt!1960433)) (not (isEmpty!29537 (getValueByKey!2442 (toList!7062 lt!1960431) lt!1960433))))))

(declare-fun bs!1159917 () Bool)

(assert (= bs!1159917 d!1539894))

(assert (=> bs!1159917 m!5793536))

(declare-fun m!5793578 () Bool)

(assert (=> bs!1159917 m!5793578))

(assert (=> b!4807313 d!1539894))

(declare-fun d!1539896 () Bool)

(declare-fun res!2045176 () Bool)

(declare-fun e!3002660 () Bool)

(assert (=> d!1539896 (=> res!2045176 e!3002660)))

(assert (=> d!1539896 (= res!2045176 (and ((_ is Cons!54432) (toList!7062 lt!1960431)) (= (_1!31897 (h!60864 (toList!7062 lt!1960431))) lt!1960433)))))

(assert (=> d!1539896 (= (containsKey!4097 (toList!7062 lt!1960431) lt!1960433) e!3002660)))

(declare-fun b!4807348 () Bool)

(declare-fun e!3002661 () Bool)

(assert (=> b!4807348 (= e!3002660 e!3002661)))

(declare-fun res!2045177 () Bool)

(assert (=> b!4807348 (=> (not res!2045177) (not e!3002661))))

(assert (=> b!4807348 (= res!2045177 (and (or (not ((_ is Cons!54432) (toList!7062 lt!1960431))) (bvsle (_1!31897 (h!60864 (toList!7062 lt!1960431))) lt!1960433)) ((_ is Cons!54432) (toList!7062 lt!1960431)) (bvslt (_1!31897 (h!60864 (toList!7062 lt!1960431))) lt!1960433)))))

(declare-fun b!4807349 () Bool)

(assert (=> b!4807349 (= e!3002661 (containsKey!4097 (t!362016 (toList!7062 lt!1960431)) lt!1960433))))

(assert (= (and d!1539896 (not res!2045176)) b!4807348))

(assert (= (and b!4807348 res!2045177) b!4807349))

(declare-fun m!5793580 () Bool)

(assert (=> b!4807349 m!5793580))

(assert (=> b!4807313 d!1539896))

(declare-fun d!1539898 () Bool)

(assert (=> d!1539898 (isDefined!10384 (getValueByKey!2442 (toList!7062 lt!1960431) lt!1960433))))

(declare-fun lt!1960447 () Unit!141307)

(declare-fun choose!34810 (List!54556 (_ BitVec 64)) Unit!141307)

(assert (=> d!1539898 (= lt!1960447 (choose!34810 (toList!7062 lt!1960431) lt!1960433))))

(declare-fun e!3002664 () Bool)

(assert (=> d!1539898 e!3002664))

(declare-fun res!2045180 () Bool)

(assert (=> d!1539898 (=> (not res!2045180) (not e!3002664))))

(assert (=> d!1539898 (= res!2045180 (isStrictlySorted!919 (toList!7062 lt!1960431)))))

(assert (=> d!1539898 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2230 (toList!7062 lt!1960431) lt!1960433) lt!1960447)))

(declare-fun b!4807352 () Bool)

(assert (=> b!4807352 (= e!3002664 (containsKey!4097 (toList!7062 lt!1960431) lt!1960433))))

(assert (= (and d!1539898 res!2045180) b!4807352))

(assert (=> d!1539898 m!5793536))

(assert (=> d!1539898 m!5793536))

(assert (=> d!1539898 m!5793542))

(declare-fun m!5793582 () Bool)

(assert (=> d!1539898 m!5793582))

(assert (=> d!1539898 m!5793572))

(assert (=> b!4807352 m!5793534))

(assert (=> b!4807313 d!1539898))

(declare-fun d!1539900 () Bool)

(declare-fun dynLambda!22116 (Int tuple2!57206) Bool)

(assert (=> d!1539900 (dynLambda!22116 lambda!233492 lt!1960435)))

(declare-fun lt!1960450 () Unit!141307)

(declare-fun choose!34811 (List!54556 Int tuple2!57206) Unit!141307)

(assert (=> d!1539900 (= lt!1960450 (choose!34811 (toList!7062 lt!1960431) lambda!233492 lt!1960435))))

(declare-fun e!3002667 () Bool)

(assert (=> d!1539900 e!3002667))

(declare-fun res!2045183 () Bool)

(assert (=> d!1539900 (=> (not res!2045183) (not e!3002667))))

(declare-fun forall!12374 (List!54556 Int) Bool)

(assert (=> d!1539900 (= res!2045183 (forall!12374 (toList!7062 lt!1960431) lambda!233492))))

(assert (=> d!1539900 (= (forallContained!4233 (toList!7062 lt!1960431) lambda!233492 lt!1960435) lt!1960450)))

(declare-fun b!4807355 () Bool)

(assert (=> b!4807355 (= e!3002667 (contains!18097 (toList!7062 lt!1960431) lt!1960435))))

(assert (= (and d!1539900 res!2045183) b!4807355))

(declare-fun b_lambda!188129 () Bool)

(assert (=> (not b_lambda!188129) (not d!1539900)))

(declare-fun m!5793584 () Bool)

(assert (=> d!1539900 m!5793584))

(declare-fun m!5793586 () Bool)

(assert (=> d!1539900 m!5793586))

(declare-fun m!5793588 () Bool)

(assert (=> d!1539900 m!5793588))

(assert (=> b!4807355 m!5793554))

(assert (=> b!4807314 d!1539900))

(declare-fun d!1539902 () Bool)

(declare-fun map!12339 (LongMapFixedSize!10006) ListLongMap!5509)

(assert (=> d!1539902 (= (map!12338 (v!48663 (underlying!10214 thiss!41921))) (map!12339 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921))))))))

(declare-fun bs!1159918 () Bool)

(assert (= bs!1159918 d!1539902))

(declare-fun m!5793590 () Bool)

(assert (=> bs!1159918 m!5793590))

(assert (=> b!4807314 d!1539902))

(declare-fun d!1539904 () Bool)

(declare-fun e!3002670 () Bool)

(assert (=> d!1539904 e!3002670))

(declare-fun c!819363 () Bool)

(assert (=> d!1539904 (= c!819363 (contains!18098 (v!48663 (underlying!10214 thiss!41921)) lt!1960433))))

(declare-fun lt!1960453 () List!54555)

(declare-fun apply!13086 (LongMapFixedSize!10006 (_ BitVec 64)) List!54555)

(assert (=> d!1539904 (= lt!1960453 (apply!13086 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))) lt!1960433))))

(assert (=> d!1539904 (valid!4016 (v!48663 (underlying!10214 thiss!41921)))))

(assert (=> d!1539904 (= (apply!13085 (v!48663 (underlying!10214 thiss!41921)) lt!1960433) lt!1960453)))

(declare-fun b!4807360 () Bool)

(declare-fun get!18619 (Option!13245) List!54555)

(assert (=> b!4807360 (= e!3002670 (= lt!1960453 (get!18619 (getValueByKey!2442 (toList!7062 (map!12338 (v!48663 (underlying!10214 thiss!41921)))) lt!1960433))))))

(declare-fun b!4807361 () Bool)

(declare-fun dynLambda!22117 (Int (_ BitVec 64)) List!54555)

(assert (=> b!4807361 (= e!3002670 (= lt!1960453 (dynLambda!22117 (defaultEntry!5421 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921))))) lt!1960433)))))

(assert (=> b!4807361 ((_ is LongMap!5003) (v!48663 (underlying!10214 thiss!41921)))))

(assert (= (and d!1539904 c!819363) b!4807360))

(assert (= (and d!1539904 (not c!819363)) b!4807361))

(declare-fun b_lambda!188131 () Bool)

(assert (=> (not b_lambda!188131) (not b!4807361)))

(declare-fun t!362018 () Bool)

(declare-fun tb!257513 () Bool)

(assert (=> (and b!4807317 (= (defaultEntry!5421 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921))))) (defaultEntry!5421 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921)))))) t!362018) tb!257513))

(assert (=> b!4807361 t!362018))

(declare-fun result!319552 () Bool)

(declare-fun b_and!341723 () Bool)

(assert (= b_and!341719 (and (=> t!362018 result!319552) b_and!341723)))

(assert (=> d!1539904 m!5793558))

(declare-fun m!5793592 () Bool)

(assert (=> d!1539904 m!5793592))

(assert (=> d!1539904 m!5793544))

(assert (=> b!4807360 m!5793550))

(declare-fun m!5793594 () Bool)

(assert (=> b!4807360 m!5793594))

(assert (=> b!4807360 m!5793594))

(declare-fun m!5793596 () Bool)

(assert (=> b!4807360 m!5793596))

(declare-fun m!5793598 () Bool)

(assert (=> b!4807361 m!5793598))

(assert (=> b!4807314 d!1539904))

(declare-fun d!1539906 () Bool)

(declare-fun lt!1960456 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9766 (List!54556) (InoxSet tuple2!57206))

(assert (=> d!1539906 (= lt!1960456 (select (content!9766 (toList!7062 lt!1960431)) lt!1960435))))

(declare-fun e!3002675 () Bool)

(assert (=> d!1539906 (= lt!1960456 e!3002675)))

(declare-fun res!2045189 () Bool)

(assert (=> d!1539906 (=> (not res!2045189) (not e!3002675))))

(assert (=> d!1539906 (= res!2045189 ((_ is Cons!54432) (toList!7062 lt!1960431)))))

(assert (=> d!1539906 (= (contains!18097 (toList!7062 lt!1960431) lt!1960435) lt!1960456)))

(declare-fun b!4807366 () Bool)

(declare-fun e!3002676 () Bool)

(assert (=> b!4807366 (= e!3002675 e!3002676)))

(declare-fun res!2045188 () Bool)

(assert (=> b!4807366 (=> res!2045188 e!3002676)))

(assert (=> b!4807366 (= res!2045188 (= (h!60864 (toList!7062 lt!1960431)) lt!1960435))))

(declare-fun b!4807367 () Bool)

(assert (=> b!4807367 (= e!3002676 (contains!18097 (t!362016 (toList!7062 lt!1960431)) lt!1960435))))

(assert (= (and d!1539906 res!2045189) b!4807366))

(assert (= (and b!4807366 (not res!2045188)) b!4807367))

(declare-fun m!5793600 () Bool)

(assert (=> d!1539906 m!5793600))

(declare-fun m!5793602 () Bool)

(assert (=> d!1539906 m!5793602))

(declare-fun m!5793604 () Bool)

(assert (=> b!4807367 m!5793604))

(assert (=> b!4807314 d!1539906))

(declare-fun bs!1159919 () Bool)

(declare-fun b!4807372 () Bool)

(assert (= bs!1159919 (and b!4807372 b!4807314)))

(declare-fun lambda!233495 () Int)

(assert (=> bs!1159919 (= lambda!233495 lambda!233492)))

(declare-fun d!1539908 () Bool)

(declare-fun res!2045194 () Bool)

(declare-fun e!3002679 () Bool)

(assert (=> d!1539908 (=> (not res!2045194) (not e!3002679))))

(assert (=> d!1539908 (= res!2045194 (valid!4016 (v!48663 (underlying!10214 thiss!41921))))))

(assert (=> d!1539908 (= (valid!4015 thiss!41921) e!3002679)))

(declare-fun res!2045195 () Bool)

(assert (=> b!4807372 (=> (not res!2045195) (not e!3002679))))

(assert (=> b!4807372 (= res!2045195 (forall!12374 (toList!7062 (map!12338 (v!48663 (underlying!10214 thiss!41921)))) lambda!233495))))

(declare-fun b!4807373 () Bool)

(declare-fun allKeysSameHashInMap!2391 (ListLongMap!5509 Hashable!7014) Bool)

(assert (=> b!4807373 (= e!3002679 (allKeysSameHashInMap!2391 (map!12338 (v!48663 (underlying!10214 thiss!41921))) (hashF!13282 thiss!41921)))))

(assert (= (and d!1539908 res!2045194) b!4807372))

(assert (= (and b!4807372 res!2045195) b!4807373))

(assert (=> d!1539908 m!5793544))

(assert (=> b!4807372 m!5793550))

(declare-fun m!5793606 () Bool)

(assert (=> b!4807372 m!5793606))

(assert (=> b!4807373 m!5793550))

(assert (=> b!4807373 m!5793550))

(declare-fun m!5793608 () Bool)

(assert (=> b!4807373 m!5793608))

(assert (=> b!4807316 d!1539908))

(declare-fun d!1539910 () Bool)

(declare-fun valid!4017 (LongMapFixedSize!10006) Bool)

(assert (=> d!1539910 (= (valid!4016 (v!48663 (underlying!10214 thiss!41921))) (valid!4017 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921))))))))

(declare-fun bs!1159920 () Bool)

(assert (= bs!1159920 d!1539910))

(declare-fun m!5793610 () Bool)

(assert (=> bs!1159920 m!5793610))

(assert (=> b!4807325 d!1539910))

(declare-fun tp_is_empty!33863 () Bool)

(declare-fun b!4807381 () Bool)

(declare-fun tp!1359427 () Bool)

(declare-fun e!3002684 () Bool)

(assert (=> b!4807381 (= e!3002684 (and tp_is_empty!33861 tp_is_empty!33863 tp!1359427))))

(declare-fun b!4807380 () Bool)

(declare-fun e!3002685 () Bool)

(declare-fun tp!1359426 () Bool)

(assert (=> b!4807380 (= e!3002685 (and tp_is_empty!33861 tp_is_empty!33863 tp!1359426))))

(declare-fun mapIsEmpty!22151 () Bool)

(declare-fun mapRes!22151 () Bool)

(assert (=> mapIsEmpty!22151 mapRes!22151))

(declare-fun mapNonEmpty!22151 () Bool)

(declare-fun tp!1359428 () Bool)

(assert (=> mapNonEmpty!22151 (= mapRes!22151 (and tp!1359428 e!3002685))))

(declare-fun mapValue!22151 () List!54555)

(declare-fun mapKey!22151 () (_ BitVec 32))

(declare-fun mapRest!22151 () (Array (_ BitVec 32) List!54555))

(assert (=> mapNonEmpty!22151 (= mapRest!22148 (store mapRest!22151 mapKey!22151 mapValue!22151))))

(declare-fun condMapEmpty!22151 () Bool)

(declare-fun mapDefault!22151 () List!54555)

(assert (=> mapNonEmpty!22148 (= condMapEmpty!22151 (= mapRest!22148 ((as const (Array (_ BitVec 32) List!54555)) mapDefault!22151)))))

(assert (=> mapNonEmpty!22148 (= tp!1359416 (and e!3002684 mapRes!22151))))

(assert (= (and mapNonEmpty!22148 condMapEmpty!22151) mapIsEmpty!22151))

(assert (= (and mapNonEmpty!22148 (not condMapEmpty!22151)) mapNonEmpty!22151))

(assert (= (and mapNonEmpty!22151 ((_ is Cons!54431) mapValue!22151)) b!4807380))

(assert (= (and mapNonEmpty!22148 ((_ is Cons!54431) mapDefault!22151)) b!4807381))

(declare-fun m!5793612 () Bool)

(assert (=> mapNonEmpty!22151 m!5793612))

(declare-fun e!3002688 () Bool)

(declare-fun tp!1359431 () Bool)

(declare-fun b!4807386 () Bool)

(assert (=> b!4807386 (= e!3002688 (and tp_is_empty!33861 tp_is_empty!33863 tp!1359431))))

(assert (=> mapNonEmpty!22148 (= tp!1359414 e!3002688)))

(assert (= (and mapNonEmpty!22148 ((_ is Cons!54431) mapValue!22148)) b!4807386))

(declare-fun e!3002689 () Bool)

(declare-fun tp!1359432 () Bool)

(declare-fun b!4807387 () Bool)

(assert (=> b!4807387 (= e!3002689 (and tp_is_empty!33861 tp_is_empty!33863 tp!1359432))))

(assert (=> b!4807317 (= tp!1359413 e!3002689)))

(assert (= (and b!4807317 ((_ is Cons!54431) (zeroValue!5291 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921))))))) b!4807387))

(declare-fun tp!1359433 () Bool)

(declare-fun e!3002690 () Bool)

(declare-fun b!4807388 () Bool)

(assert (=> b!4807388 (= e!3002690 (and tp_is_empty!33861 tp_is_empty!33863 tp!1359433))))

(assert (=> b!4807317 (= tp!1359415 e!3002690)))

(assert (= (and b!4807317 ((_ is Cons!54431) (minValue!5291 (v!48662 (underlying!10213 (v!48663 (underlying!10214 thiss!41921))))))) b!4807388))

(declare-fun b!4807389 () Bool)

(declare-fun tp!1359434 () Bool)

(declare-fun e!3002691 () Bool)

(assert (=> b!4807389 (= e!3002691 (and tp_is_empty!33861 tp_is_empty!33863 tp!1359434))))

(assert (=> b!4807315 (= tp!1359417 e!3002691)))

(assert (= (and b!4807315 ((_ is Cons!54431) mapDefault!22148)) b!4807389))

(declare-fun b_lambda!188133 () Bool)

(assert (= b_lambda!188131 (or (and b!4807317 b_free!129955) b_lambda!188133)))

(declare-fun b_lambda!188135 () Bool)

(assert (= b_lambda!188129 (or b!4807314 b_lambda!188135)))

(declare-fun bs!1159921 () Bool)

(declare-fun d!1539912 () Bool)

(assert (= bs!1159921 (and d!1539912 b!4807314)))

(declare-fun noDuplicateKeys!2378 (List!54555) Bool)

(assert (=> bs!1159921 (= (dynLambda!22116 lambda!233492 lt!1960435) (noDuplicateKeys!2378 (_2!31897 lt!1960435)))))

(declare-fun m!5793614 () Bool)

(assert (=> bs!1159921 m!5793614))

(assert (=> d!1539900 d!1539912))

(check-sat (not d!1539902) (not b!4807342) (not b!4807381) (not d!1539908) (not b!4807388) (not d!1539886) (not d!1539888) (not b!4807380) (not b!4807360) (not mapNonEmpty!22151) (not d!1539890) (not b!4807349) (not d!1539894) (not b!4807331) (not b!4807373) (not d!1539900) (not d!1539910) (not d!1539884) (not bs!1159921) b_and!341723 (not b!4807386) (not tb!257513) (not b_lambda!188135) tp_is_empty!33863 (not b!4807328) (not b_lambda!188133) (not b!4807372) b_and!341721 (not b!4807387) (not b!4807355) (not d!1539898) (not d!1539906) (not b!4807352) tp_is_empty!33861 (not d!1539904) (not b!4807367) (not b_next!130747) (not b!4807389) (not b_next!130745))
(check-sat b_and!341723 b_and!341721 (not b_next!130745) (not b_next!130747))
