; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231072 () Bool)

(assert start!231072)

(declare-fun b!2357734 () Bool)

(declare-fun b_free!70309 () Bool)

(declare-fun b_next!71013 () Bool)

(assert (=> b!2357734 (= b_free!70309 (not b_next!71013))))

(declare-fun tp!753726 () Bool)

(declare-fun b_and!185221 () Bool)

(assert (=> b!2357734 (= tp!753726 b_and!185221)))

(declare-fun b!2357736 () Bool)

(declare-fun b_free!70311 () Bool)

(declare-fun b_next!71015 () Bool)

(assert (=> b!2357736 (= b_free!70311 (not b_next!71015))))

(declare-fun tp!753729 () Bool)

(declare-fun b_and!185223 () Bool)

(assert (=> b!2357736 (= tp!753729 b_and!185223)))

(declare-fun b!2357731 () Bool)

(declare-fun e!1505739 () Bool)

(declare-fun tp!753723 () Bool)

(declare-fun mapRes!15029 () Bool)

(assert (=> b!2357731 (= e!1505739 (and tp!753723 mapRes!15029))))

(declare-fun condMapEmpty!15029 () Bool)

(declare-datatypes ((V!5109 0))(
  ( (V!5110 (val!8149 Int)) )
))
(declare-datatypes ((K!4907 0))(
  ( (K!4908 (val!8150 Int)) )
))
(declare-datatypes ((Hashable!3124 0))(
  ( (HashableExt!3123 (__x!18400 Int)) )
))
(declare-datatypes ((tuple2!27578 0))(
  ( (tuple2!27579 (_1!16330 K!4907) (_2!16330 V!5109)) )
))
(declare-datatypes ((List!27958 0))(
  ( (Nil!27860) (Cons!27860 (h!33261 tuple2!27578) (t!207817 List!27958)) )
))
(declare-datatypes ((array!11269 0))(
  ( (array!11270 (arr!5018 (Array (_ BitVec 32) List!27958)) (size!22042 (_ BitVec 32))) )
))
(declare-datatypes ((array!11271 0))(
  ( (array!11272 (arr!5019 (Array (_ BitVec 32) (_ BitVec 64))) (size!22043 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6428 0))(
  ( (LongMapFixedSize!6429 (defaultEntry!3579 Int) (mask!8097 (_ BitVec 32)) (extraKeys!3462 (_ BitVec 32)) (zeroValue!3472 List!27958) (minValue!3472 List!27958) (_size!6475 (_ BitVec 32)) (_keys!3511 array!11271) (_values!3494 array!11269) (_vacant!3275 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12673 0))(
  ( (Cell!12674 (v!30753 LongMapFixedSize!6428)) )
))
(declare-datatypes ((MutLongMap!3214 0))(
  ( (LongMap!3214 (underlying!6633 Cell!12673)) (MutLongMapExt!3213 (__x!18401 Int)) )
))
(declare-datatypes ((Cell!12675 0))(
  ( (Cell!12676 (v!30754 MutLongMap!3214)) )
))
(declare-datatypes ((MutableMap!3124 0))(
  ( (MutableMapExt!3123 (__x!18402 Int)) (HashMap!3124 (underlying!6634 Cell!12675) (hashF!5047 Hashable!3124) (_size!6476 (_ BitVec 32)) (defaultValue!3286 Int)) )
))
(declare-fun thiss!47746 () MutableMap!3124)

(declare-fun mapDefault!15029 () List!27958)

(assert (=> b!2357731 (= condMapEmpty!15029 (= (arr!5018 (_values!3494 (v!30753 (underlying!6633 (v!30754 (underlying!6634 thiss!47746)))))) ((as const (Array (_ BitVec 32) List!27958)) mapDefault!15029)))))

(declare-fun res!1000819 () Bool)

(declare-fun e!1505733 () Bool)

(assert (=> start!231072 (=> (not res!1000819) (not e!1505733))))

(declare-fun valid!2408 (MutableMap!3124) Bool)

(assert (=> start!231072 (= res!1000819 (valid!2408 thiss!47746))))

(assert (=> start!231072 e!1505733))

(declare-fun e!1505735 () Bool)

(assert (=> start!231072 e!1505735))

(declare-fun tp_is_empty!11125 () Bool)

(assert (=> start!231072 tp_is_empty!11125))

(declare-fun b!2357732 () Bool)

(declare-fun res!1000818 () Bool)

(assert (=> b!2357732 (=> (not res!1000818) (not e!1505733))))

(get-info :version)

(assert (=> b!2357732 (= res!1000818 ((_ is MutableMapExt!3123) thiss!47746))))

(declare-fun b!2357733 () Bool)

(declare-fun e!1505738 () Bool)

(declare-fun e!1505736 () Bool)

(declare-fun lt!863155 () MutLongMap!3214)

(assert (=> b!2357733 (= e!1505738 (and e!1505736 ((_ is LongMap!3214) lt!863155)))))

(assert (=> b!2357733 (= lt!863155 (v!30754 (underlying!6634 thiss!47746)))))

(declare-fun mapNonEmpty!15029 () Bool)

(declare-fun tp!753724 () Bool)

(declare-fun tp!753728 () Bool)

(assert (=> mapNonEmpty!15029 (= mapRes!15029 (and tp!753724 tp!753728))))

(declare-fun mapRest!15029 () (Array (_ BitVec 32) List!27958))

(declare-fun mapValue!15029 () List!27958)

(declare-fun mapKey!15029 () (_ BitVec 32))

(assert (=> mapNonEmpty!15029 (= (arr!5018 (_values!3494 (v!30753 (underlying!6633 (v!30754 (underlying!6634 thiss!47746)))))) (store mapRest!15029 mapKey!15029 mapValue!15029))))

(declare-fun tp!753725 () Bool)

(declare-fun e!1505737 () Bool)

(declare-fun tp!753727 () Bool)

(declare-fun array_inv!3595 (array!11271) Bool)

(declare-fun array_inv!3596 (array!11269) Bool)

(assert (=> b!2357734 (= e!1505737 (and tp!753726 tp!753725 tp!753727 (array_inv!3595 (_keys!3511 (v!30753 (underlying!6633 (v!30754 (underlying!6634 thiss!47746)))))) (array_inv!3596 (_values!3494 (v!30753 (underlying!6633 (v!30754 (underlying!6634 thiss!47746)))))) e!1505739))))

(declare-fun b!2357735 () Bool)

(assert (=> b!2357735 (= e!1505733 false)))

(declare-fun lt!863153 () Bool)

(declare-fun key!7176 () K!4907)

(declare-fun contains!4827 (MutableMap!3124 K!4907) Bool)

(assert (=> b!2357735 (= lt!863153 (contains!4827 thiss!47746 key!7176))))

(declare-fun lt!863154 () V!5109)

(declare-fun apply!6692 (MutableMap!3124 K!4907) V!5109)

(assert (=> b!2357735 (= lt!863154 (apply!6692 thiss!47746 key!7176))))

(assert (=> b!2357736 (= e!1505735 (and e!1505738 tp!753729))))

(declare-fun b!2357737 () Bool)

(declare-fun e!1505740 () Bool)

(assert (=> b!2357737 (= e!1505736 e!1505740)))

(declare-fun b!2357738 () Bool)

(assert (=> b!2357738 (= e!1505740 e!1505737)))

(declare-fun mapIsEmpty!15029 () Bool)

(assert (=> mapIsEmpty!15029 mapRes!15029))

(assert (= (and start!231072 res!1000819) b!2357732))

(assert (= (and b!2357732 res!1000818) b!2357735))

(assert (= (and b!2357731 condMapEmpty!15029) mapIsEmpty!15029))

(assert (= (and b!2357731 (not condMapEmpty!15029)) mapNonEmpty!15029))

(assert (= b!2357734 b!2357731))

(assert (= b!2357738 b!2357734))

(assert (= b!2357737 b!2357738))

(assert (= (and b!2357733 ((_ is LongMap!3214) (v!30754 (underlying!6634 thiss!47746)))) b!2357737))

(assert (= b!2357736 b!2357733))

(assert (= (and start!231072 ((_ is HashMap!3124) thiss!47746)) b!2357736))

(declare-fun m!2770647 () Bool)

(assert (=> start!231072 m!2770647))

(declare-fun m!2770649 () Bool)

(assert (=> mapNonEmpty!15029 m!2770649))

(declare-fun m!2770651 () Bool)

(assert (=> b!2357734 m!2770651))

(declare-fun m!2770653 () Bool)

(assert (=> b!2357734 m!2770653))

(declare-fun m!2770655 () Bool)

(assert (=> b!2357735 m!2770655))

(declare-fun m!2770657 () Bool)

(assert (=> b!2357735 m!2770657))

(check-sat b_and!185221 (not start!231072) b_and!185223 (not mapNonEmpty!15029) (not b_next!71013) (not b!2357731) (not b_next!71015) (not b!2357735) (not b!2357734) tp_is_empty!11125)
(check-sat b_and!185223 b_and!185221 (not b_next!71013) (not b_next!71015))
