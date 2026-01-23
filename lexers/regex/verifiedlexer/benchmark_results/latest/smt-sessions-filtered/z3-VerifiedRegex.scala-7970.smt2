; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413766 () Bool)

(assert start!413766)

(declare-fun b!4306764 () Bool)

(declare-fun b_free!128443 () Bool)

(declare-fun b_next!129147 () Bool)

(assert (=> b!4306764 (= b_free!128443 (not b_next!129147))))

(declare-fun tp!1323528 () Bool)

(declare-fun b_and!339847 () Bool)

(assert (=> b!4306764 (= tp!1323528 b_and!339847)))

(declare-fun b!4306769 () Bool)

(declare-fun b_free!128445 () Bool)

(declare-fun b_next!129149 () Bool)

(assert (=> b!4306769 (= b_free!128445 (not b_next!129149))))

(declare-fun tp!1323527 () Bool)

(declare-fun b_and!339849 () Bool)

(assert (=> b!4306769 (= tp!1323527 b_and!339849)))

(declare-fun mapIsEmpty!20671 () Bool)

(declare-fun mapRes!20671 () Bool)

(assert (=> mapIsEmpty!20671 mapRes!20671))

(declare-fun b!4306755 () Bool)

(declare-datatypes ((K!9299 0))(
  ( (K!9300 (val!15697 Int)) )
))
(declare-datatypes ((V!9501 0))(
  ( (V!9502 (val!15698 Int)) )
))
(declare-datatypes ((tuple2!46388 0))(
  ( (tuple2!46389 (_1!26473 K!9299) (_2!26473 V!9501)) )
))
(declare-datatypes ((List!48244 0))(
  ( (Nil!48120) (Cons!48120 (h!53549 tuple2!46388) (t!355033 List!48244)) )
))
(declare-fun e!2678002 () List!48244)

(declare-datatypes ((array!16630 0))(
  ( (array!16631 (arr!7427 (Array (_ BitVec 32) (_ BitVec 64))) (size!35466 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4537 0))(
  ( (HashableExt!4536 (__x!29888 Int)) )
))
(declare-datatypes ((array!16632 0))(
  ( (array!16633 (arr!7428 (Array (_ BitVec 32) List!48244)) (size!35467 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9242 0))(
  ( (LongMapFixedSize!9243 (defaultEntry!5006 Int) (mask!13160 (_ BitVec 32)) (extraKeys!4870 (_ BitVec 32)) (zeroValue!4880 List!48244) (minValue!4880 List!48244) (_size!9285 (_ BitVec 32)) (_keys!4921 array!16630) (_values!4902 array!16632) (_vacant!4682 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18293 0))(
  ( (Cell!18294 (v!42192 LongMapFixedSize!9242)) )
))
(declare-datatypes ((MutLongMap!4621 0))(
  ( (LongMap!4621 (underlying!9471 Cell!18293)) (MutLongMapExt!4620 (__x!29889 Int)) )
))
(declare-datatypes ((Cell!18295 0))(
  ( (Cell!18296 (v!42193 MutLongMap!4621)) )
))
(declare-datatypes ((MutableMap!4527 0))(
  ( (MutableMapExt!4526 (__x!29890 Int)) (HashMap!4527 (underlying!9472 Cell!18295) (hashF!6623 Hashable!4537) (_size!9286 (_ BitVec 32)) (defaultValue!4698 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4527)

(declare-fun lt!1527543 () (_ BitVec 64))

(declare-fun apply!10974 (MutLongMap!4621 (_ BitVec 64)) List!48244)

(assert (=> b!4306755 (= e!2678002 (apply!10974 (v!42193 (underlying!9472 thiss!42308)) lt!1527543))))

(declare-fun b!4306756 () Bool)

(assert (=> b!4306756 (= e!2678002 Nil!48120)))

(declare-fun b!4306757 () Bool)

(declare-fun res!1765235 () Bool)

(declare-fun e!2678001 () Bool)

(assert (=> b!4306757 (=> (not res!1765235) (not e!2678001))))

(declare-fun valid!3609 (MutableMap!4527) Bool)

(assert (=> b!4306757 (= res!1765235 (valid!3609 thiss!42308))))

(declare-fun b!4306758 () Bool)

(declare-fun e!2678005 () Bool)

(declare-fun e!2678010 () Bool)

(declare-fun lt!1527535 () MutLongMap!4621)

(get-info :version)

(assert (=> b!4306758 (= e!2678005 (and e!2678010 ((_ is LongMap!4621) lt!1527535)))))

(assert (=> b!4306758 (= lt!1527535 (v!42193 (underlying!9472 thiss!42308)))))

(declare-fun b!4306759 () Bool)

(declare-fun e!2678006 () Bool)

(declare-fun e!2678003 () Bool)

(assert (=> b!4306759 (= e!2678006 e!2678003)))

(declare-fun res!1765238 () Bool)

(assert (=> b!4306759 (=> (not res!1765238) (not e!2678003))))

(declare-datatypes ((tuple2!46390 0))(
  ( (tuple2!46391 (_1!26474 Bool) (_2!26474 MutLongMap!4621)) )
))
(declare-fun lt!1527541 () tuple2!46390)

(assert (=> b!4306759 (= res!1765238 (_1!26474 lt!1527541))))

(declare-fun lt!1527542 () List!48244)

(declare-fun update!401 (MutLongMap!4621 (_ BitVec 64) List!48244) tuple2!46390)

(assert (=> b!4306759 (= lt!1527541 (update!401 (v!42193 (underlying!9472 thiss!42308)) lt!1527543 lt!1527542))))

(declare-fun lt!1527546 () tuple2!46388)

(declare-fun lt!1527538 () List!48244)

(assert (=> b!4306759 (= lt!1527542 (Cons!48120 lt!1527546 lt!1527538))))

(declare-fun key!2048 () K!9299)

(declare-fun v!9179 () V!9501)

(assert (=> b!4306759 (= lt!1527546 (tuple2!46389 key!2048 v!9179))))

(assert (=> b!4306759 (= lt!1527538 e!2678002)))

(declare-fun c!732220 () Bool)

(declare-fun contains!10071 (MutLongMap!4621 (_ BitVec 64)) Bool)

(assert (=> b!4306759 (= c!732220 (contains!10071 (v!42193 (underlying!9472 thiss!42308)) lt!1527543))))

(declare-fun hash!949 (Hashable!4537 K!9299) (_ BitVec 64))

(assert (=> b!4306759 (= lt!1527543 (hash!949 (hashF!6623 thiss!42308) key!2048))))

(declare-fun b!4306761 () Bool)

(declare-fun e!2678008 () Bool)

(declare-fun e!2678011 () Bool)

(assert (=> b!4306761 (= e!2678008 e!2678011)))

(declare-fun b!4306762 () Bool)

(declare-datatypes ((Unit!67146 0))(
  ( (Unit!67147) )
))
(declare-fun e!2678009 () Unit!67146)

(declare-fun lt!1527536 () Unit!67146)

(assert (=> b!4306762 (= e!2678009 lt!1527536)))

(declare-fun lt!1527545 () Unit!67146)

(declare-datatypes ((tuple2!46392 0))(
  ( (tuple2!46393 (_1!26475 (_ BitVec 64)) (_2!26475 List!48244)) )
))
(declare-datatypes ((List!48245 0))(
  ( (Nil!48121) (Cons!48121 (h!53550 tuple2!46392) (t!355034 List!48245)) )
))
(declare-datatypes ((ListLongMap!949 0))(
  ( (ListLongMap!950 (toList!2338 List!48245)) )
))
(declare-fun lt!1527539 () ListLongMap!949)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!155 (List!48245 (_ BitVec 64) List!48244 Hashable!4537) Unit!67146)

(assert (=> b!4306762 (= lt!1527545 (lemmaInLongMapAllKeySameHashThenForTuple!155 (toList!2338 lt!1527539) lt!1527543 lt!1527538 (hashF!6623 thiss!42308)))))

(declare-fun allKeysSameHash!165 (List!48244 (_ BitVec 64) Hashable!4537) Bool)

(assert (=> b!4306762 (allKeysSameHash!165 lt!1527538 lt!1527543 (hashF!6623 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!149 (List!48244 K!9299 (_ BitVec 64) Hashable!4537) Unit!67146)

(assert (=> b!4306762 (= lt!1527536 (lemmaRemovePairForKeyPreservesHash!149 lt!1527538 key!2048 lt!1527543 (hashF!6623 thiss!42308)))))

(declare-fun removePairForKey!189 (List!48244 K!9299) List!48244)

(assert (=> b!4306762 (allKeysSameHash!165 (removePairForKey!189 lt!1527538 key!2048) lt!1527543 (hashF!6623 thiss!42308))))

(declare-fun b!4306763 () Bool)

(assert (=> b!4306763 (= e!2678010 e!2678008)))

(declare-fun tp!1323530 () Bool)

(declare-fun e!2677999 () Bool)

(declare-fun tp!1323529 () Bool)

(declare-fun array_inv!5327 (array!16630) Bool)

(declare-fun array_inv!5328 (array!16632) Bool)

(assert (=> b!4306764 (= e!2678011 (and tp!1323528 tp!1323529 tp!1323530 (array_inv!5327 (_keys!4921 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))))) (array_inv!5328 (_values!4902 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))))) e!2677999))))

(declare-fun b!4306765 () Bool)

(declare-fun e!2678000 () Bool)

(declare-fun lt!1527544 () ListLongMap!949)

(declare-fun allKeysSameHashInMap!315 (ListLongMap!949 Hashable!4537) Bool)

(assert (=> b!4306765 (= e!2678000 (allKeysSameHashInMap!315 lt!1527544 (hashF!6623 thiss!42308)))))

(declare-fun b!4306760 () Bool)

(declare-fun e!2678004 () Bool)

(declare-fun lambda!132568 () Int)

(declare-fun forall!8705 (List!48245 Int) Bool)

(declare-fun map!10097 (MutLongMap!4621) ListLongMap!949)

(assert (=> b!4306760 (= e!2678004 (forall!8705 (toList!2338 (map!10097 (_2!26474 lt!1527541))) lambda!132568))))

(declare-fun res!1765237 () Bool)

(assert (=> start!413766 (=> (not res!1765237) (not e!2678001))))

(assert (=> start!413766 (= res!1765237 ((_ is HashMap!4527) thiss!42308))))

(assert (=> start!413766 e!2678001))

(declare-fun e!2678012 () Bool)

(assert (=> start!413766 e!2678012))

(declare-fun tp_is_empty!23605 () Bool)

(assert (=> start!413766 tp_is_empty!23605))

(declare-fun tp_is_empty!23607 () Bool)

(assert (=> start!413766 tp_is_empty!23607))

(declare-fun b!4306766 () Bool)

(declare-fun tp!1323524 () Bool)

(assert (=> b!4306766 (= e!2677999 (and tp!1323524 mapRes!20671))))

(declare-fun condMapEmpty!20671 () Bool)

(declare-fun mapDefault!20671 () List!48244)

(assert (=> b!4306766 (= condMapEmpty!20671 (= (arr!7428 (_values!4902 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48244)) mapDefault!20671)))))

(declare-fun b!4306767 () Bool)

(assert (=> b!4306767 (= e!2678001 e!2678006)))

(declare-fun res!1765240 () Bool)

(assert (=> b!4306767 (=> (not res!1765240) (not e!2678006))))

(declare-fun contains!10072 (MutableMap!4527 K!9299) Bool)

(assert (=> b!4306767 (= res!1765240 (not (contains!10072 thiss!42308 key!2048)))))

(assert (=> b!4306767 (= lt!1527539 (map!10097 (v!42193 (underlying!9472 thiss!42308))))))

(declare-datatypes ((ListMap!1621 0))(
  ( (ListMap!1622 (toList!2339 List!48244)) )
))
(declare-fun lt!1527540 () ListMap!1621)

(declare-fun map!10098 (MutableMap!4527) ListMap!1621)

(assert (=> b!4306767 (= lt!1527540 (map!10098 thiss!42308))))

(declare-fun mapNonEmpty!20671 () Bool)

(declare-fun tp!1323525 () Bool)

(declare-fun tp!1323526 () Bool)

(assert (=> mapNonEmpty!20671 (= mapRes!20671 (and tp!1323525 tp!1323526))))

(declare-fun mapValue!20671 () List!48244)

(declare-fun mapKey!20671 () (_ BitVec 32))

(declare-fun mapRest!20671 () (Array (_ BitVec 32) List!48244))

(assert (=> mapNonEmpty!20671 (= (arr!7428 (_values!4902 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))))) (store mapRest!20671 mapKey!20671 mapValue!20671))))

(declare-fun b!4306768 () Bool)

(assert (=> b!4306768 (= e!2678003 (not ((_ is LongMap!4621) (_2!26474 lt!1527541))))))

(assert (=> b!4306768 e!2678004))

(declare-fun res!1765239 () Bool)

(assert (=> b!4306768 (=> (not res!1765239) (not e!2678004))))

(declare-fun eq!126 (ListMap!1621 ListMap!1621) Bool)

(declare-fun extractMap!310 (List!48245) ListMap!1621)

(declare-fun +!233 (ListMap!1621 tuple2!46388) ListMap!1621)

(assert (=> b!4306768 (= res!1765239 (eq!126 (extractMap!310 (toList!2338 lt!1527544)) (+!233 (extractMap!310 (toList!2338 lt!1527539)) lt!1527546)))))

(declare-fun lt!1527537 () Unit!67146)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!44 (ListLongMap!949 (_ BitVec 64) List!48244 K!9299 V!9501 Hashable!4537) Unit!67146)

(assert (=> b!4306768 (= lt!1527537 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!44 lt!1527539 lt!1527543 lt!1527542 key!2048 v!9179 (hashF!6623 thiss!42308)))))

