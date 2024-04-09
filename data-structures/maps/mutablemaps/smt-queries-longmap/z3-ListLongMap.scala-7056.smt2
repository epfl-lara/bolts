; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89428 () Bool)

(assert start!89428)

(declare-fun b!1024777 () Bool)

(declare-fun b_free!20391 () Bool)

(declare-fun b_next!20391 () Bool)

(assert (=> b!1024777 (= b_free!20391 (not b_next!20391))))

(declare-fun tp!72219 () Bool)

(declare-fun b_and!32655 () Bool)

(assert (=> b!1024777 (= tp!72219 b_and!32655)))

(declare-fun b!1024771 () Bool)

(declare-fun res!686196 () Bool)

(declare-fun e!577760 () Bool)

(assert (=> b!1024771 (=> res!686196 e!577760)))

(declare-datatypes ((List!21843 0))(
  ( (Nil!21840) (Cons!21839 (h!23037 (_ BitVec 64)) (t!30912 List!21843)) )
))
(declare-fun noDuplicate!1481 (List!21843) Bool)

(assert (=> b!1024771 (= res!686196 (not (noDuplicate!1481 Nil!21840)))))

(declare-fun b!1024772 () Bool)

(assert (=> b!1024772 (= e!577760 true)))

(declare-fun lt!450698 () Bool)

