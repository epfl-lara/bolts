; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231258 () Bool)

(assert start!231258)

(declare-fun b!2358833 () Bool)

(declare-fun b_free!70397 () Bool)

(declare-fun b_next!71101 () Bool)

(assert (=> b!2358833 (= b_free!70397 (not b_next!71101))))

(declare-fun tp!754252 () Bool)

(declare-fun b_and!185331 () Bool)

(assert (=> b!2358833 (= tp!754252 b_and!185331)))

(declare-fun b!2358837 () Bool)

(declare-fun b_free!70399 () Bool)

(declare-fun b_next!71103 () Bool)

(assert (=> b!2358837 (= b_free!70399 (not b_next!71103))))

(declare-fun tp!754253 () Bool)

(declare-fun b_and!185333 () Bool)

(assert (=> b!2358837 (= tp!754253 b_and!185333)))

(declare-fun b!2358832 () Bool)

(declare-fun res!1001130 () Bool)

(declare-fun e!1506619 () Bool)

(assert (=> b!2358832 (=> (not res!1001130) (not e!1506619))))

(declare-datatypes ((K!4962 0))(
  ( (K!4963 (val!8193 Int)) )
))
(declare-datatypes ((V!5164 0))(
  ( (V!5165 (val!8194 Int)) )
))
(declare-datatypes ((tuple2!27626 0))(
  ( (tuple2!27627 (_1!16354 K!4962) (_2!16354 V!5164)) )
))
(declare-datatypes ((List!27984 0))(
  ( (Nil!27886) (Cons!27886 (h!33287 tuple2!27626) (t!207859 List!27984)) )
))
(declare-datatypes ((array!11363 0))(
  ( (array!11364 (arr!5062 (Array (_ BitVec 32) List!27984)) (size!22086 (_ BitVec 32))) )
))
(declare-datatypes ((array!11365 0))(
  ( (array!11366 (arr!5063 (Array (_ BitVec 32) (_ BitVec 64))) (size!22087 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6472 0))(
  ( (LongMapFixedSize!6473 (defaultEntry!3610 Int) (mask!8130 (_ BitVec 32)) (extraKeys!3484 (_ BitVec 32)) (zeroValue!3494 List!27984) (minValue!3494 List!27984) (_size!6519 (_ BitVec 32)) (_keys!3533 array!11365) (_values!3516 array!11363) (_vacant!3297 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12761 0))(
  ( (Cell!12762 (v!30817 LongMapFixedSize!6472)) )
))
(declare-datatypes ((Hashable!3146 0))(
  ( (HashableExt!3145 (__x!18466 Int)) )
))
(declare-datatypes ((MutLongMap!3236 0))(
  ( (LongMap!3236 (underlying!6677 Cell!12761)) (MutLongMapExt!3235 (__x!18467 Int)) )
))
(declare-datatypes ((Cell!12763 0))(
  ( (Cell!12764 (v!30818 MutLongMap!3236)) )
))
(declare-datatypes ((MutableMap!3146 0))(
  ( (MutableMapExt!3145 (__x!18468 Int)) (HashMap!3146 (underlying!6678 Cell!12763) (hashF!5075 Hashable!3146) (_size!6520 (_ BitVec 32)) (defaultValue!3308 Int)) )
))
(declare-fun thiss!47689 () MutableMap!3146)

(get-info :version)

(assert (=> b!2358832 (= res!1001130 ((_ is MutableMapExt!3145) thiss!47689))))

(declare-fun tp!754249 () Bool)

(declare-fun e!1506618 () Bool)

(declare-fun e!1506620 () Bool)

(declare-fun tp!754248 () Bool)

(declare-fun array_inv!3631 (array!11365) Bool)

(declare-fun array_inv!3632 (array!11363) Bool)

(assert (=> b!2358833 (= e!1506618 (and tp!754252 tp!754248 tp!754249 (array_inv!3631 (_keys!3533 (v!30817 (underlying!6677 (v!30818 (underlying!6678 thiss!47689)))))) (array_inv!3632 (_values!3516 (v!30817 (underlying!6677 (v!30818 (underlying!6678 thiss!47689)))))) e!1506620))))

(declare-fun b!2358834 () Bool)

(declare-fun e!1506624 () Bool)

(declare-fun e!1506625 () Bool)

(declare-fun lt!863734 () MutLongMap!3236)

(assert (=> b!2358834 (= e!1506624 (and e!1506625 ((_ is LongMap!3236) lt!863734)))))

(assert (=> b!2358834 (= lt!863734 (v!30818 (underlying!6678 thiss!47689)))))

(declare-fun b!2358835 () Bool)

(declare-fun e!1506622 () Bool)

(assert (=> b!2358835 (= e!1506625 e!1506622)))

(declare-fun b!2358836 () Bool)

(assert (=> b!2358836 (= e!1506622 e!1506618)))

(declare-fun mapIsEmpty!15106 () Bool)

(declare-fun mapRes!15106 () Bool)

(assert (=> mapIsEmpty!15106 mapRes!15106))

(declare-fun e!1506623 () Bool)

(assert (=> b!2358837 (= e!1506623 (and e!1506624 tp!754253))))

(declare-fun b!2358838 () Bool)

(declare-fun tp!754254 () Bool)

(assert (=> b!2358838 (= e!1506620 (and tp!754254 mapRes!15106))))

(declare-fun condMapEmpty!15106 () Bool)

(declare-fun mapDefault!15106 () List!27984)

(assert (=> b!2358838 (= condMapEmpty!15106 (= (arr!5062 (_values!3516 (v!30817 (underlying!6677 (v!30818 (underlying!6678 thiss!47689)))))) ((as const (Array (_ BitVec 32) List!27984)) mapDefault!15106)))))

(declare-fun b!2358839 () Bool)

(assert (=> b!2358839 (= e!1506619 false)))

(declare-fun lt!863733 () Bool)

(declare-fun key!7131 () K!4962)

(declare-fun contains!4856 (MutableMap!3146 K!4962) Bool)

(assert (=> b!2358839 (= lt!863733 (contains!4856 thiss!47689 key!7131))))

(declare-fun mapNonEmpty!15106 () Bool)

(declare-fun tp!754250 () Bool)

(declare-fun tp!754251 () Bool)

(assert (=> mapNonEmpty!15106 (= mapRes!15106 (and tp!754250 tp!754251))))

(declare-fun mapKey!15106 () (_ BitVec 32))

(declare-fun mapValue!15106 () List!27984)

(declare-fun mapRest!15106 () (Array (_ BitVec 32) List!27984))

(assert (=> mapNonEmpty!15106 (= (arr!5062 (_values!3516 (v!30817 (underlying!6677 (v!30818 (underlying!6678 thiss!47689)))))) (store mapRest!15106 mapKey!15106 mapValue!15106))))

(declare-fun res!1001129 () Bool)

(assert (=> start!231258 (=> (not res!1001129) (not e!1506619))))

(declare-fun valid!2430 (MutableMap!3146) Bool)

(assert (=> start!231258 (= res!1001129 (valid!2430 thiss!47689))))

(assert (=> start!231258 e!1506619))

(assert (=> start!231258 e!1506623))

(declare-fun tp_is_empty!11181 () Bool)

(assert (=> start!231258 tp_is_empty!11181))

(assert (= (and start!231258 res!1001129) b!2358832))

(assert (= (and b!2358832 res!1001130) b!2358839))

(assert (= (and b!2358838 condMapEmpty!15106) mapIsEmpty!15106))

(assert (= (and b!2358838 (not condMapEmpty!15106)) mapNonEmpty!15106))

(assert (= b!2358833 b!2358838))

(assert (= b!2358836 b!2358833))

(assert (= b!2358835 b!2358836))

(assert (= (and b!2358834 ((_ is LongMap!3236) (v!30818 (underlying!6678 thiss!47689)))) b!2358835))

(assert (= b!2358837 b!2358834))

(assert (= (and start!231258 ((_ is HashMap!3146) thiss!47689)) b!2358837))

(declare-fun m!2771493 () Bool)

(assert (=> b!2358833 m!2771493))

(declare-fun m!2771495 () Bool)

(assert (=> b!2358833 m!2771495))

(declare-fun m!2771497 () Bool)

(assert (=> b!2358839 m!2771497))

(declare-fun m!2771499 () Bool)

(assert (=> mapNonEmpty!15106 m!2771499))

(declare-fun m!2771501 () Bool)

(assert (=> start!231258 m!2771501))

(check-sat (not b_next!71103) b_and!185331 (not b!2358838) (not start!231258) (not mapNonEmpty!15106) (not b!2358839) tp_is_empty!11181 b_and!185333 (not b_next!71101) (not b!2358833))
(check-sat b_and!185333 b_and!185331 (not b_next!71101) (not b_next!71103))
