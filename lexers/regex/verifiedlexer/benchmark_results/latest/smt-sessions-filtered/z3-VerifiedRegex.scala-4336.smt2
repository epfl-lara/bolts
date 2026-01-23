; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231080 () Bool)

(assert start!231080)

(declare-fun b!2357837 () Bool)

(declare-fun b_free!70325 () Bool)

(declare-fun b_next!71029 () Bool)

(assert (=> b!2357837 (= b_free!70325 (not b_next!71029))))

(declare-fun tp!753812 () Bool)

(declare-fun b_and!185237 () Bool)

(assert (=> b!2357837 (= tp!753812 b_and!185237)))

(declare-fun b!2357840 () Bool)

(declare-fun b_free!70327 () Bool)

(declare-fun b_next!71031 () Bool)

(assert (=> b!2357840 (= b_free!70327 (not b_next!71031))))

(declare-fun tp!753810 () Bool)

(declare-fun b_and!185239 () Bool)

(assert (=> b!2357840 (= tp!753810 b_and!185239)))

(declare-fun mapNonEmpty!15041 () Bool)

(declare-fun mapRes!15041 () Bool)

(declare-fun tp!753813 () Bool)

(declare-fun tp!753811 () Bool)

(assert (=> mapNonEmpty!15041 (= mapRes!15041 (and tp!753813 tp!753811))))

(declare-datatypes ((K!4917 0))(
  ( (K!4918 (val!8157 Int)) )
))
(declare-datatypes ((V!5119 0))(
  ( (V!5120 (val!8158 Int)) )
))
(declare-datatypes ((tuple2!27586 0))(
  ( (tuple2!27587 (_1!16334 K!4917) (_2!16334 V!5119)) )
))
(declare-datatypes ((List!27962 0))(
  ( (Nil!27864) (Cons!27864 (h!33265 tuple2!27586) (t!207821 List!27962)) )
))
(declare-fun mapRest!15041 () (Array (_ BitVec 32) List!27962))

(declare-fun mapKey!15041 () (_ BitVec 32))

(declare-fun mapValue!15041 () List!27962)

