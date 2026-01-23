; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241646 () Bool)

(assert start!241646)

(declare-fun b!2477281 () Bool)

(declare-fun b_free!71969 () Bool)

(declare-fun b_next!72673 () Bool)

(assert (=> b!2477281 (= b_free!71969 (not b_next!72673))))

(declare-fun tp!792472 () Bool)

(declare-fun b_and!188195 () Bool)

(assert (=> b!2477281 (= tp!792472 b_and!188195)))

(declare-fun b!2477285 () Bool)

(declare-fun b_free!71971 () Bool)

(declare-fun b_next!72675 () Bool)

(assert (=> b!2477285 (= b_free!71971 (not b_next!72675))))

(declare-fun tp!792467 () Bool)

(declare-fun b_and!188197 () Bool)

(assert (=> b!2477285 (= tp!792467 b_and!188197)))

(declare-fun b!2477279 () Bool)

(declare-fun res!1048713 () Bool)

(declare-fun e!1571860 () Bool)

(assert (=> b!2477279 (=> (not res!1048713) (not e!1571860))))

(declare-datatypes ((Hashable!3188 0))(
  ( (HashableExt!3187 (__x!18740 Int)) )
))
(declare-datatypes ((K!5280 0))(
  ( (K!5281 (val!8699 Int)) )
))
(declare-datatypes ((V!5482 0))(
  ( (V!5483 (val!8700 Int)) )
))
(declare-datatypes ((tuple2!28384 0))(
  ( (tuple2!28385 (_1!16733 K!5280) (_2!16733 V!5482)) )
))
(declare-datatypes ((List!29057 0))(
  ( (Nil!28957) (Cons!28957 (h!34359 tuple2!28384) (t!210694 List!29057)) )
))
(declare-datatypes ((array!11547 0))(
  ( (array!11548 (arr!5146 (Array (_ BitVec 32) List!29057)) (size!22565 (_ BitVec 32))) )
))
(declare-datatypes ((array!11549 0))(
  ( (array!11550 (arr!5147 (Array (_ BitVec 32) (_ BitVec 64))) (size!22566 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6556 0))(
  ( (LongMapFixedSize!6557 (defaultEntry!3652 Int) (mask!8406 (_ BitVec 32)) (extraKeys!3526 (_ BitVec 32)) (zeroValue!3536 List!29057) (minValue!3536 List!29057) (_size!6603 (_ BitVec 32)) (_keys!3575 array!11549) (_values!3558 array!11547) (_vacant!3339 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12929 0))(
  ( (Cell!12930 (v!31229 LongMapFixedSize!6556)) )
))
(declare-datatypes ((MutLongMap!3278 0))(
  ( (LongMap!3278 (underlying!6763 Cell!12929)) (MutLongMapExt!3277 (__x!18741 Int)) )
))
(declare-datatypes ((Cell!12931 0))(
  ( (Cell!12932 (v!31230 MutLongMap!3278)) )
))
(declare-datatypes ((MutableMap!3188 0))(
  ( (MutableMapExt!3187 (__x!18742 Int)) (HashMap!3188 (underlying!6764 Cell!12931) (hashF!5126 Hashable!3188) (_size!6604 (_ BitVec 32)) (defaultValue!3350 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3188)

(declare-fun key!2246 () K!5280)

(declare-fun contains!4958 (MutableMap!3188 K!5280) Bool)

(assert (=> b!2477279 (= res!1048713 (not (contains!4958 thiss!42540 key!2246)))))

(declare-fun b!2477280 () Bool)

(declare-fun res!1048714 () Bool)

(assert (=> b!2477280 (=> (not res!1048714) (not e!1571860))))

(declare-fun valid!2481 (MutableMap!3188) Bool)

(assert (=> b!2477280 (= res!1048714 (valid!2481 thiss!42540))))

(declare-fun e!1571859 () Bool)

(declare-fun tp!792469 () Bool)

(declare-fun tp!792468 () Bool)

(declare-fun e!1571857 () Bool)

(declare-fun array_inv!3691 (array!11549) Bool)

(declare-fun array_inv!3692 (array!11547) Bool)

(assert (=> b!2477281 (= e!1571857 (and tp!792472 tp!792468 tp!792469 (array_inv!3691 (_keys!3575 (v!31229 (underlying!6763 (v!31230 (underlying!6764 thiss!42540)))))) (array_inv!3692 (_values!3558 (v!31229 (underlying!6763 (v!31230 (underlying!6764 thiss!42540)))))) e!1571859))))

(declare-fun b!2477282 () Bool)

(declare-fun tp!792473 () Bool)

(declare-fun mapRes!15259 () Bool)

(assert (=> b!2477282 (= e!1571859 (and tp!792473 mapRes!15259))))

(declare-fun condMapEmpty!15259 () Bool)

(declare-fun mapDefault!15259 () List!29057)

(assert (=> b!2477282 (= condMapEmpty!15259 (= (arr!5146 (_values!3558 (v!31229 (underlying!6763 (v!31230 (underlying!6764 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29057)) mapDefault!15259)))))

(declare-fun b!2477283 () Bool)

(declare-fun e!1571861 () Bool)

(assert (=> b!2477283 (= e!1571861 e!1571857)))

(declare-fun e!1571864 () Bool)

(declare-fun e!1571862 () Bool)

(assert (=> b!2477285 (= e!1571864 (and e!1571862 tp!792467))))

(declare-fun mapIsEmpty!15259 () Bool)

(assert (=> mapIsEmpty!15259 mapRes!15259))

(declare-fun b!2477286 () Bool)

(assert (=> b!2477286 (= e!1571860 (not true))))

(declare-datatypes ((ListMap!953 0))(
  ( (ListMap!954 (toList!1462 List!29057)) )
))
(declare-fun lt!884835 () ListMap!953)

(declare-fun map!6034 (MutableMap!3188) ListMap!953)

(assert (=> b!2477286 (= lt!884835 (map!6034 thiss!42540))))

(declare-fun lt!884837 () ListMap!953)

(declare-fun -!115 (ListMap!953 K!5280) ListMap!953)

(assert (=> b!2477286 (= lt!884837 (-!115 lt!884837 key!2246))))

(declare-datatypes ((tuple2!28386 0))(
  ( (tuple2!28387 (_1!16734 (_ BitVec 64)) (_2!16734 List!29057)) )
))
(declare-datatypes ((List!29058 0))(
  ( (Nil!28958) (Cons!28958 (h!34360 tuple2!28386) (t!210695 List!29058)) )
))
(declare-datatypes ((ListLongMap!401 0))(
  ( (ListLongMap!402 (toList!1463 List!29058)) )
))
(declare-fun lt!884838 () ListLongMap!401)

(declare-fun extractMap!143 (List!29058) ListMap!953)

(assert (=> b!2477286 (= lt!884837 (extractMap!143 (toList!1463 lt!884838)))))

(declare-datatypes ((Unit!42342 0))(
  ( (Unit!42343) )
))
(declare-fun lt!884834 () Unit!42342)

(declare-fun lemmaRemoveNotContainedDoesNotChange!25 (ListLongMap!401 K!5280 Hashable!3188) Unit!42342)

(assert (=> b!2477286 (= lt!884834 (lemmaRemoveNotContainedDoesNotChange!25 lt!884838 key!2246 (hashF!5126 thiss!42540)))))

(declare-fun map!6035 (MutLongMap!3278) ListLongMap!401)

(assert (=> b!2477286 (= lt!884838 (map!6035 (v!31230 (underlying!6764 thiss!42540))))))

(declare-fun b!2477287 () Bool)

(declare-fun e!1571863 () Bool)

(declare-fun lt!884836 () MutLongMap!3278)

(get-info :version)

(assert (=> b!2477287 (= e!1571862 (and e!1571863 ((_ is LongMap!3278) lt!884836)))))

(assert (=> b!2477287 (= lt!884836 (v!31230 (underlying!6764 thiss!42540)))))

(declare-fun mapNonEmpty!15259 () Bool)

(declare-fun tp!792471 () Bool)

(declare-fun tp!792470 () Bool)

(assert (=> mapNonEmpty!15259 (= mapRes!15259 (and tp!792471 tp!792470))))

(declare-fun mapKey!15259 () (_ BitVec 32))

(declare-fun mapValue!15259 () List!29057)

(declare-fun mapRest!15259 () (Array (_ BitVec 32) List!29057))

(assert (=> mapNonEmpty!15259 (= (arr!5146 (_values!3558 (v!31229 (underlying!6763 (v!31230 (underlying!6764 thiss!42540)))))) (store mapRest!15259 mapKey!15259 mapValue!15259))))

(declare-fun res!1048712 () Bool)

(assert (=> start!241646 (=> (not res!1048712) (not e!1571860))))

(assert (=> start!241646 (= res!1048712 ((_ is HashMap!3188) thiss!42540))))

(assert (=> start!241646 e!1571860))

(assert (=> start!241646 e!1571864))

(declare-fun tp_is_empty!12057 () Bool)

(assert (=> start!241646 tp_is_empty!12057))

(declare-fun b!2477284 () Bool)

(assert (=> b!2477284 (= e!1571863 e!1571861)))

(assert (= (and start!241646 res!1048712) b!2477280))

(assert (= (and b!2477280 res!1048714) b!2477279))

(assert (= (and b!2477279 res!1048713) b!2477286))

(assert (= (and b!2477282 condMapEmpty!15259) mapIsEmpty!15259))

(assert (= (and b!2477282 (not condMapEmpty!15259)) mapNonEmpty!15259))

(assert (= b!2477281 b!2477282))

(assert (= b!2477283 b!2477281))

(assert (= b!2477284 b!2477283))

(assert (= (and b!2477287 ((_ is LongMap!3278) (v!31230 (underlying!6764 thiss!42540)))) b!2477284))

(assert (= b!2477285 b!2477287))

(assert (= (and start!241646 ((_ is HashMap!3188) thiss!42540)) b!2477285))

(declare-fun m!2845215 () Bool)

(assert (=> mapNonEmpty!15259 m!2845215))

(declare-fun m!2845217 () Bool)

(assert (=> b!2477280 m!2845217))

(declare-fun m!2845219 () Bool)

(assert (=> b!2477286 m!2845219))

(declare-fun m!2845221 () Bool)

(assert (=> b!2477286 m!2845221))

(declare-fun m!2845223 () Bool)

(assert (=> b!2477286 m!2845223))

(declare-fun m!2845225 () Bool)

(assert (=> b!2477286 m!2845225))

(declare-fun m!2845227 () Bool)

(assert (=> b!2477286 m!2845227))

(declare-fun m!2845229 () Bool)

(assert (=> b!2477281 m!2845229))

(declare-fun m!2845231 () Bool)

(assert (=> b!2477281 m!2845231))

(declare-fun m!2845233 () Bool)

(assert (=> b!2477279 m!2845233))

(check-sat (not b!2477279) (not mapNonEmpty!15259) (not b!2477281) b_and!188195 (not b_next!72675) (not b_next!72673) b_and!188197 (not b!2477286) (not b!2477280) tp_is_empty!12057 (not b!2477282))
(check-sat b_and!188197 b_and!188195 (not b_next!72673) (not b_next!72675))
