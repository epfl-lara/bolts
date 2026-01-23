; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415338 () Bool)

(assert start!415338)

(declare-fun b!4317251 () Bool)

(declare-fun b_free!128883 () Bool)

(declare-fun b_next!129587 () Bool)

(assert (=> b!4317251 (= b_free!128883 (not b_next!129587))))

(declare-fun tp!1326330 () Bool)

(declare-fun b_and!340379 () Bool)

(assert (=> b!4317251 (= tp!1326330 b_and!340379)))

(declare-fun b!4317254 () Bool)

(declare-fun b_free!128885 () Bool)

(declare-fun b_next!129589 () Bool)

(assert (=> b!4317254 (= b_free!128885 (not b_next!129589))))

(declare-fun tp!1326327 () Bool)

(declare-fun b_and!340381 () Bool)

(assert (=> b!4317254 (= tp!1326327 b_and!340381)))

(declare-fun tp!1326328 () Bool)

(declare-fun e!2685755 () Bool)

(declare-fun tp!1326325 () Bool)

(declare-fun e!2685753 () Bool)

(declare-datatypes ((V!9776 0))(
  ( (V!9777 (val!15917 Int)) )
))
(declare-datatypes ((K!9574 0))(
  ( (K!9575 (val!15918 Int)) )
))
(declare-datatypes ((tuple2!47046 0))(
  ( (tuple2!47047 (_1!26806 K!9574) (_2!26806 V!9776)) )
))
(declare-datatypes ((List!48457 0))(
  ( (Nil!48333) (Cons!48333 (h!53786 tuple2!47046) (t!355314 List!48457)) )
))
(declare-datatypes ((array!17130 0))(
  ( (array!17131 (arr!7647 (Array (_ BitVec 32) (_ BitVec 64))) (size!35686 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4647 0))(
  ( (HashableExt!4646 (__x!30218 Int)) )
))
(declare-datatypes ((array!17132 0))(
  ( (array!17133 (arr!7648 (Array (_ BitVec 32) List!48457)) (size!35687 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9462 0))(
  ( (LongMapFixedSize!9463 (defaultEntry!5116 Int) (mask!13325 (_ BitVec 32)) (extraKeys!4980 (_ BitVec 32)) (zeroValue!4990 List!48457) (minValue!4990 List!48457) (_size!9505 (_ BitVec 32)) (_keys!5031 array!17130) (_values!5012 array!17132) (_vacant!4792 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18733 0))(
  ( (Cell!18734 (v!42640 LongMapFixedSize!9462)) )
))
(declare-datatypes ((MutLongMap!4731 0))(
  ( (LongMap!4731 (underlying!9691 Cell!18733)) (MutLongMapExt!4730 (__x!30219 Int)) )
))
(declare-datatypes ((Cell!18735 0))(
  ( (Cell!18736 (v!42641 MutLongMap!4731)) )
))
(declare-datatypes ((MutableMap!4637 0))(
  ( (MutableMapExt!4636 (__x!30220 Int)) (HashMap!4637 (underlying!9692 Cell!18735) (hashF!6856 Hashable!4647) (_size!9506 (_ BitVec 32)) (defaultValue!4808 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4637)

(declare-fun array_inv!5503 (array!17130) Bool)

(declare-fun array_inv!5504 (array!17132) Bool)

(assert (=> b!4317251 (= e!2685753 (and tp!1326330 tp!1326325 tp!1326328 (array_inv!5503 (_keys!5031 (v!42640 (underlying!9691 (v!42641 (underlying!9692 thiss!42308)))))) (array_inv!5504 (_values!5012 (v!42640 (underlying!9691 (v!42641 (underlying!9692 thiss!42308)))))) e!2685755))))

(declare-fun mapNonEmpty!21095 () Bool)

(declare-fun mapRes!21095 () Bool)

(declare-fun tp!1326326 () Bool)

(declare-fun tp!1326324 () Bool)

(assert (=> mapNonEmpty!21095 (= mapRes!21095 (and tp!1326326 tp!1326324))))

(declare-fun mapRest!21095 () (Array (_ BitVec 32) List!48457))

(declare-fun mapKey!21095 () (_ BitVec 32))

(declare-fun mapValue!21095 () List!48457)

(assert (=> mapNonEmpty!21095 (= (arr!7648 (_values!5012 (v!42640 (underlying!9691 (v!42641 (underlying!9692 thiss!42308)))))) (store mapRest!21095 mapKey!21095 mapValue!21095))))

(declare-fun b!4317252 () Bool)

(declare-fun tp!1326329 () Bool)

(assert (=> b!4317252 (= e!2685755 (and tp!1326329 mapRes!21095))))

(declare-fun condMapEmpty!21095 () Bool)

(declare-fun mapDefault!21095 () List!48457)

(assert (=> b!4317252 (= condMapEmpty!21095 (= (arr!7648 (_values!5012 (v!42640 (underlying!9691 (v!42641 (underlying!9692 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48457)) mapDefault!21095)))))

(declare-fun b!4317253 () Bool)

(declare-fun e!2685754 () List!48457)

(assert (=> b!4317253 (= e!2685754 Nil!48333)))

(declare-fun mapIsEmpty!21095 () Bool)

(assert (=> mapIsEmpty!21095 mapRes!21095))

(declare-fun e!2685751 () Bool)

(declare-fun e!2685758 () Bool)

(assert (=> b!4317254 (= e!2685751 (and e!2685758 tp!1326327))))

(declare-fun b!4317255 () Bool)

(declare-fun lt!1536379 () (_ BitVec 64))

(declare-fun apply!11108 (MutLongMap!4731 (_ BitVec 64)) List!48457)

(assert (=> b!4317255 (= e!2685754 (apply!11108 (v!42641 (underlying!9692 thiss!42308)) lt!1536379))))

(declare-fun b!4317257 () Bool)

(declare-fun e!2685757 () Bool)

(declare-fun lt!1536381 () MutLongMap!4731)

(get-info :version)

(assert (=> b!4317257 (= e!2685758 (and e!2685757 ((_ is LongMap!4731) lt!1536381)))))

(assert (=> b!4317257 (= lt!1536381 (v!42641 (underlying!9692 thiss!42308)))))

(declare-fun b!4317258 () Bool)

(declare-fun e!2685756 () Bool)

(assert (=> b!4317258 (= e!2685756 (not true))))

(declare-fun lt!1536380 () List!48457)

(declare-fun allKeysSameHash!227 (List!48457 (_ BitVec 64) Hashable!4647) Bool)

(assert (=> b!4317258 (allKeysSameHash!227 lt!1536380 lt!1536379 (hashF!6856 thiss!42308))))

(declare-datatypes ((tuple2!47048 0))(
  ( (tuple2!47049 (_1!26807 (_ BitVec 64)) (_2!26807 List!48457)) )
))
(declare-datatypes ((List!48458 0))(
  ( (Nil!48334) (Cons!48334 (h!53787 tuple2!47048) (t!355315 List!48458)) )
))
(declare-datatypes ((ListLongMap!1133 0))(
  ( (ListLongMap!1134 (toList!2518 List!48458)) )
))
(declare-fun lt!1536378 () ListLongMap!1133)

(declare-datatypes ((Unit!67576 0))(
  ( (Unit!67577) )
))
(declare-fun lt!1536382 () Unit!67576)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!212 (List!48458 (_ BitVec 64) List!48457 Hashable!4647) Unit!67576)

(assert (=> b!4317258 (= lt!1536382 (lemmaInLongMapAllKeySameHashThenForTuple!212 (toList!2518 lt!1536378) lt!1536379 lt!1536380 (hashF!6856 thiss!42308)))))

(declare-fun b!4317259 () Bool)

(declare-fun e!2685749 () Bool)

(assert (=> b!4317259 (= e!2685749 e!2685753)))

(declare-fun b!4317260 () Bool)

(assert (=> b!4317260 (= e!2685757 e!2685749)))

(declare-fun res!1769451 () Bool)

(declare-fun e!2685748 () Bool)

(assert (=> start!415338 (=> (not res!1769451) (not e!2685748))))

(assert (=> start!415338 (= res!1769451 ((_ is HashMap!4637) thiss!42308))))

(assert (=> start!415338 e!2685748))

(assert (=> start!415338 e!2685751))

(declare-fun tp_is_empty!24021 () Bool)

(assert (=> start!415338 tp_is_empty!24021))

(declare-fun tp_is_empty!24023 () Bool)

(assert (=> start!415338 tp_is_empty!24023))

(declare-fun b!4317256 () Bool)

(declare-fun e!2685750 () Bool)

(assert (=> b!4317256 (= e!2685748 e!2685750)))

(declare-fun res!1769449 () Bool)

(assert (=> b!4317256 (=> (not res!1769449) (not e!2685750))))

(declare-fun key!2048 () K!9574)

(declare-fun contains!10356 (MutableMap!4637 K!9574) Bool)

(assert (=> b!4317256 (= res!1769449 (not (contains!10356 thiss!42308 key!2048)))))

(declare-fun map!10352 (MutLongMap!4731) ListLongMap!1133)

(assert (=> b!4317256 (= lt!1536378 (map!10352 (v!42641 (underlying!9692 thiss!42308))))))

(declare-datatypes ((ListMap!1797 0))(
  ( (ListMap!1798 (toList!2519 List!48457)) )
))
(declare-fun lt!1536377 () ListMap!1797)

(declare-fun map!10353 (MutableMap!4637) ListMap!1797)

(assert (=> b!4317256 (= lt!1536377 (map!10353 thiss!42308))))

(declare-fun b!4317261 () Bool)

(assert (=> b!4317261 (= e!2685750 e!2685756)))

(declare-fun res!1769450 () Bool)

(assert (=> b!4317261 (=> (not res!1769450) (not e!2685756))))

(declare-fun v!9179 () V!9776)

(declare-datatypes ((tuple2!47050 0))(
  ( (tuple2!47051 (_1!26808 Bool) (_2!26808 MutLongMap!4731)) )
))
(declare-fun update!505 (MutLongMap!4731 (_ BitVec 64) List!48457) tuple2!47050)

(assert (=> b!4317261 (= res!1769450 (_1!26808 (update!505 (v!42641 (underlying!9692 thiss!42308)) lt!1536379 (Cons!48333 (tuple2!47047 key!2048 v!9179) lt!1536380))))))

(assert (=> b!4317261 (= lt!1536380 e!2685754)))

(declare-fun c!733972 () Bool)

(declare-fun contains!10357 (MutLongMap!4731 (_ BitVec 64)) Bool)

(assert (=> b!4317261 (= c!733972 (contains!10357 (v!42641 (underlying!9692 thiss!42308)) lt!1536379))))

(declare-fun hash!1131 (Hashable!4647 K!9574) (_ BitVec 64))

(assert (=> b!4317261 (= lt!1536379 (hash!1131 (hashF!6856 thiss!42308) key!2048))))

(declare-fun b!4317262 () Bool)

(declare-fun res!1769453 () Bool)

(assert (=> b!4317262 (=> (not res!1769453) (not e!2685748))))

(declare-fun valid!3736 (MutableMap!4637) Bool)

(assert (=> b!4317262 (= res!1769453 (valid!3736 thiss!42308))))

(declare-fun b!4317263 () Bool)

(declare-fun res!1769452 () Bool)

(assert (=> b!4317263 (=> (not res!1769452) (not e!2685756))))

(declare-fun isEmpty!28096 (List!48457) Bool)

(assert (=> b!4317263 (= res!1769452 (not (isEmpty!28096 lt!1536380)))))

(assert (= (and start!415338 res!1769451) b!4317262))

(assert (= (and b!4317262 res!1769453) b!4317256))

(assert (= (and b!4317256 res!1769449) b!4317261))

(assert (= (and b!4317261 c!733972) b!4317255))

(assert (= (and b!4317261 (not c!733972)) b!4317253))

(assert (= (and b!4317261 res!1769450) b!4317263))

(assert (= (and b!4317263 res!1769452) b!4317258))

(assert (= (and b!4317252 condMapEmpty!21095) mapIsEmpty!21095))

(assert (= (and b!4317252 (not condMapEmpty!21095)) mapNonEmpty!21095))

(assert (= b!4317251 b!4317252))

(assert (= b!4317259 b!4317251))

(assert (= b!4317260 b!4317259))

(assert (= (and b!4317257 ((_ is LongMap!4731) (v!42641 (underlying!9692 thiss!42308)))) b!4317260))

(assert (= b!4317254 b!4317257))

(assert (= (and start!415338 ((_ is HashMap!4637) thiss!42308)) b!4317254))

(declare-fun m!4910963 () Bool)

(assert (=> b!4317258 m!4910963))

(declare-fun m!4910965 () Bool)

(assert (=> b!4317258 m!4910965))

(declare-fun m!4910967 () Bool)

(assert (=> mapNonEmpty!21095 m!4910967))

(declare-fun m!4910969 () Bool)

(assert (=> b!4317263 m!4910969))

(declare-fun m!4910971 () Bool)

(assert (=> b!4317256 m!4910971))

(declare-fun m!4910973 () Bool)

(assert (=> b!4317256 m!4910973))

(declare-fun m!4910975 () Bool)

(assert (=> b!4317256 m!4910975))

(declare-fun m!4910977 () Bool)

(assert (=> b!4317262 m!4910977))

(declare-fun m!4910979 () Bool)

(assert (=> b!4317261 m!4910979))

(declare-fun m!4910981 () Bool)

(assert (=> b!4317261 m!4910981))

(declare-fun m!4910983 () Bool)

(assert (=> b!4317261 m!4910983))

(declare-fun m!4910985 () Bool)

(assert (=> b!4317251 m!4910985))

(declare-fun m!4910987 () Bool)

(assert (=> b!4317251 m!4910987))

(declare-fun m!4910989 () Bool)

(assert (=> b!4317255 m!4910989))

(check-sat (not b!4317252) (not b!4317262) (not b!4317258) (not b!4317261) (not b!4317251) (not b!4317255) (not b!4317263) (not b!4317256) tp_is_empty!24021 b_and!340381 (not mapNonEmpty!21095) b_and!340379 tp_is_empty!24023 (not b_next!129587) (not b_next!129589))
(check-sat b_and!340379 b_and!340381 (not b_next!129589) (not b_next!129587))
