; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89172 () Bool)

(assert start!89172)

(declare-fun b!1021882 () Bool)

(declare-fun b_free!20177 () Bool)

(declare-fun b_next!20177 () Bool)

(assert (=> b!1021882 (= b_free!20177 (not b_next!20177))))

(declare-fun tp!71567 () Bool)

(declare-fun b_and!32393 () Bool)

(assert (=> b!1021882 (= tp!71567 b_and!32393)))

(declare-fun b!1021874 () Bool)

(declare-fun e!575637 () Bool)

(declare-fun tp_is_empty!23897 () Bool)

(assert (=> b!1021874 (= e!575637 tp_is_empty!23897)))

(declare-fun mapNonEmpty!37263 () Bool)

(declare-fun mapRes!37263 () Bool)

(declare-fun tp!71566 () Bool)

(declare-fun e!575640 () Bool)

(assert (=> mapNonEmpty!37263 (= mapRes!37263 (and tp!71566 e!575640))))

(declare-datatypes ((V!36735 0))(
  ( (V!36736 (val!11999 Int)) )
))
(declare-datatypes ((ValueCell!11245 0))(
  ( (ValueCellFull!11245 (v!14569 V!36735)) (EmptyCell!11245) )
))
(declare-fun mapRest!37263 () (Array (_ BitVec 32) ValueCell!11245))

(declare-fun mapKey!37263 () (_ BitVec 32))

(declare-fun mapValue!37263 () ValueCell!11245)

(declare-datatypes ((array!63822 0))(
  ( (array!63823 (arr!30719 (Array (_ BitVec 32) (_ BitVec 64))) (size!31231 (_ BitVec 32))) )
))
(declare-datatypes ((array!63824 0))(
  ( (array!63825 (arr!30720 (Array (_ BitVec 32) ValueCell!11245)) (size!31232 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5084 0))(
  ( (LongMapFixedSize!5085 (defaultEntry!5894 Int) (mask!29470 (_ BitVec 32)) (extraKeys!5626 (_ BitVec 32)) (zeroValue!5730 V!36735) (minValue!5730 V!36735) (_size!2597 (_ BitVec 32)) (_keys!11036 array!63822) (_values!5917 array!63824) (_vacant!2597 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5084)

(assert (=> mapNonEmpty!37263 (= (arr!30720 (_values!5917 thiss!1427)) (store mapRest!37263 mapKey!37263 mapValue!37263))))

(declare-fun b!1021875 () Bool)

(declare-fun res!684709 () Bool)

(declare-fun e!575639 () Bool)

(assert (=> b!1021875 (=> (not res!684709) (not e!575639))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021875 (= res!684709 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1021876 () Bool)

(declare-fun e!575641 () Bool)

(assert (=> b!1021876 (= e!575641 (and e!575637 mapRes!37263))))

(declare-fun condMapEmpty!37263 () Bool)

(declare-fun mapDefault!37263 () ValueCell!11245)