(assert (=> b!4306768 e!2678000))

(declare-fun res!1765236 () Bool)

(assert (=> b!4306768 (=> (not res!1765236) (not e!2678000))))

(assert (=> b!4306768 (= res!1765236 (forall!8705 (toList!2338 lt!1527544) lambda!132568))))

(declare-fun +!234 (ListLongMap!949 tuple2!46392) ListLongMap!949)

(assert (=> b!4306768 (= lt!1527544 (+!234 lt!1527539 (tuple2!46393 lt!1527543 lt!1527542)))))

(declare-fun lt!1527534 () Unit!67146)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!133 (ListLongMap!949 (_ BitVec 64) List!48244 Hashable!4537) Unit!67146)

(assert (=> b!4306768 (= lt!1527534 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!133 lt!1527539 lt!1527543 lt!1527542 (hashF!6623 thiss!42308)))))

(declare-fun lt!1527547 () Unit!67146)

(assert (=> b!4306768 (= lt!1527547 e!2678009)))

(declare-fun c!732219 () Bool)

(declare-fun isEmpty!28070 (List!48244) Bool)

(assert (=> b!4306768 (= c!732219 (not (isEmpty!28070 lt!1527538)))))

(assert (=> b!4306769 (= e!2678012 (and e!2678005 tp!1323527))))

(declare-fun b!4306770 () Bool)

(declare-fun Unit!67148 () Unit!67146)

(assert (=> b!4306770 (= e!2678009 Unit!67148)))

(assert (= (and start!413766 res!1765237) b!4306757))

(assert (= (and b!4306757 res!1765235) b!4306767))

(assert (= (and b!4306767 res!1765240) b!4306759))

(assert (= (and b!4306759 c!732220) b!4306755))

(assert (= (and b!4306759 (not c!732220)) b!4306756))

(assert (= (and b!4306759 res!1765238) b!4306768))

(assert (= (and b!4306768 c!732219) b!4306762))

(assert (= (and b!4306768 (not c!732219)) b!4306770))

(assert (= (and b!4306768 res!1765236) b!4306765))

(assert (= (and b!4306768 res!1765239) b!4306760))

(assert (= (and b!4306766 condMapEmpty!20671) mapIsEmpty!20671))

(assert (= (and b!4306766 (not condMapEmpty!20671)) mapNonEmpty!20671))

(assert (= b!4306764 b!4306766))

(assert (= b!4306761 b!4306764))

(assert (= b!4306763 b!4306761))

(assert (= (and b!4306758 ((_ is LongMap!4621) (v!42193 (underlying!9472 thiss!42308)))) b!4306763))

(assert (= b!4306769 b!4306758))

(assert (= (and start!413766 ((_ is HashMap!4527) thiss!42308)) b!4306769))

(declare-fun m!4899445 () Bool)

(assert (=> b!4306757 m!4899445))

(declare-fun m!4899447 () Bool)

(assert (=> b!4306760 m!4899447))

(declare-fun m!4899449 () Bool)

(assert (=> b!4306760 m!4899449))

(declare-fun m!4899451 () Bool)

(assert (=> b!4306767 m!4899451))

(declare-fun m!4899453 () Bool)

(assert (=> b!4306767 m!4899453))

(declare-fun m!4899455 () Bool)

(assert (=> b!4306767 m!4899455))

(declare-fun m!4899457 () Bool)

(assert (=> mapNonEmpty!20671 m!4899457))

(declare-fun m!4899459 () Bool)

(assert (=> b!4306764 m!4899459))

(declare-fun m!4899461 () Bool)

(assert (=> b!4306764 m!4899461))

(declare-fun m!4899463 () Bool)

(assert (=> b!4306765 m!4899463))

(declare-fun m!4899465 () Bool)

(assert (=> b!4306762 m!4899465))

(declare-fun m!4899467 () Bool)

(assert (=> b!4306762 m!4899467))

(declare-fun m!4899469 () Bool)

(assert (=> b!4306762 m!4899469))

(assert (=> b!4306762 m!4899465))

(declare-fun m!4899471 () Bool)

(assert (=> b!4306762 m!4899471))

(declare-fun m!4899473 () Bool)

(assert (=> b!4306762 m!4899473))

(declare-fun m!4899475 () Bool)

(assert (=> b!4306768 m!4899475))

(declare-fun m!4899477 () Bool)

(assert (=> b!4306768 m!4899477))

(declare-fun m!4899479 () Bool)

(assert (=> b!4306768 m!4899479))

(declare-fun m!4899481 () Bool)

(assert (=> b!4306768 m!4899481))

(declare-fun m!4899483 () Bool)

(assert (=> b!4306768 m!4899483))

(declare-fun m!4899485 () Bool)

(assert (=> b!4306768 m!4899485))

(declare-fun m!4899487 () Bool)

(assert (=> b!4306768 m!4899487))

(declare-fun m!4899489 () Bool)

(assert (=> b!4306768 m!4899489))

(assert (=> b!4306768 m!4899477))

(declare-fun m!4899491 () Bool)

(assert (=> b!4306768 m!4899491))

(assert (=> b!4306768 m!4899489))

(assert (=> b!4306768 m!4899479))

(declare-fun m!4899493 () Bool)

(assert (=> b!4306759 m!4899493))

(declare-fun m!4899495 () Bool)

(assert (=> b!4306759 m!4899495))

(declare-fun m!4899497 () Bool)

(assert (=> b!4306759 m!4899497))

(declare-fun m!4899499 () Bool)

(assert (=> b!4306755 m!4899499))

(check-sat (not b!4306764) tp_is_empty!23605 (not b!4306757) (not b!4306765) (not b!4306760) b_and!339849 (not b!4306766) (not b!4306767) (not b!4306755) (not b_next!129147) tp_is_empty!23607 (not mapNonEmpty!20671) (not b!4306759) (not b!4306768) b_and!339847 (not b!4306762) (not b_next!129149))
(check-sat b_and!339847 b_and!339849 (not b_next!129149) (not b_next!129147))
(get-model)

(declare-fun bs!604619 () Bool)

(declare-fun d!1267515 () Bool)

(assert (= bs!604619 (and d!1267515 b!4306768)))

(declare-fun lambda!132571 () Int)

(assert (=> bs!604619 (not (= lambda!132571 lambda!132568))))

(assert (=> d!1267515 true))

(assert (=> d!1267515 (= (allKeysSameHashInMap!315 lt!1527544 (hashF!6623 thiss!42308)) (forall!8705 (toList!2338 lt!1527544) lambda!132571))))

(declare-fun bs!604620 () Bool)

(assert (= bs!604620 d!1267515))

(declare-fun m!4899501 () Bool)

(assert (=> bs!604620 m!4899501))

(assert (=> b!4306765 d!1267515))

(declare-fun d!1267517 () Bool)

