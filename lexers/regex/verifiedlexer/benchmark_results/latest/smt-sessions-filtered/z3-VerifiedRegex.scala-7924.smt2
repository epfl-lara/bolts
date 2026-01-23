; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412960 () Bool)

(assert start!412960)

(declare-fun b!4300725 () Bool)

(declare-fun b_free!128073 () Bool)

(declare-fun b_next!128777 () Bool)

(assert (=> b!4300725 (= b_free!128073 (not b_next!128777))))

(declare-fun tp!1321329 () Bool)

(declare-fun b_and!339435 () Bool)

(assert (=> b!4300725 (= tp!1321329 b_and!339435)))

(declare-fun b_free!128075 () Bool)

(declare-fun b_next!128779 () Bool)

(assert (=> start!412960 (= b_free!128075 (not b_next!128779))))

(declare-fun tp!1321333 () Bool)

(declare-fun b_and!339437 () Bool)

(assert (=> start!412960 (= tp!1321333 b_and!339437)))

(declare-fun b!4300728 () Bool)

(declare-fun b_free!128077 () Bool)

(declare-fun b_next!128781 () Bool)

(assert (=> b!4300728 (= b_free!128077 (not b_next!128781))))

(declare-fun tp!1321328 () Bool)

(declare-fun b_and!339439 () Bool)

(assert (=> b!4300728 (= tp!1321328 b_and!339439)))

(declare-fun b!4300720 () Bool)

(declare-datatypes ((Unit!66917 0))(
  ( (Unit!66918) )
))
(declare-fun e!2673317 () Unit!66917)

(declare-fun Unit!66919 () Unit!66917)

(assert (=> b!4300720 (= e!2673317 Unit!66919)))

(declare-fun b!4300721 () Bool)

(declare-fun lt!1522895 () Unit!66917)

(assert (=> b!4300721 (= e!2673317 lt!1522895)))

(declare-datatypes ((K!9069 0))(
  ( (K!9070 (val!15513 Int)) )
))
(declare-fun k0!1716 () K!9069)

(declare-datatypes ((V!9271 0))(
  ( (V!9272 (val!15514 Int)) )
))
(declare-fun v!9471 () V!9271)

(declare-fun lt!1522898 () Unit!66917)

(declare-datatypes ((tuple2!45948 0))(
  ( (tuple2!45949 (_1!26253 K!9069) (_2!26253 V!9271)) )
))
(declare-datatypes ((List!48077 0))(
  ( (Nil!47953) (Cons!47953 (h!53373 tuple2!45948) (t!354832 List!48077)) )
))
(declare-datatypes ((ListMap!1493 0))(
  ( (ListMap!1494 (toList!2206 List!48077)) )
))
(declare-fun lt!1522897 () ListMap!1493)

(declare-fun p!6034 () Int)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!18 (List!48077 K!9069 V!9271 Int) Unit!66917)

(assert (=> b!4300721 (= lt!1522898 (lemmaInsertNoDuplicatedKeysPreservesForall!18 (toList!2206 lt!1522897) k0!1716 v!9471 p!6034))))

(declare-fun forall!8641 (List!48077 Int) Bool)

(declare-fun insertNoDuplicatedKeys!31 (List!48077 K!9069 V!9271) List!48077)

(assert (=> b!4300721 (forall!8641 (insertNoDuplicatedKeys!31 (toList!2206 lt!1522897) k0!1716 v!9471) p!6034)))

(declare-fun lt!1522896 () ListMap!1493)

(declare-datatypes ((Hashable!4445 0))(
  ( (HashableExt!4444 (__x!29612 Int)) )
))
(declare-datatypes ((array!16228 0))(
  ( (array!16229 (arr!7243 (Array (_ BitVec 32) (_ BitVec 64))) (size!35282 (_ BitVec 32))) )
))
(declare-datatypes ((array!16230 0))(
  ( (array!16231 (arr!7244 (Array (_ BitVec 32) List!48077)) (size!35283 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9058 0))(
  ( (LongMapFixedSize!9059 (defaultEntry!4914 Int) (mask!13022 (_ BitVec 32)) (extraKeys!4778 (_ BitVec 32)) (zeroValue!4788 List!48077) (minValue!4788 List!48077) (_size!9101 (_ BitVec 32)) (_keys!4829 array!16228) (_values!4810 array!16230) (_vacant!4590 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17925 0))(
  ( (Cell!17926 (v!41929 LongMapFixedSize!9058)) )
))
(declare-datatypes ((MutLongMap!4529 0))(
  ( (LongMap!4529 (underlying!9287 Cell!17925)) (MutLongMapExt!4528 (__x!29613 Int)) )
))
(declare-datatypes ((Cell!17927 0))(
  ( (Cell!17928 (v!41930 MutLongMap!4529)) )
))
(declare-datatypes ((MutableMap!4435 0))(
  ( (MutableMapExt!4434 (__x!29614 Int)) (HashMap!4435 (underlying!9288 Cell!17927) (hashF!6477 Hashable!4445) (_size!9102 (_ BitVec 32)) (defaultValue!4606 Int)) )
))
(declare-datatypes ((tuple2!45950 0))(
  ( (tuple2!45951 (_1!26254 Bool) (_2!26254 MutableMap!4435)) )
))
(declare-fun lt!1522893 () tuple2!45950)

(declare-fun map!9912 (MutableMap!4435) ListMap!1493)

(assert (=> b!4300721 (= lt!1522896 (map!9912 (_2!26254 lt!1522893)))))

(declare-fun lt!1522891 () ListMap!1493)

(declare-fun lemmaForallSubset!21 (List!48077 List!48077 Int) Unit!66917)

(assert (=> b!4300721 (= lt!1522895 (lemmaForallSubset!21 (toList!2206 lt!1522896) (toList!2206 lt!1522891) p!6034))))

(assert (=> b!4300721 (forall!8641 (toList!2206 lt!1522896) p!6034)))

(declare-fun res!1762670 () Bool)

(declare-fun e!2673311 () Bool)

(assert (=> start!412960 (=> (not res!1762670) (not e!2673311))))

(declare-fun hm!64 () MutableMap!4435)

(get-info :version)

(assert (=> start!412960 (= res!1762670 ((_ is HashMap!4435) hm!64))))

(assert (=> start!412960 e!2673311))

(declare-fun e!2673314 () Bool)

(assert (=> start!412960 e!2673314))

(declare-fun tp_is_empty!23289 () Bool)

(assert (=> start!412960 tp_is_empty!23289))

(declare-fun tp_is_empty!23291 () Bool)

(assert (=> start!412960 tp_is_empty!23291))

(assert (=> start!412960 tp!1321333))

(declare-fun b!4300722 () Bool)

(declare-fun e!2673316 () Bool)

(assert (=> b!4300722 (= e!2673311 e!2673316)))

(declare-fun res!1762669 () Bool)

(assert (=> b!4300722 (=> (not res!1762669) (not e!2673316))))

(assert (=> b!4300722 (= res!1762669 (forall!8641 (toList!2206 lt!1522897) p!6034))))

(assert (=> b!4300722 (= lt!1522897 (map!9912 hm!64))))

(declare-fun mapNonEmpty!20343 () Bool)

(declare-fun mapRes!20343 () Bool)

(declare-fun tp!1321331 () Bool)

(declare-fun tp!1321327 () Bool)

(assert (=> mapNonEmpty!20343 (= mapRes!20343 (and tp!1321331 tp!1321327))))

(declare-fun mapRest!20343 () (Array (_ BitVec 32) List!48077))

(declare-fun mapKey!20343 () (_ BitVec 32))

(declare-fun mapValue!20343 () List!48077)

(assert (=> mapNonEmpty!20343 (= (arr!7244 (_values!4810 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64)))))) (store mapRest!20343 mapKey!20343 mapValue!20343))))

(declare-fun b!4300723 () Bool)

(declare-fun e!2673310 () Bool)

(declare-fun e!2673312 () Bool)

(declare-fun lt!1522892 () MutLongMap!4529)

(assert (=> b!4300723 (= e!2673310 (and e!2673312 ((_ is LongMap!4529) lt!1522892)))))

(assert (=> b!4300723 (= lt!1522892 (v!41930 (underlying!9288 hm!64)))))

(declare-fun b!4300724 () Bool)

(declare-fun e!2673308 () Bool)

(declare-fun e!2673313 () Bool)

(assert (=> b!4300724 (= e!2673308 e!2673313)))

(assert (=> b!4300725 (= e!2673314 (and e!2673310 tp!1321329))))

(declare-fun b!4300726 () Bool)

(declare-fun e!2673309 () Bool)

(assert (=> b!4300726 (= e!2673316 e!2673309)))

(declare-fun res!1762671 () Bool)

(assert (=> b!4300726 (=> (not res!1762671) (not e!2673309))))

(declare-fun lt!1522894 () tuple2!45948)

(declare-fun dynLambda!20365 (Int tuple2!45948) Bool)

(assert (=> b!4300726 (= res!1762671 (dynLambda!20365 p!6034 lt!1522894))))

(assert (=> b!4300726 (= lt!1522894 (tuple2!45949 k0!1716 v!9471))))

(declare-fun b!4300727 () Bool)

(assert (=> b!4300727 (= e!2673312 e!2673308)))

(declare-fun mapIsEmpty!20343 () Bool)

(assert (=> mapIsEmpty!20343 mapRes!20343))

(declare-fun tp!1321332 () Bool)

(declare-fun e!2673315 () Bool)

(declare-fun tp!1321326 () Bool)

(declare-fun array_inv!5191 (array!16228) Bool)

(declare-fun array_inv!5192 (array!16230) Bool)

(assert (=> b!4300728 (= e!2673313 (and tp!1321328 tp!1321326 tp!1321332 (array_inv!5191 (_keys!4829 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64)))))) (array_inv!5192 (_values!4810 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64)))))) e!2673315))))

(declare-fun b!4300729 () Bool)

(declare-fun res!1762672 () Bool)

(assert (=> b!4300729 (=> (not res!1762672) (not e!2673311))))

(declare-fun valid!3513 (MutableMap!4435) Bool)

(assert (=> b!4300729 (= res!1762672 (valid!3513 hm!64))))

(declare-fun b!4300730 () Bool)

(declare-fun tp!1321330 () Bool)

(assert (=> b!4300730 (= e!2673315 (and tp!1321330 mapRes!20343))))

(declare-fun condMapEmpty!20343 () Bool)

(declare-fun mapDefault!20343 () List!48077)

(assert (=> b!4300730 (= condMapEmpty!20343 (= (arr!7244 (_values!4810 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64)))))) ((as const (Array (_ BitVec 32) List!48077)) mapDefault!20343)))))

(declare-fun b!4300731 () Bool)

(assert (=> b!4300731 (= e!2673309 (not (forall!8641 (toList!2206 (map!9912 (_2!26254 lt!1522893))) p!6034)))))

