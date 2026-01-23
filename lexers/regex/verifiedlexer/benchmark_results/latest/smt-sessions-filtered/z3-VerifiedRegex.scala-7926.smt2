; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412988 () Bool)

(assert start!412988)

(declare-fun b!4300971 () Bool)

(declare-fun b_free!128091 () Bool)

(declare-fun b_next!128795 () Bool)

(assert (=> b!4300971 (= b_free!128091 (not b_next!128795))))

(declare-fun tp!1321428 () Bool)

(declare-fun b_and!339463 () Bool)

(assert (=> b!4300971 (= tp!1321428 b_and!339463)))

(declare-fun b!4300970 () Bool)

(declare-fun b_free!128093 () Bool)

(declare-fun b_next!128797 () Bool)

(assert (=> b!4300970 (= b_free!128093 (not b_next!128797))))

(declare-fun tp!1321432 () Bool)

(declare-fun b_and!339465 () Bool)

(assert (=> b!4300970 (= tp!1321432 b_and!339465)))

(declare-fun b!4300964 () Bool)

(declare-fun res!1762751 () Bool)

(declare-fun e!2673502 () Bool)

(assert (=> b!4300964 (=> (not res!1762751) (not e!2673502))))

(declare-datatypes ((V!9281 0))(
  ( (V!9282 (val!15521 Int)) )
))
(declare-datatypes ((K!9079 0))(
  ( (K!9080 (val!15522 Int)) )
))
(declare-datatypes ((tuple2!45964 0))(
  ( (tuple2!45965 (_1!26261 K!9079) (_2!26261 V!9281)) )
))
(declare-datatypes ((List!48083 0))(
  ( (Nil!47959) (Cons!47959 (h!53379 tuple2!45964) (t!354846 List!48083)) )
))
(declare-datatypes ((array!16246 0))(
  ( (array!16247 (arr!7251 (Array (_ BitVec 32) (_ BitVec 64))) (size!35290 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4449 0))(
  ( (HashableExt!4448 (__x!29624 Int)) )
))
(declare-datatypes ((array!16248 0))(
  ( (array!16249 (arr!7252 (Array (_ BitVec 32) List!48083)) (size!35291 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9066 0))(
  ( (LongMapFixedSize!9067 (defaultEntry!4918 Int) (mask!13028 (_ BitVec 32)) (extraKeys!4782 (_ BitVec 32)) (zeroValue!4792 List!48083) (minValue!4792 List!48083) (_size!9109 (_ BitVec 32)) (_keys!4833 array!16246) (_values!4814 array!16248) (_vacant!4594 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17941 0))(
  ( (Cell!17942 (v!41939 LongMapFixedSize!9066)) )
))
(declare-datatypes ((MutLongMap!4533 0))(
  ( (LongMap!4533 (underlying!9295 Cell!17941)) (MutLongMapExt!4532 (__x!29625 Int)) )
))
(declare-datatypes ((Cell!17943 0))(
  ( (Cell!17944 (v!41940 MutLongMap!4533)) )
))
(declare-datatypes ((MutableMap!4439 0))(
  ( (MutableMapExt!4438 (__x!29626 Int)) (HashMap!4439 (underlying!9296 Cell!17943) (hashF!6481 Hashable!4449) (_size!9110 (_ BitVec 32)) (defaultValue!4610 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4439)

(declare-fun valid!3516 (MutableMap!4439) Bool)

(assert (=> b!4300964 (= res!1762751 (valid!3516 thiss!42308))))

(declare-fun b!4300965 () Bool)

(declare-fun e!2673499 () Bool)

(declare-fun e!2673495 () Bool)

(assert (=> b!4300965 (= e!2673499 e!2673495)))

(declare-fun b!4300966 () Bool)

(declare-fun e!2673503 () Bool)

(declare-fun tp!1321426 () Bool)

(declare-fun mapRes!20358 () Bool)

(assert (=> b!4300966 (= e!2673503 (and tp!1321426 mapRes!20358))))

(declare-fun condMapEmpty!20358 () Bool)

(declare-fun mapDefault!20358 () List!48083)

(assert (=> b!4300966 (= condMapEmpty!20358 (= (arr!7252 (_values!4814 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48083)) mapDefault!20358)))))

(declare-fun b!4300967 () Bool)

(declare-fun e!2673498 () Bool)

(assert (=> b!4300967 (= e!2673502 e!2673498)))

(declare-fun res!1762753 () Bool)

(assert (=> b!4300967 (=> (not res!1762753) (not e!2673498))))

(get-info :version)

(assert (=> b!4300967 (= res!1762753 ((_ is LongMap!4533) (v!41940 (underlying!9296 thiss!42308))))))

(declare-datatypes ((ListMap!1497 0))(
  ( (ListMap!1498 (toList!2209 List!48083)) )
))
(declare-fun lt!1523141 () ListMap!1497)

(declare-fun map!9917 (MutableMap!4439) ListMap!1497)

(assert (=> b!4300967 (= lt!1523141 (map!9917 thiss!42308))))

(declare-fun mapNonEmpty!20358 () Bool)

(declare-fun tp!1321430 () Bool)

(declare-fun tp!1321427 () Bool)

(assert (=> mapNonEmpty!20358 (= mapRes!20358 (and tp!1321430 tp!1321427))))

(declare-fun mapValue!20358 () List!48083)

(declare-fun mapKey!20358 () (_ BitVec 32))

(declare-fun mapRest!20358 () (Array (_ BitVec 32) List!48083))

(assert (=> mapNonEmpty!20358 (= (arr!7252 (_values!4814 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308)))))) (store mapRest!20358 mapKey!20358 mapValue!20358))))

(declare-fun b!4300968 () Bool)

(declare-fun e!2673496 () Bool)

(declare-fun e!2673500 () Bool)

(declare-fun lt!1523142 () MutLongMap!4533)

(assert (=> b!4300968 (= e!2673496 (and e!2673500 ((_ is LongMap!4533) lt!1523142)))))

(assert (=> b!4300968 (= lt!1523142 (v!41940 (underlying!9296 thiss!42308)))))

(declare-fun mapIsEmpty!20358 () Bool)

(assert (=> mapIsEmpty!20358 mapRes!20358))

(declare-fun res!1762752 () Bool)

(assert (=> start!412988 (=> (not res!1762752) (not e!2673502))))

(assert (=> start!412988 (= res!1762752 ((_ is HashMap!4439) thiss!42308))))

(assert (=> start!412988 e!2673502))

(declare-fun e!2673501 () Bool)

(assert (=> start!412988 e!2673501))

(declare-fun b!4300969 () Bool)

(declare-fun valid!3517 (MutLongMap!4533) Bool)

(assert (=> b!4300969 (= e!2673498 (not (valid!3517 (v!41940 (underlying!9296 thiss!42308)))))))

(assert (=> b!4300970 (= e!2673501 (and e!2673496 tp!1321432))))

(declare-fun tp!1321431 () Bool)

(declare-fun tp!1321429 () Bool)

(declare-fun array_inv!5197 (array!16246) Bool)

(declare-fun array_inv!5198 (array!16248) Bool)

(assert (=> b!4300971 (= e!2673495 (and tp!1321428 tp!1321429 tp!1321431 (array_inv!5197 (_keys!4833 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308)))))) (array_inv!5198 (_values!4814 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308)))))) e!2673503))))