(declare-datatypes ((V!37021 0))(
  ( (V!37022 (val!12106 Int)) )
))
(declare-datatypes ((ValueCell!11352 0))(
  ( (ValueCellFull!11352 (v!14676 V!37021)) (EmptyCell!11352) )
))
(declare-datatypes ((array!64256 0))(
  ( (array!64257 (arr!30933 (Array (_ BitVec 32) (_ BitVec 64))) (size!31447 (_ BitVec 32))) )
))
(declare-datatypes ((array!64258 0))(
  ( (array!64259 (arr!30934 (Array (_ BitVec 32) ValueCell!11352)) (size!31448 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5298 0))(
  ( (LongMapFixedSize!5299 (defaultEntry!6001 Int) (mask!29654 (_ BitVec 32)) (extraKeys!5733 (_ BitVec 32)) (zeroValue!5837 V!37021) (minValue!5837 V!37021) (_size!2704 (_ BitVec 32)) (_keys!11145 array!64256) (_values!6024 array!64258) (_vacant!2704 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5298)

(declare-fun arrayNoDuplicates!0 (array!64256 (_ BitVec 32) List!21843) Bool)

(assert (=> b!1024772 (= lt!450698 (arrayNoDuplicates!0 (_keys!11145 thiss!1427) #b00000000000000000000000000000000 Nil!21840))))

(declare-fun mapIsEmpty!37595 () Bool)

(declare-fun mapRes!37595 () Bool)

(assert (=> mapIsEmpty!37595 mapRes!37595))

(declare-fun b!1024773 () Bool)

(declare-fun e!577754 () Bool)

(declare-fun e!577756 () Bool)

(assert (=> b!1024773 (= e!577754 e!577756)))

(declare-fun res!686199 () Bool)

(assert (=> b!1024773 (=> (not res!686199) (not e!577756))))

(declare-datatypes ((SeekEntryResult!9593 0))(
  ( (MissingZero!9593 (index!40742 (_ BitVec 32))) (Found!9593 (index!40743 (_ BitVec 32))) (Intermediate!9593 (undefined!10405 Bool) (index!40744 (_ BitVec 32)) (x!91106 (_ BitVec 32))) (Undefined!9593) (MissingVacant!9593 (index!40745 (_ BitVec 32))) )
))
(declare-fun lt!450700 () SeekEntryResult!9593)

(get-info :version)

(assert (=> b!1024773 (= res!686199 ((_ is Found!9593) lt!450700))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64256 (_ BitVec 32)) SeekEntryResult!9593)

(assert (=> b!1024773 (= lt!450700 (seekEntry!0 key!909 (_keys!11145 thiss!1427) (mask!29654 thiss!1427)))))

(declare-fun b!1024774 () Bool)

(assert (=> b!1024774 (= e!577756 (not e!577760))))

(declare-fun res!686198 () Bool)

(assert (=> b!1024774 (=> res!686198 e!577760)))

(assert (=> b!1024774 (= res!686198 (or (bvsge (size!31447 (_keys!11145 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31447 (_keys!11145 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!64256 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024774 (= (arrayCountValidKeys!0 (array!64257 (store (arr!30933 (_keys!11145 thiss!1427)) (index!40743 lt!450700) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31447 (_keys!11145 thiss!1427))) #b00000000000000000000000000000000 (size!31447 (_keys!11145 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11145 thiss!1427) #b00000000000000000000000000000000 (size!31447 (_keys!11145 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33332 0))(
  ( (Unit!33333) )
))
(declare-fun lt!450699 () Unit!33332)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64256 (_ BitVec 32) (_ BitVec 64)) Unit!33332)

(assert (=> b!1024774 (= lt!450699 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11145 thiss!1427) (index!40743 lt!450700) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024775 () Bool)

(declare-fun res!686202 () Bool)

(assert (=> b!1024775 (=> (not res!686202) (not e!577754))))

(assert (=> b!1024775 (= res!686202 (not (= key!909 (bvneg key!909))))))

(declare-fun res!686201 () Bool)

(assert (=> start!89428 (=> (not res!686201) (not e!577754))))

(declare-fun valid!1968 (LongMapFixedSize!5298) Bool)

(assert (=> start!89428 (= res!686201 (valid!1968 thiss!1427))))

(assert (=> start!89428 e!577754))

(declare-fun e!577759 () Bool)

(assert (=> start!89428 e!577759))

(assert (=> start!89428 true))

(declare-fun b!1024776 () Bool)

(declare-fun res!686200 () Bool)

(assert (=> b!1024776 (=> res!686200 e!577760)))

(declare-fun contains!5971 (List!21843 (_ BitVec 64)) Bool)

(assert (=> b!1024776 (= res!686200 (contains!5971 Nil!21840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!577757 () Bool)

(declare-fun tp_is_empty!24111 () Bool)

(declare-fun array_inv!23825 (array!64256) Bool)

(declare-fun array_inv!23826 (array!64258) Bool)

(assert (=> b!1024777 (= e!577759 (and tp!72219 tp_is_empty!24111 (array_inv!23825 (_keys!11145 thiss!1427)) (array_inv!23826 (_values!6024 thiss!1427)) e!577757))))

(declare-fun b!1024778 () Bool)

(declare-fun res!686197 () Bool)

(assert (=> b!1024778 (=> res!686197 e!577760)))

(assert (=> b!1024778 (= res!686197 (contains!5971 Nil!21840 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024779 () Bool)

(declare-fun e!577753 () Bool)

(assert (=> b!1024779 (= e!577753 tp_is_empty!24111)))

(declare-fun mapNonEmpty!37595 () Bool)

(declare-fun tp!72220 () Bool)

(declare-fun e!577755 () Bool)

(assert (=> mapNonEmpty!37595 (= mapRes!37595 (and tp!72220 e!577755))))

(declare-fun mapKey!37595 () (_ BitVec 32))

(declare-fun mapValue!37595 () ValueCell!11352)

(declare-fun mapRest!37595 () (Array (_ BitVec 32) ValueCell!11352))

(assert (=> mapNonEmpty!37595 (= (arr!30934 (_values!6024 thiss!1427)) (store mapRest!37595 mapKey!37595 mapValue!37595))))

(declare-fun b!1024780 () Bool)

(assert (=> b!1024780 (= e!577757 (and e!577753 mapRes!37595))))

(declare-fun condMapEmpty!37595 () Bool)

(declare-fun mapDefault!37595 () ValueCell!11352)

(assert (=> b!1024780 (= condMapEmpty!37595 (= (arr!30934 (_values!6024 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11352)) mapDefault!37595)))))

(declare-fun b!1024781 () Bool)

(assert (=> b!1024781 (= e!577755 tp_is_empty!24111)))

(assert (= (and start!89428 res!686201) b!1024775))

(assert (= (and b!1024775 res!686202) b!1024773))

(assert (= (and b!1024773 res!686199) b!1024774))

(assert (= (and b!1024774 (not res!686198)) b!1024771))

(assert (= (and b!1024771 (not res!686196)) b!1024776))

(assert (= (and b!1024776 (not res!686200)) b!1024778))

(assert (= (and b!1024778 (not res!686197)) b!1024772))

(assert (= (and b!1024780 condMapEmpty!37595) mapIsEmpty!37595))

(assert (= (and b!1024780 (not condMapEmpty!37595)) mapNonEmpty!37595))

(assert (= (and mapNonEmpty!37595 ((_ is ValueCellFull!11352) mapValue!37595)) b!1024781))

(assert (= (and b!1024780 ((_ is ValueCellFull!11352) mapDefault!37595)) b!1024779))

(assert (= b!1024777 b!1024780))

(assert (= start!89428 b!1024777))

(declare-fun m!943173 () Bool)

(assert (=> b!1024773 m!943173))

(declare-fun m!943175 () Bool)

(assert (=> b!1024777 m!943175))

(declare-fun m!943177 () Bool)

(assert (=> b!1024777 m!943177))

(declare-fun m!943179 () Bool)

(assert (=> b!1024771 m!943179))

(declare-fun m!943181 () Bool)

(assert (=> b!1024772 m!943181))

(declare-fun m!943183 () Bool)

(assert (=> b!1024774 m!943183))

(declare-fun m!943185 () Bool)

(assert (=> b!1024774 m!943185))

(declare-fun m!943187 () Bool)

(assert (=> b!1024774 m!943187))

(declare-fun m!943189 () Bool)

(assert (=> b!1024774 m!943189))

(declare-fun m!943191 () Bool)

(assert (=> start!89428 m!943191))

(declare-fun m!943193 () Bool)

(assert (=> mapNonEmpty!37595 m!943193))

(declare-fun m!943195 () Bool)

(assert (=> b!1024778 m!943195))

(declare-fun m!943197 () Bool)

(assert (=> b!1024776 m!943197))

(check-sat (not b_next!20391) (not b!1024772) (not b!1024778) b_and!32655 (not b!1024776) tp_is_empty!24111 (not b!1024774) (not b!1024777) (not b!1024771) (not b!1024773) (not mapNonEmpty!37595) (not start!89428))
(check-sat b_and!32655 (not b_next!20391))
