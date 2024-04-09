; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90002 () Bool)

(assert start!90002)

(declare-fun b!1030205 () Bool)

(declare-fun b_free!20605 () Bool)

(declare-fun b_next!20605 () Bool)

(assert (=> b!1030205 (= b_free!20605 (not b_next!20605))))

(declare-fun tp!72883 () Bool)

(declare-fun b_and!32989 () Bool)

(assert (=> b!1030205 (= tp!72883 b_and!32989)))

(declare-fun b!1030200 () Bool)

(declare-fun res!689028 () Bool)

(declare-fun e!581755 () Bool)

(assert (=> b!1030200 (=> (not res!689028) (not e!581755))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1030200 (= res!689028 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030201 () Bool)

(declare-fun e!581751 () Bool)

(declare-fun e!581757 () Bool)

(assert (=> b!1030201 (= e!581751 (not e!581757))))

(declare-fun res!689025 () Bool)

(assert (=> b!1030201 (=> res!689025 e!581757)))

(declare-datatypes ((V!37307 0))(
  ( (V!37308 (val!12213 Int)) )
))
(declare-datatypes ((ValueCell!11459 0))(
  ( (ValueCellFull!11459 (v!14791 V!37307)) (EmptyCell!11459) )
))
(declare-datatypes ((Unit!33610 0))(
  ( (Unit!33611) )
))
(declare-datatypes ((array!64696 0))(
  ( (array!64697 (arr!31147 (Array (_ BitVec 32) (_ BitVec 64))) (size!31665 (_ BitVec 32))) )
))
(declare-datatypes ((array!64698 0))(
  ( (array!64699 (arr!31148 (Array (_ BitVec 32) ValueCell!11459)) (size!31666 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5512 0))(
  ( (LongMapFixedSize!5513 (defaultEntry!6128 Int) (mask!29897 (_ BitVec 32)) (extraKeys!5860 (_ BitVec 32)) (zeroValue!5964 V!37307) (minValue!5964 V!37307) (_size!2811 (_ BitVec 32)) (_keys!11296 array!64696) (_values!6151 array!64698) (_vacant!2811 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15664 0))(
  ( (tuple2!15665 (_1!7842 Unit!33610) (_2!7842 LongMapFixedSize!5512)) )
))
(declare-fun lt!454377 () tuple2!15664)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030201 (= res!689025 (not (validMask!0 (mask!29897 (_2!7842 lt!454377)))))))

(declare-fun lt!454373 () array!64696)

(declare-fun lt!454376 () array!64698)

(declare-fun thiss!1427 () LongMapFixedSize!5512)

(declare-fun Unit!33612 () Unit!33610)

(declare-fun Unit!33613 () Unit!33610)

(assert (=> b!1030201 (= lt!454377 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2811 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15665 Unit!33612 (LongMapFixedSize!5513 (defaultEntry!6128 thiss!1427) (mask!29897 thiss!1427) (extraKeys!5860 thiss!1427) (zeroValue!5964 thiss!1427) (minValue!5964 thiss!1427) (bvsub (_size!2811 thiss!1427) #b00000000000000000000000000000001) lt!454373 lt!454376 (bvadd #b00000000000000000000000000000001 (_vacant!2811 thiss!1427)))) (tuple2!15665 Unit!33613 (LongMapFixedSize!5513 (defaultEntry!6128 thiss!1427) (mask!29897 thiss!1427) (extraKeys!5860 thiss!1427) (zeroValue!5964 thiss!1427) (minValue!5964 thiss!1427) (bvsub (_size!2811 thiss!1427) #b00000000000000000000000000000001) lt!454373 lt!454376 (_vacant!2811 thiss!1427)))))))

(declare-datatypes ((tuple2!15666 0))(
  ( (tuple2!15667 (_1!7843 (_ BitVec 64)) (_2!7843 V!37307)) )
))
(declare-datatypes ((List!21935 0))(
  ( (Nil!21932) (Cons!21931 (h!23133 tuple2!15666) (t!31042 List!21935)) )
))
(declare-datatypes ((ListLongMap!13793 0))(
  ( (ListLongMap!13794 (toList!6912 List!21935)) )
))
(declare-fun -!488 (ListLongMap!13793 (_ BitVec 64)) ListLongMap!13793)

(declare-fun getCurrentListMap!3919 (array!64696 array!64698 (_ BitVec 32) (_ BitVec 32) V!37307 V!37307 (_ BitVec 32) Int) ListLongMap!13793)

(assert (=> b!1030201 (= (-!488 (getCurrentListMap!3919 (_keys!11296 thiss!1427) (_values!6151 thiss!1427) (mask!29897 thiss!1427) (extraKeys!5860 thiss!1427) (zeroValue!5964 thiss!1427) (minValue!5964 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6128 thiss!1427)) key!909) (getCurrentListMap!3919 lt!454373 lt!454376 (mask!29897 thiss!1427) (extraKeys!5860 thiss!1427) (zeroValue!5964 thiss!1427) (minValue!5964 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6128 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9674 0))(
  ( (MissingZero!9674 (index!41066 (_ BitVec 32))) (Found!9674 (index!41067 (_ BitVec 32))) (Intermediate!9674 (undefined!10486 Bool) (index!41068 (_ BitVec 32)) (x!91661 (_ BitVec 32))) (Undefined!9674) (MissingVacant!9674 (index!41069 (_ BitVec 32))) )
))
(declare-fun lt!454374 () SeekEntryResult!9674)

(declare-fun dynLambda!1963 (Int (_ BitVec 64)) V!37307)

(assert (=> b!1030201 (= lt!454376 (array!64699 (store (arr!31148 (_values!6151 thiss!1427)) (index!41067 lt!454374) (ValueCellFull!11459 (dynLambda!1963 (defaultEntry!6128 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31666 (_values!6151 thiss!1427))))))

(declare-fun lt!454375 () Unit!33610)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!12 (array!64696 array!64698 (_ BitVec 32) (_ BitVec 32) V!37307 V!37307 (_ BitVec 32) (_ BitVec 64) Int) Unit!33610)

(assert (=> b!1030201 (= lt!454375 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!12 (_keys!11296 thiss!1427) (_values!6151 thiss!1427) (mask!29897 thiss!1427) (extraKeys!5860 thiss!1427) (zeroValue!5964 thiss!1427) (minValue!5964 thiss!1427) (index!41067 lt!454374) key!909 (defaultEntry!6128 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030201 (not (arrayContainsKey!0 lt!454373 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454378 () Unit!33610)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64696 (_ BitVec 32) (_ BitVec 64)) Unit!33610)

(assert (=> b!1030201 (= lt!454378 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11296 thiss!1427) (index!41067 lt!454374) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64696 (_ BitVec 32)) Bool)

(assert (=> b!1030201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454373 (mask!29897 thiss!1427))))

(declare-fun lt!454371 () Unit!33610)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64696 (_ BitVec 32) (_ BitVec 32)) Unit!33610)

(assert (=> b!1030201 (= lt!454371 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11296 thiss!1427) (index!41067 lt!454374) (mask!29897 thiss!1427)))))

(declare-datatypes ((List!21936 0))(
  ( (Nil!21933) (Cons!21932 (h!23134 (_ BitVec 64)) (t!31043 List!21936)) )
))
(declare-fun arrayNoDuplicates!0 (array!64696 (_ BitVec 32) List!21936) Bool)

(assert (=> b!1030201 (arrayNoDuplicates!0 lt!454373 #b00000000000000000000000000000000 Nil!21933)))

(declare-fun lt!454372 () Unit!33610)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64696 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21936) Unit!33610)

(assert (=> b!1030201 (= lt!454372 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11296 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41067 lt!454374) #b00000000000000000000000000000000 Nil!21933))))

(declare-fun arrayCountValidKeys!0 (array!64696 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030201 (= (arrayCountValidKeys!0 lt!454373 #b00000000000000000000000000000000 (size!31665 (_keys!11296 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11296 thiss!1427) #b00000000000000000000000000000000 (size!31665 (_keys!11296 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030201 (= lt!454373 (array!64697 (store (arr!31147 (_keys!11296 thiss!1427)) (index!41067 lt!454374) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31665 (_keys!11296 thiss!1427))))))

(declare-fun lt!454370 () Unit!33610)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64696 (_ BitVec 32) (_ BitVec 64)) Unit!33610)

(assert (=> b!1030201 (= lt!454370 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11296 thiss!1427) (index!41067 lt!454374) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!37938 () Bool)

(declare-fun mapRes!37938 () Bool)

(declare-fun tp!72884 () Bool)

(declare-fun e!581752 () Bool)

(assert (=> mapNonEmpty!37938 (= mapRes!37938 (and tp!72884 e!581752))))

(declare-fun mapValue!37938 () ValueCell!11459)

(declare-fun mapKey!37938 () (_ BitVec 32))

(declare-fun mapRest!37938 () (Array (_ BitVec 32) ValueCell!11459))

(assert (=> mapNonEmpty!37938 (= (arr!31148 (_values!6151 thiss!1427)) (store mapRest!37938 mapKey!37938 mapValue!37938))))

(declare-fun b!1030202 () Bool)

(declare-fun e!581754 () Bool)

(declare-fun e!581756 () Bool)

(assert (=> b!1030202 (= e!581754 (and e!581756 mapRes!37938))))

(declare-fun condMapEmpty!37938 () Bool)

(declare-fun mapDefault!37938 () ValueCell!11459)

