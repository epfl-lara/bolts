; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8250 () Bool)

(assert start!8250)

(declare-fun b!52320 () Bool)

(declare-fun b_free!1641 () Bool)

(declare-fun b_next!1641 () Bool)

(assert (=> b!52320 (= b_free!1641 (not b_next!1641))))

(declare-fun tp!7026 () Bool)

(declare-fun b_and!2861 () Bool)

(assert (=> b!52320 (= tp!7026 b_and!2861)))

(declare-fun b!52315 () Bool)

(declare-fun b_free!1643 () Bool)

(declare-fun b_next!1643 () Bool)

(assert (=> b!52315 (= b_free!1643 (not b_next!1643))))

(declare-fun tp!7023 () Bool)

(declare-fun b_and!2863 () Bool)

(assert (=> b!52315 (= tp!7023 b_and!2863)))

(declare-fun mapNonEmpty!2381 () Bool)

(declare-fun mapRes!2382 () Bool)

(declare-fun tp!7025 () Bool)

(declare-fun e!34016 () Bool)

(assert (=> mapNonEmpty!2381 (= mapRes!2382 (and tp!7025 e!34016))))

(declare-datatypes ((V!2629 0))(
  ( (V!2630 (val!1163 Int)) )
))
(declare-datatypes ((ValueCell!775 0))(
  ( (ValueCellFull!775 (v!2211 V!2629)) (EmptyCell!775) )
))
(declare-fun mapValue!2382 () ValueCell!775)

(declare-fun mapKey!2381 () (_ BitVec 32))

(declare-datatypes ((array!3396 0))(
  ( (array!3397 (arr!1620 (Array (_ BitVec 32) (_ BitVec 64))) (size!1849 (_ BitVec 32))) )
))
(declare-datatypes ((array!3398 0))(
  ( (array!3399 (arr!1621 (Array (_ BitVec 32) ValueCell!775)) (size!1850 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!458 0))(
  ( (LongMapFixedSize!459 (defaultEntry!1943 Int) (mask!5764 (_ BitVec 32)) (extraKeys!1834 (_ BitVec 32)) (zeroValue!1861 V!2629) (minValue!1861 V!2629) (_size!278 (_ BitVec 32)) (_keys!3563 array!3396) (_values!1926 array!3398) (_vacant!278 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!458)

(declare-fun mapRest!2381 () (Array (_ BitVec 32) ValueCell!775))

(assert (=> mapNonEmpty!2381 (= (arr!1621 (_values!1926 newMap!16)) (store mapRest!2381 mapKey!2381 mapValue!2382))))

(declare-fun b!52312 () Bool)

(declare-fun e!34020 () Bool)

(declare-fun e!34013 () Bool)

(assert (=> b!52312 (= e!34020 e!34013)))

(declare-fun b!52313 () Bool)

(declare-fun e!34018 () Bool)

(assert (=> b!52313 (= e!34018 false)))

(declare-fun lt!21271 () Bool)

(declare-fun valid!162 (LongMapFixedSize!458) Bool)

(assert (=> b!52313 (= lt!21271 (valid!162 newMap!16))))

(declare-fun mapNonEmpty!2382 () Bool)

(declare-fun mapRes!2381 () Bool)

(declare-fun tp!7024 () Bool)

(declare-fun e!34021 () Bool)

(assert (=> mapNonEmpty!2382 (= mapRes!2381 (and tp!7024 e!34021))))

(declare-fun mapValue!2381 () ValueCell!775)

(declare-datatypes ((Cell!274 0))(
  ( (Cell!275 (v!2212 LongMapFixedSize!458)) )
))
(declare-datatypes ((LongMap!274 0))(
  ( (LongMap!275 (underlying!148 Cell!274)) )
))
(declare-fun thiss!992 () LongMap!274)

(declare-fun mapRest!2382 () (Array (_ BitVec 32) ValueCell!775))

(declare-fun mapKey!2382 () (_ BitVec 32))

(assert (=> mapNonEmpty!2382 (= (arr!1621 (_values!1926 (v!2212 (underlying!148 thiss!992)))) (store mapRest!2382 mapKey!2382 mapValue!2381))))

(declare-fun b!52314 () Bool)

(declare-fun tp_is_empty!2237 () Bool)

(assert (=> b!52314 (= e!34016 tp_is_empty!2237)))

(declare-fun mapIsEmpty!2381 () Bool)

(assert (=> mapIsEmpty!2381 mapRes!2382))

(declare-fun mapIsEmpty!2382 () Bool)

(assert (=> mapIsEmpty!2382 mapRes!2381))

(declare-fun e!34017 () Bool)

(declare-fun e!34019 () Bool)

(declare-fun array_inv!947 (array!3396) Bool)

(declare-fun array_inv!948 (array!3398) Bool)

(assert (=> b!52315 (= e!34019 (and tp!7023 tp_is_empty!2237 (array_inv!947 (_keys!3563 newMap!16)) (array_inv!948 (_values!1926 newMap!16)) e!34017))))

(declare-fun b!52316 () Bool)

(declare-fun e!34015 () Bool)

(assert (=> b!52316 (= e!34015 tp_is_empty!2237)))

(declare-fun res!29777 () Bool)

(assert (=> start!8250 (=> (not res!29777) (not e!34018))))

(declare-fun valid!163 (LongMap!274) Bool)

(assert (=> start!8250 (= res!29777 (valid!163 thiss!992))))

(assert (=> start!8250 e!34018))

(declare-fun e!34023 () Bool)

(assert (=> start!8250 e!34023))

(assert (=> start!8250 true))

(assert (=> start!8250 e!34019))

(declare-fun b!52317 () Bool)

(assert (=> b!52317 (= e!34021 tp_is_empty!2237)))

(declare-fun b!52318 () Bool)

(declare-fun e!34022 () Bool)

(assert (=> b!52318 (= e!34022 tp_is_empty!2237)))

(declare-fun b!52319 () Bool)

(declare-fun res!29778 () Bool)

(assert (=> b!52319 (=> (not res!29778) (not e!34018))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!52319 (= res!29778 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1849 (_keys!3563 (v!2212 (underlying!148 thiss!992)))))))))

(declare-fun e!34024 () Bool)

(assert (=> b!52320 (= e!34013 (and tp!7026 tp_is_empty!2237 (array_inv!947 (_keys!3563 (v!2212 (underlying!148 thiss!992)))) (array_inv!948 (_values!1926 (v!2212 (underlying!148 thiss!992)))) e!34024))))

(declare-fun b!52321 () Bool)

(assert (=> b!52321 (= e!34023 e!34020)))

(declare-fun b!52322 () Bool)

(assert (=> b!52322 (= e!34017 (and e!34015 mapRes!2382))))

(declare-fun condMapEmpty!2382 () Bool)

(declare-fun mapDefault!2381 () ValueCell!775)

