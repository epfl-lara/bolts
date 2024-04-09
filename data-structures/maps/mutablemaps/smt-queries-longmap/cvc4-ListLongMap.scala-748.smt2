; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17472 () Bool)

(assert start!17472)

(declare-fun b!175041 () Bool)

(declare-fun b_free!4331 () Bool)

(declare-fun b_next!4331 () Bool)

(assert (=> b!175041 (= b_free!4331 (not b_next!4331))))

(declare-fun tp!15668 () Bool)

(declare-fun b_and!10823 () Bool)

(assert (=> b!175041 (= tp!15668 b_and!10823)))

(declare-fun b!175035 () Bool)

(declare-fun e!115570 () Bool)

(declare-fun e!115568 () Bool)

(declare-fun mapRes!6993 () Bool)

(assert (=> b!175035 (= e!115570 (and e!115568 mapRes!6993))))

(declare-fun condMapEmpty!6993 () Bool)

(declare-datatypes ((V!5117 0))(
  ( (V!5118 (val!2096 Int)) )
))
(declare-datatypes ((ValueCell!1708 0))(
  ( (ValueCellFull!1708 (v!3965 V!5117)) (EmptyCell!1708) )
))
(declare-datatypes ((array!7342 0))(
  ( (array!7343 (arr!3486 (Array (_ BitVec 32) (_ BitVec 64))) (size!3787 (_ BitVec 32))) )
))
(declare-datatypes ((array!7344 0))(
  ( (array!7345 (arr!3487 (Array (_ BitVec 32) ValueCell!1708)) (size!3788 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2324 0))(
  ( (LongMapFixedSize!2325 (defaultEntry!3615 Int) (mask!8504 (_ BitVec 32)) (extraKeys!3352 (_ BitVec 32)) (zeroValue!3456 V!5117) (minValue!3456 V!5117) (_size!1211 (_ BitVec 32)) (_keys!5463 array!7342) (_values!3598 array!7344) (_vacant!1211 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2324)

(declare-fun mapDefault!6993 () ValueCell!1708)

