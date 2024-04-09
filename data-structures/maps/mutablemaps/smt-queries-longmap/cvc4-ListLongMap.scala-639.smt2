; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16198 () Bool)

(assert start!16198)

(declare-fun b!161387 () Bool)

(declare-fun b_free!3647 () Bool)

(declare-fun b_next!3647 () Bool)

(assert (=> b!161387 (= b_free!3647 (not b_next!3647))))

(declare-fun tp!13511 () Bool)

(declare-fun b_and!10079 () Bool)

(assert (=> b!161387 (= tp!13511 b_and!10079)))

(declare-fun b!161379 () Bool)

(declare-fun e!105479 () Bool)

(declare-fun tp_is_empty!3449 () Bool)

(assert (=> b!161379 (= e!105479 tp_is_empty!3449)))

(declare-fun mapNonEmpty!5861 () Bool)

(declare-fun mapRes!5861 () Bool)

(declare-fun tp!13510 () Bool)

(assert (=> mapNonEmpty!5861 (= mapRes!5861 (and tp!13510 e!105479))))

(declare-datatypes ((V!4245 0))(
  ( (V!4246 (val!1769 Int)) )
))
(declare-datatypes ((ValueCell!1381 0))(
  ( (ValueCellFull!1381 (v!3630 V!4245)) (EmptyCell!1381) )
))
(declare-fun mapRest!5861 () (Array (_ BitVec 32) ValueCell!1381))

(declare-fun mapKey!5861 () (_ BitVec 32))

(declare-fun mapValue!5861 () ValueCell!1381)

(declare-datatypes ((array!5976 0))(
  ( (array!5977 (arr!2832 (Array (_ BitVec 32) (_ BitVec 64))) (size!3116 (_ BitVec 32))) )
))
(declare-datatypes ((array!5978 0))(
  ( (array!5979 (arr!2833 (Array (_ BitVec 32) ValueCell!1381)) (size!3117 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1670 0))(
  ( (LongMapFixedSize!1671 (defaultEntry!3277 Int) (mask!7867 (_ BitVec 32)) (extraKeys!3018 (_ BitVec 32)) (zeroValue!3120 V!4245) (minValue!3120 V!4245) (_size!884 (_ BitVec 32)) (_keys!5078 array!5976) (_values!3260 array!5978) (_vacant!884 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1670)

(assert (=> mapNonEmpty!5861 (= (arr!2833 (_values!3260 thiss!1248)) (store mapRest!5861 mapKey!5861 mapValue!5861))))

(declare-fun b!161380 () Bool)

(declare-fun e!105478 () Bool)

(declare-fun e!105482 () Bool)

(assert (=> b!161380 (= e!105478 (and e!105482 mapRes!5861))))

(declare-fun condMapEmpty!5861 () Bool)

(declare-fun mapDefault!5861 () ValueCell!1381)

