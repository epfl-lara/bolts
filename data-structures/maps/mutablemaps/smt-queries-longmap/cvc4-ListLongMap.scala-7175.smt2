; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91736 () Bool)

(assert start!91736)

(declare-fun b!1043731 () Bool)

(declare-fun b_free!21107 () Bool)

(declare-fun b_next!21107 () Bool)

(assert (=> b!1043731 (= b_free!21107 (not b_next!21107))))

(declare-fun tp!74562 () Bool)

(declare-fun b_and!33673 () Bool)

(assert (=> b!1043731 (= tp!74562 b_and!33673)))

(declare-fun b!1043730 () Bool)

(declare-fun e!591468 () Bool)

(declare-datatypes ((SeekEntryResult!9835 0))(
  ( (MissingZero!9835 (index!41710 (_ BitVec 32))) (Found!9835 (index!41711 (_ BitVec 32))) (Intermediate!9835 (undefined!10647 Bool) (index!41712 (_ BitVec 32)) (x!93192 (_ BitVec 32))) (Undefined!9835) (MissingVacant!9835 (index!41713 (_ BitVec 32))) )
))
(declare-fun lt!460186 () SeekEntryResult!9835)

(declare-datatypes ((V!37975 0))(
  ( (V!37976 (val!12464 Int)) )
))
(declare-datatypes ((ValueCell!11710 0))(
  ( (ValueCellFull!11710 (v!15056 V!37975)) (EmptyCell!11710) )
))
(declare-datatypes ((array!65802 0))(
  ( (array!65803 (arr!31649 (Array (_ BitVec 32) (_ BitVec 64))) (size!32185 (_ BitVec 32))) )
))
(declare-datatypes ((array!65804 0))(
  ( (array!65805 (arr!31650 (Array (_ BitVec 32) ValueCell!11710)) (size!32186 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6014 0))(
  ( (LongMapFixedSize!6015 (defaultEntry!6391 Int) (mask!30482 (_ BitVec 32)) (extraKeys!6119 (_ BitVec 32)) (zeroValue!6225 V!37975) (minValue!6225 V!37975) (_size!3062 (_ BitVec 32)) (_keys!11648 array!65802) (_values!6414 array!65804) (_vacant!3062 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6014)

(assert (=> b!1043730 (= e!591468 (not (and (bvsge (index!41711 lt!460186) #b00000000000000000000000000000000) (bvslt (index!41711 lt!460186) (size!32186 (_values!6414 thiss!1427))))))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun lt!460183 () array!65802)

(declare-datatypes ((tuple2!15850 0))(
  ( (tuple2!15851 (_1!7935 (_ BitVec 64)) (_2!7935 V!37975)) )
))
(declare-datatypes ((List!22126 0))(
  ( (Nil!22123) (Cons!22122 (h!23330 tuple2!15850) (t!31359 List!22126)) )
))
(declare-datatypes ((ListLongMap!13887 0))(
  ( (ListLongMap!13888 (toList!6959 List!22126)) )
))
(declare-fun -!535 (ListLongMap!13887 (_ BitVec 64)) ListLongMap!13887)

(declare-fun getCurrentListMap!3965 (array!65802 array!65804 (_ BitVec 32) (_ BitVec 32) V!37975 V!37975 (_ BitVec 32) Int) ListLongMap!13887)

(declare-fun dynLambda!2009 (Int (_ BitVec 64)) V!37975)

(assert (=> b!1043730 (= (-!535 (getCurrentListMap!3965 (_keys!11648 thiss!1427) (_values!6414 thiss!1427) (mask!30482 thiss!1427) (extraKeys!6119 thiss!1427) (zeroValue!6225 thiss!1427) (minValue!6225 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6391 thiss!1427)) key!909) (getCurrentListMap!3965 lt!460183 (array!65805 (store (arr!31650 (_values!6414 thiss!1427)) (index!41711 lt!460186) (ValueCellFull!11710 (dynLambda!2009 (defaultEntry!6391 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32186 (_values!6414 thiss!1427))) (mask!30482 thiss!1427) (extraKeys!6119 thiss!1427) (zeroValue!6225 thiss!1427) (minValue!6225 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6391 thiss!1427)))))

(declare-datatypes ((Unit!34082 0))(
  ( (Unit!34083) )
))
(declare-fun lt!460189 () Unit!34082)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!55 (array!65802 array!65804 (_ BitVec 32) (_ BitVec 32) V!37975 V!37975 (_ BitVec 32) (_ BitVec 64) Int) Unit!34082)

(assert (=> b!1043730 (= lt!460189 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!55 (_keys!11648 thiss!1427) (_values!6414 thiss!1427) (mask!30482 thiss!1427) (extraKeys!6119 thiss!1427) (zeroValue!6225 thiss!1427) (minValue!6225 thiss!1427) (index!41711 lt!460186) key!909 (defaultEntry!6391 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043730 (not (arrayContainsKey!0 lt!460183 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!460184 () Unit!34082)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65802 (_ BitVec 32) (_ BitVec 64)) Unit!34082)

(assert (=> b!1043730 (= lt!460184 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11648 thiss!1427) (index!41711 lt!460186) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65802 (_ BitVec 32)) Bool)

(assert (=> b!1043730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460183 (mask!30482 thiss!1427))))

(declare-fun lt!460185 () Unit!34082)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65802 (_ BitVec 32) (_ BitVec 32)) Unit!34082)

(assert (=> b!1043730 (= lt!460185 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11648 thiss!1427) (index!41711 lt!460186) (mask!30482 thiss!1427)))))

(declare-datatypes ((List!22127 0))(
  ( (Nil!22124) (Cons!22123 (h!23331 (_ BitVec 64)) (t!31360 List!22127)) )
))
(declare-fun arrayNoDuplicates!0 (array!65802 (_ BitVec 32) List!22127) Bool)

(assert (=> b!1043730 (arrayNoDuplicates!0 lt!460183 #b00000000000000000000000000000000 Nil!22124)))

(declare-fun lt!460187 () Unit!34082)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65802 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22127) Unit!34082)

(assert (=> b!1043730 (= lt!460187 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11648 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41711 lt!460186) #b00000000000000000000000000000000 Nil!22124))))

(declare-fun arrayCountValidKeys!0 (array!65802 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043730 (= (arrayCountValidKeys!0 lt!460183 #b00000000000000000000000000000000 (size!32185 (_keys!11648 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11648 thiss!1427) #b00000000000000000000000000000000 (size!32185 (_keys!11648 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043730 (= lt!460183 (array!65803 (store (arr!31649 (_keys!11648 thiss!1427)) (index!41711 lt!460186) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32185 (_keys!11648 thiss!1427))))))

(declare-fun lt!460188 () Unit!34082)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65802 (_ BitVec 32) (_ BitVec 64)) Unit!34082)

(assert (=> b!1043730 (= lt!460188 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11648 thiss!1427) (index!41711 lt!460186) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38864 () Bool)

(declare-fun mapRes!38864 () Bool)

(declare-fun tp!74563 () Bool)

(declare-fun e!591470 () Bool)

(assert (=> mapNonEmpty!38864 (= mapRes!38864 (and tp!74563 e!591470))))

(declare-fun mapRest!38864 () (Array (_ BitVec 32) ValueCell!11710))

(declare-fun mapKey!38864 () (_ BitVec 32))

(declare-fun mapValue!38864 () ValueCell!11710)

(assert (=> mapNonEmpty!38864 (= (arr!31650 (_values!6414 thiss!1427)) (store mapRest!38864 mapKey!38864 mapValue!38864))))

(declare-fun e!591469 () Bool)

(declare-fun tp_is_empty!24827 () Bool)

(declare-fun e!591467 () Bool)

(declare-fun array_inv!24297 (array!65802) Bool)

(declare-fun array_inv!24298 (array!65804) Bool)

(assert (=> b!1043731 (= e!591469 (and tp!74562 tp_is_empty!24827 (array_inv!24297 (_keys!11648 thiss!1427)) (array_inv!24298 (_values!6414 thiss!1427)) e!591467))))

(declare-fun b!1043732 () Bool)

(declare-fun res!695377 () Bool)

(declare-fun e!591466 () Bool)

(assert (=> b!1043732 (=> (not res!695377) (not e!591466))))

(assert (=> b!1043732 (= res!695377 (not (= key!909 (bvneg key!909))))))

(declare-fun res!695375 () Bool)

(assert (=> start!91736 (=> (not res!695375) (not e!591466))))

(declare-fun valid!2211 (LongMapFixedSize!6014) Bool)

(assert (=> start!91736 (= res!695375 (valid!2211 thiss!1427))))

(assert (=> start!91736 e!591466))

(assert (=> start!91736 e!591469))

(assert (=> start!91736 true))

(declare-fun b!1043733 () Bool)

(declare-fun e!591472 () Bool)

(assert (=> b!1043733 (= e!591472 tp_is_empty!24827)))

(declare-fun b!1043734 () Bool)

(assert (=> b!1043734 (= e!591466 e!591468)))

(declare-fun res!695376 () Bool)

(assert (=> b!1043734 (=> (not res!695376) (not e!591468))))

(assert (=> b!1043734 (= res!695376 (is-Found!9835 lt!460186))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65802 (_ BitVec 32)) SeekEntryResult!9835)

(assert (=> b!1043734 (= lt!460186 (seekEntry!0 key!909 (_keys!11648 thiss!1427) (mask!30482 thiss!1427)))))

(declare-fun mapIsEmpty!38864 () Bool)

(assert (=> mapIsEmpty!38864 mapRes!38864))

(declare-fun b!1043735 () Bool)

(assert (=> b!1043735 (= e!591467 (and e!591472 mapRes!38864))))

(declare-fun condMapEmpty!38864 () Bool)

(declare-fun mapDefault!38864 () ValueCell!11710)

