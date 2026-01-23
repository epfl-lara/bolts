; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215738 () Bool)

(assert start!215738)

(declare-fun b!2213626 () Bool)

(declare-fun b_free!63827 () Bool)

(declare-fun b_next!64531 () Bool)

(assert (=> b!2213626 (= b_free!63827 (not b_next!64531))))

(declare-fun tp!687769 () Bool)

(declare-fun b_and!173443 () Bool)

(assert (=> b!2213626 (= tp!687769 b_and!173443)))

(declare-fun b!2213624 () Bool)

(declare-fun e!1413501 () Bool)

(declare-fun tp_is_empty!9805 () Bool)

(declare-fun mapRes!13970 () Bool)

(assert (=> b!2213624 (= e!1413501 (and tp_is_empty!9805 mapRes!13970))))

(declare-fun condMapEmpty!13970 () Bool)

(declare-datatypes ((V!4692 0))(
  ( (V!4693 (val!7392 Int)) )
))
(declare-datatypes ((array!10135 0))(
  ( (array!10136 (arr!4516 (Array (_ BitVec 32) V!4692)) (size!20199 (_ BitVec 32))) )
))
(declare-datatypes ((array!10137 0))(
  ( (array!10138 (arr!4517 (Array (_ BitVec 32) (_ BitVec 64))) (size!20200 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5920 0))(
  ( (LongMapFixedSize!5921 (defaultEntry!3325 Int) (mask!7442 (_ BitVec 32)) (extraKeys!3208 (_ BitVec 32)) (zeroValue!3218 V!4692) (minValue!3218 V!4692) (_size!5970 (_ BitVec 32)) (_keys!3257 array!10137) (_values!3240 array!10135) (_vacant!3021 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11663 0))(
  ( (Cell!11664 (v!29442 LongMapFixedSize!5920)) )
))
(declare-datatypes ((MutLongMap!2960 0))(
  ( (LongMap!2960 (underlying!6114 Cell!11663)) (MutLongMapExt!2959 (__x!17054 Int)) )
))
(declare-fun thiss!47409 () MutLongMap!2960)

(declare-fun mapDefault!13970 () V!4692)

(assert (=> b!2213624 (= condMapEmpty!13970 (= (arr!4516 (_values!3240 (v!29442 (underlying!6114 thiss!47409)))) ((as const (Array (_ BitVec 32) V!4692)) mapDefault!13970)))))

(declare-fun mapNonEmpty!13970 () Bool)

(declare-fun tp!687770 () Bool)

(assert (=> mapNonEmpty!13970 (= mapRes!13970 (and tp!687770 tp_is_empty!9805))))

(declare-fun mapValue!13970 () V!4692)

(declare-fun mapKey!13970 () (_ BitVec 32))

(declare-fun mapRest!13970 () (Array (_ BitVec 32) V!4692))

(assert (=> mapNonEmpty!13970 (= (arr!4516 (_values!3240 (v!29442 (underlying!6114 thiss!47409)))) (store mapRest!13970 mapKey!13970 mapValue!13970))))

(declare-fun e!1413499 () Bool)

(declare-fun array_inv!3242 (array!10137) Bool)

(declare-fun array_inv!3243 (array!10135) Bool)

(assert (=> b!2213626 (= e!1413499 (and tp!687769 tp_is_empty!9805 (array_inv!3242 (_keys!3257 (v!29442 (underlying!6114 thiss!47409)))) (array_inv!3243 (_values!3240 (v!29442 (underlying!6114 thiss!47409)))) e!1413501))))

(declare-fun mapIsEmpty!13970 () Bool)

(assert (=> mapIsEmpty!13970 mapRes!13970))

(declare-fun b!2213627 () Bool)

(declare-fun e!1413497 () Bool)

(assert (=> b!2213627 (= e!1413497 false)))

(declare-fun lt!826704 () Bool)

(declare-fun key!7032 () (_ BitVec 64))

(declare-fun choose!13061 (MutLongMap!2960 (_ BitVec 64)) Bool)

(assert (=> b!2213627 (= lt!826704 (choose!13061 thiss!47409 key!7032))))

(declare-fun res!951379 () Bool)

(assert (=> start!215738 (=> (not res!951379) (not e!1413497))))

(get-info :version)

(assert (=> start!215738 (= res!951379 ((_ is MutLongMapExt!2959) thiss!47409))))

(assert (=> start!215738 e!1413497))

(declare-fun e!1413496 () Bool)

(assert (=> start!215738 e!1413496))

(assert (=> start!215738 true))

(declare-fun b!2213625 () Bool)

(declare-fun e!1413500 () Bool)

(assert (=> b!2213625 (= e!1413496 e!1413500)))

(declare-fun b!2213628 () Bool)

(assert (=> b!2213628 (= e!1413500 e!1413499)))

(declare-fun b!2213629 () Bool)

(declare-fun res!951378 () Bool)

(assert (=> b!2213629 (=> (not res!951378) (not e!1413497))))

(declare-fun valid!2284 (MutLongMap!2960) Bool)

(assert (=> b!2213629 (= res!951378 (valid!2284 thiss!47409))))

(assert (= (and start!215738 res!951379) b!2213629))

(assert (= (and b!2213629 res!951378) b!2213627))

(assert (= (and b!2213624 condMapEmpty!13970) mapIsEmpty!13970))

(assert (= (and b!2213624 (not condMapEmpty!13970)) mapNonEmpty!13970))

(assert (= b!2213626 b!2213624))

(assert (= b!2213628 b!2213626))

(assert (= b!2213625 b!2213628))

(assert (= (and start!215738 ((_ is LongMap!2960) thiss!47409)) b!2213625))

(declare-fun m!2656009 () Bool)

(assert (=> mapNonEmpty!13970 m!2656009))

(declare-fun m!2656011 () Bool)

(assert (=> b!2213626 m!2656011))

(declare-fun m!2656013 () Bool)

(assert (=> b!2213626 m!2656013))

(declare-fun m!2656015 () Bool)

(assert (=> b!2213627 m!2656015))

(declare-fun m!2656017 () Bool)

(assert (=> b!2213629 m!2656017))

(check-sat (not b_next!64531) (not b!2213629) (not b!2213626) b_and!173443 (not b!2213627) tp_is_empty!9805 (not mapNonEmpty!13970))
(check-sat b_and!173443 (not b_next!64531))
