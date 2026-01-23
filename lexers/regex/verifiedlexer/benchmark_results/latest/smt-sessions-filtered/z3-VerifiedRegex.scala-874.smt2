; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46448 () Bool)

(assert start!46448)

(declare-fun b!513110 () Bool)

(declare-fun b_free!13281 () Bool)

(declare-fun b_next!13281 () Bool)

(assert (=> b!513110 (= b_free!13281 (not b_next!13281))))

(declare-fun tp!159682 () Bool)

(declare-fun b_and!50707 () Bool)

(assert (=> b!513110 (= tp!159682 b_and!50707)))

(declare-fun b!513107 () Bool)

(declare-fun b_free!13283 () Bool)

(declare-fun b_next!13283 () Bool)

(assert (=> b!513107 (= b_free!13283 (not b_next!13283))))

(declare-fun tp!159681 () Bool)

(declare-fun b_and!50709 () Bool)

(assert (=> b!513107 (= tp!159681 b_and!50709)))

(declare-fun b!513104 () Bool)

(declare-fun e!306473 () Bool)

(assert (=> b!513104 (= e!306473 false)))

(declare-fun lt!212270 () Bool)

(declare-datatypes ((V!1385 0))(
  ( (V!1386 (val!1693 Int)) )
))
(declare-datatypes ((K!1287 0))(
  ( (K!1288 (val!1694 Int)) )
))
(declare-datatypes ((array!1781 0))(
  ( (array!1782 (arr!822 (Array (_ BitVec 32) (_ BitVec 64))) (size!3756 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!5540 0))(
  ( (tuple2!5541 (_1!2986 K!1287) (_2!2986 V!1385)) )
))
(declare-datatypes ((List!4658 0))(
  ( (Nil!4648) (Cons!4648 (h!10045 tuple2!5540) (t!73180 List!4658)) )
))
(declare-datatypes ((array!1783 0))(
  ( (array!1784 (arr!823 (Array (_ BitVec 32) List!4658)) (size!3757 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!938 0))(
  ( (LongMapFixedSize!939 (defaultEntry!820 Int) (mask!1868 (_ BitVec 32)) (extraKeys!715 (_ BitVec 32)) (zeroValue!725 List!4658) (minValue!725 List!4658) (_size!1047 (_ BitVec 32)) (_keys!760 array!1781) (_values!747 array!1783) (_vacant!530 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!441 0))(
  ( (HashableExt!440 (__x!3298 Int)) )
))
(declare-datatypes ((Cell!1817 0))(
  ( (Cell!1818 (v!15650 LongMapFixedSize!938)) )
))
(declare-datatypes ((MutLongMap!469 0))(
  ( (LongMap!469 (underlying!1117 Cell!1817)) (MutLongMapExt!468 (__x!3299 Int)) )
))
(declare-datatypes ((Cell!1819 0))(
  ( (Cell!1820 (v!15651 MutLongMap!469)) )
))
(declare-datatypes ((MutableMap!441 0))(
  ( (MutableMapExt!440 (__x!3300 Int)) (HashMap!441 (underlying!1118 Cell!1819) (hashF!2317 Hashable!441) (_size!1048 (_ BitVec 32)) (defaultValue!590 Int)) )
))
(declare-datatypes ((tuple2!5542 0))(
  ( (tuple2!5543 (_1!2987 Bool) (_2!2987 MutableMap!441)) )
))
(declare-fun lt!212272 () tuple2!5542)

(declare-fun valid!425 (MutableMap!441) Bool)

(assert (=> b!513104 (= lt!212270 (valid!425 (_2!2987 lt!212272)))))

(declare-fun b!513105 () Bool)

(declare-fun e!306475 () Bool)

(assert (=> b!513105 (= e!306475 e!306473)))

(declare-fun res!217603 () Bool)

(assert (=> b!513105 (=> (not res!217603) (not e!306473))))

(get-info :version)

(assert (=> b!513105 (= res!217603 ((_ is MutableMapExt!440) (_2!2987 lt!212272)))))

(declare-fun thiss!47794 () MutableMap!441)

(declare-fun v!11800 () V!1385)

(declare-fun key!7215 () K!1287)

(declare-fun choose!3657 (MutableMap!441 K!1287 V!1385) tuple2!5542)

(assert (=> b!513105 (= lt!212272 (choose!3657 thiss!47794 key!7215 v!11800))))

(declare-fun b!513106 () Bool)

(declare-fun e!306477 () Bool)

(declare-fun e!306469 () Bool)

(declare-fun lt!212271 () MutLongMap!469)

(assert (=> b!513106 (= e!306477 (and e!306469 ((_ is LongMap!469) lt!212271)))))

(assert (=> b!513106 (= lt!212271 (v!15651 (underlying!1118 thiss!47794)))))

(declare-fun mapIsEmpty!1812 () Bool)

(declare-fun mapRes!1812 () Bool)

(assert (=> mapIsEmpty!1812 mapRes!1812))

(declare-fun e!306471 () Bool)

(assert (=> b!513107 (= e!306471 (and e!306477 tp!159681))))

(declare-fun b!513103 () Bool)

(declare-fun e!306470 () Bool)

(declare-fun e!306476 () Bool)

(assert (=> b!513103 (= e!306470 e!306476)))

(declare-fun res!217604 () Bool)

(assert (=> start!46448 (=> (not res!217604) (not e!306475))))

(assert (=> start!46448 (= res!217604 ((_ is MutableMapExt!440) thiss!47794))))

(assert (=> start!46448 e!306475))

(assert (=> start!46448 e!306471))

(declare-fun tp_is_empty!2489 () Bool)

(assert (=> start!46448 tp_is_empty!2489))

(declare-fun tp_is_empty!2491 () Bool)

(assert (=> start!46448 tp_is_empty!2491))

(declare-fun mapNonEmpty!1812 () Bool)

(declare-fun tp!159679 () Bool)

(declare-fun tp!159684 () Bool)

(assert (=> mapNonEmpty!1812 (= mapRes!1812 (and tp!159679 tp!159684))))

(declare-fun mapRest!1812 () (Array (_ BitVec 32) List!4658))

(declare-fun mapValue!1812 () List!4658)

(declare-fun mapKey!1812 () (_ BitVec 32))

(assert (=> mapNonEmpty!1812 (= (arr!823 (_values!747 (v!15650 (underlying!1117 (v!15651 (underlying!1118 thiss!47794)))))) (store mapRest!1812 mapKey!1812 mapValue!1812))))

(declare-fun b!513108 () Bool)

(declare-fun res!217605 () Bool)

(assert (=> b!513108 (=> (not res!217605) (not e!306475))))

(assert (=> b!513108 (= res!217605 (valid!425 thiss!47794))))

(declare-fun b!513109 () Bool)

(declare-fun e!306472 () Bool)

(declare-fun tp!159680 () Bool)

(assert (=> b!513109 (= e!306472 (and tp!159680 mapRes!1812))))

(declare-fun condMapEmpty!1812 () Bool)

(declare-fun mapDefault!1812 () List!4658)

(assert (=> b!513109 (= condMapEmpty!1812 (= (arr!823 (_values!747 (v!15650 (underlying!1117 (v!15651 (underlying!1118 thiss!47794)))))) ((as const (Array (_ BitVec 32) List!4658)) mapDefault!1812)))))

(declare-fun tp!159685 () Bool)

(declare-fun tp!159683 () Bool)

(declare-fun array_inv!589 (array!1781) Bool)

(declare-fun array_inv!590 (array!1783) Bool)

(assert (=> b!513110 (= e!306476 (and tp!159682 tp!159683 tp!159685 (array_inv!589 (_keys!760 (v!15650 (underlying!1117 (v!15651 (underlying!1118 thiss!47794)))))) (array_inv!590 (_values!747 (v!15650 (underlying!1117 (v!15651 (underlying!1118 thiss!47794)))))) e!306472))))

(declare-fun b!513111 () Bool)

(assert (=> b!513111 (= e!306469 e!306470)))

(assert (= (and start!46448 res!217604) b!513108))

(assert (= (and b!513108 res!217605) b!513105))

(assert (= (and b!513105 res!217603) b!513104))

(assert (= (and b!513109 condMapEmpty!1812) mapIsEmpty!1812))

(assert (= (and b!513109 (not condMapEmpty!1812)) mapNonEmpty!1812))

(assert (= b!513110 b!513109))

(assert (= b!513103 b!513110))

(assert (= b!513111 b!513103))

(assert (= (and b!513106 ((_ is LongMap!469) (v!15651 (underlying!1118 thiss!47794)))) b!513111))

(assert (= b!513107 b!513106))

(assert (= (and start!46448 ((_ is HashMap!441) thiss!47794)) b!513107))

(declare-fun m!759337 () Bool)

(assert (=> mapNonEmpty!1812 m!759337))

(declare-fun m!759339 () Bool)

(assert (=> b!513108 m!759339))

(declare-fun m!759341 () Bool)

(assert (=> b!513110 m!759341))

(declare-fun m!759343 () Bool)

(assert (=> b!513110 m!759343))

(declare-fun m!759345 () Bool)

(assert (=> b!513105 m!759345))

(declare-fun m!759347 () Bool)

(assert (=> b!513104 m!759347))

(check-sat (not b_next!13283) (not mapNonEmpty!1812) (not b_next!13281) b_and!50709 (not b!513108) tp_is_empty!2489 (not b!513110) (not b!513109) (not b!513105) tp_is_empty!2491 b_and!50707 (not b!513104))
(check-sat b_and!50707 b_and!50709 (not b_next!13283) (not b_next!13281))
