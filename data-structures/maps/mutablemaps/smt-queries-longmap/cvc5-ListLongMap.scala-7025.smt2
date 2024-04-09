; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89198 () Bool)

(assert start!89198)

(declare-fun b!1022225 () Bool)

(declare-fun b_free!20203 () Bool)

(declare-fun b_next!20203 () Bool)

(assert (=> b!1022225 (= b_free!20203 (not b_next!20203))))

(declare-fun tp!71644 () Bool)

(declare-fun b_and!32419 () Bool)

(assert (=> b!1022225 (= tp!71644 b_and!32419)))

(declare-fun e!575871 () Bool)

(declare-fun e!575875 () Bool)

(declare-fun tp_is_empty!23923 () Bool)

(declare-datatypes ((V!36771 0))(
  ( (V!36772 (val!12012 Int)) )
))
(declare-datatypes ((ValueCell!11258 0))(
  ( (ValueCellFull!11258 (v!14582 V!36771)) (EmptyCell!11258) )
))
(declare-datatypes ((array!63874 0))(
  ( (array!63875 (arr!30745 (Array (_ BitVec 32) (_ BitVec 64))) (size!31257 (_ BitVec 32))) )
))
(declare-datatypes ((array!63876 0))(
  ( (array!63877 (arr!30746 (Array (_ BitVec 32) ValueCell!11258)) (size!31258 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5110 0))(
  ( (LongMapFixedSize!5111 (defaultEntry!5907 Int) (mask!29493 (_ BitVec 32)) (extraKeys!5639 (_ BitVec 32)) (zeroValue!5743 V!36771) (minValue!5743 V!36771) (_size!2610 (_ BitVec 32)) (_keys!11049 array!63874) (_values!5930 array!63876) (_vacant!2610 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5110)

(declare-fun array_inv!23701 (array!63874) Bool)

(declare-fun array_inv!23702 (array!63876) Bool)

(assert (=> b!1022225 (= e!575875 (and tp!71644 tp_is_empty!23923 (array_inv!23701 (_keys!11049 thiss!1427)) (array_inv!23702 (_values!5930 thiss!1427)) e!575871))))

(declare-fun b!1022226 () Bool)

(declare-fun e!575872 () Bool)

(assert (=> b!1022226 (= e!575872 false)))

(declare-fun lt!450175 () Bool)

(declare-datatypes ((List!21786 0))(
  ( (Nil!21783) (Cons!21782 (h!22980 (_ BitVec 64)) (t!30807 List!21786)) )
))
(declare-fun arrayNoDuplicates!0 (array!63874 (_ BitVec 32) List!21786) Bool)

(assert (=> b!1022226 (= lt!450175 (arrayNoDuplicates!0 (_keys!11049 thiss!1427) #b00000000000000000000000000000000 Nil!21783))))

(declare-fun mapIsEmpty!37302 () Bool)

(declare-fun mapRes!37302 () Bool)

(assert (=> mapIsEmpty!37302 mapRes!37302))

(declare-fun b!1022227 () Bool)

(declare-fun res!684904 () Bool)

(assert (=> b!1022227 (=> (not res!684904) (not e!575872))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022227 (= res!684904 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!684902 () Bool)

(assert (=> start!89198 (=> (not res!684902) (not e!575872))))

(declare-fun valid!1911 (LongMapFixedSize!5110) Bool)

(assert (=> start!89198 (= res!684902 (valid!1911 thiss!1427))))

(assert (=> start!89198 e!575872))

(assert (=> start!89198 e!575875))

(assert (=> start!89198 true))

(declare-fun mapNonEmpty!37302 () Bool)

(declare-fun tp!71645 () Bool)

(declare-fun e!575873 () Bool)

(assert (=> mapNonEmpty!37302 (= mapRes!37302 (and tp!71645 e!575873))))

(declare-fun mapKey!37302 () (_ BitVec 32))

(declare-fun mapRest!37302 () (Array (_ BitVec 32) ValueCell!11258))

(declare-fun mapValue!37302 () ValueCell!11258)

(assert (=> mapNonEmpty!37302 (= (arr!30746 (_values!5930 thiss!1427)) (store mapRest!37302 mapKey!37302 mapValue!37302))))

(declare-fun b!1022228 () Bool)

(declare-fun e!575874 () Bool)

(assert (=> b!1022228 (= e!575874 tp_is_empty!23923)))

(declare-fun b!1022229 () Bool)

(assert (=> b!1022229 (= e!575873 tp_is_empty!23923)))

(declare-fun b!1022230 () Bool)

(assert (=> b!1022230 (= e!575871 (and e!575874 mapRes!37302))))

(declare-fun condMapEmpty!37302 () Bool)

(declare-fun mapDefault!37302 () ValueCell!11258)

