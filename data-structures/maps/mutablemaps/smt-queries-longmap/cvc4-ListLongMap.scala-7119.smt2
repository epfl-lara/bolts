; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90288 () Bool)

(assert start!90288)

(declare-fun b!1033147 () Bool)

(declare-fun b_free!20771 () Bool)

(declare-fun b_next!20771 () Bool)

(assert (=> b!1033147 (= b_free!20771 (not b_next!20771))))

(declare-fun tp!73407 () Bool)

(declare-fun b_and!33257 () Bool)

(assert (=> b!1033147 (= tp!73407 b_and!33257)))

(declare-fun res!690448 () Bool)

(declare-fun e!583944 () Bool)

(assert (=> start!90288 (=> (not res!690448) (not e!583944))))

(declare-datatypes ((V!37527 0))(
  ( (V!37528 (val!12296 Int)) )
))
(declare-datatypes ((ValueCell!11542 0))(
  ( (ValueCellFull!11542 (v!14874 V!37527)) (EmptyCell!11542) )
))
(declare-datatypes ((array!65042 0))(
  ( (array!65043 (arr!31313 (Array (_ BitVec 32) (_ BitVec 64))) (size!31836 (_ BitVec 32))) )
))
(declare-datatypes ((array!65044 0))(
  ( (array!65045 (arr!31314 (Array (_ BitVec 32) ValueCell!11542)) (size!31837 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5678 0))(
  ( (LongMapFixedSize!5679 (defaultEntry!6213 Int) (mask!30051 (_ BitVec 32)) (extraKeys!5945 (_ BitVec 32)) (zeroValue!6049 V!37527) (minValue!6049 V!37527) (_size!2894 (_ BitVec 32)) (_keys!11388 array!65042) (_values!6236 array!65044) (_vacant!2894 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5678)

(declare-fun valid!2097 (LongMapFixedSize!5678) Bool)

(assert (=> start!90288 (= res!690448 (valid!2097 thiss!1427))))

(assert (=> start!90288 e!583944))

(declare-fun e!583948 () Bool)

(assert (=> start!90288 e!583948))

(assert (=> start!90288 true))

(declare-fun b!1033143 () Bool)

(declare-fun res!690450 () Bool)

(assert (=> b!1033143 (=> (not res!690450) (not e!583944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033143 (= res!690450 (validMask!0 (mask!30051 thiss!1427)))))

(declare-fun b!1033144 () Bool)

(declare-fun e!583946 () Bool)

(declare-fun e!583949 () Bool)

(declare-fun mapRes!38213 () Bool)

(assert (=> b!1033144 (= e!583946 (and e!583949 mapRes!38213))))

(declare-fun condMapEmpty!38213 () Bool)

(declare-fun mapDefault!38213 () ValueCell!11542)