(declare-fun b!4300972 () Bool)

(assert (=> b!4300972 (= e!2673500 e!2673499)))

(assert (= (and start!412988 res!1762752) b!4300964))

(assert (= (and b!4300964 res!1762751) b!4300967))

(assert (= (and b!4300967 res!1762753) b!4300969))

(assert (= (and b!4300966 condMapEmpty!20358) mapIsEmpty!20358))

(assert (= (and b!4300966 (not condMapEmpty!20358)) mapNonEmpty!20358))

(assert (= b!4300971 b!4300966))

(assert (= b!4300965 b!4300971))

(assert (= b!4300972 b!4300965))

(assert (= (and b!4300968 ((_ is LongMap!4533) (v!41940 (underlying!9296 thiss!42308)))) b!4300972))

(assert (= b!4300970 b!4300968))

(assert (= (and start!412988 ((_ is HashMap!4439) thiss!42308)) b!4300970))

(declare-fun m!4893255 () Bool)

(assert (=> b!4300971 m!4893255))

(declare-fun m!4893257 () Bool)

(assert (=> b!4300971 m!4893257))

(declare-fun m!4893259 () Bool)

(assert (=> b!4300967 m!4893259))

(declare-fun m!4893261 () Bool)

(assert (=> b!4300964 m!4893261))

(declare-fun m!4893263 () Bool)

(assert (=> mapNonEmpty!20358 m!4893263))

(declare-fun m!4893265 () Bool)

(assert (=> b!4300969 m!4893265))

(check-sat (not b!4300969) (not mapNonEmpty!20358) (not b!4300964) (not b_next!128795) b_and!339463 (not b_next!128797) (not b!4300971) b_and!339465 (not b!4300967) (not b!4300966))
(check-sat b_and!339463 b_and!339465 (not b_next!128797) (not b_next!128795))
(get-model)

