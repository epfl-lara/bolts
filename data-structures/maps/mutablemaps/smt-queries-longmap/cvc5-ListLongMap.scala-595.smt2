; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15724 () Bool)

(assert start!15724)

(declare-fun b!156687 () Bool)

(declare-fun b_free!3379 () Bool)

(declare-fun b_next!3379 () Bool)

(assert (=> b!156687 (= b_free!3379 (not b_next!3379))))

(declare-fun tp!12661 () Bool)

(declare-fun b_and!9811 () Bool)

(assert (=> b!156687 (= tp!12661 b_and!9811)))

(declare-fun b!156679 () Bool)

(declare-fun e!102487 () Bool)

(declare-fun e!102483 () Bool)

(declare-fun mapRes!5414 () Bool)

(assert (=> b!156679 (= e!102487 (and e!102483 mapRes!5414))))

(declare-fun condMapEmpty!5414 () Bool)

(declare-datatypes ((V!3889 0))(
  ( (V!3890 (val!1635 Int)) )
))
(declare-datatypes ((ValueCell!1247 0))(
  ( (ValueCellFull!1247 (v!3496 V!3889)) (EmptyCell!1247) )
))
(declare-datatypes ((array!5414 0))(
  ( (array!5415 (arr!2564 (Array (_ BitVec 32) (_ BitVec 64))) (size!2842 (_ BitVec 32))) )
))
(declare-datatypes ((array!5416 0))(
  ( (array!5417 (arr!2565 (Array (_ BitVec 32) ValueCell!1247)) (size!2843 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1402 0))(
  ( (LongMapFixedSize!1403 (defaultEntry!3143 Int) (mask!7602 (_ BitVec 32)) (extraKeys!2884 (_ BitVec 32)) (zeroValue!2986 V!3889) (minValue!2986 V!3889) (_size!750 (_ BitVec 32)) (_keys!4918 array!5414) (_values!3126 array!5416) (_vacant!750 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1402)

(declare-fun mapDefault!5414 () ValueCell!1247)

