; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18050 () Bool)

(assert start!18050)

(declare-fun b!179565 () Bool)

(declare-fun b_free!4429 () Bool)

(declare-fun b_next!4429 () Bool)

(assert (=> b!179565 (= b_free!4429 (not b_next!4429))))

(declare-fun tp!16015 () Bool)

(declare-fun b_and!10979 () Bool)

(assert (=> b!179565 (= tp!16015 b_and!10979)))

(declare-fun b!179557 () Bool)

(declare-fun res!85065 () Bool)

(declare-fun e!118291 () Bool)

(assert (=> b!179557 (=> (not res!85065) (not e!118291))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!179557 (= res!85065 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7192 () Bool)

(declare-fun mapRes!7192 () Bool)

(declare-fun tp!16014 () Bool)

(declare-fun e!118290 () Bool)

(assert (=> mapNonEmpty!7192 (= mapRes!7192 (and tp!16014 e!118290))))

(declare-datatypes ((V!5249 0))(
  ( (V!5250 (val!2145 Int)) )
))
(declare-datatypes ((ValueCell!1757 0))(
  ( (ValueCellFull!1757 (v!4029 V!5249)) (EmptyCell!1757) )
))
(declare-fun mapValue!7192 () ValueCell!1757)

(declare-fun mapKey!7192 () (_ BitVec 32))

(declare-fun mapRest!7192 () (Array (_ BitVec 32) ValueCell!1757))

(declare-datatypes ((array!7568 0))(
  ( (array!7569 (arr!3584 (Array (_ BitVec 32) (_ BitVec 64))) (size!3892 (_ BitVec 32))) )
))
(declare-datatypes ((array!7570 0))(
  ( (array!7571 (arr!3585 (Array (_ BitVec 32) ValueCell!1757)) (size!3893 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2422 0))(
  ( (LongMapFixedSize!2423 (defaultEntry!3686 Int) (mask!8672 (_ BitVec 32)) (extraKeys!3423 (_ BitVec 32)) (zeroValue!3527 V!5249) (minValue!3527 V!5249) (_size!1260 (_ BitVec 32)) (_keys!5575 array!7568) (_values!3669 array!7570) (_vacant!1260 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2422)

(assert (=> mapNonEmpty!7192 (= (arr!3585 (_values!3669 thiss!1248)) (store mapRest!7192 mapKey!7192 mapValue!7192))))

(declare-fun b!179559 () Bool)

(declare-fun e!118292 () Bool)

(declare-fun e!118289 () Bool)

(assert (=> b!179559 (= e!118292 (and e!118289 mapRes!7192))))

(declare-fun condMapEmpty!7192 () Bool)

(declare-fun mapDefault!7192 () ValueCell!1757)