(declare-fun d!1266727 () Bool)

(declare-fun valid!3518 (LongMapFixedSize!9066) Bool)

(assert (=> d!1266727 (= (valid!3517 (v!41940 (underlying!9296 thiss!42308))) (valid!3518 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308))))))))

(declare-fun bs!604014 () Bool)

(assert (= bs!604014 d!1266727))

(declare-fun m!4893267 () Bool)

(assert (=> bs!604014 m!4893267))

(assert (=> b!4300969 d!1266727))

(declare-fun d!1266729 () Bool)

(declare-fun lt!1523145 () ListMap!1497)

(declare-fun invariantList!548 (List!48083) Bool)

(assert (=> d!1266729 (invariantList!548 (toList!2209 lt!1523145))))

(declare-datatypes ((tuple2!45966 0))(
  ( (tuple2!45967 (_1!26262 (_ BitVec 64)) (_2!26262 List!48083)) )
))
(declare-datatypes ((List!48084 0))(
  ( (Nil!47960) (Cons!47960 (h!53380 tuple2!45966) (t!354847 List!48084)) )
))
(declare-fun extractMap!276 (List!48084) ListMap!1497)

(declare-datatypes ((ListLongMap!815 0))(
  ( (ListLongMap!816 (toList!2210 List!48084)) )
))
(declare-fun map!9918 (MutLongMap!4533) ListLongMap!815)

(assert (=> d!1266729 (= lt!1523145 (extractMap!276 (toList!2210 (map!9918 (v!41940 (underlying!9296 thiss!42308))))))))

(assert (=> d!1266729 (valid!3516 thiss!42308)))

(assert (=> d!1266729 (= (map!9917 thiss!42308) lt!1523145)))

(declare-fun bs!604015 () Bool)

(assert (= bs!604015 d!1266729))

(declare-fun m!4893269 () Bool)

(assert (=> bs!604015 m!4893269))

(declare-fun m!4893271 () Bool)

(assert (=> bs!604015 m!4893271))

(declare-fun m!4893273 () Bool)

(assert (=> bs!604015 m!4893273))

(assert (=> bs!604015 m!4893261))

(assert (=> b!4300967 d!1266729))

(declare-fun d!1266731 () Bool)