(assert (=> d!1267517 (= (array_inv!5327 (_keys!4921 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))))) (bvsge (size!35466 (_keys!4921 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4306764 d!1267517))

(declare-fun d!1267519 () Bool)

(assert (=> d!1267519 (= (array_inv!5328 (_values!4902 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))))) (bvsge (size!35467 (_values!4902 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4306764 d!1267519))

(declare-fun d!1267521 () Bool)

(declare-fun e!2678024 () Bool)

(assert (=> d!1267521 e!2678024))

(declare-fun res!1765247 () Bool)

(assert (=> d!1267521 (=> (not res!1765247) (not e!2678024))))

(declare-fun lt!1527557 () tuple2!46390)

(assert (=> d!1267521 (= res!1765247 ((_ is LongMap!4621) (_2!26474 lt!1527557)))))

(declare-fun e!2678026 () tuple2!46390)

(assert (=> d!1267521 (= lt!1527557 e!2678026)))

(declare-fun c!732229 () Bool)

(declare-fun lt!1527558 () tuple2!46390)

(assert (=> d!1267521 (= c!732229 (_1!26474 lt!1527558))))

(declare-fun e!2678027 () tuple2!46390)

(assert (=> d!1267521 (= lt!1527558 e!2678027)))

(declare-fun c!732227 () Bool)

(declare-fun imbalanced!43 (MutLongMap!4621) Bool)

(assert (=> d!1267521 (= c!732227 (imbalanced!43 (v!42193 (underlying!9472 thiss!42308))))))

(declare-fun valid!3610 (MutLongMap!4621) Bool)

(assert (=> d!1267521 (valid!3610 (v!42193 (underlying!9472 thiss!42308)))))

(assert (=> d!1267521 (= (update!401 (v!42193 (underlying!9472 thiss!42308)) lt!1527543 lt!1527542) lt!1527557)))

(declare-fun b!4306791 () Bool)

(declare-fun e!2678025 () Bool)

(assert (=> b!4306791 (= e!2678024 e!2678025)))

(declare-fun c!732228 () Bool)

(assert (=> b!4306791 (= c!732228 (_1!26474 lt!1527557))))

(declare-fun b!4306792 () Bool)

(assert (=> b!4306792 (= e!2678026 (tuple2!46391 false (_2!26474 lt!1527558)))))

(declare-fun bm!296953 () Bool)

(declare-fun call!296959 () ListLongMap!949)

(assert (=> bm!296953 (= call!296959 (map!10097 (_2!26474 lt!1527557)))))

(declare-fun b!4306793 () Bool)

(declare-fun lt!1527556 () tuple2!46390)

(assert (=> b!4306793 (= e!2678027 (tuple2!46391 (_1!26474 lt!1527556) (_2!26474 lt!1527556)))))

(declare-fun repack!47 (MutLongMap!4621) tuple2!46390)

(assert (=> b!4306793 (= lt!1527556 (repack!47 (v!42193 (underlying!9472 thiss!42308))))))

(declare-fun b!4306794 () Bool)

(declare-datatypes ((tuple2!46394 0))(
  ( (tuple2!46395 (_1!26476 Bool) (_2!26476 LongMapFixedSize!9242)) )
))
(declare-fun lt!1527559 () tuple2!46394)

(assert (=> b!4306794 (= e!2678026 (tuple2!46391 (_1!26476 lt!1527559) (LongMap!4621 (Cell!18294 (_2!26476 lt!1527559)))))))

(declare-fun update!402 (LongMapFixedSize!9242 (_ BitVec 64) List!48244) tuple2!46394)

(assert (=> b!4306794 (= lt!1527559 (update!402 (v!42192 (underlying!9471 (_2!26474 lt!1527558))) lt!1527543 lt!1527542))))

(declare-fun b!4306795 () Bool)

(declare-fun res!1765248 () Bool)

(assert (=> b!4306795 (=> (not res!1765248) (not e!2678024))))

(assert (=> b!4306795 (= res!1765248 (valid!3610 (_2!26474 lt!1527557)))))

(declare-fun call!296958 () ListLongMap!949)

(declare-fun b!4306796 () Bool)

(declare-fun e!2678023 () Bool)

(assert (=> b!4306796 (= e!2678023 (= call!296959 (+!234 call!296958 (tuple2!46393 lt!1527543 lt!1527542))))))

(declare-fun b!4306797 () Bool)

(assert (=> b!4306797 (= e!2678027 (tuple2!46391 true (v!42193 (underlying!9472 thiss!42308))))))

(declare-fun b!4306798 () Bool)

(assert (=> b!4306798 (= e!2678025 (= call!296959 call!296958))))

(declare-fun bm!296954 () Bool)

(assert (=> bm!296954 (= call!296958 (map!10097 (v!42193 (underlying!9472 thiss!42308))))))

(declare-fun b!4306799 () Bool)

(assert (=> b!4306799 (= e!2678025 e!2678023)))

(declare-fun res!1765249 () Bool)

(declare-fun contains!10073 (ListLongMap!949 (_ BitVec 64)) Bool)

(assert (=> b!4306799 (= res!1765249 (contains!10073 call!296959 lt!1527543))))

(assert (=> b!4306799 (=> (not res!1765249) (not e!2678023))))

(assert (= (and d!1267521 c!732227) b!4306793))

(assert (= (and d!1267521 (not c!732227)) b!4306797))

(assert (= (and d!1267521 c!732229) b!4306794))

(assert (= (and d!1267521 (not c!732229)) b!4306792))

(assert (= (and d!1267521 res!1765247) b!4306795))

(assert (= (and b!4306795 res!1765248) b!4306791))

(assert (= (and b!4306791 c!732228) b!4306799))

(assert (= (and b!4306791 (not c!732228)) b!4306798))

(assert (= (and b!4306799 res!1765249) b!4306796))

(assert (= (or b!4306796 b!4306798) bm!296954))

(assert (= (or b!4306799 b!4306796 b!4306798) bm!296953))

(declare-fun m!4899503 () Bool)

(assert (=> bm!296953 m!4899503))

(declare-fun m!4899505 () Bool)

(assert (=> b!4306799 m!4899505))

(declare-fun m!4899507 () Bool)

(assert (=> b!4306796 m!4899507))

(declare-fun m!4899509 () Bool)

(assert (=> b!4306795 m!4899509))

(assert (=> bm!296954 m!4899453))

(declare-fun m!4899511 () Bool)

(assert (=> b!4306793 m!4899511))

(declare-fun m!4899513 () Bool)

(assert (=> b!4306794 m!4899513))

(declare-fun m!4899515 () Bool)

(assert (=> d!1267521 m!4899515))

(declare-fun m!4899517 () Bool)

(assert (=> d!1267521 m!4899517))

(assert (=> b!4306759 d!1267521))

(declare-fun d!1267523 () Bool)

(declare-fun lt!1527562 () Bool)

(assert (=> d!1267523 (= lt!1527562 (contains!10073 (map!10097 (v!42193 (underlying!9472 thiss!42308))) lt!1527543))))

(declare-fun contains!10074 (LongMapFixedSize!9242 (_ BitVec 64)) Bool)

(assert (=> d!1267523 (= lt!1527562 (contains!10074 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))) lt!1527543))))

(assert (=> d!1267523 (valid!3610 (v!42193 (underlying!9472 thiss!42308)))))

(assert (=> d!1267523 (= (contains!10071 (v!42193 (underlying!9472 thiss!42308)) lt!1527543) lt!1527562)))

(declare-fun bs!604621 () Bool)

(assert (= bs!604621 d!1267523))

(assert (=> bs!604621 m!4899453))

(assert (=> bs!604621 m!4899453))

(declare-fun m!4899519 () Bool)

(assert (=> bs!604621 m!4899519))

(declare-fun m!4899521 () Bool)

(assert (=> bs!604621 m!4899521))

(assert (=> bs!604621 m!4899517))

(assert (=> b!4306759 d!1267523))

(declare-fun d!1267525 () Bool)

(declare-fun hash!954 (Hashable!4537 K!9299) (_ BitVec 64))

(assert (=> d!1267525 (= (hash!949 (hashF!6623 thiss!42308) key!2048) (hash!954 (hashF!6623 thiss!42308) key!2048))))

(declare-fun bs!604622 () Bool)

(assert (= bs!604622 d!1267525))

(declare-fun m!4899523 () Bool)

(assert (=> bs!604622 m!4899523))

(assert (=> b!4306759 d!1267525))

(declare-fun d!1267527 () Bool)

(declare-fun res!1765254 () Bool)

(declare-fun e!2678032 () Bool)

(assert (=> d!1267527 (=> res!1765254 e!2678032)))

(assert (=> d!1267527 (= res!1765254 ((_ is Nil!48121) (toList!2338 lt!1527544)))))

(assert (=> d!1267527 (= (forall!8705 (toList!2338 lt!1527544) lambda!132568) e!2678032)))

(declare-fun b!4306804 () Bool)

(declare-fun e!2678033 () Bool)

(assert (=> b!4306804 (= e!2678032 e!2678033)))

(declare-fun res!1765255 () Bool)

(assert (=> b!4306804 (=> (not res!1765255) (not e!2678033))))

(declare-fun dynLambda!20411 (Int tuple2!46392) Bool)

(assert (=> b!4306804 (= res!1765255 (dynLambda!20411 lambda!132568 (h!53550 (toList!2338 lt!1527544))))))

(declare-fun b!4306805 () Bool)

(assert (=> b!4306805 (= e!2678033 (forall!8705 (t!355034 (toList!2338 lt!1527544)) lambda!132568))))

(assert (= (and d!1267527 (not res!1765254)) b!4306804))

(assert (= (and b!4306804 res!1765255) b!4306805))

(declare-fun b_lambda!126523 () Bool)

(assert (=> (not b_lambda!126523) (not b!4306804)))

(declare-fun m!4899525 () Bool)

(assert (=> b!4306804 m!4899525))

(declare-fun m!4899527 () Bool)

(assert (=> b!4306805 m!4899527))

(assert (=> b!4306768 d!1267527))

(declare-fun bs!604623 () Bool)

(declare-fun d!1267529 () Bool)

(assert (= bs!604623 (and d!1267529 b!4306768)))

(declare-fun lambda!132576 () Int)

(assert (=> bs!604623 (= lambda!132576 lambda!132568)))

(declare-fun bs!604624 () Bool)

(assert (= bs!604624 (and d!1267529 d!1267515)))

(assert (=> bs!604624 (not (= lambda!132576 lambda!132571))))

(declare-fun e!2678036 () Bool)

(assert (=> d!1267529 e!2678036))

(declare-fun res!1765258 () Bool)

(assert (=> d!1267529 (=> (not res!1765258) (not e!2678036))))

(declare-fun lt!1527568 () ListLongMap!949)

(assert (=> d!1267529 (= res!1765258 (forall!8705 (toList!2338 lt!1527568) lambda!132576))))

(assert (=> d!1267529 (= lt!1527568 (+!234 lt!1527539 (tuple2!46393 lt!1527543 lt!1527542)))))

(declare-fun lt!1527567 () Unit!67146)

(declare-fun choose!26227 (ListLongMap!949 (_ BitVec 64) List!48244 Hashable!4537) Unit!67146)

(assert (=> d!1267529 (= lt!1527567 (choose!26227 lt!1527539 lt!1527543 lt!1527542 (hashF!6623 thiss!42308)))))

(assert (=> d!1267529 (forall!8705 (toList!2338 lt!1527539) lambda!132576)))

(assert (=> d!1267529 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!133 lt!1527539 lt!1527543 lt!1527542 (hashF!6623 thiss!42308)) lt!1527567)))

(declare-fun b!4306808 () Bool)

(assert (=> b!4306808 (= e!2678036 (allKeysSameHashInMap!315 lt!1527568 (hashF!6623 thiss!42308)))))

(assert (= (and d!1267529 res!1765258) b!4306808))

(declare-fun m!4899529 () Bool)

(assert (=> d!1267529 m!4899529))

(assert (=> d!1267529 m!4899487))

(declare-fun m!4899531 () Bool)

(assert (=> d!1267529 m!4899531))

(declare-fun m!4899533 () Bool)

(assert (=> d!1267529 m!4899533))

(declare-fun m!4899535 () Bool)

(assert (=> b!4306808 m!4899535))

(assert (=> b!4306768 d!1267529))

(declare-fun d!1267531 () Bool)

(declare-fun e!2678039 () Bool)

(assert (=> d!1267531 e!2678039))

(declare-fun res!1765263 () Bool)

(assert (=> d!1267531 (=> (not res!1765263) (not e!2678039))))

(declare-fun lt!1527579 () ListLongMap!949)

