; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90068 () Bool)

(assert start!90068)

(declare-fun b!1030980 () Bool)

(declare-fun b_free!20639 () Bool)

(declare-fun b_next!20639 () Bool)

(assert (=> b!1030980 (= b_free!20639 (not b_next!20639))))

(declare-fun tp!72989 () Bool)

(declare-fun b_and!33063 () Bool)

(assert (=> b!1030980 (= tp!72989 b_and!33063)))

(declare-fun b!1030973 () Bool)

(declare-fun e!582292 () Bool)

(assert (=> b!1030973 (= e!582292 true)))

(declare-fun lt!454995 () Bool)

(declare-datatypes ((V!37351 0))(
  ( (V!37352 (val!12230 Int)) )
))
(declare-datatypes ((ValueCell!11476 0))(
  ( (ValueCellFull!11476 (v!14808 V!37351)) (EmptyCell!11476) )
))
(declare-datatypes ((Unit!33674 0))(
  ( (Unit!33675) )
))
(declare-datatypes ((array!64766 0))(
  ( (array!64767 (arr!31181 (Array (_ BitVec 32) (_ BitVec 64))) (size!31699 (_ BitVec 32))) )
))
(declare-datatypes ((array!64768 0))(
  ( (array!64769 (arr!31182 (Array (_ BitVec 32) ValueCell!11476)) (size!31700 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5546 0))(
  ( (LongMapFixedSize!5547 (defaultEntry!6147 Int) (mask!29930 (_ BitVec 32)) (extraKeys!5879 (_ BitVec 32)) (zeroValue!5983 V!37351) (minValue!5983 V!37351) (_size!2828 (_ BitVec 32)) (_keys!11317 array!64766) (_values!6170 array!64768) (_vacant!2828 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15726 0))(
  ( (tuple2!15727 (_1!7873 Unit!33674) (_2!7873 LongMapFixedSize!5546)) )
))
(declare-fun lt!454993 () tuple2!15726)

(declare-datatypes ((List!21965 0))(
  ( (Nil!21962) (Cons!21961 (h!23163 (_ BitVec 64)) (t!31106 List!21965)) )
))
(declare-fun arrayNoDuplicates!0 (array!64766 (_ BitVec 32) List!21965) Bool)

(assert (=> b!1030973 (= lt!454995 (arrayNoDuplicates!0 (_keys!11317 (_2!7873 lt!454993)) #b00000000000000000000000000000000 Nil!21962))))

(declare-fun b!1030974 () Bool)

(declare-fun res!689459 () Bool)

(declare-fun e!582293 () Bool)

(assert (=> b!1030974 (=> (not res!689459) (not e!582293))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1030974 (= res!689459 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030975 () Bool)

(declare-fun e!582295 () Bool)

(declare-fun tp_is_empty!24359 () Bool)

(assert (=> b!1030975 (= e!582295 tp_is_empty!24359)))

(declare-fun mapIsEmpty!37992 () Bool)

(declare-fun mapRes!37992 () Bool)

(assert (=> mapIsEmpty!37992 mapRes!37992))

(declare-fun b!1030976 () Bool)

(declare-fun e!582291 () Bool)

(assert (=> b!1030976 (= e!582293 e!582291)))

(declare-fun res!689456 () Bool)

(assert (=> b!1030976 (=> (not res!689456) (not e!582291))))

(declare-datatypes ((SeekEntryResult!9689 0))(
  ( (MissingZero!9689 (index!41126 (_ BitVec 32))) (Found!9689 (index!41127 (_ BitVec 32))) (Intermediate!9689 (undefined!10501 Bool) (index!41128 (_ BitVec 32)) (x!91768 (_ BitVec 32))) (Undefined!9689) (MissingVacant!9689 (index!41129 (_ BitVec 32))) )
))
(declare-fun lt!454991 () SeekEntryResult!9689)

(assert (=> b!1030976 (= res!689456 (is-Found!9689 lt!454991))))

(declare-fun thiss!1427 () LongMapFixedSize!5546)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64766 (_ BitVec 32)) SeekEntryResult!9689)

(assert (=> b!1030976 (= lt!454991 (seekEntry!0 key!909 (_keys!11317 thiss!1427) (mask!29930 thiss!1427)))))

(declare-fun b!1030977 () Bool)

(assert (=> b!1030977 (= e!582291 (not e!582292))))

(declare-fun res!689454 () Bool)

(assert (=> b!1030977 (=> res!689454 e!582292)))

(declare-datatypes ((tuple2!15728 0))(
  ( (tuple2!15729 (_1!7874 (_ BitVec 64)) (_2!7874 V!37351)) )
))
(declare-datatypes ((List!21966 0))(
  ( (Nil!21963) (Cons!21962 (h!23164 tuple2!15728) (t!31107 List!21966)) )
))
(declare-datatypes ((ListLongMap!13823 0))(
  ( (ListLongMap!13824 (toList!6927 List!21966)) )
))
(declare-fun contains!6006 (ListLongMap!13823 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3934 (array!64766 array!64768 (_ BitVec 32) (_ BitVec 32) V!37351 V!37351 (_ BitVec 32) Int) ListLongMap!13823)

(assert (=> b!1030977 (= res!689454 (not (contains!6006 (getCurrentListMap!3934 (_keys!11317 (_2!7873 lt!454993)) (_values!6170 (_2!7873 lt!454993)) (mask!29930 (_2!7873 lt!454993)) (extraKeys!5879 (_2!7873 lt!454993)) (zeroValue!5983 (_2!7873 lt!454993)) (minValue!5983 (_2!7873 lt!454993)) #b00000000000000000000000000000000 (defaultEntry!6147 (_2!7873 lt!454993))) key!909)))))

(declare-fun lt!454998 () array!64766)

(declare-fun lt!454994 () array!64768)

(declare-fun Unit!33676 () Unit!33674)

(declare-fun Unit!33677 () Unit!33674)

(assert (=> b!1030977 (= lt!454993 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2828 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15727 Unit!33676 (LongMapFixedSize!5547 (defaultEntry!6147 thiss!1427) (mask!29930 thiss!1427) (extraKeys!5879 thiss!1427) (zeroValue!5983 thiss!1427) (minValue!5983 thiss!1427) (bvsub (_size!2828 thiss!1427) #b00000000000000000000000000000001) lt!454998 lt!454994 (bvadd #b00000000000000000000000000000001 (_vacant!2828 thiss!1427)))) (tuple2!15727 Unit!33677 (LongMapFixedSize!5547 (defaultEntry!6147 thiss!1427) (mask!29930 thiss!1427) (extraKeys!5879 thiss!1427) (zeroValue!5983 thiss!1427) (minValue!5983 thiss!1427) (bvsub (_size!2828 thiss!1427) #b00000000000000000000000000000001) lt!454998 lt!454994 (_vacant!2828 thiss!1427)))))))

(declare-fun -!503 (ListLongMap!13823 (_ BitVec 64)) ListLongMap!13823)

(assert (=> b!1030977 (= (-!503 (getCurrentListMap!3934 (_keys!11317 thiss!1427) (_values!6170 thiss!1427) (mask!29930 thiss!1427) (extraKeys!5879 thiss!1427) (zeroValue!5983 thiss!1427) (minValue!5983 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6147 thiss!1427)) key!909) (getCurrentListMap!3934 lt!454998 lt!454994 (mask!29930 thiss!1427) (extraKeys!5879 thiss!1427) (zeroValue!5983 thiss!1427) (minValue!5983 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6147 thiss!1427)))))

(declare-fun dynLambda!1978 (Int (_ BitVec 64)) V!37351)

(assert (=> b!1030977 (= lt!454994 (array!64769 (store (arr!31182 (_values!6170 thiss!1427)) (index!41127 lt!454991) (ValueCellFull!11476 (dynLambda!1978 (defaultEntry!6147 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31700 (_values!6170 thiss!1427))))))

(declare-fun lt!454989 () Unit!33674)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!27 (array!64766 array!64768 (_ BitVec 32) (_ BitVec 32) V!37351 V!37351 (_ BitVec 32) (_ BitVec 64) Int) Unit!33674)

(assert (=> b!1030977 (= lt!454989 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!27 (_keys!11317 thiss!1427) (_values!6170 thiss!1427) (mask!29930 thiss!1427) (extraKeys!5879 thiss!1427) (zeroValue!5983 thiss!1427) (minValue!5983 thiss!1427) (index!41127 lt!454991) key!909 (defaultEntry!6147 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030977 (not (arrayContainsKey!0 lt!454998 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454997 () Unit!33674)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64766 (_ BitVec 32) (_ BitVec 64)) Unit!33674)

(assert (=> b!1030977 (= lt!454997 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11317 thiss!1427) (index!41127 lt!454991) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64766 (_ BitVec 32)) Bool)

(assert (=> b!1030977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454998 (mask!29930 thiss!1427))))

(declare-fun lt!454990 () Unit!33674)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64766 (_ BitVec 32) (_ BitVec 32)) Unit!33674)

(assert (=> b!1030977 (= lt!454990 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11317 thiss!1427) (index!41127 lt!454991) (mask!29930 thiss!1427)))))

(assert (=> b!1030977 (arrayNoDuplicates!0 lt!454998 #b00000000000000000000000000000000 Nil!21962)))

(declare-fun lt!454996 () Unit!33674)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64766 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21965) Unit!33674)

(assert (=> b!1030977 (= lt!454996 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11317 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41127 lt!454991) #b00000000000000000000000000000000 Nil!21962))))

(declare-fun arrayCountValidKeys!0 (array!64766 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030977 (= (arrayCountValidKeys!0 lt!454998 #b00000000000000000000000000000000 (size!31699 (_keys!11317 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11317 thiss!1427) #b00000000000000000000000000000000 (size!31699 (_keys!11317 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030977 (= lt!454998 (array!64767 (store (arr!31181 (_keys!11317 thiss!1427)) (index!41127 lt!454991) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31699 (_keys!11317 thiss!1427))))))

(declare-fun lt!454992 () Unit!33674)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64766 (_ BitVec 32) (_ BitVec 64)) Unit!33674)

(assert (=> b!1030977 (= lt!454992 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11317 thiss!1427) (index!41127 lt!454991) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030978 () Bool)

(declare-fun res!689460 () Bool)

(assert (=> b!1030978 (=> res!689460 e!582292)))

(assert (=> b!1030978 (= res!689460 (or (not (= (size!31700 (_values!6170 (_2!7873 lt!454993))) (bvadd #b00000000000000000000000000000001 (mask!29930 (_2!7873 lt!454993))))) (not (= (size!31699 (_keys!11317 (_2!7873 lt!454993))) (size!31700 (_values!6170 (_2!7873 lt!454993))))) (bvslt (mask!29930 (_2!7873 lt!454993)) #b00000000000000000000000000000000) (bvslt (extraKeys!5879 (_2!7873 lt!454993)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5879 (_2!7873 lt!454993)) #b00000000000000000000000000000011)))))

(declare-fun b!1030979 () Bool)

(declare-fun e!582290 () Bool)

(assert (=> b!1030979 (= e!582290 tp_is_empty!24359)))

(declare-fun e!582294 () Bool)

(declare-fun e!582289 () Bool)

(declare-fun array_inv!23981 (array!64766) Bool)

(declare-fun array_inv!23982 (array!64768) Bool)

(assert (=> b!1030980 (= e!582289 (and tp!72989 tp_is_empty!24359 (array_inv!23981 (_keys!11317 thiss!1427)) (array_inv!23982 (_values!6170 thiss!1427)) e!582294))))

(declare-fun mapNonEmpty!37992 () Bool)

(declare-fun tp!72988 () Bool)

(assert (=> mapNonEmpty!37992 (= mapRes!37992 (and tp!72988 e!582295))))

(declare-fun mapRest!37992 () (Array (_ BitVec 32) ValueCell!11476))

(declare-fun mapValue!37992 () ValueCell!11476)

(declare-fun mapKey!37992 () (_ BitVec 32))

(assert (=> mapNonEmpty!37992 (= (arr!31182 (_values!6170 thiss!1427)) (store mapRest!37992 mapKey!37992 mapValue!37992))))

(declare-fun b!1030981 () Bool)

(assert (=> b!1030981 (= e!582294 (and e!582290 mapRes!37992))))

(declare-fun condMapEmpty!37992 () Bool)

(declare-fun mapDefault!37992 () ValueCell!11476)

