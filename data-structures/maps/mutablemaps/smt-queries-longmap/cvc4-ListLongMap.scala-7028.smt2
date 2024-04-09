; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89220 () Bool)

(assert start!89220)

(declare-fun b!1022481 () Bool)

(declare-fun b_free!20225 () Bool)

(declare-fun b_next!20225 () Bool)

(assert (=> b!1022481 (= b_free!20225 (not b_next!20225))))

(declare-fun tp!71711 () Bool)

(declare-fun b_and!32451 () Bool)

(assert (=> b!1022481 (= tp!71711 b_and!32451)))

(declare-fun e!576070 () Bool)

(declare-fun e!576068 () Bool)

(declare-fun tp_is_empty!23945 () Bool)

(declare-datatypes ((V!36799 0))(
  ( (V!36800 (val!12023 Int)) )
))
(declare-datatypes ((ValueCell!11269 0))(
  ( (ValueCellFull!11269 (v!14593 V!36799)) (EmptyCell!11269) )
))
(declare-datatypes ((array!63918 0))(
  ( (array!63919 (arr!30767 (Array (_ BitVec 32) (_ BitVec 64))) (size!31279 (_ BitVec 32))) )
))
(declare-datatypes ((array!63920 0))(
  ( (array!63921 (arr!30768 (Array (_ BitVec 32) ValueCell!11269)) (size!31280 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5132 0))(
  ( (LongMapFixedSize!5133 (defaultEntry!5918 Int) (mask!29510 (_ BitVec 32)) (extraKeys!5650 (_ BitVec 32)) (zeroValue!5754 V!36799) (minValue!5754 V!36799) (_size!2621 (_ BitVec 32)) (_keys!11060 array!63918) (_values!5941 array!63920) (_vacant!2621 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5132)

(declare-fun array_inv!23717 (array!63918) Bool)

(declare-fun array_inv!23718 (array!63920) Bool)

(assert (=> b!1022481 (= e!576068 (and tp!71711 tp_is_empty!23945 (array_inv!23717 (_keys!11060 thiss!1427)) (array_inv!23718 (_values!5941 thiss!1427)) e!576070))))

(declare-fun b!1022482 () Bool)

(declare-fun res!685017 () Bool)

(declare-fun e!576073 () Bool)

(assert (=> b!1022482 (=> (not res!685017) (not e!576073))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022482 (= res!685017 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!685016 () Bool)

(assert (=> start!89220 (=> (not res!685016) (not e!576073))))

(declare-fun valid!1919 (LongMapFixedSize!5132) Bool)

(assert (=> start!89220 (= res!685016 (valid!1919 thiss!1427))))

(assert (=> start!89220 e!576073))

(assert (=> start!89220 e!576068))

(assert (=> start!89220 true))

(declare-fun b!1022483 () Bool)

(declare-fun e!576069 () Bool)

(assert (=> b!1022483 (= e!576069 tp_is_empty!23945)))

(declare-fun mapIsEmpty!37335 () Bool)

(declare-fun mapRes!37335 () Bool)

(assert (=> mapIsEmpty!37335 mapRes!37335))

(declare-fun mapNonEmpty!37335 () Bool)

(declare-fun tp!71710 () Bool)

(assert (=> mapNonEmpty!37335 (= mapRes!37335 (and tp!71710 e!576069))))

(declare-fun mapKey!37335 () (_ BitVec 32))

(declare-fun mapValue!37335 () ValueCell!11269)

(declare-fun mapRest!37335 () (Array (_ BitVec 32) ValueCell!11269))

(assert (=> mapNonEmpty!37335 (= (arr!30768 (_values!5941 thiss!1427)) (store mapRest!37335 mapKey!37335 mapValue!37335))))

(declare-fun b!1022484 () Bool)

(assert (=> b!1022484 (= e!576073 (not true))))

(declare-fun lt!450243 () Bool)

(declare-fun lt!450244 () V!36799)

(assert (=> b!1022484 (= lt!450243 (valid!1919 (LongMapFixedSize!5133 (defaultEntry!5918 thiss!1427) (mask!29510 thiss!1427) (bvand (extraKeys!5650 thiss!1427) #b00000000000000000000000000000010) lt!450244 (minValue!5754 thiss!1427) (_size!2621 thiss!1427) (_keys!11060 thiss!1427) (_values!5941 thiss!1427) (_vacant!2621 thiss!1427))))))

(declare-datatypes ((tuple2!15588 0))(
  ( (tuple2!15589 (_1!7804 (_ BitVec 64)) (_2!7804 V!36799)) )
))
(declare-datatypes ((List!21794 0))(
  ( (Nil!21791) (Cons!21790 (h!22988 tuple2!15588) (t!30827 List!21794)) )
))
(declare-datatypes ((ListLongMap!13747 0))(
  ( (ListLongMap!13748 (toList!6889 List!21794)) )
))
(declare-fun -!465 (ListLongMap!13747 (_ BitVec 64)) ListLongMap!13747)

(declare-fun getCurrentListMap!3896 (array!63918 array!63920 (_ BitVec 32) (_ BitVec 32) V!36799 V!36799 (_ BitVec 32) Int) ListLongMap!13747)

(assert (=> b!1022484 (= (-!465 (getCurrentListMap!3896 (_keys!11060 thiss!1427) (_values!5941 thiss!1427) (mask!29510 thiss!1427) (extraKeys!5650 thiss!1427) (zeroValue!5754 thiss!1427) (minValue!5754 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5918 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3896 (_keys!11060 thiss!1427) (_values!5941 thiss!1427) (mask!29510 thiss!1427) (bvand (extraKeys!5650 thiss!1427) #b00000000000000000000000000000010) lt!450244 (minValue!5754 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5918 thiss!1427)))))

(declare-datatypes ((Unit!33282 0))(
  ( (Unit!33283) )
))
(declare-fun lt!450242 () Unit!33282)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!5 (array!63918 array!63920 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36799 V!36799 V!36799 Int) Unit!33282)

(assert (=> b!1022484 (= lt!450242 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!5 (_keys!11060 thiss!1427) (_values!5941 thiss!1427) (mask!29510 thiss!1427) (extraKeys!5650 thiss!1427) (bvand (extraKeys!5650 thiss!1427) #b00000000000000000000000000000010) (zeroValue!5754 thiss!1427) lt!450244 (minValue!5754 thiss!1427) (defaultEntry!5918 thiss!1427)))))

(declare-fun dynLambda!1940 (Int (_ BitVec 64)) V!36799)

(assert (=> b!1022484 (= lt!450244 (dynLambda!1940 (defaultEntry!5918 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1022485 () Bool)

(declare-fun e!576072 () Bool)

(assert (=> b!1022485 (= e!576070 (and e!576072 mapRes!37335))))

(declare-fun condMapEmpty!37335 () Bool)

(declare-fun mapDefault!37335 () ValueCell!11269)