(assert (=> d!1267531 (= res!1765263 (contains!10073 lt!1527579 (_1!26475 (tuple2!46393 lt!1527543 lt!1527542))))))

(declare-fun lt!1527577 () List!48245)

(assert (=> d!1267531 (= lt!1527579 (ListLongMap!950 lt!1527577))))

(declare-fun lt!1527578 () Unit!67146)

(declare-fun lt!1527580 () Unit!67146)

(assert (=> d!1267531 (= lt!1527578 lt!1527580)))

(declare-datatypes ((Option!10207 0))(
  ( (None!10206) (Some!10206 (v!42198 List!48244)) )
))
(declare-fun getValueByKey!241 (List!48245 (_ BitVec 64)) Option!10207)

(assert (=> d!1267531 (= (getValueByKey!241 lt!1527577 (_1!26475 (tuple2!46393 lt!1527543 lt!1527542))) (Some!10206 (_2!26475 (tuple2!46393 lt!1527543 lt!1527542))))))

(declare-fun lemmaContainsTupThenGetReturnValue!64 (List!48245 (_ BitVec 64) List!48244) Unit!67146)

(assert (=> d!1267531 (= lt!1527580 (lemmaContainsTupThenGetReturnValue!64 lt!1527577 (_1!26475 (tuple2!46393 lt!1527543 lt!1527542)) (_2!26475 (tuple2!46393 lt!1527543 lt!1527542))))))

(declare-fun insertStrictlySorted!33 (List!48245 (_ BitVec 64) List!48244) List!48245)

(assert (=> d!1267531 (= lt!1527577 (insertStrictlySorted!33 (toList!2338 lt!1527539) (_1!26475 (tuple2!46393 lt!1527543 lt!1527542)) (_2!26475 (tuple2!46393 lt!1527543 lt!1527542))))))

(assert (=> d!1267531 (= (+!234 lt!1527539 (tuple2!46393 lt!1527543 lt!1527542)) lt!1527579)))

(declare-fun b!4306813 () Bool)

(declare-fun res!1765264 () Bool)

(assert (=> b!4306813 (=> (not res!1765264) (not e!2678039))))

(assert (=> b!4306813 (= res!1765264 (= (getValueByKey!241 (toList!2338 lt!1527579) (_1!26475 (tuple2!46393 lt!1527543 lt!1527542))) (Some!10206 (_2!26475 (tuple2!46393 lt!1527543 lt!1527542)))))))

(declare-fun b!4306814 () Bool)

(declare-fun contains!10075 (List!48245 tuple2!46392) Bool)

(assert (=> b!4306814 (= e!2678039 (contains!10075 (toList!2338 lt!1527579) (tuple2!46393 lt!1527543 lt!1527542)))))

(assert (= (and d!1267531 res!1765263) b!4306813))

(assert (= (and b!4306813 res!1765264) b!4306814))

(declare-fun m!4899537 () Bool)

(assert (=> d!1267531 m!4899537))

(declare-fun m!4899539 () Bool)

(assert (=> d!1267531 m!4899539))

(declare-fun m!4899541 () Bool)

(assert (=> d!1267531 m!4899541))

(declare-fun m!4899543 () Bool)

(assert (=> d!1267531 m!4899543))

(declare-fun m!4899545 () Bool)

(assert (=> b!4306813 m!4899545))

(declare-fun m!4899547 () Bool)

(assert (=> b!4306814 m!4899547))

(assert (=> b!4306768 d!1267531))

(declare-fun bs!604625 () Bool)

(declare-fun d!1267533 () Bool)

(assert (= bs!604625 (and d!1267533 b!4306768)))

(declare-fun lambda!132579 () Int)

(assert (=> bs!604625 (= lambda!132579 lambda!132568)))

(declare-fun bs!604626 () Bool)

(assert (= bs!604626 (and d!1267533 d!1267515)))

(assert (=> bs!604626 (not (= lambda!132579 lambda!132571))))

(declare-fun bs!604627 () Bool)

(assert (= bs!604627 (and d!1267533 d!1267529)))

(assert (=> bs!604627 (= lambda!132579 lambda!132576)))

(declare-fun lt!1527583 () ListMap!1621)

(declare-fun invariantList!564 (List!48244) Bool)

(assert (=> d!1267533 (invariantList!564 (toList!2339 lt!1527583))))

(declare-fun e!2678042 () ListMap!1621)

(assert (=> d!1267533 (= lt!1527583 e!2678042)))

(declare-fun c!732232 () Bool)

(assert (=> d!1267533 (= c!732232 ((_ is Cons!48121) (toList!2338 lt!1527539)))))

(assert (=> d!1267533 (forall!8705 (toList!2338 lt!1527539) lambda!132579)))

(assert (=> d!1267533 (= (extractMap!310 (toList!2338 lt!1527539)) lt!1527583)))

(declare-fun b!4306819 () Bool)

(declare-fun addToMapMapFromBucket!32 (List!48244 ListMap!1621) ListMap!1621)

(assert (=> b!4306819 (= e!2678042 (addToMapMapFromBucket!32 (_2!26475 (h!53550 (toList!2338 lt!1527539))) (extractMap!310 (t!355034 (toList!2338 lt!1527539)))))))

(declare-fun b!4306820 () Bool)

(assert (=> b!4306820 (= e!2678042 (ListMap!1622 Nil!48120))))

(assert (= (and d!1267533 c!732232) b!4306819))

(assert (= (and d!1267533 (not c!732232)) b!4306820))

(declare-fun m!4899549 () Bool)

(assert (=> d!1267533 m!4899549))

(declare-fun m!4899551 () Bool)

(assert (=> d!1267533 m!4899551))

(declare-fun m!4899553 () Bool)

(assert (=> b!4306819 m!4899553))

(assert (=> b!4306819 m!4899553))

(declare-fun m!4899555 () Bool)

(assert (=> b!4306819 m!4899555))

(assert (=> b!4306768 d!1267533))

(declare-fun bs!604628 () Bool)

(declare-fun d!1267535 () Bool)

(assert (= bs!604628 (and d!1267535 b!4306768)))

(declare-fun lambda!132582 () Int)

(assert (=> bs!604628 (= lambda!132582 lambda!132568)))

(declare-fun bs!604629 () Bool)

(assert (= bs!604629 (and d!1267535 d!1267515)))

(assert (=> bs!604629 (not (= lambda!132582 lambda!132571))))

(declare-fun bs!604630 () Bool)

(assert (= bs!604630 (and d!1267535 d!1267529)))

(assert (=> bs!604630 (= lambda!132582 lambda!132576)))

(declare-fun bs!604631 () Bool)

(assert (= bs!604631 (and d!1267535 d!1267533)))

(assert (=> bs!604631 (= lambda!132582 lambda!132579)))

(assert (=> d!1267535 (eq!126 (extractMap!310 (toList!2338 (+!234 lt!1527539 (tuple2!46393 lt!1527543 lt!1527542)))) (+!233 (extractMap!310 (toList!2338 lt!1527539)) (tuple2!46389 key!2048 v!9179)))))

(declare-fun lt!1527586 () Unit!67146)

(declare-fun choose!26228 (ListLongMap!949 (_ BitVec 64) List!48244 K!9299 V!9501 Hashable!4537) Unit!67146)

(assert (=> d!1267535 (= lt!1527586 (choose!26228 lt!1527539 lt!1527543 lt!1527542 key!2048 v!9179 (hashF!6623 thiss!42308)))))

(assert (=> d!1267535 (forall!8705 (toList!2338 lt!1527539) lambda!132582)))

(assert (=> d!1267535 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!44 lt!1527539 lt!1527543 lt!1527542 key!2048 v!9179 (hashF!6623 thiss!42308)) lt!1527586)))

(declare-fun bs!604632 () Bool)

(assert (= bs!604632 d!1267535))

(declare-fun m!4899557 () Bool)

(assert (=> bs!604632 m!4899557))

(declare-fun m!4899559 () Bool)

(assert (=> bs!604632 m!4899559))

(declare-fun m!4899561 () Bool)

(assert (=> bs!604632 m!4899561))

(assert (=> bs!604632 m!4899487))

(assert (=> bs!604632 m!4899557))

(assert (=> bs!604632 m!4899489))

(assert (=> bs!604632 m!4899559))

(declare-fun m!4899563 () Bool)

(assert (=> bs!604632 m!4899563))

(assert (=> bs!604632 m!4899489))

(declare-fun m!4899565 () Bool)

(assert (=> bs!604632 m!4899565))

(assert (=> b!4306768 d!1267535))

(declare-fun d!1267537 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7549 (List!48244) (InoxSet tuple2!46388))

(assert (=> d!1267537 (= (eq!126 (extractMap!310 (toList!2338 lt!1527544)) (+!233 (extractMap!310 (toList!2338 lt!1527539)) lt!1527546)) (= (content!7549 (toList!2339 (extractMap!310 (toList!2338 lt!1527544)))) (content!7549 (toList!2339 (+!233 (extractMap!310 (toList!2338 lt!1527539)) lt!1527546)))))))

(declare-fun bs!604633 () Bool)

(assert (= bs!604633 d!1267537))

(declare-fun m!4899567 () Bool)

(assert (=> bs!604633 m!4899567))

(declare-fun m!4899569 () Bool)

(assert (=> bs!604633 m!4899569))

(assert (=> b!4306768 d!1267537))

(declare-fun d!1267539 () Bool)

(declare-fun e!2678045 () Bool)

(assert (=> d!1267539 e!2678045))

(declare-fun res!1765269 () Bool)

(assert (=> d!1267539 (=> (not res!1765269) (not e!2678045))))

(declare-fun lt!1527595 () ListMap!1621)

(declare-fun contains!10076 (ListMap!1621 K!9299) Bool)

(assert (=> d!1267539 (= res!1765269 (contains!10076 lt!1527595 (_1!26473 lt!1527546)))))

(declare-fun lt!1527596 () List!48244)

(assert (=> d!1267539 (= lt!1527595 (ListMap!1622 lt!1527596))))

(declare-fun lt!1527597 () Unit!67146)

(declare-fun lt!1527598 () Unit!67146)

(assert (=> d!1267539 (= lt!1527597 lt!1527598)))

(declare-datatypes ((Option!10208 0))(
  ( (None!10207) (Some!10207 (v!42199 V!9501)) )
))
(declare-fun getValueByKey!242 (List!48244 K!9299) Option!10208)

(assert (=> d!1267539 (= (getValueByKey!242 lt!1527596 (_1!26473 lt!1527546)) (Some!10207 (_2!26473 lt!1527546)))))

(declare-fun lemmaContainsTupThenGetReturnValue!65 (List!48244 K!9299 V!9501) Unit!67146)

(assert (=> d!1267539 (= lt!1527598 (lemmaContainsTupThenGetReturnValue!65 lt!1527596 (_1!26473 lt!1527546) (_2!26473 lt!1527546)))))

(declare-fun insertNoDuplicatedKeys!40 (List!48244 K!9299 V!9501) List!48244)

(assert (=> d!1267539 (= lt!1527596 (insertNoDuplicatedKeys!40 (toList!2339 (extractMap!310 (toList!2338 lt!1527539))) (_1!26473 lt!1527546) (_2!26473 lt!1527546)))))

