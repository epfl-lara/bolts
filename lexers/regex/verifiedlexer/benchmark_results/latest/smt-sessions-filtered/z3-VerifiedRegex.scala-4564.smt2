; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241474 () Bool)

(assert start!241474)

(declare-fun b!2475834 () Bool)

(declare-fun b_free!71849 () Bool)

(declare-fun b_next!72553 () Bool)

(assert (=> b!2475834 (= b_free!71849 (not b_next!72553))))

(declare-fun tp!791755 () Bool)

(declare-fun b_and!188073 () Bool)

(assert (=> b!2475834 (= tp!791755 b_and!188073)))

(declare-fun b!2475838 () Bool)

(declare-fun b_free!71851 () Bool)

(declare-fun b_next!72555 () Bool)

(assert (=> b!2475838 (= b_free!71851 (not b_next!72555))))

(declare-fun tp!791753 () Bool)

(declare-fun b_and!188075 () Bool)

(assert (=> b!2475838 (= tp!791753 b_and!188075)))

(declare-fun b!2475831 () Bool)

(declare-fun res!1048253 () Bool)

(declare-fun e!1570746 () Bool)

(assert (=> b!2475831 (=> (not res!1048253) (not e!1570746))))

(declare-datatypes ((array!11417 0))(
  ( (array!11418 (arr!5086 (Array (_ BitVec 32) (_ BitVec 64))) (size!22505 (_ BitVec 32))) )
))
(declare-datatypes ((K!5205 0))(
  ( (K!5206 (val!8639 Int)) )
))
(declare-datatypes ((V!5407 0))(
  ( (V!5408 (val!8640 Int)) )
))
(declare-datatypes ((tuple2!28262 0))(
  ( (tuple2!28263 (_1!16672 K!5205) (_2!16672 V!5407)) )
))
(declare-datatypes ((List!29015 0))(
  ( (Nil!28915) (Cons!28915 (h!34316 tuple2!28262) (t!210650 List!29015)) )
))
(declare-datatypes ((array!11419 0))(
  ( (array!11420 (arr!5087 (Array (_ BitVec 32) List!29015)) (size!22506 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6496 0))(
  ( (LongMapFixedSize!6497 (defaultEntry!3622 Int) (mask!8361 (_ BitVec 32)) (extraKeys!3496 (_ BitVec 32)) (zeroValue!3506 List!29015) (minValue!3506 List!29015) (_size!6543 (_ BitVec 32)) (_keys!3545 array!11417) (_values!3528 array!11419) (_vacant!3309 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12809 0))(
  ( (Cell!12810 (v!31160 LongMapFixedSize!6496)) )
))
(declare-datatypes ((MutLongMap!3248 0))(
  ( (LongMap!3248 (underlying!6703 Cell!12809)) (MutLongMapExt!3247 (__x!18650 Int)) )
))
(declare-datatypes ((Cell!12811 0))(
  ( (Cell!12812 (v!31161 MutLongMap!3248)) )
))
(declare-datatypes ((Hashable!3158 0))(
  ( (HashableExt!3157 (__x!18651 Int)) )
))
(declare-datatypes ((MutableMap!3158 0))(
  ( (MutableMapExt!3157 (__x!18652 Int)) (HashMap!3158 (underlying!6704 Cell!12811) (hashF!5089 Hashable!3158) (_size!6544 (_ BitVec 32)) (defaultValue!3320 Int)) )
))
(declare-fun thiss!47892 () MutableMap!3158)

(get-info :version)

(assert (=> b!2475831 (= res!1048253 ((_ is MutableMapExt!3157) thiss!47892))))

(declare-fun res!1048252 () Bool)

(assert (=> start!241474 (=> (not res!1048252) (not e!1570746))))

(declare-fun valid!2446 (MutableMap!3158) Bool)

(assert (=> start!241474 (= res!1048252 (valid!2446 thiss!47892))))

(assert (=> start!241474 e!1570746))

(declare-fun e!1570742 () Bool)

(assert (=> start!241474 e!1570742))

(declare-fun tp_is_empty!11987 () Bool)

(assert (=> start!241474 tp_is_empty!11987))

(declare-fun b!2475832 () Bool)

(declare-fun e!1570744 () Bool)

(declare-fun e!1570739 () Bool)

(assert (=> b!2475832 (= e!1570744 e!1570739)))

(declare-fun b!2475833 () Bool)

(assert (=> b!2475833 (= e!1570746 false)))

(declare-fun lt!884155 () Bool)

(declare-fun key!7256 () K!5205)

(declare-datatypes ((tuple2!28264 0))(
  ( (tuple2!28265 (_1!16673 Bool) (_2!16673 MutableMap!3158)) )
))
(declare-fun remove!63 (MutableMap!3158 K!5205) tuple2!28264)

(assert (=> b!2475833 (= lt!884155 (valid!2446 (_2!16673 (remove!63 thiss!47892 key!7256))))))

(declare-fun e!1570743 () Bool)

(declare-fun tp!791759 () Bool)

(declare-fun e!1570745 () Bool)

(declare-fun tp!791754 () Bool)

(declare-fun array_inv!3647 (array!11417) Bool)

(declare-fun array_inv!3648 (array!11419) Bool)

(assert (=> b!2475834 (= e!1570745 (and tp!791755 tp!791759 tp!791754 (array_inv!3647 (_keys!3545 (v!31160 (underlying!6703 (v!31161 (underlying!6704 thiss!47892)))))) (array_inv!3648 (_values!3528 (v!31160 (underlying!6703 (v!31161 (underlying!6704 thiss!47892)))))) e!1570743))))

(declare-fun mapNonEmpty!15153 () Bool)

(declare-fun mapRes!15153 () Bool)

(declare-fun tp!791757 () Bool)

(declare-fun tp!791756 () Bool)

(assert (=> mapNonEmpty!15153 (= mapRes!15153 (and tp!791757 tp!791756))))

(declare-fun mapRest!15153 () (Array (_ BitVec 32) List!29015))

(declare-fun mapValue!15153 () List!29015)

(declare-fun mapKey!15153 () (_ BitVec 32))

(assert (=> mapNonEmpty!15153 (= (arr!5087 (_values!3528 (v!31160 (underlying!6703 (v!31161 (underlying!6704 thiss!47892)))))) (store mapRest!15153 mapKey!15153 mapValue!15153))))

(declare-fun b!2475835 () Bool)

(declare-fun e!1570741 () Bool)

(declare-fun lt!884156 () MutLongMap!3248)

(assert (=> b!2475835 (= e!1570741 (and e!1570744 ((_ is LongMap!3248) lt!884156)))))

(assert (=> b!2475835 (= lt!884156 (v!31161 (underlying!6704 thiss!47892)))))

(declare-fun b!2475836 () Bool)

(declare-fun tp!791758 () Bool)

(assert (=> b!2475836 (= e!1570743 (and tp!791758 mapRes!15153))))

(declare-fun condMapEmpty!15153 () Bool)

(declare-fun mapDefault!15153 () List!29015)

(assert (=> b!2475836 (= condMapEmpty!15153 (= (arr!5087 (_values!3528 (v!31160 (underlying!6703 (v!31161 (underlying!6704 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29015)) mapDefault!15153)))))

(declare-fun b!2475837 () Bool)

(assert (=> b!2475837 (= e!1570739 e!1570745)))

(declare-fun mapIsEmpty!15153 () Bool)

(assert (=> mapIsEmpty!15153 mapRes!15153))

(assert (=> b!2475838 (= e!1570742 (and e!1570741 tp!791753))))

(assert (= (and start!241474 res!1048252) b!2475831))

(assert (= (and b!2475831 res!1048253) b!2475833))

(assert (= (and b!2475836 condMapEmpty!15153) mapIsEmpty!15153))

(assert (= (and b!2475836 (not condMapEmpty!15153)) mapNonEmpty!15153))

(assert (= b!2475834 b!2475836))

(assert (= b!2475837 b!2475834))

(assert (= b!2475832 b!2475837))

(assert (= (and b!2475835 ((_ is LongMap!3248) (v!31161 (underlying!6704 thiss!47892)))) b!2475832))

(assert (= b!2475838 b!2475835))

(assert (= (and start!241474 ((_ is HashMap!3158) thiss!47892)) b!2475838))

(declare-fun m!2844023 () Bool)

(assert (=> start!241474 m!2844023))

(declare-fun m!2844025 () Bool)

(assert (=> b!2475833 m!2844025))

(declare-fun m!2844027 () Bool)

(assert (=> b!2475833 m!2844027))

(declare-fun m!2844029 () Bool)

(assert (=> b!2475834 m!2844029))

(declare-fun m!2844031 () Bool)

(assert (=> b!2475834 m!2844031))

(declare-fun m!2844033 () Bool)

(assert (=> mapNonEmpty!15153 m!2844033))

(check-sat b_and!188073 (not b_next!72555) (not start!241474) b_and!188075 (not mapNonEmpty!15153) (not b!2475834) (not b!2475833) tp_is_empty!11987 (not b!2475836) (not b_next!72553))
(check-sat b_and!188075 b_and!188073 (not b_next!72555) (not b_next!72553))