(assert (=> d!1266731 (= (array_inv!5197 (_keys!4833 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308)))))) (bvsge (size!35290 (_keys!4833 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300971 d!1266731))

(declare-fun d!1266733 () Bool)

(assert (=> d!1266733 (= (array_inv!5198 (_values!4814 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308)))))) (bvsge (size!35291 (_values!4814 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300971 d!1266733))

(declare-fun d!1266735 () Bool)

(declare-fun res!1762758 () Bool)

(declare-fun e!2673506 () Bool)

(assert (=> d!1266735 (=> (not res!1762758) (not e!2673506))))

(assert (=> d!1266735 (= res!1762758 (valid!3517 (v!41940 (underlying!9296 thiss!42308))))))

(assert (=> d!1266735 (= (valid!3516 thiss!42308) e!2673506)))

(declare-fun b!4300977 () Bool)

(declare-fun res!1762759 () Bool)

(assert (=> b!4300977 (=> (not res!1762759) (not e!2673506))))

(declare-fun lambda!132031 () Int)

(declare-fun forall!8643 (List!48084 Int) Bool)

(assert (=> b!4300977 (= res!1762759 (forall!8643 (toList!2210 (map!9918 (v!41940 (underlying!9296 thiss!42308)))) lambda!132031))))

(declare-fun b!4300978 () Bool)

(declare-fun allKeysSameHashInMap!276 (ListLongMap!815 Hashable!4449) Bool)

(assert (=> b!4300978 (= e!2673506 (allKeysSameHashInMap!276 (map!9918 (v!41940 (underlying!9296 thiss!42308))) (hashF!6481 thiss!42308)))))

(assert (= (and d!1266735 res!1762758) b!4300977))

(assert (= (and b!4300977 res!1762759) b!4300978))

(assert (=> d!1266735 m!4893265))

(assert (=> b!4300977 m!4893271))

(declare-fun m!4893275 () Bool)

(assert (=> b!4300977 m!4893275))

(assert (=> b!4300978 m!4893271))

(assert (=> b!4300978 m!4893271))

(declare-fun m!4893277 () Bool)

(assert (=> b!4300978 m!4893277))

(assert (=> b!4300964 d!1266735))

(declare-fun b!4300983 () Bool)

(declare-fun tp!1321435 () Bool)

(declare-fun e!2673509 () Bool)

(declare-fun tp_is_empty!23295 () Bool)

(declare-fun tp_is_empty!23293 () Bool)

(assert (=> b!4300983 (= e!2673509 (and tp_is_empty!23293 tp_is_empty!23295 tp!1321435))))

(assert (=> b!4300966 (= tp!1321426 e!2673509)))

(assert (= (and b!4300966 ((_ is Cons!47959) mapDefault!20358)) b!4300983))

(declare-fun mapNonEmpty!20361 () Bool)

(declare-fun mapRes!20361 () Bool)

(declare-fun tp!1321443 () Bool)

(declare-fun e!2673515 () Bool)

(assert (=> mapNonEmpty!20361 (= mapRes!20361 (and tp!1321443 e!2673515))))

(declare-fun mapRest!20361 () (Array (_ BitVec 32) List!48083))

(declare-fun mapKey!20361 () (_ BitVec 32))

(declare-fun mapValue!20361 () List!48083)

(assert (=> mapNonEmpty!20361 (= mapRest!20358 (store mapRest!20361 mapKey!20361 mapValue!20361))))

(declare-fun mapIsEmpty!20361 () Bool)

(assert (=> mapIsEmpty!20361 mapRes!20361))

(declare-fun tp!1321444 () Bool)

(declare-fun b!4300991 () Bool)

(declare-fun e!2673514 () Bool)

(assert (=> b!4300991 (= e!2673514 (and tp_is_empty!23293 tp_is_empty!23295 tp!1321444))))

(declare-fun condMapEmpty!20361 () Bool)

(declare-fun mapDefault!20361 () List!48083)

(assert (=> mapNonEmpty!20358 (= condMapEmpty!20361 (= mapRest!20358 ((as const (Array (_ BitVec 32) List!48083)) mapDefault!20361)))))

(assert (=> mapNonEmpty!20358 (= tp!1321430 (and e!2673514 mapRes!20361))))

(declare-fun tp!1321442 () Bool)

(declare-fun b!4300990 () Bool)

(assert (=> b!4300990 (= e!2673515 (and tp_is_empty!23293 tp_is_empty!23295 tp!1321442))))

(assert (= (and mapNonEmpty!20358 condMapEmpty!20361) mapIsEmpty!20361))

(assert (= (and mapNonEmpty!20358 (not condMapEmpty!20361)) mapNonEmpty!20361))

(assert (= (and mapNonEmpty!20361 ((_ is Cons!47959) mapValue!20361)) b!4300990))

(assert (= (and mapNonEmpty!20358 ((_ is Cons!47959) mapDefault!20361)) b!4300991))

(declare-fun m!4893279 () Bool)

(assert (=> mapNonEmpty!20361 m!4893279))

(declare-fun b!4300992 () Bool)

(declare-fun e!2673516 () Bool)

(declare-fun tp!1321445 () Bool)

(assert (=> b!4300992 (= e!2673516 (and tp_is_empty!23293 tp_is_empty!23295 tp!1321445))))

(assert (=> mapNonEmpty!20358 (= tp!1321427 e!2673516)))

(assert (= (and mapNonEmpty!20358 ((_ is Cons!47959) mapValue!20358)) b!4300992))

(declare-fun tp!1321446 () Bool)

(declare-fun b!4300993 () Bool)

(declare-fun e!2673517 () Bool)

(assert (=> b!4300993 (= e!2673517 (and tp_is_empty!23293 tp_is_empty!23295 tp!1321446))))

(assert (=> b!4300971 (= tp!1321429 e!2673517)))

(assert (= (and b!4300971 ((_ is Cons!47959) (zeroValue!4792 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308))))))) b!4300993))

(declare-fun b!4300994 () Bool)

(declare-fun e!2673518 () Bool)

(declare-fun tp!1321447 () Bool)

(assert (=> b!4300994 (= e!2673518 (and tp_is_empty!23293 tp_is_empty!23295 tp!1321447))))

(assert (=> b!4300971 (= tp!1321431 e!2673518)))

(assert (= (and b!4300971 ((_ is Cons!47959) (minValue!4792 (v!41939 (underlying!9295 (v!41940 (underlying!9296 thiss!42308))))))) b!4300994))

(check-sat (not d!1266729) (not b!4300978) (not b!4300983) (not d!1266735) (not b_next!128795) b_and!339463 tp_is_empty!23295 (not b!4300994) (not d!1266727) tp_is_empty!23293 (not b!4300991) (not b!4300977) (not b!4300993) (not b!4300992) (not b_next!128797) (not mapNonEmpty!20361) b_and!339465 (not b!4300990))
(check-sat b_and!339463 b_and!339465 (not b_next!128797) (not b_next!128795))