(assert (=> d!1267539 (= (+!233 (extractMap!310 (toList!2338 lt!1527539)) lt!1527546) lt!1527595)))

(declare-fun b!4306825 () Bool)

(declare-fun res!1765270 () Bool)

(assert (=> b!4306825 (=> (not res!1765270) (not e!2678045))))

(assert (=> b!4306825 (= res!1765270 (= (getValueByKey!242 (toList!2339 lt!1527595) (_1!26473 lt!1527546)) (Some!10207 (_2!26473 lt!1527546))))))

(declare-fun b!4306826 () Bool)

(declare-fun contains!10077 (List!48244 tuple2!46388) Bool)

(assert (=> b!4306826 (= e!2678045 (contains!10077 (toList!2339 lt!1527595) lt!1527546))))

(assert (= (and d!1267539 res!1765269) b!4306825))

(assert (= (and b!4306825 res!1765270) b!4306826))

(declare-fun m!4899571 () Bool)

(assert (=> d!1267539 m!4899571))

(declare-fun m!4899573 () Bool)

(assert (=> d!1267539 m!4899573))

(declare-fun m!4899575 () Bool)

(assert (=> d!1267539 m!4899575))

(declare-fun m!4899577 () Bool)

(assert (=> d!1267539 m!4899577))

(declare-fun m!4899579 () Bool)

(assert (=> b!4306825 m!4899579))

(declare-fun m!4899581 () Bool)

(assert (=> b!4306826 m!4899581))

(assert (=> b!4306768 d!1267539))

(declare-fun bs!604634 () Bool)

(declare-fun d!1267541 () Bool)

(assert (= bs!604634 (and d!1267541 b!4306768)))

(declare-fun lambda!132583 () Int)

(assert (=> bs!604634 (= lambda!132583 lambda!132568)))

(declare-fun bs!604635 () Bool)

(assert (= bs!604635 (and d!1267541 d!1267515)))

(assert (=> bs!604635 (not (= lambda!132583 lambda!132571))))

(declare-fun bs!604636 () Bool)

(assert (= bs!604636 (and d!1267541 d!1267529)))

(assert (=> bs!604636 (= lambda!132583 lambda!132576)))

(declare-fun bs!604637 () Bool)

(assert (= bs!604637 (and d!1267541 d!1267535)))

(assert (=> bs!604637 (= lambda!132583 lambda!132582)))

(declare-fun bs!604638 () Bool)

(assert (= bs!604638 (and d!1267541 d!1267533)))

(assert (=> bs!604638 (= lambda!132583 lambda!132579)))

(declare-fun lt!1527599 () ListMap!1621)

(assert (=> d!1267541 (invariantList!564 (toList!2339 lt!1527599))))

(declare-fun e!2678046 () ListMap!1621)

(assert (=> d!1267541 (= lt!1527599 e!2678046)))

(declare-fun c!732233 () Bool)

(assert (=> d!1267541 (= c!732233 ((_ is Cons!48121) (toList!2338 lt!1527544)))))

(assert (=> d!1267541 (forall!8705 (toList!2338 lt!1527544) lambda!132583)))

(assert (=> d!1267541 (= (extractMap!310 (toList!2338 lt!1527544)) lt!1527599)))

(declare-fun b!4306827 () Bool)

(assert (=> b!4306827 (= e!2678046 (addToMapMapFromBucket!32 (_2!26475 (h!53550 (toList!2338 lt!1527544))) (extractMap!310 (t!355034 (toList!2338 lt!1527544)))))))

(declare-fun b!4306828 () Bool)

(assert (=> b!4306828 (= e!2678046 (ListMap!1622 Nil!48120))))

(assert (= (and d!1267541 c!732233) b!4306827))

(assert (= (and d!1267541 (not c!732233)) b!4306828))

(declare-fun m!4899583 () Bool)

(assert (=> d!1267541 m!4899583))

(declare-fun m!4899585 () Bool)

(assert (=> d!1267541 m!4899585))

(declare-fun m!4899587 () Bool)

(assert (=> b!4306827 m!4899587))

(assert (=> b!4306827 m!4899587))

(declare-fun m!4899589 () Bool)

(assert (=> b!4306827 m!4899589))

(assert (=> b!4306768 d!1267541))

(declare-fun d!1267543 () Bool)

(assert (=> d!1267543 (= (isEmpty!28070 lt!1527538) ((_ is Nil!48120) lt!1527538))))

(assert (=> b!4306768 d!1267543))

(declare-fun d!1267545 () Bool)

(assert (=> d!1267545 (allKeysSameHash!165 (removePairForKey!189 lt!1527538 key!2048) lt!1527543 (hashF!6623 thiss!42308))))

(declare-fun lt!1527602 () Unit!67146)

(declare-fun choose!26229 (List!48244 K!9299 (_ BitVec 64) Hashable!4537) Unit!67146)

(assert (=> d!1267545 (= lt!1527602 (choose!26229 lt!1527538 key!2048 lt!1527543 (hashF!6623 thiss!42308)))))

(declare-fun noDuplicateKeys!195 (List!48244) Bool)

(assert (=> d!1267545 (noDuplicateKeys!195 lt!1527538)))

(assert (=> d!1267545 (= (lemmaRemovePairForKeyPreservesHash!149 lt!1527538 key!2048 lt!1527543 (hashF!6623 thiss!42308)) lt!1527602)))

(declare-fun bs!604639 () Bool)

(assert (= bs!604639 d!1267545))

(assert (=> bs!604639 m!4899465))

(assert (=> bs!604639 m!4899465))

(assert (=> bs!604639 m!4899467))

(declare-fun m!4899591 () Bool)

(assert (=> bs!604639 m!4899591))

(declare-fun m!4899593 () Bool)

(assert (=> bs!604639 m!4899593))

(assert (=> b!4306762 d!1267545))

(declare-fun d!1267547 () Bool)

(assert (=> d!1267547 true))

(assert (=> d!1267547 true))

(declare-fun lambda!132586 () Int)

(declare-fun forall!8706 (List!48244 Int) Bool)

(assert (=> d!1267547 (= (allKeysSameHash!165 lt!1527538 lt!1527543 (hashF!6623 thiss!42308)) (forall!8706 lt!1527538 lambda!132586))))

(declare-fun bs!604640 () Bool)

(assert (= bs!604640 d!1267547))

(declare-fun m!4899595 () Bool)

(assert (=> bs!604640 m!4899595))

(assert (=> b!4306762 d!1267547))

(declare-fun bs!604641 () Bool)

(declare-fun d!1267549 () Bool)

(assert (= bs!604641 (and d!1267549 d!1267547)))

(declare-fun lambda!132587 () Int)

(assert (=> bs!604641 (= lambda!132587 lambda!132586)))

(assert (=> d!1267549 true))

(assert (=> d!1267549 true))

(assert (=> d!1267549 (= (allKeysSameHash!165 (removePairForKey!189 lt!1527538 key!2048) lt!1527543 (hashF!6623 thiss!42308)) (forall!8706 (removePairForKey!189 lt!1527538 key!2048) lambda!132587))))

(declare-fun bs!604642 () Bool)

(assert (= bs!604642 d!1267549))

(assert (=> bs!604642 m!4899465))

(declare-fun m!4899597 () Bool)

(assert (=> bs!604642 m!4899597))

(assert (=> b!4306762 d!1267549))

(declare-fun bs!604643 () Bool)

(declare-fun d!1267551 () Bool)

(assert (= bs!604643 (and d!1267551 b!4306768)))

(declare-fun lambda!132590 () Int)

(assert (=> bs!604643 (not (= lambda!132590 lambda!132568))))

(declare-fun bs!604644 () Bool)

(assert (= bs!604644 (and d!1267551 d!1267515)))

(assert (=> bs!604644 (= lambda!132590 lambda!132571)))

(declare-fun bs!604645 () Bool)

(assert (= bs!604645 (and d!1267551 d!1267529)))

(assert (=> bs!604645 (not (= lambda!132590 lambda!132576))))

(declare-fun bs!604646 () Bool)

(assert (= bs!604646 (and d!1267551 d!1267541)))

(assert (=> bs!604646 (not (= lambda!132590 lambda!132583))))

(declare-fun bs!604647 () Bool)

(assert (= bs!604647 (and d!1267551 d!1267535)))

(assert (=> bs!604647 (not (= lambda!132590 lambda!132582))))

(declare-fun bs!604648 () Bool)

(assert (= bs!604648 (and d!1267551 d!1267533)))

(assert (=> bs!604648 (not (= lambda!132590 lambda!132579))))

(assert (=> d!1267551 true))

(assert (=> d!1267551 (allKeysSameHash!165 lt!1527538 lt!1527543 (hashF!6623 thiss!42308))))

(declare-fun lt!1527605 () Unit!67146)

(declare-fun choose!26230 (List!48245 (_ BitVec 64) List!48244 Hashable!4537) Unit!67146)

(assert (=> d!1267551 (= lt!1527605 (choose!26230 (toList!2338 lt!1527539) lt!1527543 lt!1527538 (hashF!6623 thiss!42308)))))

(assert (=> d!1267551 (forall!8705 (toList!2338 lt!1527539) lambda!132590)))

(assert (=> d!1267551 (= (lemmaInLongMapAllKeySameHashThenForTuple!155 (toList!2338 lt!1527539) lt!1527543 lt!1527538 (hashF!6623 thiss!42308)) lt!1527605)))

(declare-fun bs!604649 () Bool)

(assert (= bs!604649 d!1267551))

(assert (=> bs!604649 m!4899471))

(declare-fun m!4899599 () Bool)

(assert (=> bs!604649 m!4899599))

(declare-fun m!4899601 () Bool)

(assert (=> bs!604649 m!4899601))

(assert (=> b!4306762 d!1267551))

(declare-fun b!4306844 () Bool)

(declare-fun e!2678052 () List!48244)

(assert (=> b!4306844 (= e!2678052 Nil!48120)))

(declare-fun d!1267553 () Bool)

(declare-fun lt!1527608 () List!48244)

(declare-fun containsKey!288 (List!48244 K!9299) Bool)

(assert (=> d!1267553 (not (containsKey!288 lt!1527608 key!2048))))

(declare-fun e!2678051 () List!48244)

(assert (=> d!1267553 (= lt!1527608 e!2678051)))

(declare-fun c!732238 () Bool)

(assert (=> d!1267553 (= c!732238 (and ((_ is Cons!48120) lt!1527538) (= (_1!26473 (h!53549 lt!1527538)) key!2048)))))

(assert (=> d!1267553 (noDuplicateKeys!195 lt!1527538)))

(assert (=> d!1267553 (= (removePairForKey!189 lt!1527538 key!2048) lt!1527608)))

(declare-fun b!4306842 () Bool)

(assert (=> b!4306842 (= e!2678051 e!2678052)))

(declare-fun c!732239 () Bool)

(assert (=> b!4306842 (= c!732239 ((_ is Cons!48120) lt!1527538))))

(declare-fun b!4306841 () Bool)

