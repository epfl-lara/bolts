; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90202 () Bool)

(assert start!90202)

(declare-fun b!1032607 () Bool)

(declare-fun b_free!20741 () Bool)

(declare-fun b_next!20741 () Bool)

(assert (=> b!1032607 (= b_free!20741 (not b_next!20741))))

(declare-fun tp!73303 () Bool)

(declare-fun b_and!33227 () Bool)

(assert (=> b!1032607 (= tp!73303 b_and!33227)))

(declare-fun b!1032601 () Bool)

(declare-fun res!690196 () Bool)

(declare-fun e!583542 () Bool)

(assert (=> b!1032601 (=> (not res!690196) (not e!583542))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032601 (= res!690196 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!690198 () Bool)

(assert (=> start!90202 (=> (not res!690198) (not e!583542))))

(declare-datatypes ((V!37487 0))(
  ( (V!37488 (val!12281 Int)) )
))
(declare-datatypes ((ValueCell!11527 0))(
  ( (ValueCellFull!11527 (v!14859 V!37487)) (EmptyCell!11527) )
))
(declare-datatypes ((array!64974 0))(
  ( (array!64975 (arr!31283 (Array (_ BitVec 32) (_ BitVec 64))) (size!31803 (_ BitVec 32))) )
))
(declare-datatypes ((array!64976 0))(
  ( (array!64977 (arr!31284 (Array (_ BitVec 32) ValueCell!11527)) (size!31804 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5648 0))(
  ( (LongMapFixedSize!5649 (defaultEntry!6198 Int) (mask!30019 (_ BitVec 32)) (extraKeys!5930 (_ BitVec 32)) (zeroValue!6034 V!37487) (minValue!6034 V!37487) (_size!2879 (_ BitVec 32)) (_keys!11370 array!64974) (_values!6221 array!64976) (_vacant!2879 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5648)

(declare-fun valid!2086 (LongMapFixedSize!5648) Bool)

(assert (=> start!90202 (= res!690198 (valid!2086 thiss!1427))))

(assert (=> start!90202 e!583542))

(declare-fun e!583544 () Bool)

(assert (=> start!90202 e!583544))

(assert (=> start!90202 true))

(declare-fun b!1032602 () Bool)

(declare-fun e!583547 () Bool)

(declare-fun tp_is_empty!24461 () Bool)

(assert (=> b!1032602 (= e!583547 tp_is_empty!24461)))

(declare-fun b!1032603 () Bool)

(assert (=> b!1032603 (= e!583542 (and (= (size!31804 (_values!6221 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30019 thiss!1427))) (not (= (size!31803 (_keys!11370 thiss!1427)) (size!31804 (_values!6221 thiss!1427))))))))

(declare-fun b!1032604 () Bool)

(declare-fun e!583543 () Bool)

(declare-fun mapRes!38153 () Bool)

(assert (=> b!1032604 (= e!583543 (and e!583547 mapRes!38153))))

(declare-fun condMapEmpty!38153 () Bool)

(declare-fun mapDefault!38153 () ValueCell!11527)

