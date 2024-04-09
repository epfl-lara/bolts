; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16830 () Bool)

(assert start!16830)

(declare-fun b!169514 () Bool)

(declare-fun b_free!4147 () Bool)

(declare-fun b_next!4147 () Bool)

(assert (=> b!169514 (= b_free!4147 (not b_next!4147))))

(declare-fun tp!15045 () Bool)

(declare-fun b_and!10579 () Bool)

(assert (=> b!169514 (= tp!15045 b_and!10579)))

(declare-fun b!169513 () Bool)

(declare-fun b_free!4149 () Bool)

(declare-fun b_next!4149 () Bool)

(assert (=> b!169513 (= b_free!4149 (not b_next!4149))))

(declare-fun tp!15047 () Bool)

(declare-fun b_and!10581 () Bool)

(assert (=> b!169513 (= tp!15047 b_and!10581)))

(declare-fun mapNonEmpty!6644 () Bool)

(declare-fun mapRes!6645 () Bool)

(declare-fun tp!15046 () Bool)

(declare-fun e!111763 () Bool)

(assert (=> mapNonEmpty!6644 (= mapRes!6645 (and tp!15046 e!111763))))

(declare-fun mapKey!6644 () (_ BitVec 32))

(declare-datatypes ((V!4881 0))(
  ( (V!4882 (val!2007 Int)) )
))
(declare-datatypes ((ValueCell!1619 0))(
  ( (ValueCellFull!1619 (v!3868 V!4881)) (EmptyCell!1619) )
))
(declare-fun mapValue!6644 () ValueCell!1619)

(declare-fun mapRest!6645 () (Array (_ BitVec 32) ValueCell!1619))

(declare-datatypes ((array!6946 0))(
  ( (array!6947 (arr!3308 (Array (_ BitVec 32) (_ BitVec 64))) (size!3596 (_ BitVec 32))) )
))
(declare-datatypes ((array!6948 0))(
  ( (array!6949 (arr!3309 (Array (_ BitVec 32) ValueCell!1619)) (size!3597 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2146 0))(
  ( (LongMapFixedSize!2147 (defaultEntry!3515 Int) (mask!8302 (_ BitVec 32)) (extraKeys!3256 (_ BitVec 32)) (zeroValue!3358 V!4881) (minValue!3358 V!4881) (_size!1122 (_ BitVec 32)) (_keys!5340 array!6946) (_values!3498 array!6948) (_vacant!1122 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3222 0))(
  ( (tuple2!3223 (_1!1621 Bool) (_2!1621 LongMapFixedSize!2146)) )
))
(declare-fun err!87 () tuple2!3222)

(assert (=> mapNonEmpty!6644 (= (arr!3309 (_values!3498 (_2!1621 err!87))) (store mapRest!6645 mapKey!6644 mapValue!6644))))

(declare-fun b!169509 () Bool)

(declare-fun e!111769 () Bool)

(declare-fun e!111767 () Bool)

(assert (=> b!169509 (= e!111769 (and e!111767 mapRes!6645))))

(declare-fun condMapEmpty!6645 () Bool)

(declare-fun mapDefault!6644 () ValueCell!1619)

