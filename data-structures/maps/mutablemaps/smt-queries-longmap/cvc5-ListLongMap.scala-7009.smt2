; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89082 () Bool)

(assert start!89082)

(declare-fun b!1020922 () Bool)

(declare-fun b_free!20107 () Bool)

(declare-fun b_next!20107 () Bool)

(assert (=> b!1020922 (= b_free!20107 (not b_next!20107))))

(declare-fun tp!71351 () Bool)

(declare-fun b_and!32313 () Bool)

(assert (=> b!1020922 (= tp!71351 b_and!32313)))

(declare-fun e!574839 () Bool)

(declare-fun e!574842 () Bool)

(declare-fun tp_is_empty!23827 () Bool)

(declare-datatypes ((V!36643 0))(
  ( (V!36644 (val!11964 Int)) )
))
(declare-datatypes ((array!63678 0))(
  ( (array!63679 (arr!30649 (Array (_ BitVec 32) (_ BitVec 64))) (size!31161 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11210 0))(
  ( (ValueCellFull!11210 (v!14516 V!36643)) (EmptyCell!11210) )
))
(declare-datatypes ((array!63680 0))(
  ( (array!63681 (arr!30650 (Array (_ BitVec 32) ValueCell!11210)) (size!31162 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5014 0))(
  ( (LongMapFixedSize!5015 (defaultEntry!5859 Int) (mask!29413 (_ BitVec 32)) (extraKeys!5591 (_ BitVec 32)) (zeroValue!5695 V!36643) (minValue!5695 V!36643) (_size!2562 (_ BitVec 32)) (_keys!11001 array!63678) (_values!5882 array!63680) (_vacant!2562 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1082 0))(
  ( (Cell!1083 (v!14517 LongMapFixedSize!5014)) )
))
(declare-datatypes ((LongMap!1082 0))(
  ( (LongMap!1083 (underlying!552 Cell!1082)) )
))
(declare-fun thiss!908 () LongMap!1082)

(declare-fun array_inv!23637 (array!63678) Bool)

(declare-fun array_inv!23638 (array!63680) Bool)

(assert (=> b!1020922 (= e!574842 (and tp!71351 tp_is_empty!23827 (array_inv!23637 (_keys!11001 (v!14517 (underlying!552 thiss!908)))) (array_inv!23638 (_values!5882 (v!14517 (underlying!552 thiss!908)))) e!574839))))

(declare-fun b!1020923 () Bool)

(declare-fun e!574843 () Bool)

(declare-fun mapRes!37152 () Bool)

(assert (=> b!1020923 (= e!574839 (and e!574843 mapRes!37152))))

(declare-fun condMapEmpty!37152 () Bool)

(declare-fun mapDefault!37152 () ValueCell!11210)