(declare-fun lt!1522890 () Unit!66917)

(assert (=> b!4300731 (= lt!1522890 e!2673317)))

(declare-fun c!731549 () Bool)

(assert (=> b!4300731 (= c!731549 (_1!26254 lt!1522893))))

(declare-fun update!343 (MutableMap!4435 K!9069 V!9271) tuple2!45950)

(assert (=> b!4300731 (= lt!1522893 (update!343 hm!64 k0!1716 v!9471))))

(declare-fun +!185 (ListMap!1493 tuple2!45948) ListMap!1493)

(assert (=> b!4300731 (= lt!1522891 (+!185 lt!1522897 lt!1522894))))

(assert (= (and start!412960 res!1762670) b!4300729))

(assert (= (and b!4300729 res!1762672) b!4300722))

(assert (= (and b!4300722 res!1762669) b!4300726))

(assert (= (and b!4300726 res!1762671) b!4300731))

(assert (= (and b!4300731 c!731549) b!4300721))

(assert (= (and b!4300731 (not c!731549)) b!4300720))

(assert (= (and b!4300730 condMapEmpty!20343) mapIsEmpty!20343))

(assert (= (and b!4300730 (not condMapEmpty!20343)) mapNonEmpty!20343))

(assert (= b!4300728 b!4300730))

(assert (= b!4300724 b!4300728))

(assert (= b!4300727 b!4300724))

(assert (= (and b!4300723 ((_ is LongMap!4529) (v!41930 (underlying!9288 hm!64)))) b!4300727))

(assert (= b!4300725 b!4300723))

(assert (= (and start!412960 ((_ is HashMap!4435) hm!64)) b!4300725))

(declare-fun b_lambda!126387 () Bool)

(assert (=> (not b_lambda!126387) (not b!4300726)))

(declare-fun t!354831 () Bool)

(declare-fun tb!257239 () Bool)

(assert (=> (and start!412960 (= p!6034 p!6034) t!354831) tb!257239))

(declare-fun result!314536 () Bool)

(assert (=> tb!257239 (= result!314536 true)))

(assert (=> b!4300726 t!354831))

(declare-fun b_and!339441 () Bool)

(assert (= b_and!339437 (and (=> t!354831 result!314536) b_and!339441)))

(declare-fun m!4893011 () Bool)

(assert (=> b!4300729 m!4893011))

(declare-fun m!4893013 () Bool)

(assert (=> b!4300731 m!4893013))

(declare-fun m!4893015 () Bool)

(assert (=> b!4300731 m!4893015))

(declare-fun m!4893017 () Bool)

(assert (=> b!4300731 m!4893017))

(declare-fun m!4893019 () Bool)

(assert (=> b!4300731 m!4893019))

(declare-fun m!4893021 () Bool)

(assert (=> b!4300728 m!4893021))

(declare-fun m!4893023 () Bool)

(assert (=> b!4300728 m!4893023))

(declare-fun m!4893025 () Bool)

(assert (=> b!4300726 m!4893025))

(declare-fun m!4893027 () Bool)

(assert (=> mapNonEmpty!20343 m!4893027))

(assert (=> b!4300721 m!4893013))

(declare-fun m!4893029 () Bool)

(assert (=> b!4300721 m!4893029))

(declare-fun m!4893031 () Bool)

(assert (=> b!4300721 m!4893031))

(declare-fun m!4893033 () Bool)

(assert (=> b!4300721 m!4893033))

(declare-fun m!4893035 () Bool)

(assert (=> b!4300721 m!4893035))

(assert (=> b!4300721 m!4893029))

(declare-fun m!4893037 () Bool)

(assert (=> b!4300721 m!4893037))

(declare-fun m!4893039 () Bool)

(assert (=> b!4300722 m!4893039))

(declare-fun m!4893041 () Bool)

(assert (=> b!4300722 m!4893041))

(check-sat (not mapNonEmpty!20343) (not b!4300722) tp_is_empty!23289 (not b!4300721) (not b!4300731) b_and!339439 (not b!4300729) (not b_next!128781) (not b_next!128777) b_and!339441 (not b!4300728) (not b_next!128779) tp_is_empty!23291 (not b!4300730) b_and!339435 (not b_lambda!126387))
(check-sat (not b_next!128779) b_and!339435 b_and!339439 (not b_next!128781) (not b_next!128777) b_and!339441)
(get-model)

(declare-fun b_lambda!126389 () Bool)

(assert (= b_lambda!126387 (or (and start!412960 b_free!128075) b_lambda!126389)))

(check-sat (not mapNonEmpty!20343) (not b!4300722) (not b_lambda!126389) tp_is_empty!23289 (not b!4300721) b_and!339435 (not b!4300731) b_and!339439 (not b!4300729) (not b_next!128781) (not b_next!128777) b_and!339441 (not b!4300728) (not b_next!128779) tp_is_empty!23291 (not b!4300730))
(check-sat (not b_next!128779) b_and!339435 b_and!339439 (not b_next!128781) (not b_next!128777) b_and!339441)
(get-model)

(declare-fun d!1266697 () Bool)

(declare-fun res!1762677 () Bool)

(declare-fun e!2673320 () Bool)

(assert (=> d!1266697 (=> (not res!1762677) (not e!2673320))))

(declare-fun valid!3514 (MutLongMap!4529) Bool)

(assert (=> d!1266697 (= res!1762677 (valid!3514 (v!41930 (underlying!9288 hm!64))))))

(assert (=> d!1266697 (= (valid!3513 hm!64) e!2673320)))

(declare-fun b!4300736 () Bool)

(declare-fun res!1762678 () Bool)

(assert (=> b!4300736 (=> (not res!1762678) (not e!2673320))))

(declare-fun lambda!132018 () Int)

(declare-datatypes ((tuple2!45952 0))(
  ( (tuple2!45953 (_1!26255 (_ BitVec 64)) (_2!26255 List!48077)) )
))
(declare-datatypes ((List!48078 0))(
  ( (Nil!47954) (Cons!47954 (h!53374 tuple2!45952) (t!354841 List!48078)) )
))
(declare-fun forall!8642 (List!48078 Int) Bool)

(declare-datatypes ((ListLongMap!813 0))(
  ( (ListLongMap!814 (toList!2207 List!48078)) )
))
(declare-fun map!9913 (MutLongMap!4529) ListLongMap!813)

(assert (=> b!4300736 (= res!1762678 (forall!8642 (toList!2207 (map!9913 (v!41930 (underlying!9288 hm!64)))) lambda!132018))))

(declare-fun b!4300737 () Bool)

(declare-fun allKeysSameHashInMap!275 (ListLongMap!813 Hashable!4445) Bool)

(assert (=> b!4300737 (= e!2673320 (allKeysSameHashInMap!275 (map!9913 (v!41930 (underlying!9288 hm!64))) (hashF!6477 hm!64)))))

(assert (= (and d!1266697 res!1762677) b!4300736))

(assert (= (and b!4300736 res!1762678) b!4300737))

(declare-fun m!4893043 () Bool)

(assert (=> d!1266697 m!4893043))

(declare-fun m!4893045 () Bool)

(assert (=> b!4300736 m!4893045))

(declare-fun m!4893047 () Bool)

(assert (=> b!4300736 m!4893047))

(assert (=> b!4300737 m!4893045))

(assert (=> b!4300737 m!4893045))

(declare-fun m!4893049 () Bool)

(assert (=> b!4300737 m!4893049))

(assert (=> b!4300729 d!1266697))

(declare-fun d!1266699 () Bool)

(assert (=> d!1266699 (forall!8641 (toList!2206 lt!1522896) p!6034)))

(declare-fun lt!1522901 () Unit!66917)

(declare-fun choose!26172 (List!48077 List!48077 Int) Unit!66917)

(assert (=> d!1266699 (= lt!1522901 (choose!26172 (toList!2206 lt!1522896) (toList!2206 lt!1522891) p!6034))))

(declare-fun invariantList!547 (List!48077) Bool)

(assert (=> d!1266699 (invariantList!547 (toList!2206 lt!1522896))))

(assert (=> d!1266699 (= (lemmaForallSubset!21 (toList!2206 lt!1522896) (toList!2206 lt!1522891) p!6034) lt!1522901)))

(declare-fun bs!604003 () Bool)

(assert (= bs!604003 d!1266699))

(assert (=> bs!604003 m!4893031))

(declare-fun m!4893051 () Bool)

(assert (=> bs!604003 m!4893051))

(declare-fun m!4893053 () Bool)

(assert (=> bs!604003 m!4893053))

(assert (=> b!4300721 d!1266699))

(declare-fun e!2673338 () Bool)

(declare-fun b!4300766 () Bool)

(declare-fun lt!1522925 () List!48077)