(assert (=> b!4306841 (= e!2678051 (t!355033 lt!1527538))))

(declare-fun b!4306843 () Bool)

(assert (=> b!4306843 (= e!2678052 (Cons!48120 (h!53549 lt!1527538) (removePairForKey!189 (t!355033 lt!1527538) key!2048)))))

(assert (= (and d!1267553 c!732238) b!4306841))

(assert (= (and d!1267553 (not c!732238)) b!4306842))

(assert (= (and b!4306842 c!732239) b!4306843))

(assert (= (and b!4306842 (not c!732239)) b!4306844))

(declare-fun m!4899603 () Bool)

(assert (=> d!1267553 m!4899603))

(assert (=> d!1267553 m!4899593))

(declare-fun m!4899605 () Bool)

(assert (=> b!4306843 m!4899605))

(assert (=> b!4306762 d!1267553))

(declare-fun bs!604650 () Bool)

(declare-fun b!4306849 () Bool)

(assert (= bs!604650 (and b!4306849 b!4306768)))

(declare-fun lambda!132593 () Int)

(assert (=> bs!604650 (= lambda!132593 lambda!132568)))

(declare-fun bs!604651 () Bool)

(assert (= bs!604651 (and b!4306849 d!1267515)))

(assert (=> bs!604651 (not (= lambda!132593 lambda!132571))))

(declare-fun bs!604652 () Bool)

(assert (= bs!604652 (and b!4306849 d!1267551)))

(assert (=> bs!604652 (not (= lambda!132593 lambda!132590))))

(declare-fun bs!604653 () Bool)

(assert (= bs!604653 (and b!4306849 d!1267529)))

(assert (=> bs!604653 (= lambda!132593 lambda!132576)))

(declare-fun bs!604654 () Bool)

(assert (= bs!604654 (and b!4306849 d!1267541)))

(assert (=> bs!604654 (= lambda!132593 lambda!132583)))

(declare-fun bs!604655 () Bool)

(assert (= bs!604655 (and b!4306849 d!1267535)))

(assert (=> bs!604655 (= lambda!132593 lambda!132582)))

(declare-fun bs!604656 () Bool)

(assert (= bs!604656 (and b!4306849 d!1267533)))

(assert (=> bs!604656 (= lambda!132593 lambda!132579)))

(declare-fun d!1267555 () Bool)

(declare-fun res!1765275 () Bool)

(declare-fun e!2678055 () Bool)

(assert (=> d!1267555 (=> (not res!1765275) (not e!2678055))))

(assert (=> d!1267555 (= res!1765275 (valid!3610 (v!42193 (underlying!9472 thiss!42308))))))

(assert (=> d!1267555 (= (valid!3609 thiss!42308) e!2678055)))

(declare-fun res!1765276 () Bool)

(assert (=> b!4306849 (=> (not res!1765276) (not e!2678055))))

(assert (=> b!4306849 (= res!1765276 (forall!8705 (toList!2338 (map!10097 (v!42193 (underlying!9472 thiss!42308)))) lambda!132593))))

(declare-fun b!4306850 () Bool)

(assert (=> b!4306850 (= e!2678055 (allKeysSameHashInMap!315 (map!10097 (v!42193 (underlying!9472 thiss!42308))) (hashF!6623 thiss!42308)))))

(assert (= (and d!1267555 res!1765275) b!4306849))

(assert (= (and b!4306849 res!1765276) b!4306850))

(assert (=> d!1267555 m!4899517))

(assert (=> b!4306849 m!4899453))

(declare-fun m!4899607 () Bool)

(assert (=> b!4306849 m!4899607))

(assert (=> b!4306850 m!4899453))

(assert (=> b!4306850 m!4899453))

(declare-fun m!4899609 () Bool)

(assert (=> b!4306850 m!4899609))

(assert (=> b!4306757 d!1267555))

(declare-fun bs!604657 () Bool)

(declare-fun b!4306873 () Bool)

(assert (= bs!604657 (and b!4306873 b!4306849)))

(declare-fun lambda!132596 () Int)

(assert (=> bs!604657 (= lambda!132596 lambda!132593)))

(declare-fun bs!604658 () Bool)

(assert (= bs!604658 (and b!4306873 b!4306768)))

(assert (=> bs!604658 (= lambda!132596 lambda!132568)))

(declare-fun bs!604659 () Bool)

(assert (= bs!604659 (and b!4306873 d!1267515)))

(assert (=> bs!604659 (not (= lambda!132596 lambda!132571))))

(declare-fun bs!604660 () Bool)

(assert (= bs!604660 (and b!4306873 d!1267551)))

(assert (=> bs!604660 (not (= lambda!132596 lambda!132590))))

(declare-fun bs!604661 () Bool)

(assert (= bs!604661 (and b!4306873 d!1267529)))

(assert (=> bs!604661 (= lambda!132596 lambda!132576)))

(declare-fun bs!604662 () Bool)

(assert (= bs!604662 (and b!4306873 d!1267541)))

(assert (=> bs!604662 (= lambda!132596 lambda!132583)))

(declare-fun bs!604663 () Bool)

(assert (= bs!604663 (and b!4306873 d!1267535)))

(assert (=> bs!604663 (= lambda!132596 lambda!132582)))

(declare-fun bs!604664 () Bool)

(assert (= bs!604664 (and b!4306873 d!1267533)))

(assert (=> bs!604664 (= lambda!132596 lambda!132579)))

(declare-fun lt!1527660 () (_ BitVec 64))

(declare-fun e!2678074 () Unit!67146)

(declare-fun forallContained!1492 (List!48245 Int tuple2!46392) Unit!67146)

(assert (=> b!4306873 (= e!2678074 (forallContained!1492 (toList!2338 (map!10097 (v!42193 (underlying!9472 thiss!42308)))) lambda!132596 (tuple2!46393 lt!1527660 (apply!10974 (v!42193 (underlying!9472 thiss!42308)) lt!1527660))))))

(declare-fun c!732251 () Bool)

(assert (=> b!4306873 (= c!732251 (not (contains!10075 (toList!2338 (map!10097 (v!42193 (underlying!9472 thiss!42308)))) (tuple2!46393 lt!1527660 (apply!10974 (v!42193 (underlying!9472 thiss!42308)) lt!1527660)))))))

(declare-fun lt!1527661 () Unit!67146)

(declare-fun e!2678076 () Unit!67146)

(assert (=> b!4306873 (= lt!1527661 e!2678076)))

(declare-fun bm!296967 () Bool)

(declare-fun call!296975 () ListLongMap!949)

(assert (=> bm!296967 (= call!296975 (map!10097 (v!42193 (underlying!9472 thiss!42308))))))

(declare-fun b!4306874 () Bool)

(declare-fun e!2678073 () Unit!67146)

(declare-fun e!2678075 () Unit!67146)

(assert (=> b!4306874 (= e!2678073 e!2678075)))

(declare-fun res!1765284 () Bool)

(declare-fun call!296974 () Bool)

(assert (=> b!4306874 (= res!1765284 call!296974)))

(declare-fun e!2678072 () Bool)

(assert (=> b!4306874 (=> (not res!1765284) (not e!2678072))))

(declare-fun c!732248 () Bool)

(assert (=> b!4306874 (= c!732248 e!2678072)))

(declare-fun d!1267557 () Bool)

(declare-fun lt!1527658 () Bool)

(assert (=> d!1267557 (= lt!1527658 (contains!10076 (map!10098 thiss!42308) key!2048))))

(declare-fun e!2678071 () Bool)

(assert (=> d!1267557 (= lt!1527658 e!2678071)))

(declare-fun res!1765285 () Bool)

(assert (=> d!1267557 (=> (not res!1765285) (not e!2678071))))

(assert (=> d!1267557 (= res!1765285 (contains!10071 (v!42193 (underlying!9472 thiss!42308)) lt!1527660))))

(declare-fun lt!1527659 () Unit!67146)

(assert (=> d!1267557 (= lt!1527659 e!2678073)))

(declare-fun c!732250 () Bool)

(assert (=> d!1267557 (= c!732250 (contains!10076 (extractMap!310 (toList!2338 (map!10097 (v!42193 (underlying!9472 thiss!42308))))) key!2048))))

(declare-fun lt!1527650 () Unit!67146)

(assert (=> d!1267557 (= lt!1527650 e!2678074)))

(declare-fun c!732249 () Bool)

(assert (=> d!1267557 (= c!732249 (contains!10071 (v!42193 (underlying!9472 thiss!42308)) lt!1527660))))

(assert (=> d!1267557 (= lt!1527660 (hash!949 (hashF!6623 thiss!42308) key!2048))))

(assert (=> d!1267557 (valid!3609 thiss!42308)))

(assert (=> d!1267557 (= (contains!10072 thiss!42308 key!2048) lt!1527658)))

(declare-fun b!4306875 () Bool)

(declare-fun call!296973 () Bool)

(assert (=> b!4306875 (= e!2678072 call!296973)))

(declare-fun call!296972 () (_ BitVec 64))

(declare-fun lt!1527667 () ListLongMap!949)

(declare-fun bm!296968 () Bool)

(assert (=> bm!296968 (= call!296974 (contains!10073 (ite c!732250 lt!1527667 call!296975) call!296972))))

(declare-fun b!4306876 () Bool)

(declare-fun Unit!67149 () Unit!67146)

(assert (=> b!4306876 (= e!2678076 Unit!67149)))

(declare-fun bm!296969 () Bool)

(declare-datatypes ((Option!10209 0))(
  ( (None!10208) (Some!10208 (v!42200 tuple2!46388)) )
))
(declare-fun call!296976 () Option!10209)

(declare-fun call!296977 () List!48244)

(declare-fun getPair!125 (List!48244 K!9299) Option!10209)

(assert (=> bm!296969 (= call!296976 (getPair!125 call!296977 key!2048))))

(declare-fun b!4306877 () Bool)

(declare-fun lt!1527665 () Unit!67146)

(assert (=> b!4306877 (= e!2678073 lt!1527665)))

(assert (=> b!4306877 (= lt!1527667 call!296975)))

(declare-fun lemmaInGenericMapThenInLongMap!125 (ListLongMap!949 K!9299 Hashable!4537) Unit!67146)

(assert (=> b!4306877 (= lt!1527665 (lemmaInGenericMapThenInLongMap!125 lt!1527667 key!2048 (hashF!6623 thiss!42308)))))

(declare-fun res!1765283 () Bool)

(assert (=> b!4306877 (= res!1765283 call!296974)))

(declare-fun e!2678070 () Bool)

(assert (=> b!4306877 (=> (not res!1765283) (not e!2678070))))

(assert (=> b!4306877 e!2678070))

(declare-fun bm!296970 () Bool)

(declare-fun apply!10975 (ListLongMap!949 (_ BitVec 64)) List!48244)

(assert (=> bm!296970 (= call!296977 (apply!10975 (ite c!732250 lt!1527667 call!296975) call!296972))))

(declare-fun bm!296971 () Bool)

(assert (=> bm!296971 (= call!296972 (hash!949 (hashF!6623 thiss!42308) key!2048))))

(declare-fun b!4306878 () Bool)

