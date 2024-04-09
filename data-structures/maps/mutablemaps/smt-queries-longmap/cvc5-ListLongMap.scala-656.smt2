; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16296 () Bool)

(assert start!16296)

(declare-fun b!162418 () Bool)

(declare-fun b_free!3745 () Bool)

(declare-fun b_next!3745 () Bool)

(assert (=> b!162418 (= b_free!3745 (not b_next!3745))))

(declare-fun tp!13804 () Bool)

(declare-fun b_and!10177 () Bool)

(assert (=> b!162418 (= tp!13804 b_and!10177)))

(declare-fun b!162414 () Bool)

(declare-fun e!106459 () Bool)

(declare-fun e!106455 () Bool)

(declare-fun mapRes!6008 () Bool)

(assert (=> b!162414 (= e!106459 (and e!106455 mapRes!6008))))

(declare-fun condMapEmpty!6008 () Bool)

(declare-datatypes ((V!4377 0))(
  ( (V!4378 (val!1818 Int)) )
))
(declare-datatypes ((ValueCell!1430 0))(
  ( (ValueCellFull!1430 (v!3679 V!4377)) (EmptyCell!1430) )
))
(declare-datatypes ((array!6172 0))(
  ( (array!6173 (arr!2930 (Array (_ BitVec 32) (_ BitVec 64))) (size!3214 (_ BitVec 32))) )
))
(declare-datatypes ((array!6174 0))(
  ( (array!6175 (arr!2931 (Array (_ BitVec 32) ValueCell!1430)) (size!3215 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1768 0))(
  ( (LongMapFixedSize!1769 (defaultEntry!3326 Int) (mask!7950 (_ BitVec 32)) (extraKeys!3067 (_ BitVec 32)) (zeroValue!3169 V!4377) (minValue!3169 V!4377) (_size!933 (_ BitVec 32)) (_keys!5127 array!6172) (_values!3309 array!6174) (_vacant!933 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1768)

(declare-fun mapDefault!6008 () ValueCell!1430)

