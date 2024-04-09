; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90116 () Bool)

(assert start!90116)

(declare-fun b!1031836 () Bool)

(declare-fun b_free!20687 () Bool)

(declare-fun b_next!20687 () Bool)

(assert (=> b!1031836 (= b_free!20687 (not b_next!20687))))

(declare-fun tp!73133 () Bool)

(declare-fun b_and!33159 () Bool)

(assert (=> b!1031836 (= tp!73133 b_and!33159)))

(declare-fun b!1031830 () Bool)

(declare-fun e!582903 () Bool)

(declare-fun tp_is_empty!24407 () Bool)

(assert (=> b!1031830 (= e!582903 tp_is_empty!24407)))

(declare-fun b!1031831 () Bool)

(declare-fun e!582902 () Bool)

(assert (=> b!1031831 (= e!582902 (not true))))

(declare-fun lt!455751 () Bool)

(declare-datatypes ((V!37415 0))(
  ( (V!37416 (val!12254 Int)) )
))
(declare-datatypes ((ValueCell!11500 0))(
  ( (ValueCellFull!11500 (v!14832 V!37415)) (EmptyCell!11500) )
))
(declare-datatypes ((Unit!33761 0))(
  ( (Unit!33762) )
))
(declare-datatypes ((array!64862 0))(
  ( (array!64863 (arr!31229 (Array (_ BitVec 32) (_ BitVec 64))) (size!31747 (_ BitVec 32))) )
))
(declare-datatypes ((array!64864 0))(
  ( (array!64865 (arr!31230 (Array (_ BitVec 32) ValueCell!11500)) (size!31748 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5594 0))(
  ( (LongMapFixedSize!5595 (defaultEntry!6171 Int) (mask!29970 (_ BitVec 32)) (extraKeys!5903 (_ BitVec 32)) (zeroValue!6007 V!37415) (minValue!6007 V!37415) (_size!2852 (_ BitVec 32)) (_keys!11341 array!64862) (_values!6194 array!64864) (_vacant!2852 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15806 0))(
  ( (tuple2!15807 (_1!7913 Unit!33761) (_2!7913 LongMapFixedSize!5594)) )
))
(declare-fun lt!455745 () tuple2!15806)

(declare-fun valid!2068 (LongMapFixedSize!5594) Bool)

(assert (=> b!1031831 (= lt!455751 (valid!2068 (_2!7913 lt!455745)))))

(declare-fun lt!455749 () Unit!33761)

(declare-fun e!582898 () Unit!33761)

(assert (=> b!1031831 (= lt!455749 e!582898)))

(declare-fun c!104213 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15808 0))(
  ( (tuple2!15809 (_1!7914 (_ BitVec 64)) (_2!7914 V!37415)) )
))
(declare-datatypes ((List!22000 0))(
  ( (Nil!21997) (Cons!21996 (h!23198 tuple2!15808) (t!31189 List!22000)) )
))
(declare-datatypes ((ListLongMap!13857 0))(
  ( (ListLongMap!13858 (toList!6944 List!22000)) )
))
(declare-fun contains!6023 (ListLongMap!13857 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3951 (array!64862 array!64864 (_ BitVec 32) (_ BitVec 32) V!37415 V!37415 (_ BitVec 32) Int) ListLongMap!13857)

(assert (=> b!1031831 (= c!104213 (contains!6023 (getCurrentListMap!3951 (_keys!11341 (_2!7913 lt!455745)) (_values!6194 (_2!7913 lt!455745)) (mask!29970 (_2!7913 lt!455745)) (extraKeys!5903 (_2!7913 lt!455745)) (zeroValue!6007 (_2!7913 lt!455745)) (minValue!6007 (_2!7913 lt!455745)) #b00000000000000000000000000000000 (defaultEntry!6171 (_2!7913 lt!455745))) key!909))))

(declare-fun lt!455743 () array!64862)

(declare-fun lt!455753 () array!64864)

(declare-fun thiss!1427 () LongMapFixedSize!5594)

(declare-fun Unit!33763 () Unit!33761)

(declare-fun Unit!33764 () Unit!33761)

(assert (=> b!1031831 (= lt!455745 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2852 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15807 Unit!33763 (LongMapFixedSize!5595 (defaultEntry!6171 thiss!1427) (mask!29970 thiss!1427) (extraKeys!5903 thiss!1427) (zeroValue!6007 thiss!1427) (minValue!6007 thiss!1427) (bvsub (_size!2852 thiss!1427) #b00000000000000000000000000000001) lt!455743 lt!455753 (bvadd #b00000000000000000000000000000001 (_vacant!2852 thiss!1427)))) (tuple2!15807 Unit!33764 (LongMapFixedSize!5595 (defaultEntry!6171 thiss!1427) (mask!29970 thiss!1427) (extraKeys!5903 thiss!1427) (zeroValue!6007 thiss!1427) (minValue!6007 thiss!1427) (bvsub (_size!2852 thiss!1427) #b00000000000000000000000000000001) lt!455743 lt!455753 (_vacant!2852 thiss!1427)))))))

(declare-fun -!520 (ListLongMap!13857 (_ BitVec 64)) ListLongMap!13857)

(assert (=> b!1031831 (= (-!520 (getCurrentListMap!3951 (_keys!11341 thiss!1427) (_values!6194 thiss!1427) (mask!29970 thiss!1427) (extraKeys!5903 thiss!1427) (zeroValue!6007 thiss!1427) (minValue!6007 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6171 thiss!1427)) key!909) (getCurrentListMap!3951 lt!455743 lt!455753 (mask!29970 thiss!1427) (extraKeys!5903 thiss!1427) (zeroValue!6007 thiss!1427) (minValue!6007 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6171 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9710 0))(
  ( (MissingZero!9710 (index!41210 (_ BitVec 32))) (Found!9710 (index!41211 (_ BitVec 32))) (Intermediate!9710 (undefined!10522 Bool) (index!41212 (_ BitVec 32)) (x!91901 (_ BitVec 32))) (Undefined!9710) (MissingVacant!9710 (index!41213 (_ BitVec 32))) )
))
(declare-fun lt!455744 () SeekEntryResult!9710)

(declare-fun dynLambda!1995 (Int (_ BitVec 64)) V!37415)

(assert (=> b!1031831 (= lt!455753 (array!64865 (store (arr!31230 (_values!6194 thiss!1427)) (index!41211 lt!455744) (ValueCellFull!11500 (dynLambda!1995 (defaultEntry!6171 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31748 (_values!6194 thiss!1427))))))

(declare-fun lt!455754 () Unit!33761)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!44 (array!64862 array!64864 (_ BitVec 32) (_ BitVec 32) V!37415 V!37415 (_ BitVec 32) (_ BitVec 64) Int) Unit!33761)

(assert (=> b!1031831 (= lt!455754 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!44 (_keys!11341 thiss!1427) (_values!6194 thiss!1427) (mask!29970 thiss!1427) (extraKeys!5903 thiss!1427) (zeroValue!6007 thiss!1427) (minValue!6007 thiss!1427) (index!41211 lt!455744) key!909 (defaultEntry!6171 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031831 (not (arrayContainsKey!0 lt!455743 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455748 () Unit!33761)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64862 (_ BitVec 32) (_ BitVec 64)) Unit!33761)

(assert (=> b!1031831 (= lt!455748 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11341 thiss!1427) (index!41211 lt!455744) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64862 (_ BitVec 32)) Bool)

(assert (=> b!1031831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455743 (mask!29970 thiss!1427))))

(declare-fun lt!455752 () Unit!33761)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64862 (_ BitVec 32) (_ BitVec 32)) Unit!33761)

(assert (=> b!1031831 (= lt!455752 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11341 thiss!1427) (index!41211 lt!455744) (mask!29970 thiss!1427)))))

(declare-datatypes ((List!22001 0))(
  ( (Nil!21998) (Cons!21997 (h!23199 (_ BitVec 64)) (t!31190 List!22001)) )
))
(declare-fun arrayNoDuplicates!0 (array!64862 (_ BitVec 32) List!22001) Bool)

(assert (=> b!1031831 (arrayNoDuplicates!0 lt!455743 #b00000000000000000000000000000000 Nil!21998)))

(declare-fun lt!455750 () Unit!33761)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64862 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22001) Unit!33761)

(assert (=> b!1031831 (= lt!455750 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11341 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41211 lt!455744) #b00000000000000000000000000000000 Nil!21998))))

(declare-fun arrayCountValidKeys!0 (array!64862 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031831 (= (arrayCountValidKeys!0 lt!455743 #b00000000000000000000000000000000 (size!31747 (_keys!11341 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11341 thiss!1427) #b00000000000000000000000000000000 (size!31747 (_keys!11341 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031831 (= lt!455743 (array!64863 (store (arr!31229 (_keys!11341 thiss!1427)) (index!41211 lt!455744) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31747 (_keys!11341 thiss!1427))))))

(declare-fun lt!455746 () Unit!33761)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64862 (_ BitVec 32) (_ BitVec 64)) Unit!33761)

(assert (=> b!1031831 (= lt!455746 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11341 thiss!1427) (index!41211 lt!455744) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031832 () Bool)

(declare-fun e!582906 () Bool)

(assert (=> b!1031832 (= e!582906 (arrayContainsKey!0 (_keys!11341 (_2!7913 lt!455745)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1031833 () Bool)

(declare-fun res!689908 () Bool)

(declare-fun e!582905 () Bool)

(assert (=> b!1031833 (=> (not res!689908) (not e!582905))))

(assert (=> b!1031833 (= res!689908 (not (= key!909 (bvneg key!909))))))

(declare-fun res!689907 () Bool)

(assert (=> start!90116 (=> (not res!689907) (not e!582905))))

(assert (=> start!90116 (= res!689907 (valid!2068 thiss!1427))))

(assert (=> start!90116 e!582905))

(declare-fun e!582904 () Bool)

(assert (=> start!90116 e!582904))

(assert (=> start!90116 true))

(declare-fun mapIsEmpty!38064 () Bool)

(declare-fun mapRes!38064 () Bool)

(assert (=> mapIsEmpty!38064 mapRes!38064))

(declare-fun b!1031834 () Bool)

(assert (=> b!1031834 (= e!582906 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5903 (_2!7913 lt!455745)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5903 (_2!7913 lt!455745)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1031835 () Bool)

(declare-fun e!582907 () Bool)

(assert (=> b!1031835 (= e!582907 false)))

(declare-fun e!582901 () Bool)

(declare-fun array_inv!24013 (array!64862) Bool)

(declare-fun array_inv!24014 (array!64864) Bool)

(assert (=> b!1031836 (= e!582904 (and tp!73133 tp_is_empty!24407 (array_inv!24013 (_keys!11341 thiss!1427)) (array_inv!24014 (_values!6194 thiss!1427)) e!582901))))

(declare-fun mapNonEmpty!38064 () Bool)

(declare-fun tp!73132 () Bool)

(assert (=> mapNonEmpty!38064 (= mapRes!38064 (and tp!73132 e!582903))))

(declare-fun mapValue!38064 () ValueCell!11500)

(declare-fun mapRest!38064 () (Array (_ BitVec 32) ValueCell!11500))

(declare-fun mapKey!38064 () (_ BitVec 32))

(assert (=> mapNonEmpty!38064 (= (arr!31230 (_values!6194 thiss!1427)) (store mapRest!38064 mapKey!38064 mapValue!38064))))

(declare-fun b!1031837 () Bool)

(declare-fun Unit!33765 () Unit!33761)

(assert (=> b!1031837 (= e!582898 Unit!33765)))

(declare-fun lt!455747 () Unit!33761)

(declare-fun lemmaKeyInListMapIsInArray!353 (array!64862 array!64864 (_ BitVec 32) (_ BitVec 32) V!37415 V!37415 (_ BitVec 64) Int) Unit!33761)

(assert (=> b!1031837 (= lt!455747 (lemmaKeyInListMapIsInArray!353 (_keys!11341 (_2!7913 lt!455745)) (_values!6194 (_2!7913 lt!455745)) (mask!29970 (_2!7913 lt!455745)) (extraKeys!5903 (_2!7913 lt!455745)) (zeroValue!6007 (_2!7913 lt!455745)) (minValue!6007 (_2!7913 lt!455745)) key!909 (defaultEntry!6171 (_2!7913 lt!455745))))))

(declare-fun c!104212 () Bool)

(assert (=> b!1031837 (= c!104212 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!689910 () Bool)

(assert (=> b!1031837 (= res!689910 e!582906)))

(assert (=> b!1031837 (=> (not res!689910) (not e!582907))))

(assert (=> b!1031837 e!582907))

(declare-fun b!1031838 () Bool)

(declare-fun e!582900 () Bool)

(assert (=> b!1031838 (= e!582900 tp_is_empty!24407)))

(declare-fun b!1031839 () Bool)

(assert (=> b!1031839 (= e!582901 (and e!582900 mapRes!38064))))

(declare-fun condMapEmpty!38064 () Bool)

(declare-fun mapDefault!38064 () ValueCell!11500)

