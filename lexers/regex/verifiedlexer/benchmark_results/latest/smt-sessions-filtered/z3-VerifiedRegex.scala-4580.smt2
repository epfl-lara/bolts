; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241650 () Bool)

(assert start!241650)

(declare-fun b!2477333 () Bool)

(declare-fun b_free!71977 () Bool)

(declare-fun b_next!72681 () Bool)

(assert (=> b!2477333 (= b_free!71977 (not b_next!72681))))

(declare-fun tp!792514 () Bool)

(declare-fun b_and!188203 () Bool)

(assert (=> b!2477333 (= tp!792514 b_and!188203)))

(declare-fun b!2477338 () Bool)

(declare-fun b_free!71979 () Bool)

(declare-fun b_next!72683 () Bool)

(assert (=> b!2477338 (= b_free!71979 (not b_next!72683))))

(declare-fun tp!792513 () Bool)

(declare-fun b_and!188205 () Bool)

(assert (=> b!2477338 (= tp!792513 b_and!188205)))

(declare-fun tp!792512 () Bool)

(declare-fun e!1571905 () Bool)

(declare-fun tp!792511 () Bool)

(declare-fun e!1571910 () Bool)

(declare-datatypes ((Hashable!3190 0))(
  ( (HashableExt!3189 (__x!18746 Int)) )
))
(declare-datatypes ((K!5285 0))(
  ( (K!5286 (val!8703 Int)) )
))
(declare-datatypes ((V!5487 0))(
  ( (V!5488 (val!8704 Int)) )
))
(declare-datatypes ((tuple2!28390 0))(
  ( (tuple2!28391 (_1!16736 K!5285) (_2!16736 V!5487)) )
))
(declare-datatypes ((List!29060 0))(
  ( (Nil!28960) (Cons!28960 (h!34362 tuple2!28390) (t!210697 List!29060)) )
))
(declare-datatypes ((array!11555 0))(
  ( (array!11556 (arr!5150 (Array (_ BitVec 32) List!29060)) (size!22569 (_ BitVec 32))) )
))
(declare-datatypes ((array!11557 0))(
  ( (array!11558 (arr!5151 (Array (_ BitVec 32) (_ BitVec 64))) (size!22570 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6560 0))(
  ( (LongMapFixedSize!6561 (defaultEntry!3654 Int) (mask!8409 (_ BitVec 32)) (extraKeys!3528 (_ BitVec 32)) (zeroValue!3538 List!29060) (minValue!3538 List!29060) (_size!6607 (_ BitVec 32)) (_keys!3577 array!11557) (_values!3560 array!11555) (_vacant!3341 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12937 0))(
  ( (Cell!12938 (v!31233 LongMapFixedSize!6560)) )
))
(declare-datatypes ((MutLongMap!3280 0))(
  ( (LongMap!3280 (underlying!6767 Cell!12937)) (MutLongMapExt!3279 (__x!18747 Int)) )
))
(declare-datatypes ((Cell!12939 0))(
  ( (Cell!12940 (v!31234 MutLongMap!3280)) )
))
(declare-datatypes ((MutableMap!3190 0))(
  ( (MutableMapExt!3189 (__x!18748 Int)) (HashMap!3190 (underlying!6768 Cell!12939) (hashF!5128 Hashable!3190) (_size!6608 (_ BitVec 32)) (defaultValue!3352 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3190)

(declare-fun array_inv!3693 (array!11557) Bool)

(declare-fun array_inv!3694 (array!11555) Bool)

(assert (=> b!2477333 (= e!1571910 (and tp!792514 tp!792512 tp!792511 (array_inv!3693 (_keys!3577 (v!31233 (underlying!6767 (v!31234 (underlying!6768 thiss!42540)))))) (array_inv!3694 (_values!3560 (v!31233 (underlying!6767 (v!31234 (underlying!6768 thiss!42540)))))) e!1571905))))

(declare-fun b!2477334 () Bool)

(declare-fun e!1571912 () Bool)

(declare-fun e!1571907 () Bool)

(assert (=> b!2477334 (= e!1571912 e!1571907)))

(declare-fun res!1048730 () Bool)

(declare-fun e!1571911 () Bool)

(assert (=> start!241650 (=> (not res!1048730) (not e!1571911))))

(get-info :version)

(assert (=> start!241650 (= res!1048730 ((_ is HashMap!3190) thiss!42540))))

(assert (=> start!241650 e!1571911))

(declare-fun e!1571908 () Bool)

(assert (=> start!241650 e!1571908))

(declare-fun tp_is_empty!12061 () Bool)

(assert (=> start!241650 tp_is_empty!12061))

(declare-fun b!2477335 () Bool)

(declare-fun e!1571906 () Bool)

(declare-fun lt!884844 () MutLongMap!3280)

(assert (=> b!2477335 (= e!1571906 (and e!1571912 ((_ is LongMap!3280) lt!884844)))))

(assert (=> b!2477335 (= lt!884844 (v!31234 (underlying!6768 thiss!42540)))))

(declare-fun b!2477336 () Bool)

(assert (=> b!2477336 (= e!1571911 (not ((_ is LongMap!3280) (v!31234 (underlying!6768 thiss!42540)))))))

(declare-fun b!2477337 () Bool)

(declare-fun tp!792509 () Bool)

(declare-fun mapRes!15265 () Bool)

(assert (=> b!2477337 (= e!1571905 (and tp!792509 mapRes!15265))))

(declare-fun condMapEmpty!15265 () Bool)

(declare-fun mapDefault!15265 () List!29060)

(assert (=> b!2477337 (= condMapEmpty!15265 (= (arr!5150 (_values!3560 (v!31233 (underlying!6767 (v!31234 (underlying!6768 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29060)) mapDefault!15265)))))

(assert (=> b!2477338 (= e!1571908 (and e!1571906 tp!792513))))

(declare-fun b!2477339 () Bool)

(declare-fun res!1048731 () Bool)

(assert (=> b!2477339 (=> (not res!1048731) (not e!1571911))))

(declare-fun key!2246 () K!5285)

(declare-fun contains!4959 (MutableMap!3190 K!5285) Bool)

(assert (=> b!2477339 (= res!1048731 (contains!4959 thiss!42540 key!2246))))

(declare-fun b!2477340 () Bool)

(declare-fun res!1048732 () Bool)

(assert (=> b!2477340 (=> (not res!1048732) (not e!1571911))))

(declare-fun valid!2482 (MutableMap!3190) Bool)

(assert (=> b!2477340 (= res!1048732 (valid!2482 thiss!42540))))

(declare-fun b!2477341 () Bool)

(assert (=> b!2477341 (= e!1571907 e!1571910)))

(declare-fun mapNonEmpty!15265 () Bool)

(declare-fun tp!792510 () Bool)

(declare-fun tp!792515 () Bool)

(assert (=> mapNonEmpty!15265 (= mapRes!15265 (and tp!792510 tp!792515))))

(declare-fun mapValue!15265 () List!29060)

(declare-fun mapRest!15265 () (Array (_ BitVec 32) List!29060))

(declare-fun mapKey!15265 () (_ BitVec 32))

(assert (=> mapNonEmpty!15265 (= (arr!5150 (_values!3560 (v!31233 (underlying!6767 (v!31234 (underlying!6768 thiss!42540)))))) (store mapRest!15265 mapKey!15265 mapValue!15265))))

(declare-fun mapIsEmpty!15265 () Bool)

(assert (=> mapIsEmpty!15265 mapRes!15265))

(assert (= (and start!241650 res!1048730) b!2477340))

(assert (= (and b!2477340 res!1048732) b!2477339))

(assert (= (and b!2477339 res!1048731) b!2477336))

(assert (= (and b!2477337 condMapEmpty!15265) mapIsEmpty!15265))

(assert (= (and b!2477337 (not condMapEmpty!15265)) mapNonEmpty!15265))

(assert (= b!2477333 b!2477337))

(assert (= b!2477341 b!2477333))

(assert (= b!2477334 b!2477341))

(assert (= (and b!2477335 ((_ is LongMap!3280) (v!31234 (underlying!6768 thiss!42540)))) b!2477334))

(assert (= b!2477338 b!2477335))

(assert (= (and start!241650 ((_ is HashMap!3190) thiss!42540)) b!2477338))

(declare-fun m!2845245 () Bool)

(assert (=> b!2477333 m!2845245))

(declare-fun m!2845247 () Bool)

(assert (=> b!2477333 m!2845247))

(declare-fun m!2845249 () Bool)

(assert (=> b!2477339 m!2845249))

(declare-fun m!2845251 () Bool)

(assert (=> b!2477340 m!2845251))

(declare-fun m!2845253 () Bool)

(assert (=> mapNonEmpty!15265 m!2845253))

(check-sat b_and!188205 (not b!2477337) tp_is_empty!12061 (not b!2477333) (not b_next!72681) (not mapNonEmpty!15265) b_and!188203 (not b!2477339) (not b!2477340) (not b_next!72683))
(check-sat b_and!188205 b_and!188203 (not b_next!72681) (not b_next!72683))
