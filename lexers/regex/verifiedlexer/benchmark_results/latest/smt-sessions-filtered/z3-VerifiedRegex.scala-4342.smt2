; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231204 () Bool)

(assert start!231204)

(declare-fun b!2358524 () Bool)

(declare-fun b_free!70373 () Bool)

(declare-fun b_next!71077 () Bool)

(assert (=> b!2358524 (= b_free!70373 (not b_next!71077))))

(declare-fun tp!754099 () Bool)

(declare-fun b_and!185301 () Bool)

(assert (=> b!2358524 (= tp!754099 b_and!185301)))

(declare-fun b!2358523 () Bool)

(declare-fun b_free!70375 () Bool)

(declare-fun b_next!71079 () Bool)

(assert (=> b!2358523 (= b_free!70375 (not b_next!71079))))

(declare-fun tp!754104 () Bool)

(declare-fun b_and!185303 () Bool)

(assert (=> b!2358523 (= tp!754104 b_and!185303)))

(declare-fun mapNonEmpty!15084 () Bool)

(declare-fun mapRes!15084 () Bool)

(declare-fun tp!754098 () Bool)

(declare-fun tp!754103 () Bool)

(assert (=> mapNonEmpty!15084 (= mapRes!15084 (and tp!754098 tp!754103))))

(declare-datatypes ((K!4947 0))(
  ( (K!4948 (val!8181 Int)) )
))
(declare-datatypes ((V!5149 0))(
  ( (V!5150 (val!8182 Int)) )
))
(declare-datatypes ((tuple2!27612 0))(
  ( (tuple2!27613 (_1!16347 K!4947) (_2!16347 V!5149)) )
))
(declare-datatypes ((List!27976 0))(
  ( (Nil!27878) (Cons!27878 (h!33279 tuple2!27612) (t!207847 List!27976)) )
))
(declare-fun mapRest!15084 () (Array (_ BitVec 32) List!27976))

(declare-fun mapValue!15084 () List!27976)

(declare-fun mapKey!15084 () (_ BitVec 32))

