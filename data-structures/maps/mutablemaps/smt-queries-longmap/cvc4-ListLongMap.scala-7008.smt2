; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89072 () Bool)

(assert start!89072)

(declare-fun b!1020889 () Bool)

(declare-fun b_free!20105 () Bool)

(declare-fun b_next!20105 () Bool)

(assert (=> b!1020889 (= b_free!20105 (not b_next!20105))))

(declare-fun tp!71341 () Bool)

(declare-fun b_and!32311 () Bool)

(assert (=> b!1020889 (= tp!71341 b_and!32311)))

(declare-fun b!1020884 () Bool)

(declare-fun e!574813 () Bool)

(declare-fun e!574810 () Bool)

(declare-fun mapRes!37146 () Bool)

(assert (=> b!1020884 (= e!574813 (and e!574810 mapRes!37146))))

(declare-fun condMapEmpty!37146 () Bool)

(declare-datatypes ((V!36639 0))(
  ( (V!36640 (val!11963 Int)) )
))
(declare-datatypes ((array!63672 0))(
  ( (array!63673 (arr!30647 (Array (_ BitVec 32) (_ BitVec 64))) (size!31159 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11209 0))(
  ( (ValueCellFull!11209 (v!14514 V!36639)) (EmptyCell!11209) )
))
(declare-datatypes ((array!63674 0))(
  ( (array!63675 (arr!30648 (Array (_ BitVec 32) ValueCell!11209)) (size!31160 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5012 0))(
  ( (LongMapFixedSize!5013 (defaultEntry!5858 Int) (mask!29410 (_ BitVec 32)) (extraKeys!5590 (_ BitVec 32)) (zeroValue!5694 V!36639) (minValue!5694 V!36639) (_size!2561 (_ BitVec 32)) (_keys!11000 array!63672) (_values!5881 array!63674) (_vacant!2561 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1080 0))(
  ( (Cell!1081 (v!14515 LongMapFixedSize!5012)) )
))
(declare-datatypes ((LongMap!1080 0))(
  ( (LongMap!1081 (underlying!551 Cell!1080)) )
))
(declare-fun thiss!908 () LongMap!1080)

(declare-fun mapDefault!37146 () ValueCell!11209)

