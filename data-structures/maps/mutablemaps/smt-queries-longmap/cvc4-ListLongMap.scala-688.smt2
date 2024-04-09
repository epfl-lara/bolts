; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16648 () Bool)

(assert start!16648)

(declare-fun b!166122 () Bool)

(declare-fun b_free!3941 () Bool)

(declare-fun b_next!3941 () Bool)

(assert (=> b!166122 (= b_free!3941 (not b_next!3941))))

(declare-fun tp!14423 () Bool)

(declare-fun b_and!10373 () Bool)

(assert (=> b!166122 (= tp!14423 b_and!10373)))

(declare-fun b!166119 () Bool)

(declare-fun e!108964 () Bool)

(declare-fun e!108968 () Bool)

(declare-fun mapRes!6333 () Bool)

(assert (=> b!166119 (= e!108964 (and e!108968 mapRes!6333))))

(declare-fun condMapEmpty!6333 () Bool)

(declare-datatypes ((V!4637 0))(
  ( (V!4638 (val!1916 Int)) )
))
(declare-datatypes ((ValueCell!1528 0))(
  ( (ValueCellFull!1528 (v!3777 V!4637)) (EmptyCell!1528) )
))
(declare-datatypes ((array!6582 0))(
  ( (array!6583 (arr!3126 (Array (_ BitVec 32) (_ BitVec 64))) (size!3414 (_ BitVec 32))) )
))
(declare-datatypes ((array!6584 0))(
  ( (array!6585 (arr!3127 (Array (_ BitVec 32) ValueCell!1528)) (size!3415 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1964 0))(
  ( (LongMapFixedSize!1965 (defaultEntry!3424 Int) (mask!8149 (_ BitVec 32)) (extraKeys!3165 (_ BitVec 32)) (zeroValue!3267 V!4637) (minValue!3267 V!4637) (_size!1031 (_ BitVec 32)) (_keys!5249 array!6582) (_values!3407 array!6584) (_vacant!1031 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1964)

(declare-fun mapDefault!6333 () ValueCell!1528)