(declare-fun Unit!67150 () Unit!67146)

(assert (=> b!4306878 (= e!2678074 Unit!67150)))

(declare-fun b!4306879 () Bool)

(assert (=> b!4306879 (= e!2678070 call!296973)))

(declare-fun b!4306880 () Bool)

(assert (=> b!4306880 false))

(declare-fun lt!1527651 () Unit!67146)

(declare-fun lt!1527654 () Unit!67146)

(assert (=> b!4306880 (= lt!1527651 lt!1527654)))

(declare-fun lt!1527668 () List!48245)

(declare-fun lt!1527666 () List!48244)

(assert (=> b!4306880 (contains!10075 lt!1527668 (tuple2!46393 lt!1527660 lt!1527666))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!136 (List!48245 (_ BitVec 64) List!48244) Unit!67146)

(assert (=> b!4306880 (= lt!1527654 (lemmaGetValueByKeyImpliesContainsTuple!136 lt!1527668 lt!1527660 lt!1527666))))

(assert (=> b!4306880 (= lt!1527666 (apply!10974 (v!42193 (underlying!9472 thiss!42308)) lt!1527660))))

(assert (=> b!4306880 (= lt!1527668 (toList!2338 (map!10097 (v!42193 (underlying!9472 thiss!42308)))))))

(declare-fun lt!1527656 () Unit!67146)

(declare-fun lt!1527653 () Unit!67146)

(assert (=> b!4306880 (= lt!1527656 lt!1527653)))

(declare-fun lt!1527652 () List!48245)

(declare-fun isDefined!7513 (Option!10207) Bool)

(assert (=> b!4306880 (isDefined!7513 (getValueByKey!241 lt!1527652 lt!1527660))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!165 (List!48245 (_ BitVec 64)) Unit!67146)

(assert (=> b!4306880 (= lt!1527653 (lemmaContainsKeyImpliesGetValueByKeyDefined!165 lt!1527652 lt!1527660))))

(assert (=> b!4306880 (= lt!1527652 (toList!2338 (map!10097 (v!42193 (underlying!9472 thiss!42308)))))))

(declare-fun lt!1527649 () Unit!67146)

(declare-fun lt!1527655 () Unit!67146)

(assert (=> b!4306880 (= lt!1527649 lt!1527655)))

(declare-fun lt!1527662 () List!48245)

(declare-fun containsKey!289 (List!48245 (_ BitVec 64)) Bool)

(assert (=> b!4306880 (containsKey!289 lt!1527662 lt!1527660)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!126 (List!48245 (_ BitVec 64)) Unit!67146)

(assert (=> b!4306880 (= lt!1527655 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!126 lt!1527662 lt!1527660))))

(assert (=> b!4306880 (= lt!1527662 (toList!2338 (map!10097 (v!42193 (underlying!9472 thiss!42308)))))))

(declare-fun Unit!67151 () Unit!67146)

(assert (=> b!4306880 (= e!2678076 Unit!67151)))

(declare-fun bm!296972 () Bool)

(declare-fun isDefined!7514 (Option!10209) Bool)

(assert (=> bm!296972 (= call!296973 (isDefined!7514 call!296976))))

(declare-fun b!4306881 () Bool)

(assert (=> b!4306881 false))

(declare-fun lt!1527664 () Unit!67146)

(declare-fun lt!1527657 () Unit!67146)

(assert (=> b!4306881 (= lt!1527664 lt!1527657)))

(declare-fun lt!1527663 () ListLongMap!949)

(assert (=> b!4306881 (contains!10076 (extractMap!310 (toList!2338 lt!1527663)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!125 (ListLongMap!949 K!9299 Hashable!4537) Unit!67146)

(assert (=> b!4306881 (= lt!1527657 (lemmaInLongMapThenInGenericMap!125 lt!1527663 key!2048 (hashF!6623 thiss!42308)))))

(assert (=> b!4306881 (= lt!1527663 call!296975)))

(declare-fun Unit!67152 () Unit!67146)

(assert (=> b!4306881 (= e!2678075 Unit!67152)))

(declare-fun b!4306882 () Bool)

(declare-fun Unit!67153 () Unit!67146)

(assert (=> b!4306882 (= e!2678075 Unit!67153)))

(declare-fun b!4306883 () Bool)

(assert (=> b!4306883 (= e!2678071 (isDefined!7514 (getPair!125 (apply!10974 (v!42193 (underlying!9472 thiss!42308)) lt!1527660) key!2048)))))

(assert (= (and d!1267557 c!732249) b!4306873))

(assert (= (and d!1267557 (not c!732249)) b!4306878))

(assert (= (and b!4306873 c!732251) b!4306880))

(assert (= (and b!4306873 (not c!732251)) b!4306876))

(assert (= (and d!1267557 c!732250) b!4306877))

(assert (= (and d!1267557 (not c!732250)) b!4306874))

(assert (= (and b!4306877 res!1765283) b!4306879))

(assert (= (and b!4306874 res!1765284) b!4306875))

(assert (= (and b!4306874 c!732248) b!4306881))

(assert (= (and b!4306874 (not c!732248)) b!4306882))

(assert (= (or b!4306877 b!4306879 b!4306874 b!4306875) bm!296971))

(assert (= (or b!4306877 b!4306874 b!4306875 b!4306881) bm!296967))

(assert (= (or b!4306879 b!4306875) bm!296970))

(assert (= (or b!4306877 b!4306874) bm!296968))

(assert (= (or b!4306879 b!4306875) bm!296969))

(assert (= (or b!4306879 b!4306875) bm!296972))

(assert (= (and d!1267557 res!1765285) b!4306883))

(assert (=> bm!296967 m!4899453))

(declare-fun m!4899611 () Bool)

(assert (=> b!4306877 m!4899611))

(declare-fun m!4899613 () Bool)

(assert (=> b!4306881 m!4899613))

(assert (=> b!4306881 m!4899613))

(declare-fun m!4899615 () Bool)

(assert (=> b!4306881 m!4899615))

(declare-fun m!4899617 () Bool)

(assert (=> b!4306881 m!4899617))

(declare-fun m!4899619 () Bool)

(assert (=> bm!296970 m!4899619))

(declare-fun m!4899621 () Bool)

(assert (=> b!4306880 m!4899621))

(declare-fun m!4899623 () Bool)

(assert (=> b!4306880 m!4899623))

(declare-fun m!4899625 () Bool)

(assert (=> b!4306880 m!4899625))

(declare-fun m!4899627 () Bool)

(assert (=> b!4306880 m!4899627))

(declare-fun m!4899629 () Bool)

(assert (=> b!4306880 m!4899629))

(declare-fun m!4899631 () Bool)

(assert (=> b!4306880 m!4899631))

(assert (=> b!4306880 m!4899453))

(declare-fun m!4899633 () Bool)

(assert (=> b!4306880 m!4899633))

(assert (=> b!4306880 m!4899629))

(declare-fun m!4899635 () Bool)

(assert (=> b!4306880 m!4899635))

(declare-fun m!4899637 () Bool)

(assert (=> bm!296972 m!4899637))

(declare-fun m!4899639 () Bool)

(assert (=> bm!296969 m!4899639))

(assert (=> b!4306883 m!4899623))

(assert (=> b!4306883 m!4899623))

(declare-fun m!4899641 () Bool)

(assert (=> b!4306883 m!4899641))

(assert (=> b!4306883 m!4899641))

(declare-fun m!4899643 () Bool)

(assert (=> b!4306883 m!4899643))

(declare-fun m!4899645 () Bool)

(assert (=> bm!296968 m!4899645))

(assert (=> bm!296971 m!4899497))

(declare-fun m!4899647 () Bool)

(assert (=> d!1267557 m!4899647))

(declare-fun m!4899649 () Bool)

(assert (=> d!1267557 m!4899649))

(declare-fun m!4899651 () Bool)

(assert (=> d!1267557 m!4899651))

(assert (=> d!1267557 m!4899455))

(assert (=> d!1267557 m!4899445))

(assert (=> d!1267557 m!4899455))

(declare-fun m!4899653 () Bool)

(assert (=> d!1267557 m!4899653))

(assert (=> d!1267557 m!4899497))

(assert (=> d!1267557 m!4899453))

(assert (=> d!1267557 m!4899647))

(assert (=> b!4306873 m!4899453))

(assert (=> b!4306873 m!4899623))

(declare-fun m!4899655 () Bool)

(assert (=> b!4306873 m!4899655))

(declare-fun m!4899657 () Bool)

(assert (=> b!4306873 m!4899657))

(assert (=> b!4306767 d!1267557))

(declare-fun d!1267559 () Bool)

(declare-fun map!10099 (LongMapFixedSize!9242) ListLongMap!949)

(assert (=> d!1267559 (= (map!10097 (v!42193 (underlying!9472 thiss!42308))) (map!10099 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308))))))))

(declare-fun bs!604665 () Bool)

(assert (= bs!604665 d!1267559))

(declare-fun m!4899659 () Bool)

(assert (=> bs!604665 m!4899659))

(assert (=> b!4306767 d!1267559))

(declare-fun d!1267561 () Bool)

(declare-fun lt!1527671 () ListMap!1621)

(assert (=> d!1267561 (invariantList!564 (toList!2339 lt!1527671))))

(assert (=> d!1267561 (= lt!1527671 (extractMap!310 (toList!2338 (map!10097 (v!42193 (underlying!9472 thiss!42308))))))))

(assert (=> d!1267561 (valid!3609 thiss!42308)))

(assert (=> d!1267561 (= (map!10098 thiss!42308) lt!1527671)))

(declare-fun bs!604666 () Bool)

(assert (= bs!604666 d!1267561))

(declare-fun m!4899661 () Bool)

(assert (=> bs!604666 m!4899661))

(assert (=> bs!604666 m!4899453))

(assert (=> bs!604666 m!4899647))

(assert (=> bs!604666 m!4899445))

(assert (=> b!4306767 d!1267561))

(declare-fun d!1267563 () Bool)

(declare-fun res!1765286 () Bool)

(declare-fun e!2678077 () Bool)

(assert (=> d!1267563 (=> res!1765286 e!2678077)))

(assert (=> d!1267563 (= res!1765286 ((_ is Nil!48121) (toList!2338 (map!10097 (_2!26474 lt!1527541)))))))

(assert (=> d!1267563 (= (forall!8705 (toList!2338 (map!10097 (_2!26474 lt!1527541))) lambda!132568) e!2678077)))

(declare-fun b!4306884 () Bool)

(declare-fun e!2678078 () Bool)

(assert (=> b!4306884 (= e!2678077 e!2678078)))

(declare-fun res!1765287 () Bool)

(assert (=> b!4306884 (=> (not res!1765287) (not e!2678078))))

(assert (=> b!4306884 (= res!1765287 (dynLambda!20411 lambda!132568 (h!53550 (toList!2338 (map!10097 (_2!26474 lt!1527541))))))))

(declare-fun b!4306885 () Bool)

(assert (=> b!4306885 (= e!2678078 (forall!8705 (t!355034 (toList!2338 (map!10097 (_2!26474 lt!1527541)))) lambda!132568))))

(assert (= (and d!1267563 (not res!1765286)) b!4306884))

(assert (= (and b!4306884 res!1765287) b!4306885))

(declare-fun b_lambda!126525 () Bool)

(assert (=> (not b_lambda!126525) (not b!4306884)))

(declare-fun m!4899663 () Bool)

(assert (=> b!4306884 m!4899663))

(declare-fun m!4899665 () Bool)

(assert (=> b!4306885 m!4899665))

(assert (=> b!4306760 d!1267563))

(declare-fun d!1267565 () Bool)

(assert (=> d!1267565 (= (map!10097 (_2!26474 lt!1527541)) (map!10099 (v!42192 (underlying!9471 (_2!26474 lt!1527541)))))))

(declare-fun bs!604667 () Bool)

(assert (= bs!604667 d!1267565))

(declare-fun m!4899667 () Bool)

(assert (=> bs!604667 m!4899667))

(assert (=> b!4306760 d!1267565))

(declare-fun d!1267567 () Bool)

(declare-fun e!2678081 () Bool)

(assert (=> d!1267567 e!2678081))

(declare-fun c!732254 () Bool)

(assert (=> d!1267567 (= c!732254 (contains!10071 (v!42193 (underlying!9472 thiss!42308)) lt!1527543))))

(declare-fun lt!1527674 () List!48244)

(declare-fun apply!10976 (LongMapFixedSize!9242 (_ BitVec 64)) List!48244)

(assert (=> d!1267567 (= lt!1527674 (apply!10976 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))) lt!1527543))))