(declare-datatypes ((List!48079 0))(
  ( (Nil!47955) (Cons!47955 (h!53375 K!9069) (t!354842 List!48079)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7539 (List!48079) (InoxSet K!9069))

(declare-fun getKeysList!35 (List!48077) List!48079)

(assert (=> b!4300766 (= e!2673338 (= (content!7539 (getKeysList!35 lt!1522925)) ((_ map or) (content!7539 (getKeysList!35 (toList!2206 lt!1522897))) (store ((as const (Array K!9069 Bool)) false) k0!1716 true))))))

(declare-fun bm!296491 () Bool)

(declare-fun call!296497 () List!48077)

(declare-fun call!296498 () List!48077)

(assert (=> bm!296491 (= call!296497 call!296498)))

(declare-fun b!4300767 () Bool)

(declare-fun res!1762689 () Bool)

(assert (=> b!4300767 (=> (not res!1762689) (not e!2673338))))

(declare-fun containsKey!240 (List!48077 K!9069) Bool)

(assert (=> b!4300767 (= res!1762689 (containsKey!240 lt!1522925 k0!1716))))

(declare-fun d!1266701 () Bool)

(assert (=> d!1266701 e!2673338))

(declare-fun res!1762687 () Bool)

(assert (=> d!1266701 (=> (not res!1762687) (not e!2673338))))

(assert (=> d!1266701 (= res!1762687 (invariantList!547 lt!1522925))))

(declare-fun e!2673337 () List!48077)

(assert (=> d!1266701 (= lt!1522925 e!2673337)))

(declare-fun c!731560 () Bool)

(assert (=> d!1266701 (= c!731560 (and ((_ is Cons!47953) (toList!2206 lt!1522897)) (= (_1!26253 (h!53373 (toList!2206 lt!1522897))) k0!1716)))))

(assert (=> d!1266701 (invariantList!547 (toList!2206 lt!1522897))))

(assert (=> d!1266701 (= (insertNoDuplicatedKeys!31 (toList!2206 lt!1522897) k0!1716 v!9471) lt!1522925)))

(declare-fun b!4300768 () Bool)

(declare-fun e!2673341 () Bool)

(assert (=> b!4300768 (= e!2673341 (not (containsKey!240 (toList!2206 lt!1522897) k0!1716)))))

(declare-fun b!4300769 () Bool)

(declare-fun c!731561 () Bool)

(assert (=> b!4300769 (= c!731561 ((_ is Cons!47953) (toList!2206 lt!1522897)))))

(declare-fun e!2673339 () List!48077)

(declare-fun e!2673336 () List!48077)

(assert (=> b!4300769 (= e!2673339 e!2673336)))

(declare-fun b!4300770 () Bool)

(declare-fun lt!1522927 () List!48077)

(assert (=> b!4300770 (= e!2673336 lt!1522927)))

(declare-fun call!296496 () List!48077)

(assert (=> b!4300770 (= lt!1522927 call!296496)))

(declare-fun c!731564 () Bool)

(assert (=> b!4300770 (= c!731564 (containsKey!240 (insertNoDuplicatedKeys!31 (t!354832 (toList!2206 lt!1522897)) k0!1716 v!9471) (_1!26253 (h!53373 (toList!2206 lt!1522897)))))))

(declare-fun lt!1522933 () Unit!66917)

(declare-fun e!2673335 () Unit!66917)

(assert (=> b!4300770 (= lt!1522933 e!2673335)))

(declare-fun bm!296492 () Bool)

(declare-fun c!731562 () Bool)

(declare-fun e!2673340 () List!48077)

(declare-fun $colon$colon!658 (List!48077 tuple2!45948) List!48077)

(assert (=> bm!296492 (= call!296498 ($colon$colon!658 (ite c!731560 (t!354832 (toList!2206 lt!1522897)) (ite c!731562 (toList!2206 lt!1522897) e!2673340)) (ite (or c!731560 c!731562) (tuple2!45949 k0!1716 v!9471) (ite c!731561 (h!53373 (toList!2206 lt!1522897)) (tuple2!45949 k0!1716 v!9471)))))))

(declare-fun bm!296493 () Bool)

(assert (=> bm!296493 (= call!296496 call!296497)))

(declare-fun c!731563 () Bool)

(assert (=> bm!296493 (= c!731563 c!731561)))

(declare-fun lt!1522924 () List!48077)

(declare-fun bm!296494 () Bool)

(declare-fun call!296499 () List!48079)

(assert (=> bm!296494 (= call!296499 (getKeysList!35 (ite c!731560 (toList!2206 lt!1522897) lt!1522924)))))

(declare-fun b!4300771 () Bool)

(assert (=> b!4300771 (= e!2673340 (insertNoDuplicatedKeys!31 (t!354832 (toList!2206 lt!1522897)) k0!1716 v!9471))))

(declare-fun b!4300772 () Bool)

(assert (=> b!4300772 (= e!2673336 call!296496)))

(declare-fun b!4300773 () Bool)

(assert (=> b!4300773 false))

(declare-fun lt!1522929 () Unit!66917)

(declare-fun lt!1522928 () Unit!66917)

(assert (=> b!4300773 (= lt!1522929 lt!1522928)))

(assert (=> b!4300773 (containsKey!240 (t!354832 (toList!2206 lt!1522897)) (_1!26253 (h!53373 (toList!2206 lt!1522897))))))

(declare-fun lemmaInGetKeysListThenContainsKey!32 (List!48077 K!9069) Unit!66917)

(assert (=> b!4300773 (= lt!1522928 (lemmaInGetKeysListThenContainsKey!32 (t!354832 (toList!2206 lt!1522897)) (_1!26253 (h!53373 (toList!2206 lt!1522897)))))))

(declare-fun lt!1522926 () Unit!66917)

(declare-fun lt!1522932 () Unit!66917)

(assert (=> b!4300773 (= lt!1522926 lt!1522932)))

(declare-fun contains!9880 (List!48079 K!9069) Bool)

(assert (=> b!4300773 (contains!9880 call!296499 (_1!26253 (h!53373 (toList!2206 lt!1522897))))))

(declare-fun lemmaInListThenGetKeysListContains!32 (List!48077 K!9069) Unit!66917)

(assert (=> b!4300773 (= lt!1522932 (lemmaInListThenGetKeysListContains!32 lt!1522924 (_1!26253 (h!53373 (toList!2206 lt!1522897)))))))

(assert (=> b!4300773 (= lt!1522924 (insertNoDuplicatedKeys!31 (t!354832 (toList!2206 lt!1522897)) k0!1716 v!9471))))

(declare-fun Unit!66920 () Unit!66917)

(assert (=> b!4300773 (= e!2673335 Unit!66920)))

(declare-fun b!4300774 () Bool)

(assert (=> b!4300774 (= e!2673337 e!2673339)))

(declare-fun res!1762688 () Bool)

(assert (=> b!4300774 (= res!1762688 ((_ is Cons!47953) (toList!2206 lt!1522897)))))

(assert (=> b!4300774 (=> (not res!1762688) (not e!2673341))))

(assert (=> b!4300774 (= c!731562 e!2673341)))

(declare-fun b!4300775 () Bool)

(assert (=> b!4300775 (= e!2673337 call!296498)))

(declare-fun lt!1522930 () List!48079)

(assert (=> b!4300775 (= lt!1522930 call!296499)))

(declare-fun lt!1522934 () Unit!66917)

(declare-fun lemmaSubseqRefl!62 (List!48079) Unit!66917)

(assert (=> b!4300775 (= lt!1522934 (lemmaSubseqRefl!62 lt!1522930))))

(declare-fun subseq!578 (List!48079 List!48079) Bool)

(assert (=> b!4300775 (subseq!578 lt!1522930 lt!1522930)))

(declare-fun lt!1522931 () Unit!66917)

(assert (=> b!4300775 (= lt!1522931 lt!1522934)))

(declare-fun b!4300776 () Bool)

(declare-fun res!1762690 () Bool)

(assert (=> b!4300776 (=> (not res!1762690) (not e!2673338))))

(declare-fun contains!9881 (List!48077 tuple2!45948) Bool)

(assert (=> b!4300776 (= res!1762690 (contains!9881 lt!1522925 (tuple2!45949 k0!1716 v!9471)))))

(declare-fun b!4300777 () Bool)

(assert (=> b!4300777 (= e!2673339 call!296497)))

(declare-fun b!4300778 () Bool)

(declare-fun Unit!66921 () Unit!66917)

(assert (=> b!4300778 (= e!2673335 Unit!66921)))

(declare-fun b!4300779 () Bool)

(assert (=> b!4300779 (= e!2673340 Nil!47953)))

(assert (= (and d!1266701 c!731560) b!4300775))

(assert (= (and d!1266701 (not c!731560)) b!4300774))

(assert (= (and b!4300774 res!1762688) b!4300768))

(assert (= (and b!4300774 c!731562) b!4300777))

(assert (= (and b!4300774 (not c!731562)) b!4300769))

(assert (= (and b!4300769 c!731561) b!4300770))

(assert (= (and b!4300769 (not c!731561)) b!4300772))

(assert (= (and b!4300770 c!731564) b!4300773))

(assert (= (and b!4300770 (not c!731564)) b!4300778))

(assert (= (or b!4300770 b!4300772) bm!296493))

(assert (= (and bm!296493 c!731563) b!4300771))

(assert (= (and bm!296493 (not c!731563)) b!4300779))

(assert (= (or b!4300777 bm!296493) bm!296491))

(assert (= (or b!4300775 b!4300773) bm!296494))

(assert (= (or b!4300775 bm!296491) bm!296492))

(assert (= (and d!1266701 res!1762687) b!4300767))

(assert (= (and b!4300767 res!1762689) b!4300776))

(assert (= (and b!4300776 res!1762690) b!4300766))

(declare-fun m!4893055 () Bool)

(assert (=> b!4300773 m!4893055))

(declare-fun m!4893057 () Bool)

(assert (=> b!4300773 m!4893057))

(declare-fun m!4893059 () Bool)

(assert (=> b!4300773 m!4893059))

(declare-fun m!4893061 () Bool)

(assert (=> b!4300773 m!4893061))

(declare-fun m!4893063 () Bool)

(assert (=> b!4300773 m!4893063))

(assert (=> b!4300770 m!4893063))

(assert (=> b!4300770 m!4893063))

(declare-fun m!4893065 () Bool)

(assert (=> b!4300770 m!4893065))

(assert (=> b!4300771 m!4893063))

(declare-fun m!4893067 () Bool)

(assert (=> d!1266701 m!4893067))

(declare-fun m!4893069 () Bool)

(assert (=> d!1266701 m!4893069))

(declare-fun m!4893071 () Bool)

(assert (=> b!4300767 m!4893071))

(declare-fun m!4893073 () Bool)

(assert (=> b!4300768 m!4893073))

(declare-fun m!4893075 () Bool)

(assert (=> b!4300766 m!4893075))

(declare-fun m!4893077 () Bool)

(assert (=> b!4300766 m!4893077))

(declare-fun m!4893079 () Bool)

(assert (=> b!4300766 m!4893079))

(declare-fun m!4893081 () Bool)

(assert (=> b!4300766 m!4893081))

(assert (=> b!4300766 m!4893079))

(assert (=> b!4300766 m!4893077))

(declare-fun m!4893083 () Bool)

(assert (=> b!4300766 m!4893083))

(declare-fun m!4893085 () Bool)

(assert (=> bm!296492 m!4893085))

(declare-fun m!4893087 () Bool)

(assert (=> bm!296494 m!4893087))

(declare-fun m!4893089 () Bool)

(assert (=> b!4300776 m!4893089))

(declare-fun m!4893091 () Bool)

(assert (=> b!4300775 m!4893091))

(declare-fun m!4893093 () Bool)

(assert (=> b!4300775 m!4893093))

(assert (=> b!4300721 d!1266701))

(declare-fun d!1266703 () Bool)

(assert (=> d!1266703 (forall!8641 (insertNoDuplicatedKeys!31 (toList!2206 lt!1522897) k0!1716 v!9471) p!6034)))

(declare-fun lt!1522937 () Unit!66917)

(declare-fun choose!26173 (List!48077 K!9069 V!9271 Int) Unit!66917)

(assert (=> d!1266703 (= lt!1522937 (choose!26173 (toList!2206 lt!1522897) k0!1716 v!9471 p!6034))))

(assert (=> d!1266703 (invariantList!547 (toList!2206 lt!1522897))))

(assert (=> d!1266703 (= (lemmaInsertNoDuplicatedKeysPreservesForall!18 (toList!2206 lt!1522897) k0!1716 v!9471 p!6034) lt!1522937)))

(declare-fun bs!604004 () Bool)

(assert (= bs!604004 d!1266703))

(assert (=> bs!604004 m!4893029))

(assert (=> bs!604004 m!4893029))

(assert (=> bs!604004 m!4893037))

(declare-fun m!4893095 () Bool)

(assert (=> bs!604004 m!4893095))

(assert (=> bs!604004 m!4893069))

(assert (=> b!4300721 d!1266703))

(declare-fun d!1266705 () Bool)

(declare-fun res!1762695 () Bool)

(declare-fun e!2673346 () Bool)

(assert (=> d!1266705 (=> res!1762695 e!2673346)))

(assert (=> d!1266705 (= res!1762695 ((_ is Nil!47953) (toList!2206 lt!1522896)))))

(assert (=> d!1266705 (= (forall!8641 (toList!2206 lt!1522896) p!6034) e!2673346)))

(declare-fun b!4300784 () Bool)

(declare-fun e!2673347 () Bool)

(assert (=> b!4300784 (= e!2673346 e!2673347)))

(declare-fun res!1762696 () Bool)

(assert (=> b!4300784 (=> (not res!1762696) (not e!2673347))))

(assert (=> b!4300784 (= res!1762696 (dynLambda!20365 p!6034 (h!53373 (toList!2206 lt!1522896))))))

(declare-fun b!4300785 () Bool)

(assert (=> b!4300785 (= e!2673347 (forall!8641 (t!354832 (toList!2206 lt!1522896)) p!6034))))

(assert (= (and d!1266705 (not res!1762695)) b!4300784))

(assert (= (and b!4300784 res!1762696) b!4300785))

(declare-fun b_lambda!126391 () Bool)

(assert (=> (not b_lambda!126391) (not b!4300784)))

(declare-fun t!354834 () Bool)

(declare-fun tb!257241 () Bool)

(assert (=> (and start!412960 (= p!6034 p!6034) t!354834) tb!257241))

(declare-fun result!314538 () Bool)

(assert (=> tb!257241 (= result!314538 true)))

(assert (=> b!4300784 t!354834))

(declare-fun b_and!339443 () Bool)

(assert (= b_and!339441 (and (=> t!354834 result!314538) b_and!339443)))

(declare-fun m!4893097 () Bool)

(assert (=> b!4300784 m!4893097))

(declare-fun m!4893099 () Bool)

(assert (=> b!4300785 m!4893099))

(assert (=> b!4300721 d!1266705))

(declare-fun d!1266707 () Bool)

(declare-fun res!1762697 () Bool)

(declare-fun e!2673348 () Bool)

(assert (=> d!1266707 (=> res!1762697 e!2673348)))

(assert (=> d!1266707 (= res!1762697 ((_ is Nil!47953) (insertNoDuplicatedKeys!31 (toList!2206 lt!1522897) k0!1716 v!9471)))))

(assert (=> d!1266707 (= (forall!8641 (insertNoDuplicatedKeys!31 (toList!2206 lt!1522897) k0!1716 v!9471) p!6034) e!2673348)))

(declare-fun b!4300786 () Bool)

(declare-fun e!2673349 () Bool)

(assert (=> b!4300786 (= e!2673348 e!2673349)))

(declare-fun res!1762698 () Bool)

(assert (=> b!4300786 (=> (not res!1762698) (not e!2673349))))

(assert (=> b!4300786 (= res!1762698 (dynLambda!20365 p!6034 (h!53373 (insertNoDuplicatedKeys!31 (toList!2206 lt!1522897) k0!1716 v!9471))))))

(declare-fun b!4300787 () Bool)

(assert (=> b!4300787 (= e!2673349 (forall!8641 (t!354832 (insertNoDuplicatedKeys!31 (toList!2206 lt!1522897) k0!1716 v!9471)) p!6034))))

(assert (= (and d!1266707 (not res!1762697)) b!4300786))

(assert (= (and b!4300786 res!1762698) b!4300787))

(declare-fun b_lambda!126393 () Bool)

(assert (=> (not b_lambda!126393) (not b!4300786)))

(declare-fun t!354836 () Bool)

(declare-fun tb!257243 () Bool)

(assert (=> (and start!412960 (= p!6034 p!6034) t!354836) tb!257243))

(declare-fun result!314540 () Bool)

(assert (=> tb!257243 (= result!314540 true)))

(assert (=> b!4300786 t!354836))

(declare-fun b_and!339445 () Bool)

(assert (= b_and!339443 (and (=> t!354836 result!314540) b_and!339445)))

(declare-fun m!4893101 () Bool)

(assert (=> b!4300786 m!4893101))

(declare-fun m!4893103 () Bool)

(assert (=> b!4300787 m!4893103))

(assert (=> b!4300721 d!1266707))

(declare-fun d!1266709 () Bool)

(declare-fun lt!1522940 () ListMap!1493)

(assert (=> d!1266709 (invariantList!547 (toList!2206 lt!1522940))))

(declare-fun extractMap!275 (List!48078) ListMap!1493)

(assert (=> d!1266709 (= lt!1522940 (extractMap!275 (toList!2207 (map!9913 (v!41930 (underlying!9288 (_2!26254 lt!1522893)))))))))

(assert (=> d!1266709 (valid!3513 (_2!26254 lt!1522893))))

(assert (=> d!1266709 (= (map!9912 (_2!26254 lt!1522893)) lt!1522940)))

(declare-fun bs!604005 () Bool)

(assert (= bs!604005 d!1266709))

(declare-fun m!4893105 () Bool)

(assert (=> bs!604005 m!4893105))

(declare-fun m!4893107 () Bool)

(assert (=> bs!604005 m!4893107))

(declare-fun m!4893109 () Bool)

(assert (=> bs!604005 m!4893109))

(declare-fun m!4893111 () Bool)

(assert (=> bs!604005 m!4893111))

(assert (=> b!4300721 d!1266709))

(declare-fun d!1266711 () Bool)

(assert (=> d!1266711 (= (array_inv!5191 (_keys!4829 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64)))))) (bvsge (size!35282 (_keys!4829 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300728 d!1266711))

(declare-fun d!1266713 () Bool)

(assert (=> d!1266713 (= (array_inv!5192 (_values!4810 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64)))))) (bvsge (size!35283 (_values!4810 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300728 d!1266713))

(declare-fun d!1266715 () Bool)

(declare-fun res!1762699 () Bool)

(declare-fun e!2673350 () Bool)

(assert (=> d!1266715 (=> res!1762699 e!2673350)))

(assert (=> d!1266715 (= res!1762699 ((_ is Nil!47953) (toList!2206 (map!9912 (_2!26254 lt!1522893)))))))

(assert (=> d!1266715 (= (forall!8641 (toList!2206 (map!9912 (_2!26254 lt!1522893))) p!6034) e!2673350)))

(declare-fun b!4300788 () Bool)

(declare-fun e!2673351 () Bool)

(assert (=> b!4300788 (= e!2673350 e!2673351)))

(declare-fun res!1762700 () Bool)

(assert (=> b!4300788 (=> (not res!1762700) (not e!2673351))))

(assert (=> b!4300788 (= res!1762700 (dynLambda!20365 p!6034 (h!53373 (toList!2206 (map!9912 (_2!26254 lt!1522893))))))))

(declare-fun b!4300789 () Bool)

(assert (=> b!4300789 (= e!2673351 (forall!8641 (t!354832 (toList!2206 (map!9912 (_2!26254 lt!1522893)))) p!6034))))

(assert (= (and d!1266715 (not res!1762699)) b!4300788))

(assert (= (and b!4300788 res!1762700) b!4300789))

(declare-fun b_lambda!126395 () Bool)

(assert (=> (not b_lambda!126395) (not b!4300788)))

(declare-fun t!354838 () Bool)

(declare-fun tb!257245 () Bool)

(assert (=> (and start!412960 (= p!6034 p!6034) t!354838) tb!257245))

(declare-fun result!314542 () Bool)

(assert (=> tb!257245 (= result!314542 true)))

(assert (=> b!4300788 t!354838))

(declare-fun b_and!339447 () Bool)

(assert (= b_and!339445 (and (=> t!354838 result!314542) b_and!339447)))

(declare-fun m!4893113 () Bool)

(assert (=> b!4300788 m!4893113))

(declare-fun m!4893115 () Bool)

(assert (=> b!4300789 m!4893115))

(assert (=> b!4300731 d!1266715))

(assert (=> b!4300731 d!1266709))

(declare-fun bs!604006 () Bool)

(declare-fun b!4300830 () Bool)

(assert (= bs!604006 (and b!4300830 b!4300736)))

(declare-fun lambda!132027 () Int)

(assert (=> bs!604006 (= lambda!132027 lambda!132018)))

(declare-fun bs!604007 () Bool)

(declare-fun b!4300837 () Bool)

(assert (= bs!604007 (and b!4300837 b!4300736)))

(declare-fun lambda!132028 () Int)

(assert (=> bs!604007 (= lambda!132028 lambda!132018)))

(declare-fun bs!604008 () Bool)

(assert (= bs!604008 (and b!4300837 b!4300830)))

(assert (=> bs!604008 (= lambda!132028 lambda!132027)))

(declare-fun lt!1523075 () List!48077)

(declare-fun lt!1523082 () ListLongMap!813)

(declare-fun bm!296557 () Bool)

(declare-fun lt!1523095 () List!48077)

(declare-fun call!296585 () Unit!66917)

(declare-fun lt!1523068 () (_ BitVec 64))

(declare-fun lt!1523080 () (_ BitVec 64))

(declare-fun c!731579 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!105 (ListLongMap!813 (_ BitVec 64) List!48077 Hashable!4445) Unit!66917)

(assert (=> bm!296557 (= call!296585 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!105 lt!1523082 (ite c!731579 lt!1523080 lt!1523068) (ite c!731579 lt!1523075 lt!1523095) (hashF!6477 hm!64)))))

(declare-fun call!296567 () ListMap!1493)

(declare-fun lt!1523065 () ListMap!1493)

(declare-fun bm!296558 () Bool)

(assert (=> bm!296558 (= call!296567 (+!185 lt!1523065 (tuple2!45949 k0!1716 v!9471)))))

(declare-fun b!4300828 () Bool)

(declare-fun e!2673383 () List!48077)

(declare-fun call!296574 () List!48077)

(assert (=> b!4300828 (= e!2673383 call!296574)))

(declare-fun bm!296559 () Bool)

(declare-fun call!296578 () ListMap!1493)

(declare-fun call!296576 () ListMap!1493)

(assert (=> bm!296559 (= call!296578 call!296576)))

(declare-fun call!296584 () Bool)

(declare-fun call!296592 () ListLongMap!813)

(declare-fun bm!296560 () Bool)

(assert (=> bm!296560 (= call!296584 (forall!8642 (toList!2207 call!296592) (ite c!731579 lambda!132027 lambda!132028)))))

(declare-fun call!296575 () Bool)

(declare-fun lt!1523067 () ListMap!1493)

(declare-fun lt!1523091 () ListMap!1493)

(declare-fun bm!296561 () Bool)

(declare-fun contains!9882 (ListMap!1493 K!9069) Bool)

(assert (=> bm!296561 (= call!296575 (contains!9882 (ite c!731579 lt!1523091 lt!1523067) k0!1716))))

(declare-fun bm!296562 () Bool)

(declare-fun call!296569 () Bool)

(assert (=> bm!296562 (= call!296569 (allKeysSameHashInMap!275 call!296592 (hashF!6477 hm!64)))))

(declare-fun b!4300829 () Bool)

(assert (=> b!4300829 (= call!296578 lt!1523065)))

(declare-fun lt!1523100 () Unit!66917)

(declare-fun Unit!66922 () Unit!66917)

(assert (=> b!4300829 (= lt!1523100 Unit!66922)))

(declare-fun call!296572 () Bool)

(assert (=> b!4300829 call!296572))

(declare-fun e!2673379 () Unit!66917)

(declare-fun Unit!66923 () Unit!66917)

(assert (=> b!4300829 (= e!2673379 Unit!66923)))

(declare-fun call!296563 () List!48077)

(declare-fun call!296587 () Bool)

(declare-fun bm!296563 () Bool)

(declare-fun allKeysSameHash!127 (List!48077 (_ BitVec 64) Hashable!4445) Bool)

(assert (=> bm!296563 (= call!296587 (allKeysSameHash!127 call!296563 (ite c!731579 lt!1523080 lt!1523068) (hashF!6477 hm!64)))))

(declare-fun lt!1523072 () MutableMap!4435)

(declare-fun bm!296564 () Bool)

(declare-fun lt!1523076 () MutableMap!4435)

(assert (=> bm!296564 (= call!296576 (map!9912 (ite c!731579 lt!1523072 lt!1523076)))))

(declare-fun call!296580 () Bool)

(assert (=> b!4300830 call!296580))

(declare-fun lt!1523058 () Unit!66917)

(declare-fun Unit!66924 () Unit!66917)

(assert (=> b!4300830 (= lt!1523058 Unit!66924)))

(assert (=> b!4300830 call!296569))

(declare-fun lt!1523081 () Unit!66917)

(declare-fun Unit!66925 () Unit!66917)

(assert (=> b!4300830 (= lt!1523081 Unit!66925)))

(assert (=> b!4300830 call!296584))

(declare-fun lt!1523102 () Unit!66917)

(declare-fun lt!1523079 () Unit!66917)

(assert (=> b!4300830 (= lt!1523102 lt!1523079)))

(declare-fun call!296562 () Bool)

(assert (=> b!4300830 (= call!296575 call!296562)))

(declare-fun call!296568 () Unit!66917)

(assert (=> b!4300830 (= lt!1523079 call!296568)))

(declare-fun lt!1523064 () ListMap!1493)

(assert (=> b!4300830 (= lt!1523064 call!296567)))

(declare-fun call!296583 () ListMap!1493)

(assert (=> b!4300830 (= lt!1523091 call!296583)))

(declare-fun lt!1523056 () Unit!66917)

(declare-fun lt!1523089 () Unit!66917)

(assert (=> b!4300830 (= lt!1523056 lt!1523089)))

(declare-fun call!296571 () Bool)

(assert (=> b!4300830 call!296571))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!39 (ListLongMap!813 (_ BitVec 64) List!48077 K!9069 V!9271 Hashable!4445) Unit!66917)

(assert (=> b!4300830 (= lt!1523089 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!39 lt!1523082 lt!1523080 lt!1523075 k0!1716 v!9471 (hashF!6477 hm!64)))))

