; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187666 () Bool)

(assert start!187666)

(declare-fun b!1872884 () Bool)

(declare-fun b_free!52011 () Bool)

(declare-fun b_next!52715 () Bool)

(assert (=> b!1872884 (= b_free!52011 (not b_next!52715))))

(declare-fun tp!532655 () Bool)

(declare-fun b_and!144297 () Bool)

(assert (=> b!1872884 (= tp!532655 b_and!144297)))

(declare-fun b!1872883 () Bool)

(declare-fun e!1194849 () Bool)

(declare-fun e!1194844 () Bool)

(assert (=> b!1872883 (= e!1194849 e!1194844)))

(declare-fun mapIsEmpty!8924 () Bool)

(declare-fun mapRes!8924 () Bool)

(assert (=> mapIsEmpty!8924 mapRes!8924))

(declare-datatypes ((array!6623 0))(
  ( (array!6624 (arr!2942 (Array (_ BitVec 32) (_ BitVec 64))) (size!16484 (_ BitVec 32))) )
))
(declare-datatypes ((V!3992 0))(
  ( (V!3993 (val!6026 Int)) )
))
(declare-datatypes ((array!6625 0))(
  ( (array!6626 (arr!2943 (Array (_ BitVec 32) V!3992)) (size!16485 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3844 0))(
  ( (LongMapFixedSize!3845 (defaultEntry!2287 Int) (mask!5716 (_ BitVec 32)) (extraKeys!2170 (_ BitVec 32)) (zeroValue!2180 V!3992) (minValue!2180 V!3992) (_size!3900 (_ BitVec 32)) (_keys!2219 array!6623) (_values!2202 array!6625) (_vacant!1983 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7523 0))(
  ( (Cell!7524 (v!26148 LongMapFixedSize!3844)) )
))
(declare-datatypes ((MutLongMap!1922 0))(
  ( (LongMap!1922 (underlying!4042 Cell!7523)) (MutLongMapExt!1921 (__x!13011 Int)) )
))
(declare-fun thiss!47421 () MutLongMap!1922)

(declare-fun e!1194848 () Bool)

(declare-fun tp_is_empty!8819 () Bool)

(declare-fun e!1194845 () Bool)

(declare-fun array_inv!2117 (array!6623) Bool)

(declare-fun array_inv!2118 (array!6625) Bool)

(assert (=> b!1872884 (= e!1194848 (and tp!532655 tp_is_empty!8819 (array_inv!2117 (_keys!2219 (v!26148 (underlying!4042 thiss!47421)))) (array_inv!2118 (_values!2202 (v!26148 (underlying!4042 thiss!47421)))) e!1194845))))

(declare-fun b!1872885 () Bool)

(assert (=> b!1872885 (= e!1194844 e!1194848)))

(declare-fun mapNonEmpty!8924 () Bool)

(declare-fun tp!532654 () Bool)

(assert (=> mapNonEmpty!8924 (= mapRes!8924 (and tp!532654 tp_is_empty!8819))))

(declare-fun mapKey!8924 () (_ BitVec 32))

(declare-fun mapRest!8924 () (Array (_ BitVec 32) V!3992))

(declare-fun mapValue!8924 () V!3992)

(assert (=> mapNonEmpty!8924 (= (arr!2943 (_values!2202 (v!26148 (underlying!4042 thiss!47421)))) (store mapRest!8924 mapKey!8924 mapValue!8924))))

(declare-fun b!1872886 () Bool)

(declare-fun e!1194847 () Bool)

(assert (=> b!1872886 (= e!1194847 false)))

(declare-fun lt!719747 () Bool)

(declare-fun key!7039 () (_ BitVec 64))

(declare-fun contains!3808 (MutLongMap!1922 (_ BitVec 64)) Bool)

(assert (=> b!1872886 (= lt!719747 (contains!3808 thiss!47421 key!7039))))

(declare-fun res!838186 () Bool)

(assert (=> start!187666 (=> (not res!838186) (not e!1194847))))

(declare-fun valid!1552 (MutLongMap!1922) Bool)

(assert (=> start!187666 (= res!838186 (valid!1552 thiss!47421))))

(assert (=> start!187666 e!1194847))

(assert (=> start!187666 e!1194849))

(assert (=> start!187666 true))

(declare-fun b!1872887 () Bool)

(assert (=> b!1872887 (= e!1194845 (and tp_is_empty!8819 mapRes!8924))))

(declare-fun condMapEmpty!8924 () Bool)

(declare-fun mapDefault!8924 () V!3992)

(assert (=> b!1872887 (= condMapEmpty!8924 (= (arr!2943 (_values!2202 (v!26148 (underlying!4042 thiss!47421)))) ((as const (Array (_ BitVec 32) V!3992)) mapDefault!8924)))))

(declare-fun b!1872888 () Bool)

(declare-fun res!838187 () Bool)

(assert (=> b!1872888 (=> (not res!838187) (not e!1194847))))

(get-info :version)

(assert (=> b!1872888 (= res!838187 (not ((_ is LongMap!1922) thiss!47421)))))

(assert (= (and start!187666 res!838186) b!1872888))

(assert (= (and b!1872888 res!838187) b!1872886))

(assert (= (and b!1872887 condMapEmpty!8924) mapIsEmpty!8924))

(assert (= (and b!1872887 (not condMapEmpty!8924)) mapNonEmpty!8924))

(assert (= b!1872884 b!1872887))

(assert (= b!1872885 b!1872884))

(assert (= b!1872883 b!1872885))

(assert (= (and start!187666 ((_ is LongMap!1922) thiss!47421)) b!1872883))

(declare-fun m!2298605 () Bool)

(assert (=> b!1872884 m!2298605))

(declare-fun m!2298607 () Bool)

(assert (=> b!1872884 m!2298607))

(declare-fun m!2298609 () Bool)

(assert (=> mapNonEmpty!8924 m!2298609))

(declare-fun m!2298611 () Bool)

(assert (=> b!1872886 m!2298611))

(declare-fun m!2298613 () Bool)

(assert (=> start!187666 m!2298613))

(check-sat (not b!1872886) (not b_next!52715) (not start!187666) (not mapNonEmpty!8924) b_and!144297 (not b!1872884) tp_is_empty!8819)
(check-sat b_and!144297 (not b_next!52715))
