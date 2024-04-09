; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91098 () Bool)

(assert start!91098)

(declare-fun b!1039755 () Bool)

(declare-fun b_free!20989 () Bool)

(declare-fun b_next!20989 () Bool)

(assert (=> b!1039755 (= b_free!20989 (not b_next!20989))))

(declare-fun tp!74153 () Bool)

(declare-fun b_and!33539 () Bool)

(assert (=> b!1039755 (= tp!74153 b_and!33539)))

(declare-fun b!1039754 () Bool)

(declare-fun e!588578 () Bool)

(declare-fun e!588577 () Bool)

(declare-fun mapRes!38632 () Bool)

(assert (=> b!1039754 (= e!588578 (and e!588577 mapRes!38632))))

(declare-fun condMapEmpty!38632 () Bool)

(declare-datatypes ((V!37819 0))(
  ( (V!37820 (val!12405 Int)) )
))
(declare-datatypes ((ValueCell!11651 0))(
  ( (ValueCellFull!11651 (v!14993 V!37819)) (EmptyCell!11651) )
))
(declare-datatypes ((array!65532 0))(
  ( (array!65533 (arr!31531 (Array (_ BitVec 32) (_ BitVec 64))) (size!32063 (_ BitVec 32))) )
))
(declare-datatypes ((array!65534 0))(
  ( (array!65535 (arr!31532 (Array (_ BitVec 32) ValueCell!11651)) (size!32064 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5896 0))(
  ( (LongMapFixedSize!5897 (defaultEntry!6330 Int) (mask!30301 (_ BitVec 32)) (extraKeys!6058 (_ BitVec 32)) (zeroValue!6164 V!37819) (minValue!6164 V!37819) (_size!3003 (_ BitVec 32)) (_keys!11541 array!65532) (_values!6353 array!65534) (_vacant!3003 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5896)

(declare-fun mapDefault!38632 () ValueCell!11651)

