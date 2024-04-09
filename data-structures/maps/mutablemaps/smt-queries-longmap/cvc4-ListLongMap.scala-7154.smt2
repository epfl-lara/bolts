; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91048 () Bool)

(assert start!91048)

(declare-fun b!1039481 () Bool)

(declare-fun b_free!20981 () Bool)

(declare-fun b_next!20981 () Bool)

(assert (=> b!1039481 (= b_free!20981 (not b_next!20981))))

(declare-fun tp!74123 () Bool)

(declare-fun b_and!33531 () Bool)

(assert (=> b!1039481 (= tp!74123 b_and!33531)))

(declare-fun b!1039472 () Bool)

(declare-fun res!693303 () Bool)

(declare-fun e!588378 () Bool)

(assert (=> b!1039472 (=> (not res!693303) (not e!588378))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1039472 (= res!693303 (not (= key!909 (bvneg key!909))))))

(declare-fun res!693301 () Bool)

(assert (=> start!91048 (=> (not res!693301) (not e!588378))))

(declare-datatypes ((V!37807 0))(
  ( (V!37808 (val!12401 Int)) )
))
(declare-datatypes ((ValueCell!11647 0))(
  ( (ValueCellFull!11647 (v!14989 V!37807)) (EmptyCell!11647) )
))
(declare-datatypes ((array!65512 0))(
  ( (array!65513 (arr!31523 (Array (_ BitVec 32) (_ BitVec 64))) (size!32055 (_ BitVec 32))) )
))
(declare-datatypes ((array!65514 0))(
  ( (array!65515 (arr!31524 (Array (_ BitVec 32) ValueCell!11647)) (size!32056 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5888 0))(
  ( (LongMapFixedSize!5889 (defaultEntry!6326 Int) (mask!30287 (_ BitVec 32)) (extraKeys!6054 (_ BitVec 32)) (zeroValue!6160 V!37807) (minValue!6160 V!37807) (_size!2999 (_ BitVec 32)) (_keys!11533 array!65512) (_values!6349 array!65514) (_vacant!2999 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5888)

(declare-fun valid!2166 (LongMapFixedSize!5888) Bool)

(assert (=> start!91048 (= res!693301 (valid!2166 thiss!1427))))

(assert (=> start!91048 e!588378))

(declare-fun e!588376 () Bool)

(assert (=> start!91048 e!588376))

(assert (=> start!91048 true))

(declare-fun b!1039473 () Bool)

(declare-fun e!588372 () Bool)

(declare-fun tp_is_empty!24701 () Bool)

(assert (=> b!1039473 (= e!588372 tp_is_empty!24701)))

(declare-fun b!1039474 () Bool)

(declare-fun e!588373 () Bool)

(declare-fun e!588377 () Bool)

(declare-fun mapRes!38614 () Bool)

(assert (=> b!1039474 (= e!588373 (and e!588377 mapRes!38614))))

(declare-fun condMapEmpty!38614 () Bool)

(declare-fun mapDefault!38614 () ValueCell!11647)