(declare-datatypes ((array!11337 0))(
  ( (array!11338 (arr!5050 (Array (_ BitVec 32) (_ BitVec 64))) (size!22074 (_ BitVec 32))) )
))
(declare-datatypes ((array!11339 0))(
  ( (array!11340 (arr!5051 (Array (_ BitVec 32) List!27976)) (size!22075 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6460 0))(
  ( (LongMapFixedSize!6461 (defaultEntry!3601 Int) (mask!8121 (_ BitVec 32)) (extraKeys!3478 (_ BitVec 32)) (zeroValue!3488 List!27976) (minValue!3488 List!27976) (_size!6507 (_ BitVec 32)) (_keys!3527 array!11337) (_values!3510 array!11339) (_vacant!3291 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3140 0))(
  ( (HashableExt!3139 (__x!18448 Int)) )
))
(declare-datatypes ((Cell!12737 0))(
  ( (Cell!12738 (v!30799 LongMapFixedSize!6460)) )
))
(declare-datatypes ((MutLongMap!3230 0))(
  ( (LongMap!3230 (underlying!6665 Cell!12737)) (MutLongMapExt!3229 (__x!18449 Int)) )
))
(declare-datatypes ((Cell!12739 0))(
  ( (Cell!12740 (v!30800 MutLongMap!3230)) )
))
(declare-datatypes ((MutableMap!3140 0))(
  ( (MutableMapExt!3139 (__x!18450 Int)) (HashMap!3140 (underlying!6666 Cell!12739) (hashF!5069 Hashable!3140) (_size!6508 (_ BitVec 32)) (defaultValue!3302 Int)) )
))
(declare-fun thiss!47723 () MutableMap!3140)

(assert (=> mapNonEmpty!15084 (= (arr!5051 (_values!3510 (v!30799 (underlying!6665 (v!30800 (underlying!6666 thiss!47723)))))) (store mapRest!15084 mapKey!15084 mapValue!15084))))

(declare-fun b!2358518 () Bool)

(declare-fun e!1506365 () Bool)

(declare-fun e!1506369 () Bool)

(assert (=> b!2358518 (= e!1506365 e!1506369)))

(declare-fun res!1001049 () Bool)

(declare-fun e!1506366 () Bool)

(assert (=> start!231204 (=> (not res!1001049) (not e!1506366))))

(get-info :version)

(assert (=> start!231204 (= res!1001049 ((_ is MutableMapExt!3139) thiss!47723))))

(assert (=> start!231204 e!1506366))

(declare-fun e!1506370 () Bool)

(assert (=> start!231204 e!1506370))

(declare-fun tp_is_empty!11165 () Bool)

(assert (=> start!231204 tp_is_empty!11165))

(declare-fun b!2358519 () Bool)

(declare-fun e!1506367 () Bool)

(assert (=> b!2358519 (= e!1506369 e!1506367)))

(declare-fun b!2358520 () Bool)

(declare-fun res!1001048 () Bool)

(assert (=> b!2358520 (=> (not res!1001048) (not e!1506366))))

(declare-fun valid!2422 (MutableMap!3140) Bool)

(assert (=> b!2358520 (= res!1001048 (valid!2422 thiss!47723))))

(declare-fun b!2358521 () Bool)

(declare-fun e!1506372 () Bool)

(declare-fun tp!754100 () Bool)

(assert (=> b!2358521 (= e!1506372 (and tp!754100 mapRes!15084))))

(declare-fun condMapEmpty!15084 () Bool)

(declare-fun mapDefault!15084 () List!27976)

(assert (=> b!2358521 (= condMapEmpty!15084 (= (arr!5051 (_values!3510 (v!30799 (underlying!6665 (v!30800 (underlying!6666 thiss!47723)))))) ((as const (Array (_ BitVec 32) List!27976)) mapDefault!15084)))))

(declare-fun b!2358522 () Bool)

(assert (=> b!2358522 (= e!1506366 false)))

(declare-fun lt!863596 () Bool)

(declare-fun key!7163 () K!4947)

(declare-fun contains!4845 (MutableMap!3140 K!4947) Bool)

(assert (=> b!2358522 (= lt!863596 (contains!4845 thiss!47723 key!7163))))

(declare-fun lt!863595 () V!5149)

(declare-fun choose!13659 (MutableMap!3140 K!4947) V!5149)

(assert (=> b!2358522 (= lt!863595 (choose!13659 thiss!47723 key!7163))))

(declare-fun e!1506371 () Bool)

(assert (=> b!2358523 (= e!1506370 (and e!1506371 tp!754104))))

(declare-fun tp!754102 () Bool)

(declare-fun tp!754101 () Bool)

(declare-fun array_inv!3621 (array!11337) Bool)

(declare-fun array_inv!3622 (array!11339) Bool)

(assert (=> b!2358524 (= e!1506367 (and tp!754099 tp!754102 tp!754101 (array_inv!3621 (_keys!3527 (v!30799 (underlying!6665 (v!30800 (underlying!6666 thiss!47723)))))) (array_inv!3622 (_values!3510 (v!30799 (underlying!6665 (v!30800 (underlying!6666 thiss!47723)))))) e!1506372))))

(declare-fun mapIsEmpty!15084 () Bool)

(assert (=> mapIsEmpty!15084 mapRes!15084))

(declare-fun b!2358525 () Bool)

(declare-fun lt!863594 () MutLongMap!3230)

(assert (=> b!2358525 (= e!1506371 (and e!1506365 ((_ is LongMap!3230) lt!863594)))))

(assert (=> b!2358525 (= lt!863594 (v!30800 (underlying!6666 thiss!47723)))))

(assert (= (and start!231204 res!1001049) b!2358520))

(assert (= (and b!2358520 res!1001048) b!2358522))

(assert (= (and b!2358521 condMapEmpty!15084) mapIsEmpty!15084))

(assert (= (and b!2358521 (not condMapEmpty!15084)) mapNonEmpty!15084))

(assert (= b!2358524 b!2358521))

(assert (= b!2358519 b!2358524))

(assert (= b!2358518 b!2358519))

(assert (= (and b!2358525 ((_ is LongMap!3230) (v!30800 (underlying!6666 thiss!47723)))) b!2358518))

(assert (= b!2358523 b!2358525))

(assert (= (and start!231204 ((_ is HashMap!3140) thiss!47723)) b!2358523))

(declare-fun m!2771273 () Bool)

(assert (=> mapNonEmpty!15084 m!2771273))

(declare-fun m!2771275 () Bool)

(assert (=> b!2358520 m!2771275))

(declare-fun m!2771277 () Bool)

(assert (=> b!2358522 m!2771277))

(declare-fun m!2771279 () Bool)

(assert (=> b!2358522 m!2771279))

(declare-fun m!2771281 () Bool)

(assert (=> b!2358524 m!2771281))

(declare-fun m!2771283 () Bool)

(assert (=> b!2358524 m!2771283))

(check-sat (not mapNonEmpty!15084) b_and!185301 (not b_next!71079) (not b_next!71077) (not b!2358522) (not b!2358520) (not b!2358521) (not b!2358524) b_and!185303 tp_is_empty!11165)
(check-sat b_and!185301 b_and!185303 (not b_next!71079) (not b_next!71077))