(declare-fun lt!1523097 () Unit!66917)

(declare-fun lt!1523063 () Unit!66917)

(assert (=> b!4300830 (= lt!1523097 lt!1523063)))

(declare-fun e!2673377 () Bool)

(assert (=> b!4300830 e!2673377))

(declare-fun res!1762711 () Bool)

(assert (=> b!4300830 (=> (not res!1762711) (not e!2673377))))

(declare-fun call!296565 () Bool)

(assert (=> b!4300830 (= res!1762711 call!296565)))

(declare-fun lt!1523055 () ListLongMap!813)

(declare-fun call!296590 () ListLongMap!813)

(assert (=> b!4300830 (= lt!1523055 call!296590)))

(assert (=> b!4300830 (= lt!1523063 call!296585)))

(declare-fun lt!1523073 () Unit!66917)

(declare-fun Unit!66926 () Unit!66917)

(assert (=> b!4300830 (= lt!1523073 Unit!66926)))

(declare-fun noDuplicateKeys!155 (List!48077) Bool)

(assert (=> b!4300830 (noDuplicateKeys!155 lt!1523075)))

(declare-fun lt!1523084 () Unit!66917)

(declare-fun Unit!66927 () Unit!66917)

(assert (=> b!4300830 (= lt!1523084 Unit!66927)))

