; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16636 () Bool)

(assert start!16636)

(declare-fun b!165930 () Bool)

(declare-fun b_free!3929 () Bool)

(declare-fun b_next!3929 () Bool)

(assert (=> b!165930 (= b_free!3929 (not b_next!3929))))

(declare-fun tp!14387 () Bool)

(declare-fun b_and!10361 () Bool)

(assert (=> b!165930 (= tp!14387 b_and!10361)))

(declare-fun b!165921 () Bool)

(declare-fun res!78820 () Bool)

(declare-fun e!108842 () Bool)

(assert (=> b!165921 (=> (not res!78820) (not e!108842))))

(declare-datatypes ((V!4621 0))(
  ( (V!4622 (val!1910 Int)) )
))
(declare-datatypes ((ValueCell!1522 0))(
  ( (ValueCellFull!1522 (v!3771 V!4621)) (EmptyCell!1522) )
))
(declare-datatypes ((array!6558 0))(
  ( (array!6559 (arr!3114 (Array (_ BitVec 32) (_ BitVec 64))) (size!3402 (_ BitVec 32))) )
))
(declare-datatypes ((array!6560 0))(
  ( (array!6561 (arr!3115 (Array (_ BitVec 32) ValueCell!1522)) (size!3403 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1952 0))(
  ( (LongMapFixedSize!1953 (defaultEntry!3418 Int) (mask!8139 (_ BitVec 32)) (extraKeys!3159 (_ BitVec 32)) (zeroValue!3261 V!4621) (minValue!3261 V!4621) (_size!1025 (_ BitVec 32)) (_keys!5243 array!6558) (_values!3401 array!6560) (_vacant!1025 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1952)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165921 (= res!78820 (validMask!0 (mask!8139 thiss!1248)))))

(declare-fun b!165922 () Bool)

(declare-fun e!108840 () Bool)

(declare-fun e!108844 () Bool)

(declare-fun mapRes!6315 () Bool)

(assert (=> b!165922 (= e!108840 (and e!108844 mapRes!6315))))

(declare-fun condMapEmpty!6315 () Bool)

(declare-fun mapDefault!6315 () ValueCell!1522)

