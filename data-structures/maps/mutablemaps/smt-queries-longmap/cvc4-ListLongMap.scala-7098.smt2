; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90074 () Bool)

(assert start!90074)

(declare-fun b!1031086 () Bool)

(declare-fun b_free!20645 () Bool)

(declare-fun b_next!20645 () Bool)

(assert (=> b!1031086 (= b_free!20645 (not b_next!20645))))

(declare-fun tp!73006 () Bool)

(declare-fun b_and!33075 () Bool)

(assert (=> b!1031086 (= tp!73006 b_and!33075)))

(declare-fun b!1031078 () Bool)

(declare-fun e!582366 () Bool)

(declare-fun e!582365 () Bool)

(assert (=> b!1031078 (= e!582366 (not e!582365))))

(declare-fun res!689517 () Bool)

(assert (=> b!1031078 (=> res!689517 e!582365)))

(declare-datatypes ((V!37359 0))(
  ( (V!37360 (val!12233 Int)) )
))
(declare-datatypes ((ValueCell!11479 0))(
  ( (ValueCellFull!11479 (v!14811 V!37359)) (EmptyCell!11479) )
))
(declare-datatypes ((Unit!33684 0))(
  ( (Unit!33685) )
))
(declare-datatypes ((array!64778 0))(
  ( (array!64779 (arr!31187 (Array (_ BitVec 32) (_ BitVec 64))) (size!31705 (_ BitVec 32))) )
))
(declare-datatypes ((array!64780 0))(
  ( (array!64781 (arr!31188 (Array (_ BitVec 32) ValueCell!11479)) (size!31706 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5552 0))(
  ( (LongMapFixedSize!5553 (defaultEntry!6150 Int) (mask!29935 (_ BitVec 32)) (extraKeys!5882 (_ BitVec 32)) (zeroValue!5986 V!37359) (minValue!5986 V!37359) (_size!2831 (_ BitVec 32)) (_keys!11320 array!64778) (_values!6173 array!64780) (_vacant!2831 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15736 0))(
  ( (tuple2!15737 (_1!7878 Unit!33684) (_2!7878 LongMapFixedSize!5552)) )
))
(declare-fun lt!455086 () tuple2!15736)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15738 0))(
  ( (tuple2!15739 (_1!7879 (_ BitVec 64)) (_2!7879 V!37359)) )
))
(declare-datatypes ((List!21970 0))(
  ( (Nil!21967) (Cons!21966 (h!23168 tuple2!15738) (t!31117 List!21970)) )
))
(declare-datatypes ((ListLongMap!13827 0))(
  ( (ListLongMap!13828 (toList!6929 List!21970)) )
))
(declare-fun contains!6008 (ListLongMap!13827 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3936 (array!64778 array!64780 (_ BitVec 32) (_ BitVec 32) V!37359 V!37359 (_ BitVec 32) Int) ListLongMap!13827)

(assert (=> b!1031078 (= res!689517 (not (contains!6008 (getCurrentListMap!3936 (_keys!11320 (_2!7878 lt!455086)) (_values!6173 (_2!7878 lt!455086)) (mask!29935 (_2!7878 lt!455086)) (extraKeys!5882 (_2!7878 lt!455086)) (zeroValue!5986 (_2!7878 lt!455086)) (minValue!5986 (_2!7878 lt!455086)) #b00000000000000000000000000000000 (defaultEntry!6150 (_2!7878 lt!455086))) key!909)))))

(declare-fun lt!455081 () array!64780)

(declare-fun lt!455087 () array!64778)

(declare-fun thiss!1427 () LongMapFixedSize!5552)

(declare-fun Unit!33686 () Unit!33684)

(declare-fun Unit!33687 () Unit!33684)

(assert (=> b!1031078 (= lt!455086 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2831 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15737 Unit!33686 (LongMapFixedSize!5553 (defaultEntry!6150 thiss!1427) (mask!29935 thiss!1427) (extraKeys!5882 thiss!1427) (zeroValue!5986 thiss!1427) (minValue!5986 thiss!1427) (bvsub (_size!2831 thiss!1427) #b00000000000000000000000000000001) lt!455087 lt!455081 (bvadd #b00000000000000000000000000000001 (_vacant!2831 thiss!1427)))) (tuple2!15737 Unit!33687 (LongMapFixedSize!5553 (defaultEntry!6150 thiss!1427) (mask!29935 thiss!1427) (extraKeys!5882 thiss!1427) (zeroValue!5986 thiss!1427) (minValue!5986 thiss!1427) (bvsub (_size!2831 thiss!1427) #b00000000000000000000000000000001) lt!455087 lt!455081 (_vacant!2831 thiss!1427)))))))

(declare-fun -!505 (ListLongMap!13827 (_ BitVec 64)) ListLongMap!13827)

(assert (=> b!1031078 (= (-!505 (getCurrentListMap!3936 (_keys!11320 thiss!1427) (_values!6173 thiss!1427) (mask!29935 thiss!1427) (extraKeys!5882 thiss!1427) (zeroValue!5986 thiss!1427) (minValue!5986 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6150 thiss!1427)) key!909) (getCurrentListMap!3936 lt!455087 lt!455081 (mask!29935 thiss!1427) (extraKeys!5882 thiss!1427) (zeroValue!5986 thiss!1427) (minValue!5986 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6150 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9692 0))(
  ( (MissingZero!9692 (index!41138 (_ BitVec 32))) (Found!9692 (index!41139 (_ BitVec 32))) (Intermediate!9692 (undefined!10504 Bool) (index!41140 (_ BitVec 32)) (x!91785 (_ BitVec 32))) (Undefined!9692) (MissingVacant!9692 (index!41141 (_ BitVec 32))) )
))
(declare-fun lt!455082 () SeekEntryResult!9692)

(declare-fun dynLambda!1980 (Int (_ BitVec 64)) V!37359)

(assert (=> b!1031078 (= lt!455081 (array!64781 (store (arr!31188 (_values!6173 thiss!1427)) (index!41139 lt!455082) (ValueCellFull!11479 (dynLambda!1980 (defaultEntry!6150 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31706 (_values!6173 thiss!1427))))))

(declare-fun lt!455079 () Unit!33684)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!29 (array!64778 array!64780 (_ BitVec 32) (_ BitVec 32) V!37359 V!37359 (_ BitVec 32) (_ BitVec 64) Int) Unit!33684)

(assert (=> b!1031078 (= lt!455079 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!29 (_keys!11320 thiss!1427) (_values!6173 thiss!1427) (mask!29935 thiss!1427) (extraKeys!5882 thiss!1427) (zeroValue!5986 thiss!1427) (minValue!5986 thiss!1427) (index!41139 lt!455082) key!909 (defaultEntry!6150 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031078 (not (arrayContainsKey!0 lt!455087 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455080 () Unit!33684)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64778 (_ BitVec 32) (_ BitVec 64)) Unit!33684)

(assert (=> b!1031078 (= lt!455080 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11320 thiss!1427) (index!41139 lt!455082) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64778 (_ BitVec 32)) Bool)

(assert (=> b!1031078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455087 (mask!29935 thiss!1427))))

(declare-fun lt!455083 () Unit!33684)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64778 (_ BitVec 32) (_ BitVec 32)) Unit!33684)

(assert (=> b!1031078 (= lt!455083 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11320 thiss!1427) (index!41139 lt!455082) (mask!29935 thiss!1427)))))

(declare-datatypes ((List!21971 0))(
  ( (Nil!21968) (Cons!21967 (h!23169 (_ BitVec 64)) (t!31118 List!21971)) )
))
(declare-fun arrayNoDuplicates!0 (array!64778 (_ BitVec 32) List!21971) Bool)

(assert (=> b!1031078 (arrayNoDuplicates!0 lt!455087 #b00000000000000000000000000000000 Nil!21968)))

(declare-fun lt!455084 () Unit!33684)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64778 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21971) Unit!33684)

(assert (=> b!1031078 (= lt!455084 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11320 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41139 lt!455082) #b00000000000000000000000000000000 Nil!21968))))

(declare-fun arrayCountValidKeys!0 (array!64778 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031078 (= (arrayCountValidKeys!0 lt!455087 #b00000000000000000000000000000000 (size!31705 (_keys!11320 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11320 thiss!1427) #b00000000000000000000000000000000 (size!31705 (_keys!11320 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031078 (= lt!455087 (array!64779 (store (arr!31187 (_keys!11320 thiss!1427)) (index!41139 lt!455082) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31705 (_keys!11320 thiss!1427))))))

(declare-fun lt!455088 () Unit!33684)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64778 (_ BitVec 32) (_ BitVec 64)) Unit!33684)

(assert (=> b!1031078 (= lt!455088 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11320 thiss!1427) (index!41139 lt!455082) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031079 () Bool)

(declare-fun res!689518 () Bool)

(assert (=> b!1031079 (=> res!689518 e!582365)))

(assert (=> b!1031079 (= res!689518 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11320 (_2!7878 lt!455086)) (mask!29935 (_2!7878 lt!455086)))))))

(declare-fun b!1031080 () Bool)

(declare-fun e!582362 () Bool)

(declare-fun tp_is_empty!24365 () Bool)

(assert (=> b!1031080 (= e!582362 tp_is_empty!24365)))

(declare-fun mapIsEmpty!38001 () Bool)

(declare-fun mapRes!38001 () Bool)

(assert (=> mapIsEmpty!38001 mapRes!38001))

(declare-fun b!1031082 () Bool)

(declare-fun e!582361 () Bool)

(assert (=> b!1031082 (= e!582361 tp_is_empty!24365)))

(declare-fun b!1031083 () Bool)

(declare-fun res!689523 () Bool)

(assert (=> b!1031083 (=> res!689523 e!582365)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031083 (= res!689523 (not (validMask!0 (mask!29935 (_2!7878 lt!455086)))))))

(declare-fun b!1031084 () Bool)

(assert (=> b!1031084 (= e!582365 true)))

(declare-fun lt!455085 () Bool)

(assert (=> b!1031084 (= lt!455085 (arrayNoDuplicates!0 (_keys!11320 (_2!7878 lt!455086)) #b00000000000000000000000000000000 Nil!21968))))

(declare-fun b!1031085 () Bool)

(declare-fun res!689521 () Bool)

(assert (=> b!1031085 (=> res!689521 e!582365)))

(assert (=> b!1031085 (= res!689521 (or (not (= (size!31706 (_values!6173 (_2!7878 lt!455086))) (bvadd #b00000000000000000000000000000001 (mask!29935 (_2!7878 lt!455086))))) (not (= (size!31705 (_keys!11320 (_2!7878 lt!455086))) (size!31706 (_values!6173 (_2!7878 lt!455086))))) (bvslt (mask!29935 (_2!7878 lt!455086)) #b00000000000000000000000000000000) (bvslt (extraKeys!5882 (_2!7878 lt!455086)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5882 (_2!7878 lt!455086)) #b00000000000000000000000000000011)))))

(declare-fun e!582360 () Bool)

(declare-fun e!582367 () Bool)

(declare-fun array_inv!23985 (array!64778) Bool)

(declare-fun array_inv!23986 (array!64780) Bool)

(assert (=> b!1031086 (= e!582360 (and tp!73006 tp_is_empty!24365 (array_inv!23985 (_keys!11320 thiss!1427)) (array_inv!23986 (_values!6173 thiss!1427)) e!582367))))

(declare-fun b!1031087 () Bool)

(declare-fun res!689522 () Bool)

(declare-fun e!582363 () Bool)

(assert (=> b!1031087 (=> (not res!689522) (not e!582363))))

(assert (=> b!1031087 (= res!689522 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38001 () Bool)

(declare-fun tp!73007 () Bool)

(assert (=> mapNonEmpty!38001 (= mapRes!38001 (and tp!73007 e!582361))))

(declare-fun mapKey!38001 () (_ BitVec 32))

(declare-fun mapRest!38001 () (Array (_ BitVec 32) ValueCell!11479))

(declare-fun mapValue!38001 () ValueCell!11479)

(assert (=> mapNonEmpty!38001 (= (arr!31188 (_values!6173 thiss!1427)) (store mapRest!38001 mapKey!38001 mapValue!38001))))

(declare-fun b!1031088 () Bool)

(assert (=> b!1031088 (= e!582367 (and e!582362 mapRes!38001))))

(declare-fun condMapEmpty!38001 () Bool)

(declare-fun mapDefault!38001 () ValueCell!11479)

