; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231088 () Bool)

(assert start!231088)

(declare-fun b!2357940 () Bool)

(declare-fun b_free!70341 () Bool)

(declare-fun b_next!71045 () Bool)

(assert (=> b!2357940 (= b_free!70341 (not b_next!71045))))

(declare-fun tp!753895 () Bool)

(declare-fun b_and!185253 () Bool)

(assert (=> b!2357940 (= tp!753895 b_and!185253)))

(declare-fun b!2357935 () Bool)

(declare-fun b_free!70343 () Bool)

(declare-fun b_next!71047 () Bool)

(assert (=> b!2357935 (= b_free!70343 (not b_next!71047))))

(declare-fun tp!753897 () Bool)

(declare-fun b_and!185255 () Bool)

(assert (=> b!2357935 (= tp!753897 b_and!185255)))

(declare-fun mapNonEmpty!15053 () Bool)

(declare-fun mapRes!15053 () Bool)

(declare-fun tp!753891 () Bool)

(declare-fun tp!753896 () Bool)

(assert (=> mapNonEmpty!15053 (= mapRes!15053 (and tp!753891 tp!753896))))

(declare-datatypes ((K!4927 0))(
  ( (K!4928 (val!8165 Int)) )
))
(declare-datatypes ((V!5129 0))(
  ( (V!5130 (val!8166 Int)) )
))
(declare-datatypes ((tuple2!27594 0))(
  ( (tuple2!27595 (_1!16338 K!4927) (_2!16338 V!5129)) )
))
(declare-datatypes ((List!27966 0))(
  ( (Nil!27868) (Cons!27868 (h!33269 tuple2!27594) (t!207825 List!27966)) )
))
(declare-fun mapRest!15053 () (Array (_ BitVec 32) List!27966))

(declare-fun mapKey!15053 () (_ BitVec 32))