(declare-datatypes ((Hashable!3128 0))(
  ( (HashableExt!3127 (__x!18412 Int)) )
))
(declare-datatypes ((array!11285 0))(
  ( (array!11286 (arr!5026 (Array (_ BitVec 32) List!27962)) (size!22050 (_ BitVec 32))) )
))
(declare-datatypes ((array!11287 0))(
  ( (array!11288 (arr!5027 (Array (_ BitVec 32) (_ BitVec 64))) (size!22051 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6436 0))(
  ( (LongMapFixedSize!6437 (defaultEntry!3583 Int) (mask!8103 (_ BitVec 32)) (extraKeys!3466 (_ BitVec 32)) (zeroValue!3476 List!27962) (minValue!3476 List!27962) (_size!6483 (_ BitVec 32)) (_keys!3515 array!11287) (_values!3498 array!11285) (_vacant!3279 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12689 0))(
  ( (Cell!12690 (v!30762 LongMapFixedSize!6436)) )
))
(declare-datatypes ((MutLongMap!3218 0))(
  ( (LongMap!3218 (underlying!6641 Cell!12689)) (MutLongMapExt!3217 (__x!18413 Int)) )
))
(declare-datatypes ((Cell!12691 0))(
  ( (Cell!12692 (v!30763 MutLongMap!3218)) )
))
(declare-datatypes ((MutableMap!3128 0))(
  ( (MutableMapExt!3127 (__x!18414 Int)) (HashMap!3128 (underlying!6642 Cell!12691) (hashF!5051 Hashable!3128) (_size!6484 (_ BitVec 32)) (defaultValue!3290 Int)) )
))
(declare-fun thiss!47746 () MutableMap!3128)

(assert (=> mapNonEmpty!15041 (= (arr!5026 (_values!3498 (v!30762 (underlying!6641 (v!30763 (underlying!6642 thiss!47746)))))) (store mapRest!15041 mapKey!15041 mapValue!15041))))

(declare-fun b!2357833 () Bool)

(declare-fun e!1505842 () Bool)

(assert (=> b!2357833 (= e!1505842 false)))

(declare-fun lt!863184 () V!5119)

(declare-fun key!7176 () K!4917)

(declare-fun apply!6695 (MutableMap!3128 K!4917) V!5119)

(assert (=> b!2357833 (= lt!863184 (apply!6695 thiss!47746 key!7176))))

(declare-fun mapIsEmpty!15041 () Bool)

(assert (=> mapIsEmpty!15041 mapRes!15041))

(declare-fun b!2357834 () Bool)

(declare-fun e!1505839 () Bool)

(declare-fun e!1505838 () Bool)

(declare-fun lt!863185 () MutLongMap!3218)

(get-info :version)

(assert (=> b!2357834 (= e!1505839 (and e!1505838 ((_ is LongMap!3218) lt!863185)))))

(assert (=> b!2357834 (= lt!863185 (v!30763 (underlying!6642 thiss!47746)))))

(declare-fun b!2357835 () Bool)

(declare-fun e!1505840 () Bool)

(declare-fun tp!753807 () Bool)

(assert (=> b!2357835 (= e!1505840 (and tp!753807 mapRes!15041))))

(declare-fun condMapEmpty!15041 () Bool)

(declare-fun mapDefault!15041 () List!27962)

(assert (=> b!2357835 (= condMapEmpty!15041 (= (arr!5026 (_values!3498 (v!30762 (underlying!6641 (v!30763 (underlying!6642 thiss!47746)))))) ((as const (Array (_ BitVec 32) List!27962)) mapDefault!15041)))))

(declare-fun b!2357836 () Bool)

(declare-fun res!1000848 () Bool)

(assert (=> b!2357836 (=> (not res!1000848) (not e!1505842))))

(assert (=> b!2357836 (= res!1000848 (not ((_ is MutableMapExt!3127) thiss!47746)))))

(declare-fun b!2357838 () Bool)

(declare-fun e!1505837 () Bool)

(assert (=> b!2357838 (= e!1505838 e!1505837)))

(declare-fun b!2357839 () Bool)

(declare-fun e!1505835 () Bool)

(assert (=> b!2357839 (= e!1505837 e!1505835)))

(declare-fun e!1505836 () Bool)

(assert (=> b!2357840 (= e!1505836 (and e!1505839 tp!753810))))

(declare-fun res!1000849 () Bool)

(assert (=> start!231080 (=> (not res!1000849) (not e!1505842))))

(declare-fun valid!2410 (MutableMap!3128) Bool)

(assert (=> start!231080 (= res!1000849 (valid!2410 thiss!47746))))

(assert (=> start!231080 e!1505842))

(assert (=> start!231080 e!1505836))

(declare-fun tp_is_empty!11133 () Bool)

(assert (=> start!231080 tp_is_empty!11133))

(declare-fun tp!753809 () Bool)

(declare-fun tp!753808 () Bool)

(declare-fun array_inv!3601 (array!11287) Bool)

(declare-fun array_inv!3602 (array!11285) Bool)

(assert (=> b!2357837 (= e!1505835 (and tp!753812 tp!753808 tp!753809 (array_inv!3601 (_keys!3515 (v!30762 (underlying!6641 (v!30763 (underlying!6642 thiss!47746)))))) (array_inv!3602 (_values!3498 (v!30762 (underlying!6641 (v!30763 (underlying!6642 thiss!47746)))))) e!1505840))))

(assert (= (and start!231080 res!1000849) b!2357836))

(assert (= (and b!2357836 res!1000848) b!2357833))

(assert (= (and b!2357835 condMapEmpty!15041) mapIsEmpty!15041))

(assert (= (and b!2357835 (not condMapEmpty!15041)) mapNonEmpty!15041))

(assert (= b!2357837 b!2357835))

(assert (= b!2357839 b!2357837))

(assert (= b!2357838 b!2357839))

(assert (= (and b!2357834 ((_ is LongMap!3218) (v!30763 (underlying!6642 thiss!47746)))) b!2357838))

(assert (= b!2357840 b!2357834))

(assert (= (and start!231080 ((_ is HashMap!3128) thiss!47746)) b!2357840))

(declare-fun m!2770701 () Bool)

(assert (=> mapNonEmpty!15041 m!2770701))

(declare-fun m!2770703 () Bool)

(assert (=> b!2357833 m!2770703))

(declare-fun m!2770705 () Bool)

(assert (=> start!231080 m!2770705))

(declare-fun m!2770707 () Bool)

(assert (=> b!2357837 m!2770707))

(declare-fun m!2770709 () Bool)

(assert (=> b!2357837 m!2770709))

(check-sat (not b_next!71031) (not start!231080) tp_is_empty!11133 (not b!2357837) (not b!2357833) (not b_next!71029) b_and!185237 b_and!185239 (not mapNonEmpty!15041) (not b!2357835))
(check-sat b_and!185239 b_and!185237 (not b_next!71029) (not b_next!71031))
