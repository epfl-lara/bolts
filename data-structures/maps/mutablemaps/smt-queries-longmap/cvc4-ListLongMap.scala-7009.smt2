; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89086 () Bool)

(assert start!89086)

(declare-fun b!1020966 () Bool)

(declare-fun b_free!20111 () Bool)

(declare-fun b_next!20111 () Bool)

(assert (=> b!1020966 (= b_free!20111 (not b_next!20111))))

(declare-fun tp!71363 () Bool)

(declare-fun b_and!32317 () Bool)

(assert (=> b!1020966 (= tp!71363 b_and!32317)))

(declare-fun b!1020964 () Bool)

(declare-fun e!574891 () Bool)

(declare-fun e!574887 () Bool)

(declare-fun mapRes!37158 () Bool)

(assert (=> b!1020964 (= e!574891 (and e!574887 mapRes!37158))))

(declare-fun condMapEmpty!37158 () Bool)

(declare-datatypes ((V!36647 0))(
  ( (V!36648 (val!11966 Int)) )
))
(declare-datatypes ((array!63686 0))(
  ( (array!63687 (arr!30653 (Array (_ BitVec 32) (_ BitVec 64))) (size!31165 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11212 0))(
  ( (ValueCellFull!11212 (v!14520 V!36647)) (EmptyCell!11212) )
))
(declare-datatypes ((array!63688 0))(
  ( (array!63689 (arr!30654 (Array (_ BitVec 32) ValueCell!11212)) (size!31166 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5018 0))(
  ( (LongMapFixedSize!5019 (defaultEntry!5861 Int) (mask!29415 (_ BitVec 32)) (extraKeys!5593 (_ BitVec 32)) (zeroValue!5697 V!36647) (minValue!5697 V!36647) (_size!2564 (_ BitVec 32)) (_keys!11003 array!63686) (_values!5884 array!63688) (_vacant!2564 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1086 0))(
  ( (Cell!1087 (v!14521 LongMapFixedSize!5018)) )
))
(declare-datatypes ((LongMap!1086 0))(
  ( (LongMap!1087 (underlying!554 Cell!1086)) )
))
(declare-fun thiss!908 () LongMap!1086)

(declare-fun mapDefault!37158 () ValueCell!11212)