(declare-datatypes ((Hashable!3132 0))(
  ( (HashableExt!3131 (__x!18424 Int)) )
))
(declare-datatypes ((array!11301 0))(
  ( (array!11302 (arr!5034 (Array (_ BitVec 32) List!27966)) (size!22058 (_ BitVec 32))) )
))
(declare-datatypes ((array!11303 0))(
  ( (array!11304 (arr!5035 (Array (_ BitVec 32) (_ BitVec 64))) (size!22059 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6444 0))(
  ( (LongMapFixedSize!6445 (defaultEntry!3587 Int) (mask!8109 (_ BitVec 32)) (extraKeys!3470 (_ BitVec 32)) (zeroValue!3480 List!27966) (minValue!3480 List!27966) (_size!6491 (_ BitVec 32)) (_keys!3519 array!11303) (_values!3502 array!11301) (_vacant!3283 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12705 0))(
  ( (Cell!12706 (v!30770 LongMapFixedSize!6444)) )
))
(declare-datatypes ((MutLongMap!3222 0))(
  ( (LongMap!3222 (underlying!6649 Cell!12705)) (MutLongMapExt!3221 (__x!18425 Int)) )
))
(declare-datatypes ((Cell!12707 0))(
  ( (Cell!12708 (v!30771 MutLongMap!3222)) )
))
(declare-datatypes ((MutableMap!3132 0))(
  ( (MutableMapExt!3131 (__x!18426 Int)) (HashMap!3132 (underlying!6650 Cell!12707) (hashF!5055 Hashable!3132) (_size!6492 (_ BitVec 32)) (defaultValue!3294 Int)) )
))
(declare-fun thiss!47746 () MutableMap!3132)

(declare-fun mapValue!15053 () List!27966)

(assert (=> mapNonEmpty!15053 (= (arr!5034 (_values!3502 (v!30770 (underlying!6649 (v!30771 (underlying!6650 thiss!47746)))))) (store mapRest!15053 mapKey!15053 mapValue!15053))))

(declare-fun b!2357934 () Bool)

(declare-fun e!1505940 () Bool)

(declare-fun e!1505939 () Bool)

(assert (=> b!2357934 (= e!1505940 e!1505939)))

(declare-fun e!1505938 () Bool)

(declare-fun e!1505944 () Bool)

(assert (=> b!2357935 (= e!1505938 (and e!1505944 tp!753897))))

(declare-fun b!2357936 () Bool)

(declare-fun res!1000878 () Bool)

(declare-fun e!1505941 () Bool)

(assert (=> b!2357936 (=> (not res!1000878) (not e!1505941))))

(get-info :version)

(assert (=> b!2357936 (= res!1000878 (not ((_ is MutableMapExt!3131) thiss!47746)))))

(declare-fun b!2357937 () Bool)

(declare-fun e!1505937 () Bool)

(assert (=> b!2357937 (= e!1505941 e!1505937)))

(declare-fun res!1000879 () Bool)

(assert (=> b!2357937 (=> (not res!1000879) (not e!1505937))))

(declare-fun key!7176 () K!4927)

(declare-fun contains!4830 (MutableMap!3132 K!4927) Bool)

(assert (=> b!2357937 (= res!1000879 (contains!4830 thiss!47746 key!7176))))

(declare-fun lt!863219 () V!5129)

(declare-fun apply!6697 (MutableMap!3132 K!4927) V!5129)

(assert (=> b!2357937 (= lt!863219 (apply!6697 thiss!47746 key!7176))))

(declare-fun res!1000877 () Bool)

(assert (=> start!231088 (=> (not res!1000877) (not e!1505941))))

(declare-fun valid!2412 (MutableMap!3132) Bool)

(assert (=> start!231088 (= res!1000877 (valid!2412 thiss!47746))))

(assert (=> start!231088 e!1505941))

(assert (=> start!231088 e!1505938))

(declare-fun tp_is_empty!11141 () Bool)

(assert (=> start!231088 tp_is_empty!11141))

(declare-fun b!2357938 () Bool)

(declare-fun e!1505943 () Bool)

(assert (=> b!2357938 (= e!1505939 e!1505943)))

(declare-fun mapIsEmpty!15053 () Bool)

(assert (=> mapIsEmpty!15053 mapRes!15053))

(declare-fun b!2357939 () Bool)

(declare-fun lt!863221 () MutLongMap!3222)

(assert (=> b!2357939 (= e!1505944 (and e!1505940 ((_ is LongMap!3222) lt!863221)))))

(assert (=> b!2357939 (= lt!863221 (v!30771 (underlying!6650 thiss!47746)))))

(declare-fun e!1505936 () Bool)

(declare-fun tp!753892 () Bool)

(declare-fun tp!753894 () Bool)

(declare-fun array_inv!3607 (array!11303) Bool)

(declare-fun array_inv!3608 (array!11301) Bool)

(assert (=> b!2357940 (= e!1505943 (and tp!753895 tp!753892 tp!753894 (array_inv!3607 (_keys!3519 (v!30770 (underlying!6649 (v!30771 (underlying!6650 thiss!47746)))))) (array_inv!3608 (_values!3502 (v!30770 (underlying!6649 (v!30771 (underlying!6650 thiss!47746)))))) e!1505936))))

(declare-fun b!2357941 () Bool)

(declare-fun tp!753893 () Bool)

(assert (=> b!2357941 (= e!1505936 (and tp!753893 mapRes!15053))))

(declare-fun condMapEmpty!15053 () Bool)

(declare-fun mapDefault!15053 () List!27966)

(assert (=> b!2357941 (= condMapEmpty!15053 (= (arr!5034 (_values!3502 (v!30770 (underlying!6649 (v!30771 (underlying!6650 thiss!47746)))))) ((as const (Array (_ BitVec 32) List!27966)) mapDefault!15053)))))

(declare-fun b!2357942 () Bool)

(assert (=> b!2357942 (= e!1505937 false)))

(declare-datatypes ((Option!5429 0))(
  ( (None!5428) (Some!5428 (v!30772 V!5129)) )
))
(declare-fun lt!863220 () Option!5429)

(declare-fun getValueByKey!106 (List!27966 K!4927) Option!5429)

(declare-datatypes ((ListMap!895 0))(
  ( (ListMap!896 (toList!1415 List!27966)) )
))
(declare-fun abstractMap!85 (MutableMap!3132) ListMap!895)

(assert (=> b!2357942 (= lt!863220 (getValueByKey!106 (toList!1415 (abstractMap!85 thiss!47746)) key!7176))))

(assert (= (and start!231088 res!1000877) b!2357936))

(assert (= (and b!2357936 res!1000878) b!2357937))

(assert (= (and b!2357937 res!1000879) b!2357942))

(assert (= (and b!2357941 condMapEmpty!15053) mapIsEmpty!15053))

(assert (= (and b!2357941 (not condMapEmpty!15053)) mapNonEmpty!15053))

(assert (= b!2357940 b!2357941))

(assert (= b!2357938 b!2357940))

(assert (= b!2357934 b!2357938))

(assert (= (and b!2357939 ((_ is LongMap!3222) (v!30771 (underlying!6650 thiss!47746)))) b!2357934))

(assert (= b!2357935 b!2357939))

(assert (= (and start!231088 ((_ is HashMap!3132) thiss!47746)) b!2357935))

(declare-fun m!2770751 () Bool)

(assert (=> start!231088 m!2770751))

(declare-fun m!2770753 () Bool)

(assert (=> b!2357942 m!2770753))

(declare-fun m!2770755 () Bool)

(assert (=> b!2357942 m!2770755))

(declare-fun m!2770757 () Bool)

(assert (=> b!2357940 m!2770757))

(declare-fun m!2770759 () Bool)

(assert (=> b!2357940 m!2770759))

(declare-fun m!2770761 () Bool)

(assert (=> mapNonEmpty!15053 m!2770761))

(declare-fun m!2770763 () Bool)

(assert (=> b!2357937 m!2770763))

(declare-fun m!2770765 () Bool)

(assert (=> b!2357937 m!2770765))

(check-sat (not b_next!71045) (not b!2357942) tp_is_empty!11141 (not b_next!71047) (not b!2357941) (not b!2357940) (not mapNonEmpty!15053) b_and!185253 (not start!231088) (not b!2357937) b_and!185255)
(check-sat b_and!185255 b_and!185253 (not b_next!71045) (not b_next!71047))
