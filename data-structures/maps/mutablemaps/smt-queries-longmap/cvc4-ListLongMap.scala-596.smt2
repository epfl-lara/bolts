; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15734 () Bool)

(assert start!15734)

(declare-fun b!156822 () Bool)

(declare-fun b_free!3389 () Bool)

(declare-fun b_next!3389 () Bool)

(assert (=> b!156822 (= b_free!3389 (not b_next!3389))))

(declare-fun tp!12691 () Bool)

(declare-fun b_and!9821 () Bool)

(assert (=> b!156822 (= tp!12691 b_and!9821)))

(declare-fun b!156814 () Bool)

(declare-fun e!102576 () Bool)

(assert (=> b!156814 (= e!102576 false)))

(declare-fun lt!81620 () Bool)

(declare-datatypes ((V!3901 0))(
  ( (V!3902 (val!1640 Int)) )
))
(declare-datatypes ((ValueCell!1252 0))(
  ( (ValueCellFull!1252 (v!3501 V!3901)) (EmptyCell!1252) )
))
(declare-datatypes ((array!5434 0))(
  ( (array!5435 (arr!2574 (Array (_ BitVec 32) (_ BitVec 64))) (size!2852 (_ BitVec 32))) )
))
(declare-datatypes ((array!5436 0))(
  ( (array!5437 (arr!2575 (Array (_ BitVec 32) ValueCell!1252)) (size!2853 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1412 0))(
  ( (LongMapFixedSize!1413 (defaultEntry!3148 Int) (mask!7609 (_ BitVec 32)) (extraKeys!2889 (_ BitVec 32)) (zeroValue!2991 V!3901) (minValue!2991 V!3901) (_size!755 (_ BitVec 32)) (_keys!4923 array!5434) (_values!3131 array!5436) (_vacant!755 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1412)

(declare-datatypes ((List!1880 0))(
  ( (Nil!1877) (Cons!1876 (h!2485 (_ BitVec 64)) (t!6690 List!1880)) )
))
(declare-fun arrayNoDuplicates!0 (array!5434 (_ BitVec 32) List!1880) Bool)

(assert (=> b!156814 (= lt!81620 (arrayNoDuplicates!0 (_keys!4923 thiss!1248) #b00000000000000000000000000000000 Nil!1877))))

(declare-fun mapNonEmpty!5429 () Bool)

(declare-fun mapRes!5429 () Bool)

(declare-fun tp!12692 () Bool)

(declare-fun e!102577 () Bool)

(assert (=> mapNonEmpty!5429 (= mapRes!5429 (and tp!12692 e!102577))))

(declare-fun mapValue!5429 () ValueCell!1252)

(declare-fun mapRest!5429 () (Array (_ BitVec 32) ValueCell!1252))

(declare-fun mapKey!5429 () (_ BitVec 32))

(assert (=> mapNonEmpty!5429 (= (arr!2575 (_values!3131 thiss!1248)) (store mapRest!5429 mapKey!5429 mapValue!5429))))

(declare-fun b!156815 () Bool)

(declare-fun e!102574 () Bool)

(declare-fun e!102578 () Bool)

(assert (=> b!156815 (= e!102574 (and e!102578 mapRes!5429))))

(declare-fun condMapEmpty!5429 () Bool)

(declare-fun mapDefault!5429 () ValueCell!1252)