(assert (=> d!1267567 (valid!3610 (v!42193 (underlying!9472 thiss!42308)))))

(assert (=> d!1267567 (= (apply!10974 (v!42193 (underlying!9472 thiss!42308)) lt!1527543) lt!1527674)))

(declare-fun b!4306890 () Bool)

(declare-fun get!15565 (Option!10207) List!48244)

(assert (=> b!4306890 (= e!2678081 (= lt!1527674 (get!15565 (getValueByKey!241 (toList!2338 (map!10097 (v!42193 (underlying!9472 thiss!42308)))) lt!1527543))))))

(declare-fun b!4306891 () Bool)

(declare-fun dynLambda!20412 (Int (_ BitVec 64)) List!48244)

(assert (=> b!4306891 (= e!2678081 (= lt!1527674 (dynLambda!20412 (defaultEntry!5006 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308))))) lt!1527543)))))

(assert (=> b!4306891 ((_ is LongMap!4621) (v!42193 (underlying!9472 thiss!42308)))))

(assert (= (and d!1267567 c!732254) b!4306890))

(assert (= (and d!1267567 (not c!732254)) b!4306891))

(declare-fun b_lambda!126527 () Bool)

(assert (=> (not b_lambda!126527) (not b!4306891)))

(declare-fun t!355036 () Bool)

(declare-fun tb!257275 () Bool)

(assert (=> (and b!4306764 (= (defaultEntry!5006 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308))))) (defaultEntry!5006 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308)))))) t!355036) tb!257275))

(assert (=> b!4306891 t!355036))

(declare-fun result!314640 () Bool)

(declare-fun b_and!339851 () Bool)

(assert (= b_and!339847 (and (=> t!355036 result!314640) b_and!339851)))

(assert (=> d!1267567 m!4899495))

(declare-fun m!4899669 () Bool)

(assert (=> d!1267567 m!4899669))

(assert (=> d!1267567 m!4899517))

(assert (=> b!4306890 m!4899453))

(declare-fun m!4899671 () Bool)

(assert (=> b!4306890 m!4899671))

(assert (=> b!4306890 m!4899671))

(declare-fun m!4899673 () Bool)

(assert (=> b!4306890 m!4899673))

(declare-fun m!4899675 () Bool)

(assert (=> b!4306891 m!4899675))

(assert (=> b!4306755 d!1267567))

(declare-fun e!2678084 () Bool)

(declare-fun b!4306896 () Bool)

(declare-fun tp!1323533 () Bool)

(assert (=> b!4306896 (= e!2678084 (and tp_is_empty!23605 tp_is_empty!23607 tp!1323533))))

(assert (=> b!4306764 (= tp!1323529 e!2678084)))

(assert (= (and b!4306764 ((_ is Cons!48120) (zeroValue!4880 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308))))))) b!4306896))

(declare-fun e!2678085 () Bool)

(declare-fun b!4306897 () Bool)

(declare-fun tp!1323534 () Bool)

(assert (=> b!4306897 (= e!2678085 (and tp_is_empty!23605 tp_is_empty!23607 tp!1323534))))

(assert (=> b!4306764 (= tp!1323530 e!2678085)))

(assert (= (and b!4306764 ((_ is Cons!48120) (minValue!4880 (v!42192 (underlying!9471 (v!42193 (underlying!9472 thiss!42308))))))) b!4306897))

(declare-fun mapIsEmpty!20674 () Bool)

(declare-fun mapRes!20674 () Bool)

(assert (=> mapIsEmpty!20674 mapRes!20674))

(declare-fun mapNonEmpty!20674 () Bool)

(declare-fun tp!1323542 () Bool)

(declare-fun e!2678090 () Bool)

(assert (=> mapNonEmpty!20674 (= mapRes!20674 (and tp!1323542 e!2678090))))

(declare-fun mapRest!20674 () (Array (_ BitVec 32) List!48244))

(declare-fun mapKey!20674 () (_ BitVec 32))

(declare-fun mapValue!20674 () List!48244)

(assert (=> mapNonEmpty!20674 (= mapRest!20671 (store mapRest!20674 mapKey!20674 mapValue!20674))))

(declare-fun e!2678091 () Bool)

(declare-fun b!4306905 () Bool)

(declare-fun tp!1323543 () Bool)

(assert (=> b!4306905 (= e!2678091 (and tp_is_empty!23605 tp_is_empty!23607 tp!1323543))))

(declare-fun condMapEmpty!20674 () Bool)

(declare-fun mapDefault!20674 () List!48244)

(assert (=> mapNonEmpty!20671 (= condMapEmpty!20674 (= mapRest!20671 ((as const (Array (_ BitVec 32) List!48244)) mapDefault!20674)))))

(assert (=> mapNonEmpty!20671 (= tp!1323525 (and e!2678091 mapRes!20674))))

(declare-fun b!4306904 () Bool)

(declare-fun tp!1323541 () Bool)

(assert (=> b!4306904 (= e!2678090 (and tp_is_empty!23605 tp_is_empty!23607 tp!1323541))))

(assert (= (and mapNonEmpty!20671 condMapEmpty!20674) mapIsEmpty!20674))

(assert (= (and mapNonEmpty!20671 (not condMapEmpty!20674)) mapNonEmpty!20674))

(assert (= (and mapNonEmpty!20674 ((_ is Cons!48120) mapValue!20674)) b!4306904))

(assert (= (and mapNonEmpty!20671 ((_ is Cons!48120) mapDefault!20674)) b!4306905))

(declare-fun m!4899677 () Bool)

(assert (=> mapNonEmpty!20674 m!4899677))

(declare-fun e!2678092 () Bool)

(declare-fun tp!1323544 () Bool)

(declare-fun b!4306906 () Bool)

(assert (=> b!4306906 (= e!2678092 (and tp_is_empty!23605 tp_is_empty!23607 tp!1323544))))

(assert (=> mapNonEmpty!20671 (= tp!1323526 e!2678092)))

(assert (= (and mapNonEmpty!20671 ((_ is Cons!48120) mapValue!20671)) b!4306906))

(declare-fun tp!1323545 () Bool)

(declare-fun e!2678093 () Bool)

(declare-fun b!4306907 () Bool)

(assert (=> b!4306907 (= e!2678093 (and tp_is_empty!23605 tp_is_empty!23607 tp!1323545))))

(assert (=> b!4306766 (= tp!1323524 e!2678093)))

(assert (= (and b!4306766 ((_ is Cons!48120) mapDefault!20671)) b!4306907))

(declare-fun b_lambda!126529 () Bool)

(assert (= b_lambda!126527 (or (and b!4306764 b_free!128443) b_lambda!126529)))

(declare-fun b_lambda!126531 () Bool)

(assert (= b_lambda!126523 (or b!4306768 b_lambda!126531)))

(declare-fun bs!604668 () Bool)

(declare-fun d!1267569 () Bool)

(assert (= bs!604668 (and d!1267569 b!4306768)))

(assert (=> bs!604668 (= (dynLambda!20411 lambda!132568 (h!53550 (toList!2338 lt!1527544))) (noDuplicateKeys!195 (_2!26475 (h!53550 (toList!2338 lt!1527544)))))))

(declare-fun m!4899679 () Bool)

(assert (=> bs!604668 m!4899679))

(assert (=> b!4306804 d!1267569))

(declare-fun b_lambda!126533 () Bool)

(assert (= b_lambda!126525 (or b!4306768 b_lambda!126533)))

(declare-fun bs!604669 () Bool)

(declare-fun d!1267571 () Bool)

(assert (= bs!604669 (and d!1267571 b!4306768)))

(assert (=> bs!604669 (= (dynLambda!20411 lambda!132568 (h!53550 (toList!2338 (map!10097 (_2!26474 lt!1527541))))) (noDuplicateKeys!195 (_2!26475 (h!53550 (toList!2338 (map!10097 (_2!26474 lt!1527541)))))))))

(declare-fun m!4899681 () Bool)

(assert (=> bs!604669 m!4899681))

(assert (=> b!4306884 d!1267571))

(check-sat (not d!1267567) (not d!1267555) (not b!4306905) (not d!1267565) (not b!4306813) (not b!4306873) (not b!4306793) (not bm!296972) (not b!4306827) (not b!4306883) (not d!1267515) (not d!1267561) (not bm!296967) (not b!4306906) (not b!4306843) (not d!1267541) (not b!4306799) (not b!4306819) (not d!1267535) tp_is_empty!23605 (not d!1267539) (not b!4306808) (not b!4306880) (not b!4306814) (not b_next!129149) (not b!4306881) (not bs!604668) (not b!4306897) (not bs!604669) (not d!1267525) (not b!4306850) (not b!4306904) (not b!4306907) (not tb!257275) (not d!1267545) (not d!1267533) (not d!1267551) (not d!1267547) (not d!1267557) (not bm!296968) (not b!4306877) (not b!4306849) (not bm!296969) (not b!4306805) (not b!4306896) b_and!339849 (not bm!296953) (not d!1267553) (not b!4306826) (not b!4306794) (not mapNonEmpty!20674) (not d!1267531) (not b!4306795) (not d!1267559) (not b!4306885) (not b_lambda!126531) (not d!1267523) (not bm!296970) (not bm!296954) (not b_lambda!126533) (not bm!296971) (not b_lambda!126529) (not b!4306796) (not d!1267537) (not b_next!129147) (not d!1267521) (not d!1267529) tp_is_empty!23607 b_and!339851 (not b!4306825) (not b!4306890) (not d!1267549))
(check-sat b_and!339851 b_and!339849 (not b_next!129149) (not b_next!129147))