(declare-fun containsKey!241 (List!48077 K!9069) Bool)

(assert (=> b!4300830 (not (containsKey!241 call!296563 k0!1716))))

(declare-fun lt!1523070 () Unit!66917)

(declare-fun Unit!66928 () Unit!66917)

(assert (=> b!4300830 (= lt!1523070 Unit!66928)))

(declare-fun lt!1523094 () Unit!66917)

(declare-fun lt!1523059 () Unit!66917)

(assert (=> b!4300830 (= lt!1523094 lt!1523059)))

(assert (=> b!4300830 (noDuplicateKeys!155 call!296563)))

(declare-fun lt!1523087 () List!48077)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!132 (List!48077 K!9069) Unit!66917)

(assert (=> b!4300830 (= lt!1523059 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!132 lt!1523087 k0!1716))))

(declare-fun lt!1523061 () Unit!66917)

(declare-fun lt!1523088 () Unit!66917)

(assert (=> b!4300830 (= lt!1523061 lt!1523088)))

(assert (=> b!4300830 call!296587))

(declare-fun call!296591 () Unit!66917)

(assert (=> b!4300830 (= lt!1523088 call!296591)))

(declare-fun lt!1523092 () Unit!66917)

(declare-fun lt!1523083 () Unit!66917)

(assert (=> b!4300830 (= lt!1523092 lt!1523083)))

(declare-fun call!296589 () Bool)

(assert (=> b!4300830 call!296589))

(declare-fun call!296566 () Unit!66917)

(assert (=> b!4300830 (= lt!1523083 call!296566)))

(declare-fun e!2673374 () Unit!66917)

(declare-fun Unit!66929 () Unit!66917)

(assert (=> b!4300830 (= e!2673374 Unit!66929)))

(declare-fun b!4300831 () Bool)

(declare-fun e!2673382 () Bool)

(declare-fun call!296579 () Bool)

(assert (=> b!4300831 (= e!2673382 call!296579)))

(declare-fun b!4300832 () Bool)

(declare-fun e!2673375 () Unit!66917)

(declare-fun Unit!66930 () Unit!66917)

(assert (=> b!4300832 (= e!2673375 Unit!66930)))

(declare-fun bm!296566 () Bool)

(declare-fun lt!1523074 () ListMap!1493)

(assert (=> bm!296566 (= call!296562 (contains!9882 (ite c!731579 lt!1523064 lt!1523074) k0!1716))))

(declare-fun bm!296567 () Bool)

(assert (=> bm!296567 (= call!296583 call!296576)))

(declare-fun call!296577 () ListMap!1493)

(declare-fun call!296570 () ListMap!1493)

(declare-fun bm!296568 () Bool)

(assert (=> bm!296568 (= call!296577 (+!185 call!296570 (tuple2!45949 k0!1716 v!9471)))))

(declare-datatypes ((tuple2!45954 0))(
  ( (tuple2!45955 (_1!26256 Bool) (_2!26256 MutLongMap!4529)) )
))
(declare-fun lt!1523057 () tuple2!45954)

(declare-fun b!4300833 () Bool)

(declare-fun e!2673384 () tuple2!45950)

(declare-datatypes ((tuple2!45956 0))(
  ( (tuple2!45957 (_1!26257 Unit!66917) (_2!26257 MutableMap!4435)) )
))
(declare-fun Unit!66931 () Unit!66917)

(declare-fun Unit!66932 () Unit!66917)

