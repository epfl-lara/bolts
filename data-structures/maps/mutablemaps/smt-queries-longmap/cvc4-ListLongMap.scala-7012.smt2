; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89104 () Bool)

(assert start!89104)

(declare-fun b!1021158 () Bool)

(declare-fun b_free!20129 () Bool)

(declare-fun b_next!20129 () Bool)

(assert (=> b!1021158 (= b_free!20129 (not b_next!20129))))

(declare-fun tp!71416 () Bool)

(declare-fun b_and!32335 () Bool)

(assert (=> b!1021158 (= tp!71416 b_and!32335)))

(declare-fun b!1021153 () Bool)

(declare-fun e!575103 () Bool)

(declare-fun e!575106 () Bool)

(assert (=> b!1021153 (= e!575103 e!575106)))

(declare-fun mapNonEmpty!37185 () Bool)

(declare-fun mapRes!37185 () Bool)

(declare-fun tp!71417 () Bool)

(declare-fun e!575107 () Bool)

(assert (=> mapNonEmpty!37185 (= mapRes!37185 (and tp!71417 e!575107))))

(declare-fun mapKey!37185 () (_ BitVec 32))

(declare-datatypes ((V!36671 0))(
  ( (V!36672 (val!11975 Int)) )
))
(declare-datatypes ((ValueCell!11221 0))(
  ( (ValueCellFull!11221 (v!14538 V!36671)) (EmptyCell!11221) )
))
(declare-fun mapValue!37185 () ValueCell!11221)

(declare-datatypes ((array!63722 0))(
  ( (array!63723 (arr!30671 (Array (_ BitVec 32) (_ BitVec 64))) (size!31183 (_ BitVec 32))) )
))
(declare-datatypes ((array!63724 0))(
  ( (array!63725 (arr!30672 (Array (_ BitVec 32) ValueCell!11221)) (size!31184 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5036 0))(
  ( (LongMapFixedSize!5037 (defaultEntry!5870 Int) (mask!29430 (_ BitVec 32)) (extraKeys!5602 (_ BitVec 32)) (zeroValue!5706 V!36671) (minValue!5706 V!36671) (_size!2573 (_ BitVec 32)) (_keys!11012 array!63722) (_values!5893 array!63724) (_vacant!2573 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1104 0))(
  ( (Cell!1105 (v!14539 LongMapFixedSize!5036)) )
))
(declare-datatypes ((LongMap!1104 0))(
  ( (LongMap!1105 (underlying!563 Cell!1104)) )
))
(declare-fun thiss!908 () LongMap!1104)

(declare-fun mapRest!37185 () (Array (_ BitVec 32) ValueCell!11221))

(assert (=> mapNonEmpty!37185 (= (arr!30672 (_values!5893 (v!14539 (underlying!563 thiss!908)))) (store mapRest!37185 mapKey!37185 mapValue!37185))))

(declare-fun b!1021154 () Bool)

(declare-fun e!575105 () Bool)

(declare-fun tp_is_empty!23849 () Bool)

(assert (=> b!1021154 (= e!575105 tp_is_empty!23849)))

(declare-fun b!1021155 () Bool)

(declare-fun e!575109 () Bool)

(assert (=> b!1021155 (= e!575109 (and e!575105 mapRes!37185))))

(declare-fun condMapEmpty!37185 () Bool)

(declare-fun mapDefault!37185 () ValueCell!11221)

