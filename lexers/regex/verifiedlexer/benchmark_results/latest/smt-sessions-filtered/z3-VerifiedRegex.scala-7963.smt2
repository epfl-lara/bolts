; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413644 () Bool)

(assert start!413644)

(declare-fun b!4305694 () Bool)

(declare-fun b_free!128387 () Bool)

(declare-fun b_next!129091 () Bool)

(assert (=> b!4305694 (= b_free!128387 (not b_next!129091))))

(declare-fun tp!1323205 () Bool)

(declare-fun b_and!339787 () Bool)

(assert (=> b!4305694 (= tp!1323205 b_and!339787)))

(declare-fun b!4305682 () Bool)

(declare-fun b_free!128389 () Bool)

(declare-fun b_next!129093 () Bool)

(assert (=> b!4305682 (= b_free!128389 (not b_next!129093))))

(declare-fun tp!1323202 () Bool)

(declare-fun b_and!339789 () Bool)

(assert (=> b!4305682 (= tp!1323202 b_and!339789)))

(declare-fun b!4305679 () Bool)

(declare-fun e!2677218 () Bool)

(declare-datatypes ((V!9466 0))(
  ( (V!9467 (val!15669 Int)) )
))
(declare-datatypes ((K!9264 0))(
  ( (K!9265 (val!15670 Int)) )
))
(declare-datatypes ((tuple2!46312 0))(
  ( (tuple2!46313 (_1!26435 K!9264) (_2!26435 V!9466)) )
))
(declare-datatypes ((List!48218 0))(
  ( (Nil!48094) (Cons!48094 (h!53521 tuple2!46312) (t!355003 List!48218)) )
))
(declare-datatypes ((tuple2!46314 0))(
  ( (tuple2!46315 (_1!26436 (_ BitVec 64)) (_2!26436 List!48218)) )
))
(declare-datatypes ((List!48219 0))(
  ( (Nil!48095) (Cons!48095 (h!53522 tuple2!46314) (t!355004 List!48219)) )
))
(declare-datatypes ((ListLongMap!925 0))(
  ( (ListLongMap!926 (toList!2315 List!48219)) )
))
(declare-fun lt!1526765 () ListLongMap!925)

(declare-fun lambda!132446 () Int)

(declare-fun forall!8691 (List!48219 Int) Bool)

(assert (=> b!4305679 (= e!2677218 (not (forall!8691 (toList!2315 lt!1526765) lambda!132446)))))

(declare-fun b!4305680 () Bool)

(declare-fun e!2677219 () Bool)

(declare-fun e!2677224 () Bool)

(assert (=> b!4305680 (= e!2677219 e!2677224)))

(declare-fun b!4305681 () Bool)

(declare-datatypes ((Unit!67103 0))(
  ( (Unit!67104) )
))
(declare-fun e!2677212 () Unit!67103)

(declare-fun lt!1526763 () Unit!67103)

(assert (=> b!4305681 (= e!2677212 lt!1526763)))

(declare-fun lt!1526762 () List!48218)

(declare-fun lt!1526764 () (_ BitVec 64))

(declare-fun lt!1526761 () Unit!67103)

