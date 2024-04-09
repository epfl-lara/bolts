; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90432 () Bool)

(assert start!90432)

(declare-fun b!1034649 () Bool)

(declare-fun b_free!20807 () Bool)

(declare-fun b_next!20807 () Bool)

(assert (=> b!1034649 (= b_free!20807 (not b_next!20807))))

(declare-fun tp!73526 () Bool)

(declare-fun b_and!33325 () Bool)

(assert (=> b!1034649 (= tp!73526 b_and!33325)))

(declare-fun b!1034644 () Bool)

(declare-fun e!584949 () Bool)

(declare-fun tp_is_empty!24527 () Bool)

(assert (=> b!1034644 (= e!584949 tp_is_empty!24527)))

(declare-fun res!691064 () Bool)

(declare-fun e!584952 () Bool)

(assert (=> start!90432 (=> (not res!691064) (not e!584952))))

(declare-datatypes ((V!37575 0))(
  ( (V!37576 (val!12314 Int)) )
))
(declare-datatypes ((ValueCell!11560 0))(
  ( (ValueCellFull!11560 (v!14895 V!37575)) (EmptyCell!11560) )
))
(declare-datatypes ((array!65120 0))(
  ( (array!65121 (arr!31349 (Array (_ BitVec 32) (_ BitVec 64))) (size!31873 (_ BitVec 32))) )
))
(declare-datatypes ((array!65122 0))(
  ( (array!65123 (arr!31350 (Array (_ BitVec 32) ValueCell!11560)) (size!31874 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5714 0))(
  ( (LongMapFixedSize!5715 (defaultEntry!6235 Int) (mask!30092 (_ BitVec 32)) (extraKeys!5965 (_ BitVec 32)) (zeroValue!6069 V!37575) (minValue!6071 V!37575) (_size!2912 (_ BitVec 32)) (_keys!11414 array!65120) (_values!6258 array!65122) (_vacant!2912 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5714)

(declare-fun valid!2108 (LongMapFixedSize!5714) Bool)

(assert (=> start!90432 (= res!691064 (valid!2108 thiss!1427))))

(assert (=> start!90432 e!584952))

(declare-fun e!584948 () Bool)

(assert (=> start!90432 e!584948))

(assert (=> start!90432 true))

(declare-fun b!1034645 () Bool)

(declare-fun res!691065 () Bool)

(assert (=> b!1034645 (=> (not res!691065) (not e!584952))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1034645 (= res!691065 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034646 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1034646 (= e!584952 (not (validMask!0 (mask!30092 thiss!1427))))))

(declare-fun b!1034647 () Bool)

(declare-fun e!584950 () Bool)

(declare-fun e!584951 () Bool)

(declare-fun mapRes!38278 () Bool)

(assert (=> b!1034647 (= e!584950 (and e!584951 mapRes!38278))))

(declare-fun condMapEmpty!38278 () Bool)

(declare-fun mapDefault!38278 () ValueCell!11560)

