; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107662 () Bool)

(assert start!107662)

(declare-fun b!1273727 () Bool)

(declare-fun b_free!27751 () Bool)

(declare-fun b_next!27751 () Bool)

(assert (=> b!1273727 (= b_free!27751 (not b_next!27751))))

(declare-fun tp!97814 () Bool)

(declare-fun b_and!45817 () Bool)

(assert (=> b!1273727 (= tp!97814 b_and!45817)))

(declare-fun mapNonEmpty!51316 () Bool)

(declare-fun mapRes!51316 () Bool)

(declare-fun tp!97813 () Bool)

(declare-fun e!726836 () Bool)

(assert (=> mapNonEmpty!51316 (= mapRes!51316 (and tp!97813 e!726836))))

(declare-fun mapKey!51316 () (_ BitVec 32))

(declare-datatypes ((V!49355 0))(
  ( (V!49356 (val!16635 Int)) )
))
(declare-datatypes ((ValueCell!15707 0))(
  ( (ValueCellFull!15707 (v!19270 V!49355)) (EmptyCell!15707) )
))
(declare-fun mapRest!51316 () (Array (_ BitVec 32) ValueCell!15707))

(declare-fun mapValue!51316 () ValueCell!15707)

(declare-datatypes ((array!83465 0))(
  ( (array!83466 (arr!40249 (Array (_ BitVec 32) ValueCell!15707)) (size!40796 (_ BitVec 32))) )
))
(declare-datatypes ((array!83467 0))(
  ( (array!83468 (arr!40250 (Array (_ BitVec 32) (_ BitVec 64))) (size!40797 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6178 0))(
  ( (LongMapFixedSize!6179 (defaultEntry!6735 Int) (mask!34525 (_ BitVec 32)) (extraKeys!6414 (_ BitVec 32)) (zeroValue!6520 V!49355) (minValue!6520 V!49355) (_size!3144 (_ BitVec 32)) (_keys!12146 array!83467) (_values!6758 array!83465) (_vacant!3144 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6178)

(assert (=> mapNonEmpty!51316 (= (arr!40249 (_values!6758 thiss!1551)) (store mapRest!51316 mapKey!51316 mapValue!51316))))

(declare-fun b!1273721 () Bool)

(declare-fun e!726835 () Bool)

(declare-fun e!726833 () Bool)

(assert (=> b!1273721 (= e!726835 (and e!726833 mapRes!51316))))

(declare-fun condMapEmpty!51316 () Bool)

(declare-fun mapDefault!51316 () ValueCell!15707)

