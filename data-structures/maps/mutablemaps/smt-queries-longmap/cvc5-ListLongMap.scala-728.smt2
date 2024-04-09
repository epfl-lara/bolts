; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16972 () Bool)

(assert start!16972)

(declare-fun b!170466 () Bool)

(declare-fun b_free!4207 () Bool)

(declare-fun b_next!4207 () Bool)

(assert (=> b!170466 (= b_free!4207 (not b_next!4207))))

(declare-fun tp!15244 () Bool)

(declare-fun b_and!10639 () Bool)

(assert (=> b!170466 (= tp!15244 b_and!10639)))

(declare-fun mapNonEmpty!6755 () Bool)

(declare-fun mapRes!6755 () Bool)

(declare-fun tp!15245 () Bool)

(declare-fun e!112500 () Bool)

(assert (=> mapNonEmpty!6755 (= mapRes!6755 (and tp!15245 e!112500))))

(declare-datatypes ((V!4953 0))(
  ( (V!4954 (val!2034 Int)) )
))
(declare-datatypes ((ValueCell!1646 0))(
  ( (ValueCellFull!1646 (v!3895 V!4953)) (EmptyCell!1646) )
))
(declare-fun mapValue!6755 () ValueCell!1646)

(declare-datatypes ((array!7066 0))(
  ( (array!7067 (arr!3362 (Array (_ BitVec 32) (_ BitVec 64))) (size!3655 (_ BitVec 32))) )
))
(declare-datatypes ((array!7068 0))(
  ( (array!7069 (arr!3363 (Array (_ BitVec 32) ValueCell!1646)) (size!3656 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2200 0))(
  ( (LongMapFixedSize!2201 (defaultEntry!3542 Int) (mask!8358 (_ BitVec 32)) (extraKeys!3283 (_ BitVec 32)) (zeroValue!3385 V!4953) (minValue!3385 V!4953) (_size!1149 (_ BitVec 32)) (_keys!5372 array!7066) (_values!3525 array!7068) (_vacant!1149 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2200)

(declare-fun mapKey!6755 () (_ BitVec 32))

(declare-fun mapRest!6755 () (Array (_ BitVec 32) ValueCell!1646))

(assert (=> mapNonEmpty!6755 (= (arr!3363 (_values!3525 thiss!1248)) (store mapRest!6755 mapKey!6755 mapValue!6755))))

(declare-fun b!170462 () Bool)

(declare-fun tp_is_empty!3979 () Bool)

(assert (=> b!170462 (= e!112500 tp_is_empty!3979)))

(declare-fun b!170463 () Bool)

(declare-fun e!112501 () Bool)

(declare-fun e!112505 () Bool)

(assert (=> b!170463 (= e!112501 (and e!112505 mapRes!6755))))

(declare-fun condMapEmpty!6755 () Bool)

(declare-fun mapDefault!6755 () ValueCell!1646)

