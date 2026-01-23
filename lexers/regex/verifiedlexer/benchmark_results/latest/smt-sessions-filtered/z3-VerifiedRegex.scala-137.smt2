; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1688 () Bool)

(assert start!1688)

(declare-fun b!34002 () Bool)

(declare-fun b_free!307 () Bool)

(declare-fun b_next!307 () Bool)

(assert (=> b!34002 (= b_free!307 (not b_next!307))))

(declare-fun tp!23354 () Bool)

(declare-fun b_and!307 () Bool)

(assert (=> b!34002 (= tp!23354 b_and!307)))

(declare-fun mapNonEmpty!188 () Bool)

(declare-fun mapRes!188 () Bool)

(declare-fun tp!23355 () Bool)

(declare-fun tp_is_empty!303 () Bool)

(assert (=> mapNonEmpty!188 (= mapRes!188 (and tp!23355 tp_is_empty!303))))

(declare-datatypes ((V!520 0))(
  ( (V!521 (val!175 Int)) )
))
(declare-datatypes ((array!169 0))(
  ( (array!170 (arr!105 (Array (_ BitVec 32) V!520)) (size!348 (_ BitVec 32))) )
))
(declare-datatypes ((array!171 0))(
  ( (array!172 (arr!106 (Array (_ BitVec 32) (_ BitVec 64))) (size!349 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!96 0))(
  ( (LongMapFixedSize!97 (defaultEntry!386 Int) (mask!709 (_ BitVec 32)) (extraKeys!294 (_ BitVec 32)) (zeroValue!304 V!520) (minValue!304 V!520) (_size!231 (_ BitVec 32)) (_keys!339 array!171) (_values!326 array!169) (_vacant!108 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!187 0))(
  ( (Cell!188 (v!12058 LongMapFixedSize!96)) )
))
(declare-datatypes ((MutLongMap!48 0))(
  ( (LongMap!48 (underlying!294 Cell!187)) (MutLongMapExt!47 (__x!556 Int)) )
))
(declare-fun thiss!47397 () MutLongMap!48)

(declare-fun mapRest!188 () (Array (_ BitVec 32) V!520))

(declare-fun mapValue!188 () V!520)

(declare-fun mapKey!188 () (_ BitVec 32))

(assert (=> mapNonEmpty!188 (= (arr!105 (_values!326 (v!12058 (underlying!294 thiss!47397)))) (store mapRest!188 mapKey!188 mapValue!188))))

(declare-fun b!33999 () Bool)

(declare-fun e!15601 () Bool)

(declare-fun e!15599 () Bool)

(assert (=> b!33999 (= e!15601 e!15599)))

(declare-fun b!34000 () Bool)

(declare-fun e!15600 () Bool)

(assert (=> b!34000 (= e!15600 e!15601)))

(declare-fun b!34001 () Bool)

(declare-fun e!15602 () Bool)

(assert (=> b!34001 (= e!15602 (and tp_is_empty!303 mapRes!188))))

(declare-fun condMapEmpty!188 () Bool)

(declare-fun mapDefault!188 () V!520)

(assert (=> b!34001 (= condMapEmpty!188 (= (arr!105 (_values!326 (v!12058 (underlying!294 thiss!47397)))) ((as const (Array (_ BitVec 32) V!520)) mapDefault!188)))))

(declare-fun array_inv!54 (array!171) Bool)

(declare-fun array_inv!55 (array!169) Bool)

(assert (=> b!34002 (= e!15599 (and tp!23354 tp_is_empty!303 (array_inv!54 (_keys!339 (v!12058 (underlying!294 thiss!47397)))) (array_inv!55 (_values!326 (v!12058 (underlying!294 thiss!47397)))) e!15602))))

(declare-fun lt!2310 () Bool)

(declare-fun valid!63 (MutLongMap!48) Bool)

(assert (=> start!1688 (= lt!2310 (valid!63 thiss!47397))))

(assert (=> start!1688 false))

(assert (=> start!1688 e!15600))

(declare-fun mapIsEmpty!188 () Bool)

(assert (=> mapIsEmpty!188 mapRes!188))

(assert (= (and b!34001 condMapEmpty!188) mapIsEmpty!188))

(assert (= (and b!34001 (not condMapEmpty!188)) mapNonEmpty!188))

(assert (= b!34002 b!34001))

(assert (= b!33999 b!34002))

(assert (= b!34000 b!33999))

(get-info :version)

(assert (= (and start!1688 ((_ is LongMap!48) thiss!47397)) b!34000))

(declare-fun m!9937 () Bool)

(assert (=> mapNonEmpty!188 m!9937))

(declare-fun m!9939 () Bool)

(assert (=> b!34002 m!9939))

(declare-fun m!9941 () Bool)

(assert (=> b!34002 m!9941))

(declare-fun m!9943 () Bool)

(assert (=> start!1688 m!9943))

(check-sat (not b!34002) (not start!1688) (not b_next!307) tp_is_empty!303 (not mapNonEmpty!188) b_and!307)
(check-sat b_and!307 (not b_next!307))
