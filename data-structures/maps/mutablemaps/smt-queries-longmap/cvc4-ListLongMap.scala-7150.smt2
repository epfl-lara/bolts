; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90948 () Bool)

(assert start!90948)

(declare-fun b!1038805 () Bool)

(declare-fun b_free!20957 () Bool)

(declare-fun b_next!20957 () Bool)

(assert (=> b!1038805 (= b_free!20957 (not b_next!20957))))

(declare-fun tp!74039 () Bool)

(declare-fun b_and!33507 () Bool)

(assert (=> b!1038805 (= tp!74039 b_and!33507)))

(declare-fun b!1038804 () Bool)

(declare-fun e!587897 () Bool)

(declare-fun e!587892 () Bool)

(declare-fun mapRes!38566 () Bool)

(assert (=> b!1038804 (= e!587897 (and e!587892 mapRes!38566))))

(declare-fun condMapEmpty!38566 () Bool)

(declare-datatypes ((V!37775 0))(
  ( (V!37776 (val!12389 Int)) )
))
(declare-datatypes ((ValueCell!11635 0))(
  ( (ValueCellFull!11635 (v!14977 V!37775)) (EmptyCell!11635) )
))
(declare-datatypes ((array!65456 0))(
  ( (array!65457 (arr!31499 (Array (_ BitVec 32) (_ BitVec 64))) (size!32031 (_ BitVec 32))) )
))
(declare-datatypes ((array!65458 0))(
  ( (array!65459 (arr!31500 (Array (_ BitVec 32) ValueCell!11635)) (size!32032 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5864 0))(
  ( (LongMapFixedSize!5865 (defaultEntry!6314 Int) (mask!30259 (_ BitVec 32)) (extraKeys!6042 (_ BitVec 32)) (zeroValue!6148 V!37775) (minValue!6148 V!37775) (_size!2987 (_ BitVec 32)) (_keys!11517 array!65456) (_values!6337 array!65458) (_vacant!2987 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5864)

(declare-fun mapDefault!38566 () ValueCell!11635)

