; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231208 () Bool)

(assert start!231208)

(declare-fun b!2358577 () Bool)

(declare-fun b_free!70381 () Bool)

(declare-fun b_next!71085 () Bool)

(assert (=> b!2358577 (= b_free!70381 (not b_next!71085))))

(declare-fun tp!754141 () Bool)

(declare-fun b_and!185309 () Bool)

(assert (=> b!2358577 (= tp!754141 b_and!185309)))

(declare-fun b!2358575 () Bool)

(declare-fun b_free!70383 () Bool)

(declare-fun b_next!71087 () Bool)

(assert (=> b!2358575 (= b_free!70383 (not b_next!71087))))

(declare-fun tp!754143 () Bool)

(declare-fun b_and!185311 () Bool)

(assert (=> b!2358575 (= tp!754143 b_and!185311)))

(declare-fun mapIsEmpty!15090 () Bool)

(declare-fun mapRes!15090 () Bool)

(assert (=> mapIsEmpty!15090 mapRes!15090))

(declare-fun b!2358571 () Bool)

(declare-fun res!1001066 () Bool)

(declare-fun e!1506420 () Bool)

(assert (=> b!2358571 (=> (not res!1001066) (not e!1506420))))

(declare-datatypes ((K!4952 0))(
  ( (K!4953 (val!8185 Int)) )
))
(declare-datatypes ((V!5154 0))(
  ( (V!5155 (val!8186 Int)) )
))
(declare-datatypes ((tuple2!27616 0))(
  ( (tuple2!27617 (_1!16349 K!4952) (_2!16349 V!5154)) )
))
(declare-datatypes ((List!27978 0))(
  ( (Nil!27880) (Cons!27880 (h!33281 tuple2!27616) (t!207849 List!27978)) )
))
(declare-datatypes ((array!11345 0))(
  ( (array!11346 (arr!5054 (Array (_ BitVec 32) (_ BitVec 64))) (size!22078 (_ BitVec 32))) )
))
(declare-datatypes ((array!11347 0))(
  ( (array!11348 (arr!5055 (Array (_ BitVec 32) List!27978)) (size!22079 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6464 0))(
  ( (LongMapFixedSize!6465 (defaultEntry!3603 Int) (mask!8124 (_ BitVec 32)) (extraKeys!3480 (_ BitVec 32)) (zeroValue!3490 List!27978) (minValue!3490 List!27978) (_size!6511 (_ BitVec 32)) (_keys!3529 array!11345) (_values!3512 array!11347) (_vacant!3293 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3142 0))(
  ( (HashableExt!3141 (__x!18454 Int)) )
))
(declare-datatypes ((Cell!12745 0))(
  ( (Cell!12746 (v!30804 LongMapFixedSize!6464)) )
))
(declare-datatypes ((MutLongMap!3232 0))(
  ( (LongMap!3232 (underlying!6669 Cell!12745)) (MutLongMapExt!3231 (__x!18455 Int)) )
))
(declare-datatypes ((Cell!12747 0))(
  ( (Cell!12748 (v!30805 MutLongMap!3232)) )
))
(declare-datatypes ((MutableMap!3142 0))(
  ( (MutableMapExt!3141 (__x!18456 Int)) (HashMap!3142 (underlying!6670 Cell!12747) (hashF!5071 Hashable!3142) (_size!6512 (_ BitVec 32)) (defaultValue!3304 Int)) )
))
(declare-fun thiss!47723 () MutableMap!3142)

(declare-fun valid!2424 (MutableMap!3142) Bool)

(assert (=> b!2358571 (= res!1001066 (valid!2424 thiss!47723))))

(declare-fun b!2358572 () Bool)

(declare-fun e!1506422 () Bool)

(declare-fun e!1506418 () Bool)

(assert (=> b!2358572 (= e!1506422 e!1506418)))

(declare-fun mapNonEmpty!15090 () Bool)

(declare-fun tp!754142 () Bool)

(declare-fun tp!754146 () Bool)

(assert (=> mapNonEmpty!15090 (= mapRes!15090 (and tp!754142 tp!754146))))

(declare-fun mapKey!15090 () (_ BitVec 32))

(declare-fun mapValue!15090 () List!27978)

(declare-fun mapRest!15090 () (Array (_ BitVec 32) List!27978))

(assert (=> mapNonEmpty!15090 (= (arr!5055 (_values!3512 (v!30804 (underlying!6669 (v!30805 (underlying!6670 thiss!47723)))))) (store mapRest!15090 mapKey!15090 mapValue!15090))))

(declare-fun b!2358573 () Bool)

(declare-fun e!1506419 () Bool)

(declare-fun e!1506424 () Bool)

(declare-fun lt!863613 () MutLongMap!3232)

(get-info :version)

(assert (=> b!2358573 (= e!1506419 (and e!1506424 ((_ is LongMap!3232) lt!863613)))))

(assert (=> b!2358573 (= lt!863613 (v!30805 (underlying!6670 thiss!47723)))))

(declare-fun b!2358574 () Bool)

(declare-fun e!1506423 () Bool)

(assert (=> b!2358574 (= e!1506420 e!1506423)))

(declare-fun res!1001067 () Bool)

(assert (=> b!2358574 (=> (not res!1001067) (not e!1506423))))

(declare-fun key!7163 () K!4952)

(declare-fun contains!4846 (MutableMap!3142 K!4952) Bool)

(assert (=> b!2358574 (= res!1001067 (contains!4846 thiss!47723 key!7163))))

(declare-fun lt!863612 () V!5154)

(declare-fun choose!13660 (MutableMap!3142 K!4952) V!5154)

(assert (=> b!2358574 (= lt!863612 (choose!13660 thiss!47723 key!7163))))

(declare-fun e!1506426 () Bool)

(assert (=> b!2358575 (= e!1506426 (and e!1506419 tp!754143))))

(declare-fun b!2358576 () Bool)

(assert (=> b!2358576 (= e!1506424 e!1506422)))

(declare-fun b!2358578 () Bool)

(assert (=> b!2358578 (= e!1506423 false)))

(declare-datatypes ((Option!5437 0))(
  ( (None!5436) (Some!5436 (v!30806 V!5154)) )
))
(declare-fun lt!863614 () Option!5437)

(declare-fun getValueByKey!112 (List!27978 K!4952) Option!5437)

(declare-datatypes ((ListMap!905 0))(
  ( (ListMap!906 (toList!1421 List!27978)) )
))
(declare-fun abstractMap!94 (MutableMap!3142) ListMap!905)

(assert (=> b!2358578 (= lt!863614 (getValueByKey!112 (toList!1421 (abstractMap!94 thiss!47723)) key!7163))))

(declare-fun b!2358579 () Bool)

(declare-fun e!1506425 () Bool)

(declare-fun tp!754145 () Bool)

(assert (=> b!2358579 (= e!1506425 (and tp!754145 mapRes!15090))))

(declare-fun condMapEmpty!15090 () Bool)

(declare-fun mapDefault!15090 () List!27978)

(assert (=> b!2358579 (= condMapEmpty!15090 (= (arr!5055 (_values!3512 (v!30804 (underlying!6669 (v!30805 (underlying!6670 thiss!47723)))))) ((as const (Array (_ BitVec 32) List!27978)) mapDefault!15090)))))

(declare-fun tp!754140 () Bool)

(declare-fun tp!754144 () Bool)

(declare-fun array_inv!3625 (array!11345) Bool)

(declare-fun array_inv!3626 (array!11347) Bool)

(assert (=> b!2358577 (= e!1506418 (and tp!754141 tp!754140 tp!754144 (array_inv!3625 (_keys!3529 (v!30804 (underlying!6669 (v!30805 (underlying!6670 thiss!47723)))))) (array_inv!3626 (_values!3512 (v!30804 (underlying!6669 (v!30805 (underlying!6670 thiss!47723)))))) e!1506425))))

(declare-fun res!1001065 () Bool)

(assert (=> start!231208 (=> (not res!1001065) (not e!1506420))))

(assert (=> start!231208 (= res!1001065 ((_ is MutableMapExt!3141) thiss!47723))))

(assert (=> start!231208 e!1506420))

(assert (=> start!231208 e!1506426))

(declare-fun tp_is_empty!11169 () Bool)

(assert (=> start!231208 tp_is_empty!11169))

(assert (= (and start!231208 res!1001065) b!2358571))

(assert (= (and b!2358571 res!1001066) b!2358574))

(assert (= (and b!2358574 res!1001067) b!2358578))

(assert (= (and b!2358579 condMapEmpty!15090) mapIsEmpty!15090))

(assert (= (and b!2358579 (not condMapEmpty!15090)) mapNonEmpty!15090))

(assert (= b!2358577 b!2358579))

(assert (= b!2358572 b!2358577))

(assert (= b!2358576 b!2358572))

(assert (= (and b!2358573 ((_ is LongMap!3232) (v!30805 (underlying!6670 thiss!47723)))) b!2358576))

(assert (= b!2358575 b!2358573))

(assert (= (and start!231208 ((_ is HashMap!3142) thiss!47723)) b!2358575))

(declare-fun m!2771301 () Bool)

(assert (=> b!2358578 m!2771301))

(declare-fun m!2771303 () Bool)

(assert (=> b!2358578 m!2771303))

(declare-fun m!2771305 () Bool)

(assert (=> b!2358571 m!2771305))

(declare-fun m!2771307 () Bool)

(assert (=> b!2358574 m!2771307))

(declare-fun m!2771309 () Bool)

(assert (=> b!2358574 m!2771309))

(declare-fun m!2771311 () Bool)

(assert (=> mapNonEmpty!15090 m!2771311))

(declare-fun m!2771313 () Bool)

(assert (=> b!2358577 m!2771313))

(declare-fun m!2771315 () Bool)

(assert (=> b!2358577 m!2771315))

(check-sat b_and!185309 tp_is_empty!11169 (not b_next!71087) (not b!2358577) (not b_next!71085) (not b!2358571) (not mapNonEmpty!15090) (not b!2358579) (not b!2358578) (not b!2358574) b_and!185311)
(check-sat b_and!185309 b_and!185311 (not b_next!71087) (not b_next!71085))
