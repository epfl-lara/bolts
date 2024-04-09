; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107562 () Bool)

(assert start!107562)

(declare-fun b!1273155 () Bool)

(declare-fun b_free!27709 () Bool)

(declare-fun b_next!27709 () Bool)

(assert (=> b!1273155 (= b_free!27709 (not b_next!27709))))

(declare-fun tp!97668 () Bool)

(declare-fun b_and!45775 () Bool)

(assert (=> b!1273155 (= tp!97668 b_and!45775)))

(declare-fun b!1273147 () Bool)

(declare-fun e!726361 () Bool)

(declare-fun e!726359 () Bool)

(declare-fun mapRes!51234 () Bool)

(assert (=> b!1273147 (= e!726361 (and e!726359 mapRes!51234))))

(declare-fun condMapEmpty!51234 () Bool)

(declare-datatypes ((V!49299 0))(
  ( (V!49300 (val!16614 Int)) )
))
(declare-datatypes ((ValueCell!15686 0))(
  ( (ValueCellFull!15686 (v!19249 V!49299)) (EmptyCell!15686) )
))
(declare-datatypes ((array!83369 0))(
  ( (array!83370 (arr!40207 (Array (_ BitVec 32) ValueCell!15686)) (size!40749 (_ BitVec 32))) )
))
(declare-datatypes ((array!83371 0))(
  ( (array!83372 (arr!40208 (Array (_ BitVec 32) (_ BitVec 64))) (size!40750 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6136 0))(
  ( (LongMapFixedSize!6137 (defaultEntry!6714 Int) (mask!34484 (_ BitVec 32)) (extraKeys!6393 (_ BitVec 32)) (zeroValue!6499 V!49299) (minValue!6499 V!49299) (_size!3123 (_ BitVec 32)) (_keys!12124 array!83371) (_values!6737 array!83369) (_vacant!3123 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6136)

(declare-fun mapDefault!51234 () ValueCell!15686)

