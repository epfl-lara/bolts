; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90118 () Bool)

(assert start!90118)

(declare-fun b!1031872 () Bool)

(declare-fun b_free!20689 () Bool)

(declare-fun b_next!20689 () Bool)

(assert (=> b!1031872 (= b_free!20689 (not b_next!20689))))

(declare-fun tp!73139 () Bool)

(declare-fun b_and!33163 () Bool)

(assert (=> b!1031872 (= tp!73139 b_and!33163)))

(declare-fun b!1031868 () Bool)

(declare-fun e!582936 () Bool)

(assert (=> b!1031868 (= e!582936 (not true))))

(declare-fun lt!455780 () Bool)

(declare-datatypes ((V!37419 0))(
  ( (V!37420 (val!12255 Int)) )
))
(declare-datatypes ((ValueCell!11501 0))(
  ( (ValueCellFull!11501 (v!14833 V!37419)) (EmptyCell!11501) )
))
(declare-datatypes ((Unit!33766 0))(
  ( (Unit!33767) )
))
(declare-datatypes ((array!64866 0))(
  ( (array!64867 (arr!31231 (Array (_ BitVec 32) (_ BitVec 64))) (size!31749 (_ BitVec 32))) )
))
(declare-datatypes ((array!64868 0))(
  ( (array!64869 (arr!31232 (Array (_ BitVec 32) ValueCell!11501)) (size!31750 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5596 0))(
  ( (LongMapFixedSize!5597 (defaultEntry!6172 Int) (mask!29973 (_ BitVec 32)) (extraKeys!5904 (_ BitVec 32)) (zeroValue!6008 V!37419) (minValue!6008 V!37419) (_size!2853 (_ BitVec 32)) (_keys!11342 array!64866) (_values!6195 array!64868) (_vacant!2853 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15810 0))(
  ( (tuple2!15811 (_1!7915 Unit!33766) (_2!7915 LongMapFixedSize!5596)) )
))
(declare-fun lt!455788 () tuple2!15810)

(declare-fun valid!2069 (LongMapFixedSize!5596) Bool)

(assert (=> b!1031868 (= lt!455780 (valid!2069 (_2!7915 lt!455788)))))

(declare-fun lt!455779 () Unit!33766)

(declare-fun e!582937 () Unit!33766)

(assert (=> b!1031868 (= lt!455779 e!582937)))

(declare-fun c!104219 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15812 0))(
  ( (tuple2!15813 (_1!7916 (_ BitVec 64)) (_2!7916 V!37419)) )
))
(declare-datatypes ((List!22002 0))(
  ( (Nil!21999) (Cons!21998 (h!23200 tuple2!15812) (t!31193 List!22002)) )
))
(declare-datatypes ((ListLongMap!13859 0))(
  ( (ListLongMap!13860 (toList!6945 List!22002)) )
))
(declare-fun contains!6024 (ListLongMap!13859 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3952 (array!64866 array!64868 (_ BitVec 32) (_ BitVec 32) V!37419 V!37419 (_ BitVec 32) Int) ListLongMap!13859)

(assert (=> b!1031868 (= c!104219 (contains!6024 (getCurrentListMap!3952 (_keys!11342 (_2!7915 lt!455788)) (_values!6195 (_2!7915 lt!455788)) (mask!29973 (_2!7915 lt!455788)) (extraKeys!5904 (_2!7915 lt!455788)) (zeroValue!6008 (_2!7915 lt!455788)) (minValue!6008 (_2!7915 lt!455788)) #b00000000000000000000000000000000 (defaultEntry!6172 (_2!7915 lt!455788))) key!909))))

(declare-fun lt!455781 () array!64866)

(declare-fun lt!455784 () array!64868)

(declare-fun thiss!1427 () LongMapFixedSize!5596)

(declare-fun Unit!33768 () Unit!33766)

(declare-fun Unit!33769 () Unit!33766)

(assert (=> b!1031868 (= lt!455788 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2853 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15811 Unit!33768 (LongMapFixedSize!5597 (defaultEntry!6172 thiss!1427) (mask!29973 thiss!1427) (extraKeys!5904 thiss!1427) (zeroValue!6008 thiss!1427) (minValue!6008 thiss!1427) (bvsub (_size!2853 thiss!1427) #b00000000000000000000000000000001) lt!455781 lt!455784 (bvadd #b00000000000000000000000000000001 (_vacant!2853 thiss!1427)))) (tuple2!15811 Unit!33769 (LongMapFixedSize!5597 (defaultEntry!6172 thiss!1427) (mask!29973 thiss!1427) (extraKeys!5904 thiss!1427) (zeroValue!6008 thiss!1427) (minValue!6008 thiss!1427) (bvsub (_size!2853 thiss!1427) #b00000000000000000000000000000001) lt!455781 lt!455784 (_vacant!2853 thiss!1427)))))))

(declare-fun -!521 (ListLongMap!13859 (_ BitVec 64)) ListLongMap!13859)

(assert (=> b!1031868 (= (-!521 (getCurrentListMap!3952 (_keys!11342 thiss!1427) (_values!6195 thiss!1427) (mask!29973 thiss!1427) (extraKeys!5904 thiss!1427) (zeroValue!6008 thiss!1427) (minValue!6008 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6172 thiss!1427)) key!909) (getCurrentListMap!3952 lt!455781 lt!455784 (mask!29973 thiss!1427) (extraKeys!5904 thiss!1427) (zeroValue!6008 thiss!1427) (minValue!6008 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6172 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9711 0))(
  ( (MissingZero!9711 (index!41214 (_ BitVec 32))) (Found!9711 (index!41215 (_ BitVec 32))) (Intermediate!9711 (undefined!10523 Bool) (index!41216 (_ BitVec 32)) (x!91912 (_ BitVec 32))) (Undefined!9711) (MissingVacant!9711 (index!41217 (_ BitVec 32))) )
))
(declare-fun lt!455782 () SeekEntryResult!9711)

(declare-fun dynLambda!1996 (Int (_ BitVec 64)) V!37419)

(assert (=> b!1031868 (= lt!455784 (array!64869 (store (arr!31232 (_values!6195 thiss!1427)) (index!41215 lt!455782) (ValueCellFull!11501 (dynLambda!1996 (defaultEntry!6172 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31750 (_values!6195 thiss!1427))))))

(declare-fun lt!455789 () Unit!33766)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!45 (array!64866 array!64868 (_ BitVec 32) (_ BitVec 32) V!37419 V!37419 (_ BitVec 32) (_ BitVec 64) Int) Unit!33766)

(assert (=> b!1031868 (= lt!455789 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!45 (_keys!11342 thiss!1427) (_values!6195 thiss!1427) (mask!29973 thiss!1427) (extraKeys!5904 thiss!1427) (zeroValue!6008 thiss!1427) (minValue!6008 thiss!1427) (index!41215 lt!455782) key!909 (defaultEntry!6172 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031868 (not (arrayContainsKey!0 lt!455781 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455785 () Unit!33766)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64866 (_ BitVec 32) (_ BitVec 64)) Unit!33766)

(assert (=> b!1031868 (= lt!455785 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11342 thiss!1427) (index!41215 lt!455782) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64866 (_ BitVec 32)) Bool)

(assert (=> b!1031868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455781 (mask!29973 thiss!1427))))

(declare-fun lt!455790 () Unit!33766)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64866 (_ BitVec 32) (_ BitVec 32)) Unit!33766)

(assert (=> b!1031868 (= lt!455790 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11342 thiss!1427) (index!41215 lt!455782) (mask!29973 thiss!1427)))))

(declare-datatypes ((List!22003 0))(
  ( (Nil!22000) (Cons!21999 (h!23201 (_ BitVec 64)) (t!31194 List!22003)) )
))
(declare-fun arrayNoDuplicates!0 (array!64866 (_ BitVec 32) List!22003) Bool)

(assert (=> b!1031868 (arrayNoDuplicates!0 lt!455781 #b00000000000000000000000000000000 Nil!22000)))

(declare-fun lt!455786 () Unit!33766)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64866 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22003) Unit!33766)

(assert (=> b!1031868 (= lt!455786 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11342 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41215 lt!455782) #b00000000000000000000000000000000 Nil!22000))))

(declare-fun arrayCountValidKeys!0 (array!64866 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031868 (= (arrayCountValidKeys!0 lt!455781 #b00000000000000000000000000000000 (size!31749 (_keys!11342 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11342 thiss!1427) #b00000000000000000000000000000000 (size!31749 (_keys!11342 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031868 (= lt!455781 (array!64867 (store (arr!31231 (_keys!11342 thiss!1427)) (index!41215 lt!455782) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31749 (_keys!11342 thiss!1427))))))

(declare-fun lt!455787 () Unit!33766)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64866 (_ BitVec 32) (_ BitVec 64)) Unit!33766)

(assert (=> b!1031868 (= lt!455787 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11342 thiss!1427) (index!41215 lt!455782) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031869 () Bool)

(declare-fun e!582934 () Bool)

(assert (=> b!1031869 (= e!582934 e!582936)))

(declare-fun res!689922 () Bool)

(assert (=> b!1031869 (=> (not res!689922) (not e!582936))))

(assert (=> b!1031869 (= res!689922 (is-Found!9711 lt!455782))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64866 (_ BitVec 32)) SeekEntryResult!9711)

(assert (=> b!1031869 (= lt!455782 (seekEntry!0 key!909 (_keys!11342 thiss!1427) (mask!29973 thiss!1427)))))

(declare-fun res!689920 () Bool)

(assert (=> start!90118 (=> (not res!689920) (not e!582934))))

(assert (=> start!90118 (= res!689920 (valid!2069 thiss!1427))))

(assert (=> start!90118 e!582934))

(declare-fun e!582933 () Bool)

(assert (=> start!90118 e!582933))

(assert (=> start!90118 true))

(declare-fun b!1031870 () Bool)

(declare-fun e!582928 () Bool)

(assert (=> b!1031870 (= e!582928 false)))

(declare-fun b!1031871 () Bool)

(declare-fun Unit!33770 () Unit!33766)

(assert (=> b!1031871 (= e!582937 Unit!33770)))

(declare-fun tp_is_empty!24409 () Bool)

(declare-fun e!582932 () Bool)

(declare-fun array_inv!24015 (array!64866) Bool)

(declare-fun array_inv!24016 (array!64868) Bool)

(assert (=> b!1031872 (= e!582933 (and tp!73139 tp_is_empty!24409 (array_inv!24015 (_keys!11342 thiss!1427)) (array_inv!24016 (_values!6195 thiss!1427)) e!582932))))

(declare-fun b!1031873 () Bool)

(declare-fun Unit!33771 () Unit!33766)

(assert (=> b!1031873 (= e!582937 Unit!33771)))

(declare-fun lt!455783 () Unit!33766)

(declare-fun lemmaKeyInListMapIsInArray!354 (array!64866 array!64868 (_ BitVec 32) (_ BitVec 32) V!37419 V!37419 (_ BitVec 64) Int) Unit!33766)

(assert (=> b!1031873 (= lt!455783 (lemmaKeyInListMapIsInArray!354 (_keys!11342 (_2!7915 lt!455788)) (_values!6195 (_2!7915 lt!455788)) (mask!29973 (_2!7915 lt!455788)) (extraKeys!5904 (_2!7915 lt!455788)) (zeroValue!6008 (_2!7915 lt!455788)) (minValue!6008 (_2!7915 lt!455788)) key!909 (defaultEntry!6172 (_2!7915 lt!455788))))))

(declare-fun c!104218 () Bool)

(assert (=> b!1031873 (= c!104218 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!689921 () Bool)

(declare-fun e!582929 () Bool)

(assert (=> b!1031873 (= res!689921 e!582929)))

(assert (=> b!1031873 (=> (not res!689921) (not e!582928))))

(assert (=> b!1031873 e!582928))

(declare-fun b!1031874 () Bool)

(assert (=> b!1031874 (= e!582929 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5904 (_2!7915 lt!455788)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5904 (_2!7915 lt!455788)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1031875 () Bool)

(declare-fun e!582930 () Bool)

(declare-fun mapRes!38067 () Bool)

(assert (=> b!1031875 (= e!582932 (and e!582930 mapRes!38067))))

(declare-fun condMapEmpty!38067 () Bool)

(declare-fun mapDefault!38067 () ValueCell!11501)

