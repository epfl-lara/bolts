; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22384 () Bool)

(assert start!22384)

(declare-fun b!234287 () Bool)

(declare-fun b_free!6311 () Bool)

(declare-fun b_next!6311 () Bool)

(assert (=> b!234287 (= b_free!6311 (not b_next!6311))))

(declare-fun tp!22088 () Bool)

(declare-fun b_and!13243 () Bool)

(assert (=> b!234287 (= tp!22088 b_and!13243)))

(declare-fun b!234282 () Bool)

(declare-fun res!114946 () Bool)

(declare-fun e!152193 () Bool)

(assert (=> b!234282 (=> (not res!114946) (not e!152193))))

(declare-datatypes ((V!7877 0))(
  ( (V!7878 (val!3131 Int)) )
))
(declare-datatypes ((ValueCell!2743 0))(
  ( (ValueCellFull!2743 (v!5151 V!7877)) (EmptyCell!2743) )
))
(declare-datatypes ((array!11596 0))(
  ( (array!11597 (arr!5513 (Array (_ BitVec 32) ValueCell!2743)) (size!5848 (_ BitVec 32))) )
))
(declare-datatypes ((array!11598 0))(
  ( (array!11599 (arr!5514 (Array (_ BitVec 32) (_ BitVec 64))) (size!5849 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3386 0))(
  ( (LongMapFixedSize!3387 (defaultEntry!4358 Int) (mask!10304 (_ BitVec 32)) (extraKeys!4095 (_ BitVec 32)) (zeroValue!4199 V!7877) (minValue!4199 V!7877) (_size!1742 (_ BitVec 32)) (_keys!6422 array!11598) (_values!4341 array!11596) (_vacant!1742 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3386)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!234282 (= res!114946 (validMask!0 (mask!10304 thiss!1504)))))

(declare-fun b!234283 () Bool)

(declare-fun e!152197 () Bool)

(declare-fun e!152194 () Bool)

(declare-fun mapRes!10443 () Bool)

(assert (=> b!234283 (= e!152197 (and e!152194 mapRes!10443))))

(declare-fun condMapEmpty!10443 () Bool)

(declare-fun mapDefault!10443 () ValueCell!2743)