(declare-datatypes ((array!16570 0))(
  ( (array!16571 (arr!7399 (Array (_ BitVec 32) (_ BitVec 64))) (size!35438 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4523 0))(
  ( (HashableExt!4522 (__x!29846 Int)) )
))
(declare-datatypes ((array!16572 0))(
  ( (array!16573 (arr!7400 (Array (_ BitVec 32) List!48218)) (size!35439 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9214 0))(
  ( (LongMapFixedSize!9215 (defaultEntry!4992 Int) (mask!13139 (_ BitVec 32)) (extraKeys!4856 (_ BitVec 32)) (zeroValue!4866 List!48218) (minValue!4866 List!48218) (_size!9257 (_ BitVec 32)) (_keys!4907 array!16570) (_values!4888 array!16572) (_vacant!4668 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18237 0))(
  ( (Cell!18238 (v!42150 LongMapFixedSize!9214)) )
))
(declare-datatypes ((MutLongMap!4607 0))(
  ( (LongMap!4607 (underlying!9443 Cell!18237)) (MutLongMapExt!4606 (__x!29847 Int)) )
))
(declare-datatypes ((Cell!18239 0))(
  ( (Cell!18240 (v!42151 MutLongMap!4607)) )
))
(declare-datatypes ((MutableMap!4513 0))(
  ( (MutableMapExt!4512 (__x!29848 Int)) (HashMap!4513 (underlying!9444 Cell!18239) (hashF!6597 Hashable!4523) (_size!9258 (_ BitVec 32)) (defaultValue!4684 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4513)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!147 (List!48219 (_ BitVec 64) List!48218 Hashable!4523) Unit!67103)

(assert (=> b!4305681 (= lt!1526761 (lemmaInLongMapAllKeySameHashThenForTuple!147 (toList!2315 lt!1526765) lt!1526764 lt!1526762 (hashF!6597 thiss!42308)))))

(declare-fun allKeysSameHash!156 (List!48218 (_ BitVec 64) Hashable!4523) Bool)

(assert (=> b!4305681 (allKeysSameHash!156 lt!1526762 lt!1526764 (hashF!6597 thiss!42308))))

(declare-fun key!2048 () K!9264)

(declare-fun lemmaRemovePairForKeyPreservesHash!141 (List!48218 K!9264 (_ BitVec 64) Hashable!4523) Unit!67103)

(assert (=> b!4305681 (= lt!1526763 (lemmaRemovePairForKeyPreservesHash!141 lt!1526762 key!2048 lt!1526764 (hashF!6597 thiss!42308)))))

(declare-fun removePairForKey!181 (List!48218 K!9264) List!48218)

(assert (=> b!4305681 (allKeysSameHash!156 (removePairForKey!181 lt!1526762 key!2048) lt!1526764 (hashF!6597 thiss!42308))))

(declare-fun e!2677217 () Bool)

(declare-fun e!2677223 () Bool)

(assert (=> b!4305682 (= e!2677217 (and e!2677223 tp!1323202))))

(declare-fun b!4305683 () Bool)

(declare-fun lt!1526760 () MutLongMap!4607)

(get-info :version)

(assert (=> b!4305683 (= e!2677223 (and e!2677219 ((_ is LongMap!4607) lt!1526760)))))

(assert (=> b!4305683 (= lt!1526760 (v!42151 (underlying!9444 thiss!42308)))))

(declare-fun b!4305684 () Bool)

(declare-fun res!1764763 () Bool)

(assert (=> b!4305684 (=> (not res!1764763) (not e!2677218))))

(declare-fun lt!1526758 () List!48218)

(assert (=> b!4305684 (= res!1764763 (allKeysSameHash!156 lt!1526758 lt!1526764 (hashF!6597 thiss!42308)))))

(declare-fun b!4305685 () Bool)

(declare-fun e!2677214 () Bool)

(declare-fun e!2677216 () Bool)

(assert (=> b!4305685 (= e!2677214 e!2677216)))

(declare-fun res!1764762 () Bool)

(assert (=> b!4305685 (=> (not res!1764762) (not e!2677216))))

(declare-fun contains!10031 (MutableMap!4513 K!9264) Bool)

(assert (=> b!4305685 (= res!1764762 (not (contains!10031 thiss!42308 key!2048)))))

(declare-fun map!10068 (MutLongMap!4607) ListLongMap!925)

(assert (=> b!4305685 (= lt!1526765 (map!10068 (v!42151 (underlying!9444 thiss!42308))))))

(declare-datatypes ((ListMap!1599 0))(
  ( (ListMap!1600 (toList!2316 List!48218)) )
))
(declare-fun lt!1526759 () ListMap!1599)

(declare-fun map!10069 (MutableMap!4513) ListMap!1599)

(assert (=> b!4305685 (= lt!1526759 (map!10069 thiss!42308))))

(declare-fun b!4305686 () Bool)

(declare-fun e!2677220 () Bool)

(assert (=> b!4305686 (= e!2677224 e!2677220)))

(declare-fun mapNonEmpty!20623 () Bool)

(declare-fun mapRes!20623 () Bool)

(declare-fun tp!1323204 () Bool)

(declare-fun tp!1323200 () Bool)

(assert (=> mapNonEmpty!20623 (= mapRes!20623 (and tp!1323204 tp!1323200))))

(declare-fun mapRest!20623 () (Array (_ BitVec 32) List!48218))

(declare-fun mapValue!20623 () List!48218)

(declare-fun mapKey!20623 () (_ BitVec 32))

(assert (=> mapNonEmpty!20623 (= (arr!7400 (_values!4888 (v!42150 (underlying!9443 (v!42151 (underlying!9444 thiss!42308)))))) (store mapRest!20623 mapKey!20623 mapValue!20623))))

(declare-fun b!4305687 () Bool)

(declare-fun e!2677222 () Bool)

(assert (=> b!4305687 (= e!2677216 e!2677222)))

(declare-fun res!1764764 () Bool)

(assert (=> b!4305687 (=> (not res!1764764) (not e!2677222))))

(declare-datatypes ((tuple2!46316 0))(
  ( (tuple2!46317 (_1!26437 Bool) (_2!26437 MutLongMap!4607)) )
))
(declare-fun update!389 (MutLongMap!4607 (_ BitVec 64) List!48218) tuple2!46316)

(assert (=> b!4305687 (= res!1764764 (_1!26437 (update!389 (v!42151 (underlying!9444 thiss!42308)) lt!1526764 lt!1526758)))))

(declare-fun v!9179 () V!9466)

(assert (=> b!4305687 (= lt!1526758 (Cons!48094 (tuple2!46313 key!2048 v!9179) lt!1526762))))

(declare-fun e!2677215 () List!48218)

(assert (=> b!4305687 (= lt!1526762 e!2677215)))

(declare-fun c!732067 () Bool)

(declare-fun contains!10032 (MutLongMap!4607 (_ BitVec 64)) Bool)

(assert (=> b!4305687 (= c!732067 (contains!10032 (v!42151 (underlying!9444 thiss!42308)) lt!1526764))))

(declare-fun hash!929 (Hashable!4523 K!9264) (_ BitVec 64))

(assert (=> b!4305687 (= lt!1526764 (hash!929 (hashF!6597 thiss!42308) key!2048))))

(declare-fun b!4305688 () Bool)

(declare-fun res!1764765 () Bool)

(assert (=> b!4305688 (=> (not res!1764765) (not e!2677218))))

(declare-fun allKeysSameHashInMap!306 (ListLongMap!925 Hashable!4523) Bool)

(assert (=> b!4305688 (= res!1764765 (allKeysSameHashInMap!306 lt!1526765 (hashF!6597 thiss!42308)))))

(declare-fun b!4305689 () Bool)

(assert (=> b!4305689 (= e!2677215 Nil!48094)))

(declare-fun mapIsEmpty!20623 () Bool)

(assert (=> mapIsEmpty!20623 mapRes!20623))

(declare-fun b!4305690 () Bool)

(declare-fun apply!10955 (MutLongMap!4607 (_ BitVec 64)) List!48218)

(assert (=> b!4305690 (= e!2677215 (apply!10955 (v!42151 (underlying!9444 thiss!42308)) lt!1526764))))

(declare-fun res!1764760 () Bool)

(assert (=> start!413644 (=> (not res!1764760) (not e!2677214))))

(assert (=> start!413644 (= res!1764760 ((_ is HashMap!4513) thiss!42308))))

(assert (=> start!413644 e!2677214))

(assert (=> start!413644 e!2677217))

(declare-fun tp_is_empty!23549 () Bool)

(assert (=> start!413644 tp_is_empty!23549))

(declare-fun tp_is_empty!23551 () Bool)

(assert (=> start!413644 tp_is_empty!23551))

(declare-fun b!4305691 () Bool)

(declare-fun res!1764761 () Bool)

(assert (=> b!4305691 (=> (not res!1764761) (not e!2677218))))

(declare-fun noDuplicateKeys!187 (List!48218) Bool)

(assert (=> b!4305691 (= res!1764761 (noDuplicateKeys!187 lt!1526758))))

(declare-fun b!4305692 () Bool)

(declare-fun e!2677213 () Bool)

(declare-fun tp!1323201 () Bool)

(assert (=> b!4305692 (= e!2677213 (and tp!1323201 mapRes!20623))))

(declare-fun condMapEmpty!20623 () Bool)

(declare-fun mapDefault!20623 () List!48218)

(assert (=> b!4305692 (= condMapEmpty!20623 (= (arr!7400 (_values!4888 (v!42150 (underlying!9443 (v!42151 (underlying!9444 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48218)) mapDefault!20623)))))

(declare-fun b!4305693 () Bool)

(declare-fun Unit!67105 () Unit!67103)

(assert (=> b!4305693 (= e!2677212 Unit!67105)))

(declare-fun tp!1323203 () Bool)

(declare-fun tp!1323206 () Bool)

(declare-fun array_inv!5307 (array!16570) Bool)

(declare-fun array_inv!5308 (array!16572) Bool)

(assert (=> b!4305694 (= e!2677220 (and tp!1323205 tp!1323206 tp!1323203 (array_inv!5307 (_keys!4907 (v!42150 (underlying!9443 (v!42151 (underlying!9444 thiss!42308)))))) (array_inv!5308 (_values!4888 (v!42150 (underlying!9443 (v!42151 (underlying!9444 thiss!42308)))))) e!2677213))))

(declare-fun b!4305695 () Bool)

(assert (=> b!4305695 (= e!2677222 e!2677218)))

(declare-fun res!1764759 () Bool)

(assert (=> b!4305695 (=> (not res!1764759) (not e!2677218))))

(assert (=> b!4305695 (= res!1764759 (forall!8691 (toList!2315 lt!1526765) lambda!132446))))

(declare-fun lt!1526757 () Unit!67103)

(assert (=> b!4305695 (= lt!1526757 e!2677212)))

(declare-fun c!732068 () Bool)

(declare-fun isEmpty!28060 (List!48218) Bool)

(assert (=> b!4305695 (= c!732068 (not (isEmpty!28060 lt!1526762)))))

(declare-fun b!4305696 () Bool)

(declare-fun res!1764766 () Bool)

(assert (=> b!4305696 (=> (not res!1764766) (not e!2677214))))

(declare-fun valid!3594 (MutableMap!4513) Bool)

(assert (=> b!4305696 (= res!1764766 (valid!3594 thiss!42308))))

(assert (= (and start!413644 res!1764760) b!4305696))

(assert (= (and b!4305696 res!1764766) b!4305685))

(assert (= (and b!4305685 res!1764762) b!4305687))

(assert (= (and b!4305687 c!732067) b!4305690))

(assert (= (and b!4305687 (not c!732067)) b!4305689))

(assert (= (and b!4305687 res!1764764) b!4305695))

(assert (= (and b!4305695 c!732068) b!4305681))

(assert (= (and b!4305695 (not c!732068)) b!4305693))

(assert (= (and b!4305695 res!1764759) b!4305688))

(assert (= (and b!4305688 res!1764765) b!4305691))

(assert (= (and b!4305691 res!1764761) b!4305684))

(assert (= (and b!4305684 res!1764763) b!4305679))

(assert (= (and b!4305692 condMapEmpty!20623) mapIsEmpty!20623))

(assert (= (and b!4305692 (not condMapEmpty!20623)) mapNonEmpty!20623))

(assert (= b!4305694 b!4305692))

(assert (= b!4305686 b!4305694))

(assert (= b!4305680 b!4305686))

(assert (= (and b!4305683 ((_ is LongMap!4607) (v!42151 (underlying!9444 thiss!42308)))) b!4305680))

(assert (= b!4305682 b!4305683))

(assert (= (and start!413644 ((_ is HashMap!4513) thiss!42308)) b!4305682))

(declare-fun m!4898357 () Bool)

(assert (=> b!4305690 m!4898357))

(declare-fun m!4898359 () Bool)

(assert (=> b!4305685 m!4898359))

(declare-fun m!4898361 () Bool)

(assert (=> b!4305685 m!4898361))

(declare-fun m!4898363 () Bool)

(assert (=> b!4305685 m!4898363))

(declare-fun m!4898365 () Bool)

(assert (=> b!4305695 m!4898365))

(declare-fun m!4898367 () Bool)

(assert (=> b!4305695 m!4898367))

(declare-fun m!4898369 () Bool)

(assert (=> b!4305688 m!4898369))

(declare-fun m!4898371 () Bool)

(assert (=> b!4305687 m!4898371))

(declare-fun m!4898373 () Bool)

(assert (=> b!4305687 m!4898373))

(declare-fun m!4898375 () Bool)

(assert (=> b!4305687 m!4898375))

(declare-fun m!4898377 () Bool)

(assert (=> b!4305684 m!4898377))

(declare-fun m!4898379 () Bool)

(assert (=> b!4305681 m!4898379))

(assert (=> b!4305681 m!4898379))

(declare-fun m!4898381 () Bool)

(assert (=> b!4305681 m!4898381))

(declare-fun m!4898383 () Bool)

(assert (=> b!4305681 m!4898383))

(declare-fun m!4898385 () Bool)

(assert (=> b!4305681 m!4898385))

(declare-fun m!4898387 () Bool)

(assert (=> b!4305681 m!4898387))

(declare-fun m!4898389 () Bool)

(assert (=> b!4305694 m!4898389))

(declare-fun m!4898391 () Bool)

(assert (=> b!4305694 m!4898391))

(assert (=> b!4305679 m!4898365))

(declare-fun m!4898393 () Bool)

(assert (=> b!4305696 m!4898393))

(declare-fun m!4898395 () Bool)

(assert (=> b!4305691 m!4898395))

(declare-fun m!4898397 () Bool)

(assert (=> mapNonEmpty!20623 m!4898397))

(check-sat (not b_next!129091) (not b!4305694) b_and!339787 (not b!4305687) (not b_next!129093) (not b!4305691) (not b!4305685) (not b!4305690) (not b!4305688) (not b!4305684) (not b!4305681) (not b!4305696) (not b!4305692) (not b!4305695) b_and!339789 tp_is_empty!23551 (not b!4305679) (not mapNonEmpty!20623) tp_is_empty!23549)
(check-sat b_and!339787 b_and!339789 (not b_next!129093) (not b_next!129091))