(assert (=> b!4300833 (= e!2673384 (tuple2!45951 (_1!26256 lt!1523057) (_2!26257 (ite false (tuple2!45957 Unit!66931 (HashMap!4435 (Cell!17928 (_2!26256 lt!1523057)) (hashF!6477 hm!64) (bvadd (_size!9102 hm!64) #b00000000000000000000000000000001) (defaultValue!4606 hm!64))) (tuple2!45957 Unit!66932 lt!1523072)))))))

(declare-fun call!296564 () (_ BitVec 64))

(assert (=> b!4300833 (= lt!1523080 call!296564)))

(assert (=> b!4300833 (= lt!1523087 call!296574)))

(assert (=> b!4300833 (= lt!1523075 (Cons!47953 (tuple2!45949 k0!1716 v!9471) call!296563))))

(declare-fun call!296581 () tuple2!45954)

(assert (=> b!4300833 (= lt!1523057 call!296581)))

(assert (=> b!4300833 (= lt!1523072 (HashMap!4435 (Cell!17928 (_2!26256 lt!1523057)) (hashF!6477 hm!64) (_size!9102 hm!64) (defaultValue!4606 hm!64)))))

(declare-fun c!731583 () Bool)

(assert (=> b!4300833 (= c!731583 (_1!26256 lt!1523057))))

(declare-fun lt!1523062 () Unit!66917)

(assert (=> b!4300833 (= lt!1523062 e!2673374)))

(declare-fun bm!296569 () Bool)

(declare-fun call!296586 () Bool)

(declare-fun call!296588 () ListMap!1493)

(declare-fun e!2673378 () ListMap!1493)

(declare-fun eq!107 (ListMap!1493 ListMap!1493) Bool)

(assert (=> bm!296569 (= call!296586 (eq!107 call!296588 e!2673378))))

(declare-fun c!731582 () Bool)

(declare-fun c!731584 () Bool)

(assert (=> bm!296569 (= c!731582 c!731584)))

(declare-fun b!4300834 () Bool)

(assert (=> b!4300834 (= e!2673383 Nil!47953)))

(declare-fun b!4300835 () Bool)

(assert (=> b!4300835 (= e!2673377 call!296579)))

(declare-fun b!4300836 () Bool)

(declare-fun e!2673381 () Bool)

(assert (=> b!4300836 (= e!2673381 call!296586)))

(assert (=> b!4300837 (contains!9882 call!296578 k0!1716)))

(declare-fun lt!1523105 () Unit!66917)

(declare-fun Unit!66933 () Unit!66917)

(assert (=> b!4300837 (= lt!1523105 Unit!66933)))

(assert (=> b!4300837 (contains!9882 call!296567 k0!1716)))

(declare-fun lt!1523086 () Unit!66917)

(declare-fun lt!1523085 () Unit!66917)

(assert (=> b!4300837 (= lt!1523086 lt!1523085)))

(assert (=> b!4300837 (= call!296562 call!296575)))

(assert (=> b!4300837 (= lt!1523085 call!296568)))

(assert (=> b!4300837 (= lt!1523067 call!296567)))

(assert (=> b!4300837 (= lt!1523074 call!296578)))

(declare-fun lt!1523104 () Unit!66917)

(declare-fun Unit!66934 () Unit!66917)

(assert (=> b!4300837 (= lt!1523104 Unit!66934)))

(assert (=> b!4300837 call!296580))

(declare-fun lt!1523090 () Unit!66917)

(declare-fun Unit!66935 () Unit!66917)

(assert (=> b!4300837 (= lt!1523090 Unit!66935)))

(assert (=> b!4300837 call!296569))

(declare-fun lt!1523060 () Unit!66917)

(declare-fun Unit!66936 () Unit!66917)

(assert (=> b!4300837 (= lt!1523060 Unit!66936)))

(assert (=> b!4300837 call!296584))

(declare-fun lt!1523077 () Unit!66917)

(declare-fun lt!1523096 () Unit!66917)

(assert (=> b!4300837 (= lt!1523077 lt!1523096)))

(assert (=> b!4300837 call!296571))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!39 (ListLongMap!813 (_ BitVec 64) List!48077 K!9069 V!9271 Hashable!4445) Unit!66917)

(assert (=> b!4300837 (= lt!1523096 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!39 lt!1523082 lt!1523068 lt!1523095 k0!1716 v!9471 (hashF!6477 hm!64)))))

(declare-fun lt!1523053 () Unit!66917)

(declare-fun lt!1523103 () Unit!66917)

(assert (=> b!4300837 (= lt!1523053 lt!1523103)))

(assert (=> b!4300837 e!2673382))

(declare-fun res!1762715 () Bool)

(assert (=> b!4300837 (=> (not res!1762715) (not e!2673382))))

(assert (=> b!4300837 (= res!1762715 call!296565)))

(declare-fun lt!1523051 () ListLongMap!813)

(assert (=> b!4300837 (= lt!1523051 call!296590)))

(assert (=> b!4300837 (= lt!1523103 call!296585)))

(declare-fun lt!1523069 () Unit!66917)

(assert (=> b!4300837 (= lt!1523069 e!2673375)))

(declare-fun c!731585 () Bool)

(declare-fun lt!1523101 () List!48077)

(declare-fun isEmpty!28051 (List!48077) Bool)

(assert (=> b!4300837 (= c!731585 (not (isEmpty!28051 lt!1523101)))))

(declare-fun Unit!66937 () Unit!66917)

(assert (=> b!4300837 (= e!2673379 Unit!66937)))

(declare-fun b!4300838 () Bool)

(declare-fun e!2673376 () Bool)

(assert (=> b!4300838 (= e!2673381 e!2673376)))

(declare-fun res!1762713 () Bool)

(assert (=> b!4300838 (= res!1762713 (contains!9882 call!296588 k0!1716))))

(assert (=> b!4300838 (=> (not res!1762713) (not e!2673376))))

(declare-fun bm!296570 () Bool)

(assert (=> bm!296570 (= call!296565 (forall!8642 (ite c!731579 (toList!2207 lt!1523055) (toList!2207 lt!1523051)) (ite c!731579 lambda!132027 lambda!132028)))))

(declare-fun bm!296571 () Bool)

(declare-fun call!296573 () ListMap!1493)

(assert (=> bm!296571 (= call!296573 (extractMap!275 (toList!2207 call!296590)))))

(declare-fun bm!296572 () Bool)

(declare-fun +!186 (ListLongMap!813 tuple2!45952) ListLongMap!813)

(assert (=> bm!296572 (= call!296590 (+!186 lt!1523082 (ite c!731579 (tuple2!45953 lt!1523080 lt!1523075) (tuple2!45953 lt!1523068 lt!1523095))))))

(declare-fun bm!296573 () Bool)

(declare-fun hash!843 (Hashable!4445 K!9069) (_ BitVec 64))

(assert (=> bm!296573 (= call!296564 (hash!843 (hashF!6477 hm!64) k0!1716))))

(declare-fun call!296582 () ListMap!1493)

(declare-fun b!4300839 () Bool)

(assert (=> b!4300839 (= e!2673378 (+!185 call!296582 (tuple2!45949 k0!1716 v!9471)))))

(declare-fun bm!296574 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!118 (List!48078 (_ BitVec 64) List!48077 Hashable!4445) Unit!66917)

(assert (=> bm!296574 (= call!296566 (lemmaInLongMapAllKeySameHashThenForTuple!118 (toList!2207 lt!1523082) (ite c!731579 lt!1523080 lt!1523068) (ite c!731579 lt!1523087 lt!1523101) (hashF!6477 hm!64)))))

(declare-fun b!4300840 () Bool)

(declare-fun res!1762714 () Bool)

(declare-fun e!2673380 () Bool)

(assert (=> b!4300840 (=> (not res!1762714) (not e!2673380))))

(declare-fun lt!1523066 () tuple2!45950)

(assert (=> b!4300840 (= res!1762714 (valid!3513 (_2!26254 lt!1523066)))))

(declare-fun bm!296575 () Bool)

(declare-fun update!344 (MutLongMap!4529 (_ BitVec 64) List!48077) tuple2!45954)

(assert (=> bm!296575 (= call!296581 (update!344 (v!41930 (underlying!9288 hm!64)) (ite c!731579 lt!1523080 lt!1523068) (ite c!731579 lt!1523075 lt!1523095)))))

(declare-fun bm!296576 () Bool)

(declare-fun lemmaEquivalentThenSameContains!39 (ListMap!1493 ListMap!1493 K!9069) Unit!66917)

(assert (=> bm!296576 (= call!296568 (lemmaEquivalentThenSameContains!39 (ite c!731579 lt!1523091 lt!1523074) (ite c!731579 lt!1523064 lt!1523067) k0!1716))))

(declare-fun bm!296577 () Bool)

(assert (=> bm!296577 (= call!296571 (eq!107 call!296573 call!296577))))

(declare-fun d!1266717 () Bool)

(assert (=> d!1266717 e!2673380))

(declare-fun res!1762712 () Bool)

(assert (=> d!1266717 (=> (not res!1762712) (not e!2673380))))

(assert (=> d!1266717 (= res!1762712 ((_ is HashMap!4435) (_2!26254 lt!1523066)))))

(declare-fun lt!1523054 () tuple2!45950)

(assert (=> d!1266717 (= lt!1523066 (tuple2!45951 (_1!26254 lt!1523054) (_2!26254 lt!1523054)))))

(assert (=> d!1266717 (= lt!1523054 e!2673384)))

(declare-fun contains!9883 (MutableMap!4435 K!9069) Bool)

(assert (=> d!1266717 (= c!731579 (contains!9883 hm!64 k0!1716))))

(assert (=> d!1266717 (= lt!1523082 (map!9913 (v!41930 (underlying!9288 hm!64))))))

(assert (=> d!1266717 (= lt!1523065 (map!9912 hm!64))))

(assert (=> d!1266717 (valid!3513 hm!64)))

(assert (=> d!1266717 (= (update!343 hm!64 k0!1716 v!9471) lt!1523066)))

(declare-fun bm!296565 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!114 (List!48077 K!9069 (_ BitVec 64) Hashable!4445) Unit!66917)

(assert (=> bm!296565 (= call!296591 (lemmaRemovePairForKeyPreservesHash!114 (ite c!731579 lt!1523087 lt!1523101) k0!1716 (ite c!731579 lt!1523080 lt!1523068) (hashF!6477 hm!64)))))

(declare-fun b!4300841 () Bool)

(assert (=> b!4300841 (= call!296583 lt!1523065)))

(declare-fun lt!1523098 () Unit!66917)

(declare-fun Unit!66938 () Unit!66917)

(assert (=> b!4300841 (= lt!1523098 Unit!66938)))

(assert (=> b!4300841 call!296572))

(declare-fun Unit!66939 () Unit!66917)

(assert (=> b!4300841 (= e!2673374 Unit!66939)))

(declare-fun bm!296578 () Bool)

(assert (=> bm!296578 (= call!296589 (allKeysSameHash!127 (ite c!731579 lt!1523087 lt!1523101) (ite c!731579 lt!1523080 lt!1523068) (hashF!6477 hm!64)))))

(declare-fun b!4300842 () Bool)

(declare-fun lt!1523052 () Unit!66917)

(assert (=> b!4300842 (= e!2673375 lt!1523052)))

(declare-fun lt!1523093 () Unit!66917)

(assert (=> b!4300842 (= lt!1523093 call!296566)))

(assert (=> b!4300842 call!296589))

(declare-fun lt!1523078 () Unit!66917)

(assert (=> b!4300842 (= lt!1523078 lt!1523093)))

(assert (=> b!4300842 (= lt!1523052 call!296591)))

(assert (=> b!4300842 call!296587))

(declare-fun bm!296579 () Bool)

(assert (=> bm!296579 (= call!296579 (allKeysSameHashInMap!275 (ite c!731579 lt!1523055 lt!1523051) (hashF!6477 hm!64)))))

(declare-fun b!4300843 () Bool)

(declare-fun lt!1523099 () tuple2!45954)

(declare-fun Unit!66940 () Unit!66917)

(declare-fun Unit!66941 () Unit!66917)

(assert (=> b!4300843 (= e!2673384 (tuple2!45951 (_1!26256 lt!1523099) (_2!26257 (ite (_1!26256 lt!1523099) (tuple2!45957 Unit!66940 (HashMap!4435 (Cell!17928 (_2!26256 lt!1523099)) (hashF!6477 hm!64) (bvadd (_size!9102 hm!64) #b00000000000000000000000000000001) (defaultValue!4606 hm!64))) (tuple2!45957 Unit!66941 lt!1523076)))))))

(assert (=> b!4300843 (= lt!1523068 call!296564)))

(declare-fun c!731581 () Bool)

(declare-fun contains!9884 (MutLongMap!4529 (_ BitVec 64)) Bool)

(assert (=> b!4300843 (= c!731581 (contains!9884 (v!41930 (underlying!9288 hm!64)) lt!1523068))))

(assert (=> b!4300843 (= lt!1523101 e!2673383)))

(assert (=> b!4300843 (= lt!1523095 (Cons!47953 (tuple2!45949 k0!1716 v!9471) lt!1523101))))

(assert (=> b!4300843 (= lt!1523099 call!296581)))

(assert (=> b!4300843 (= lt!1523076 (HashMap!4435 (Cell!17928 (_2!26256 lt!1523099)) (hashF!6477 hm!64) (_size!9102 hm!64) (defaultValue!4606 hm!64)))))

(declare-fun c!731580 () Bool)

(assert (=> b!4300843 (= c!731580 (_1!26256 lt!1523099))))

(declare-fun lt!1523071 () Unit!66917)

(assert (=> b!4300843 (= lt!1523071 e!2673379)))

(declare-fun bm!296580 () Bool)

(assert (=> bm!296580 (= call!296592 (map!9913 (ite c!731579 (_2!26256 lt!1523057) (_2!26256 lt!1523099))))))

(declare-fun bm!296581 () Bool)

(declare-fun removePairForKey!144 (List!48077 K!9069) List!48077)

(assert (=> bm!296581 (= call!296563 (removePairForKey!144 (ite c!731579 lt!1523087 lt!1523101) k0!1716))))

(declare-fun b!4300844 () Bool)

(assert (=> b!4300844 (= e!2673380 e!2673381)))

(assert (=> b!4300844 (= c!731584 (_1!26254 lt!1523066))))

(declare-fun bm!296582 () Bool)

(declare-fun apply!10880 (MutLongMap!4529 (_ BitVec 64)) List!48077)

(assert (=> bm!296582 (= call!296574 (apply!10880 (v!41930 (underlying!9288 hm!64)) (ite c!731579 lt!1523080 lt!1523068)))))

(declare-fun bm!296583 () Bool)

(assert (=> bm!296583 (= call!296588 (map!9912 (_2!26254 lt!1523066)))))

(declare-fun b!4300845 () Bool)

(assert (=> b!4300845 (= e!2673376 call!296586)))

(declare-fun bm!296584 () Bool)

(assert (=> bm!296584 (= call!296570 (extractMap!275 (toList!2207 lt!1523082)))))

(declare-fun bm!296585 () Bool)

(assert (=> bm!296585 (= call!296580 (eq!107 (ite c!731579 call!296583 call!296578) call!296567))))

(declare-fun b!4300846 () Bool)

(assert (=> b!4300846 (= e!2673378 call!296582)))

(declare-fun bm!296586 () Bool)

(assert (=> bm!296586 (= call!296572 (valid!3513 (ite c!731579 lt!1523072 lt!1523076)))))

(declare-fun bm!296587 () Bool)

(assert (=> bm!296587 (= call!296582 (map!9912 hm!64))))

(assert (= (and d!1266717 c!731579) b!4300833))

(assert (= (and d!1266717 (not c!731579)) b!4300843))

(assert (= (and b!4300833 c!731583) b!4300830))

(assert (= (and b!4300833 (not c!731583)) b!4300841))

(assert (= (and b!4300830 res!1762711) b!4300835))

(assert (= (or b!4300830 b!4300841) bm!296567))

(assert (= (and b!4300843 c!731581) b!4300828))

(assert (= (and b!4300843 (not c!731581)) b!4300834))

(assert (= (and b!4300843 c!731580) b!4300837))

(assert (= (and b!4300843 (not c!731580)) b!4300829))

(assert (= (and b!4300837 c!731585) b!4300842))

(assert (= (and b!4300837 (not c!731585)) b!4300832))

(assert (= (and b!4300837 res!1762715) b!4300831))

(assert (= (or b!4300837 b!4300829) bm!296559))

(assert (= (or b!4300835 b!4300831) bm!296579))

(assert (= (or b!4300841 b!4300829) bm!296586))

(assert (= (or b!4300833 b!4300828) bm!296582))

(assert (= (or b!4300833 b!4300843) bm!296573))

(assert (= (or b!4300830 b!4300837) bm!296557))

(assert (= (or b!4300830 b!4300837) bm!296566))

(assert (= (or b!4300830 b!4300842) bm!296578))

(assert (= (or b!4300830 b!4300837) bm!296584))

(assert (= (or b!4300830 b!4300833 b!4300842) bm!296581))

(assert (= (or b!4300830 b!4300842) bm!296565))

(assert (= (or b!4300830 b!4300837) bm!296576))

(assert (= (or b!4300830 b!4300837) bm!296570))

(assert (= (or b!4300830 b!4300837) bm!296558))

(assert (= (or b!4300830 b!4300837) bm!296561))

(assert (= (or b!4300830 b!4300837) bm!296572))

(assert (= (or b!4300833 b!4300843) bm!296575))

(assert (= (or bm!296567 bm!296559) bm!296564))

(assert (= (or b!4300830 b!4300837) bm!296580))

(assert (= (or b!4300830 b!4300842) bm!296574))

(assert (= (or b!4300830 b!4300837) bm!296571))

(assert (= (or b!4300830 b!4300837) bm!296560))

(assert (= (or b!4300830 b!4300837) bm!296585))

(assert (= (or b!4300830 b!4300837) bm!296568))

(assert (= (or b!4300830 b!4300842) bm!296563))

(assert (= (or b!4300830 b!4300837) bm!296562))

(assert (= (or b!4300830 b!4300837) bm!296577))

(assert (= (and d!1266717 res!1762712) b!4300840))

(assert (= (and b!4300840 res!1762714) b!4300844))

(assert (= (and b!4300844 c!731584) b!4300838))

(assert (= (and b!4300844 (not c!731584)) b!4300836))

(assert (= (and b!4300838 res!1762713) b!4300845))

(assert (= (or b!4300838 b!4300845 b!4300836) bm!296583))

(assert (= (or b!4300845 b!4300836) bm!296587))

(assert (= (or b!4300845 b!4300836) bm!296569))

(assert (= (and bm!296569 c!731582) b!4300839))

(assert (= (and bm!296569 (not c!731582)) b!4300846))

(declare-fun m!4893117 () Bool)

(assert (=> bm!296566 m!4893117))

(declare-fun m!4893119 () Bool)

(assert (=> b!4300838 m!4893119))

(declare-fun m!4893121 () Bool)

(assert (=> bm!296562 m!4893121))

(declare-fun m!4893123 () Bool)

(assert (=> bm!296568 m!4893123))

(declare-fun m!4893125 () Bool)

(assert (=> bm!296586 m!4893125))

(declare-fun m!4893127 () Bool)

(assert (=> bm!296575 m!4893127))

(declare-fun m!4893129 () Bool)

(assert (=> bm!296557 m!4893129))

(declare-fun m!4893131 () Bool)

(assert (=> bm!296578 m!4893131))

(declare-fun m!4893133 () Bool)

(assert (=> bm!296558 m!4893133))

(declare-fun m!4893135 () Bool)

(assert (=> b!4300840 m!4893135))

(declare-fun m!4893137 () Bool)

(assert (=> b!4300837 m!4893137))

(declare-fun m!4893139 () Bool)

(assert (=> b!4300837 m!4893139))

(declare-fun m!4893141 () Bool)

(assert (=> b!4300837 m!4893141))

(declare-fun m!4893143 () Bool)

(assert (=> b!4300837 m!4893143))

(declare-fun m!4893145 () Bool)

(assert (=> bm!296582 m!4893145))

(declare-fun m!4893147 () Bool)

(assert (=> bm!296580 m!4893147))

(declare-fun m!4893149 () Bool)

(assert (=> d!1266717 m!4893149))

(assert (=> d!1266717 m!4893045))

(assert (=> d!1266717 m!4893041))

(assert (=> d!1266717 m!4893011))

(declare-fun m!4893151 () Bool)

(assert (=> bm!296585 m!4893151))

(declare-fun m!4893153 () Bool)

(assert (=> bm!296574 m!4893153))

(declare-fun m!4893155 () Bool)

(assert (=> bm!296570 m!4893155))

(declare-fun m!4893157 () Bool)

(assert (=> bm!296573 m!4893157))

(declare-fun m!4893159 () Bool)

(assert (=> bm!296560 m!4893159))

(declare-fun m!4893161 () Bool)

(assert (=> b!4300843 m!4893161))

(declare-fun m!4893163 () Bool)

(assert (=> bm!296565 m!4893163))

(assert (=> bm!296587 m!4893041))

(declare-fun m!4893165 () Bool)

(assert (=> bm!296564 m!4893165))

(declare-fun m!4893167 () Bool)

(assert (=> bm!296571 m!4893167))

(declare-fun m!4893169 () Bool)

(assert (=> b!4300839 m!4893169))

(declare-fun m!4893171 () Bool)

(assert (=> bm!296584 m!4893171))

(declare-fun m!4893173 () Bool)

(assert (=> bm!296577 m!4893173))

(declare-fun m!4893175 () Bool)

(assert (=> b!4300830 m!4893175))

(declare-fun m!4893177 () Bool)

(assert (=> b!4300830 m!4893177))

(declare-fun m!4893179 () Bool)

(assert (=> b!4300830 m!4893179))

(declare-fun m!4893181 () Bool)

(assert (=> b!4300830 m!4893181))

(declare-fun m!4893183 () Bool)

(assert (=> b!4300830 m!4893183))

(declare-fun m!4893185 () Bool)

(assert (=> bm!296572 m!4893185))

(declare-fun m!4893187 () Bool)

(assert (=> bm!296569 m!4893187))

(declare-fun m!4893189 () Bool)

(assert (=> bm!296583 m!4893189))

(declare-fun m!4893191 () Bool)

(assert (=> bm!296576 m!4893191))

(declare-fun m!4893193 () Bool)

(assert (=> bm!296563 m!4893193))

(declare-fun m!4893195 () Bool)

(assert (=> bm!296581 m!4893195))

(declare-fun m!4893197 () Bool)

(assert (=> bm!296561 m!4893197))

(declare-fun m!4893199 () Bool)

(assert (=> bm!296579 m!4893199))

(assert (=> b!4300731 d!1266717))

(declare-fun d!1266719 () Bool)

(declare-fun e!2673387 () Bool)

(assert (=> d!1266719 e!2673387))

(declare-fun res!1762720 () Bool)

(assert (=> d!1266719 (=> (not res!1762720) (not e!2673387))))

(declare-fun lt!1523117 () ListMap!1493)

(assert (=> d!1266719 (= res!1762720 (contains!9882 lt!1523117 (_1!26253 lt!1522894)))))

(declare-fun lt!1523116 () List!48077)

(assert (=> d!1266719 (= lt!1523117 (ListMap!1494 lt!1523116))))

(declare-fun lt!1523114 () Unit!66917)

(declare-fun lt!1523115 () Unit!66917)

(assert (=> d!1266719 (= lt!1523114 lt!1523115)))

(declare-datatypes ((Option!10167 0))(
  ( (None!10166) (Some!10166 (v!41932 V!9271)) )
))
(declare-fun getValueByKey!216 (List!48077 K!9069) Option!10167)

(assert (=> d!1266719 (= (getValueByKey!216 lt!1523116 (_1!26253 lt!1522894)) (Some!10166 (_2!26253 lt!1522894)))))

(declare-fun lemmaContainsTupThenGetReturnValue!47 (List!48077 K!9069 V!9271) Unit!66917)

(assert (=> d!1266719 (= lt!1523115 (lemmaContainsTupThenGetReturnValue!47 lt!1523116 (_1!26253 lt!1522894) (_2!26253 lt!1522894)))))

(assert (=> d!1266719 (= lt!1523116 (insertNoDuplicatedKeys!31 (toList!2206 lt!1522897) (_1!26253 lt!1522894) (_2!26253 lt!1522894)))))

(assert (=> d!1266719 (= (+!185 lt!1522897 lt!1522894) lt!1523117)))

(declare-fun b!4300851 () Bool)

(declare-fun res!1762721 () Bool)

(assert (=> b!4300851 (=> (not res!1762721) (not e!2673387))))

(assert (=> b!4300851 (= res!1762721 (= (getValueByKey!216 (toList!2206 lt!1523117) (_1!26253 lt!1522894)) (Some!10166 (_2!26253 lt!1522894))))))

(declare-fun b!4300852 () Bool)

(assert (=> b!4300852 (= e!2673387 (contains!9881 (toList!2206 lt!1523117) lt!1522894))))

(assert (= (and d!1266719 res!1762720) b!4300851))

(assert (= (and b!4300851 res!1762721) b!4300852))

(declare-fun m!4893201 () Bool)

(assert (=> d!1266719 m!4893201))

(declare-fun m!4893203 () Bool)

(assert (=> d!1266719 m!4893203))

(declare-fun m!4893205 () Bool)

(assert (=> d!1266719 m!4893205))

(declare-fun m!4893207 () Bool)

(assert (=> d!1266719 m!4893207))

(declare-fun m!4893209 () Bool)

(assert (=> b!4300851 m!4893209))

(declare-fun m!4893211 () Bool)

(assert (=> b!4300852 m!4893211))

(assert (=> b!4300731 d!1266719))

(declare-fun d!1266721 () Bool)

(declare-fun res!1762722 () Bool)

(declare-fun e!2673388 () Bool)

(assert (=> d!1266721 (=> res!1762722 e!2673388)))

(assert (=> d!1266721 (= res!1762722 ((_ is Nil!47953) (toList!2206 lt!1522897)))))

(assert (=> d!1266721 (= (forall!8641 (toList!2206 lt!1522897) p!6034) e!2673388)))

(declare-fun b!4300853 () Bool)

(declare-fun e!2673389 () Bool)

(assert (=> b!4300853 (= e!2673388 e!2673389)))

(declare-fun res!1762723 () Bool)

(assert (=> b!4300853 (=> (not res!1762723) (not e!2673389))))

(assert (=> b!4300853 (= res!1762723 (dynLambda!20365 p!6034 (h!53373 (toList!2206 lt!1522897))))))

(declare-fun b!4300854 () Bool)

(assert (=> b!4300854 (= e!2673389 (forall!8641 (t!354832 (toList!2206 lt!1522897)) p!6034))))

(assert (= (and d!1266721 (not res!1762722)) b!4300853))

(assert (= (and b!4300853 res!1762723) b!4300854))

(declare-fun b_lambda!126397 () Bool)

(assert (=> (not b_lambda!126397) (not b!4300853)))

(declare-fun t!354840 () Bool)

(declare-fun tb!257247 () Bool)

(assert (=> (and start!412960 (= p!6034 p!6034) t!354840) tb!257247))

(declare-fun result!314544 () Bool)

(assert (=> tb!257247 (= result!314544 true)))

(assert (=> b!4300853 t!354840))

(declare-fun b_and!339449 () Bool)

(assert (= b_and!339447 (and (=> t!354840 result!314544) b_and!339449)))

(declare-fun m!4893213 () Bool)

(assert (=> b!4300853 m!4893213))

(declare-fun m!4893215 () Bool)

(assert (=> b!4300854 m!4893215))

(assert (=> b!4300722 d!1266721))

(declare-fun d!1266723 () Bool)

(declare-fun lt!1523118 () ListMap!1493)

(assert (=> d!1266723 (invariantList!547 (toList!2206 lt!1523118))))

(assert (=> d!1266723 (= lt!1523118 (extractMap!275 (toList!2207 (map!9913 (v!41930 (underlying!9288 hm!64))))))))

(assert (=> d!1266723 (valid!3513 hm!64)))

(assert (=> d!1266723 (= (map!9912 hm!64) lt!1523118)))

(declare-fun bs!604009 () Bool)

(assert (= bs!604009 d!1266723))

(declare-fun m!4893217 () Bool)

(assert (=> bs!604009 m!4893217))

(assert (=> bs!604009 m!4893045))

(declare-fun m!4893219 () Bool)

(assert (=> bs!604009 m!4893219))

(assert (=> bs!604009 m!4893011))

(assert (=> b!4300722 d!1266723))

(declare-fun b!4300859 () Bool)

(declare-fun e!2673392 () Bool)

(declare-fun tp!1321336 () Bool)

(assert (=> b!4300859 (= e!2673392 (and tp_is_empty!23289 tp_is_empty!23291 tp!1321336))))

(assert (=> b!4300728 (= tp!1321326 e!2673392)))

(assert (= (and b!4300728 ((_ is Cons!47953) (zeroValue!4788 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64))))))) b!4300859))

(declare-fun tp!1321337 () Bool)

(declare-fun b!4300860 () Bool)

(declare-fun e!2673393 () Bool)

(assert (=> b!4300860 (= e!2673393 (and tp_is_empty!23289 tp_is_empty!23291 tp!1321337))))

(assert (=> b!4300728 (= tp!1321332 e!2673393)))

(assert (= (and b!4300728 ((_ is Cons!47953) (minValue!4788 (v!41929 (underlying!9287 (v!41930 (underlying!9288 hm!64))))))) b!4300860))

(declare-fun tp!1321346 () Bool)

(declare-fun e!2673399 () Bool)

(declare-fun b!4300868 () Bool)

(assert (=> b!4300868 (= e!2673399 (and tp_is_empty!23289 tp_is_empty!23291 tp!1321346))))

(declare-fun mapNonEmpty!20346 () Bool)

(declare-fun mapRes!20346 () Bool)

(declare-fun tp!1321344 () Bool)

(declare-fun e!2673398 () Bool)

(assert (=> mapNonEmpty!20346 (= mapRes!20346 (and tp!1321344 e!2673398))))

(declare-fun mapRest!20346 () (Array (_ BitVec 32) List!48077))

(declare-fun mapValue!20346 () List!48077)

(declare-fun mapKey!20346 () (_ BitVec 32))

(assert (=> mapNonEmpty!20346 (= mapRest!20343 (store mapRest!20346 mapKey!20346 mapValue!20346))))

(declare-fun tp!1321345 () Bool)

(declare-fun b!4300867 () Bool)

(assert (=> b!4300867 (= e!2673398 (and tp_is_empty!23289 tp_is_empty!23291 tp!1321345))))

(declare-fun condMapEmpty!20346 () Bool)

(declare-fun mapDefault!20346 () List!48077)

(assert (=> mapNonEmpty!20343 (= condMapEmpty!20346 (= mapRest!20343 ((as const (Array (_ BitVec 32) List!48077)) mapDefault!20346)))))

(assert (=> mapNonEmpty!20343 (= tp!1321331 (and e!2673399 mapRes!20346))))

(declare-fun mapIsEmpty!20346 () Bool)

(assert (=> mapIsEmpty!20346 mapRes!20346))

(assert (= (and mapNonEmpty!20343 condMapEmpty!20346) mapIsEmpty!20346))

(assert (= (and mapNonEmpty!20343 (not condMapEmpty!20346)) mapNonEmpty!20346))

(assert (= (and mapNonEmpty!20346 ((_ is Cons!47953) mapValue!20346)) b!4300867))

(assert (= (and mapNonEmpty!20343 ((_ is Cons!47953) mapDefault!20346)) b!4300868))

(declare-fun m!4893221 () Bool)

(assert (=> mapNonEmpty!20346 m!4893221))

(declare-fun b!4300869 () Bool)

(declare-fun tp!1321347 () Bool)

(declare-fun e!2673400 () Bool)

(assert (=> b!4300869 (= e!2673400 (and tp_is_empty!23289 tp_is_empty!23291 tp!1321347))))

(assert (=> mapNonEmpty!20343 (= tp!1321327 e!2673400)))

(assert (= (and mapNonEmpty!20343 ((_ is Cons!47953) mapValue!20343)) b!4300869))

(declare-fun b!4300870 () Bool)

(declare-fun tp!1321348 () Bool)

(declare-fun e!2673401 () Bool)

(assert (=> b!4300870 (= e!2673401 (and tp_is_empty!23289 tp_is_empty!23291 tp!1321348))))

(assert (=> b!4300730 (= tp!1321330 e!2673401)))

(assert (= (and b!4300730 ((_ is Cons!47953) mapDefault!20343)) b!4300870))

(declare-fun b_lambda!126399 () Bool)

(assert (= b_lambda!126391 (or (and start!412960 b_free!128075) b_lambda!126399)))

(declare-fun b_lambda!126401 () Bool)

(assert (= b_lambda!126395 (or (and start!412960 b_free!128075) b_lambda!126401)))

(declare-fun b_lambda!126403 () Bool)

(assert (= b_lambda!126397 (or (and start!412960 b_free!128075) b_lambda!126403)))

(declare-fun b_lambda!126405 () Bool)

(assert (= b_lambda!126393 (or (and start!412960 b_free!128075) b_lambda!126405)))

(check-sat (not bm!296569) (not b!4300870) b_and!339439 (not bm!296585) (not b!4300776) (not b!4300839) (not bm!296587) (not b!4300869) (not b_next!128777) (not bm!296581) (not bm!296564) (not bm!296570) (not bm!296577) (not bm!296568) (not bm!296575) (not bm!296561) (not bm!296582) (not b_lambda!126389) (not b!4300736) (not b!4300859) (not bm!296494) (not d!1266719) (not b_next!128779) tp_is_empty!23289 (not b!4300767) (not b!4300867) (not d!1266699) (not b!4300768) (not d!1266723) (not bm!296584) tp_is_empty!23291 (not bm!296562) (not bm!296563) (not b_lambda!126403) (not b!4300787) (not bm!296558) (not d!1266709) (not b!4300773) (not b_lambda!126399) (not b!4300766) b_and!339435 (not b!4300775) (not d!1266703) (not bm!296576) (not mapNonEmpty!20346) (not b!4300852) (not b!4300737) (not b_lambda!126401) (not bm!296578) (not bm!296583) (not b!4300860) (not bm!296566) (not b!4300868) (not bm!296560) (not b!4300843) (not b!4300840) (not bm!296586) (not d!1266717) (not b!4300771) (not bm!296572) (not b!4300785) (not bm!296580) (not b!4300837) (not d!1266697) (not b!4300789) b_and!339449 (not bm!296571) (not b!4300830) (not bm!296573) (not b_next!128781) (not b!4300770) (not bm!296574) (not b!4300838) (not b!4300854) (not d!1266701) (not bm!296579) (not bm!296565) (not b!4300851) (not bm!296557) (not b_lambda!126405) (not bm!296492))
(check-sat (not b_next!128777) (not b_next!128779) b_and!339435 b_and!339439 b_and!339449 (not b_next!128781))
