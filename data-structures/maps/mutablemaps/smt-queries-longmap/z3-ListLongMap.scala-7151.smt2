; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90970 () Bool)

(assert start!90970)

(declare-fun b!1038939 () Bool)

(declare-fun b_free!20961 () Bool)

(declare-fun b_next!20961 () Bool)

(assert (=> b!1038939 (= b_free!20961 (not b_next!20961))))

(declare-fun tp!74054 () Bool)

(declare-fun b_and!33511 () Bool)

(assert (=> b!1038939 (= tp!74054 b_and!33511)))

(declare-fun b!1038933 () Bool)

(declare-fun e!587987 () Bool)

(declare-fun tp_is_empty!24681 () Bool)

(assert (=> b!1038933 (= e!587987 tp_is_empty!24681)))

(declare-fun b!1038934 () Bool)

(declare-fun e!587988 () Bool)

(declare-fun mapRes!38575 () Bool)

(assert (=> b!1038934 (= e!587988 (and e!587987 mapRes!38575))))

(declare-fun condMapEmpty!38575 () Bool)

(declare-datatypes ((V!37781 0))(
  ( (V!37782 (val!12391 Int)) )
))
(declare-datatypes ((ValueCell!11637 0))(
  ( (ValueCellFull!11637 (v!14979 V!37781)) (EmptyCell!11637) )
))
(declare-datatypes ((array!65466 0))(
  ( (array!65467 (arr!31503 (Array (_ BitVec 32) (_ BitVec 64))) (size!32035 (_ BitVec 32))) )
))
(declare-datatypes ((array!65468 0))(
  ( (array!65469 (arr!31504 (Array (_ BitVec 32) ValueCell!11637)) (size!32036 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5868 0))(
  ( (LongMapFixedSize!5869 (defaultEntry!6316 Int) (mask!30265 (_ BitVec 32)) (extraKeys!6044 (_ BitVec 32)) (zeroValue!6150 V!37781) (minValue!6150 V!37781) (_size!2989 (_ BitVec 32)) (_keys!11520 array!65466) (_values!6339 array!65468) (_vacant!2989 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5868)

(declare-fun mapDefault!38575 () ValueCell!11637)

(assert (=> b!1038934 (= condMapEmpty!38575 (= (arr!31504 (_values!6339 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11637)) mapDefault!38575)))))

(declare-fun mapIsEmpty!38575 () Bool)

(assert (=> mapIsEmpty!38575 mapRes!38575))

(declare-fun b!1038935 () Bool)

(declare-fun res!693029 () Bool)

(declare-fun e!587990 () Bool)

(assert (=> b!1038935 (=> (not res!693029) (not e!587990))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1038935 (= res!693029 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038936 () Bool)

(declare-fun e!587986 () Bool)

(declare-datatypes ((SeekEntryResult!9776 0))(
  ( (MissingZero!9776 (index!41474 (_ BitVec 32))) (Found!9776 (index!41475 (_ BitVec 32))) (Intermediate!9776 (undefined!10588 Bool) (index!41476 (_ BitVec 32)) (x!92715 (_ BitVec 32))) (Undefined!9776) (MissingVacant!9776 (index!41477 (_ BitVec 32))) )
))
(declare-fun lt!457918 () SeekEntryResult!9776)

(assert (=> b!1038936 (= e!587986 (or (not (= (size!32035 (_keys!11520 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30265 thiss!1427)))) (bvslt (index!41475 lt!457918) #b00000000000000000000000000000000) (bvslt (index!41475 lt!457918) (size!32035 (_keys!11520 thiss!1427)))))))

(declare-fun b!1038937 () Bool)

(declare-fun e!587989 () Bool)

(assert (=> b!1038937 (= e!587989 (not e!587986))))

(declare-fun res!693027 () Bool)

(assert (=> b!1038937 (=> res!693027 e!587986)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1038937 (= res!693027 (not (validMask!0 (mask!30265 thiss!1427))))))

(declare-fun lt!457917 () array!65466)

(declare-datatypes ((List!22064 0))(
  ( (Nil!22061) (Cons!22060 (h!23264 (_ BitVec 64)) (t!31285 List!22064)) )
))
(declare-fun arrayNoDuplicates!0 (array!65466 (_ BitVec 32) List!22064) Bool)

(assert (=> b!1038937 (arrayNoDuplicates!0 lt!457917 #b00000000000000000000000000000000 Nil!22061)))

(declare-datatypes ((Unit!33978 0))(
  ( (Unit!33979) )
))
(declare-fun lt!457919 () Unit!33978)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22064) Unit!33978)

(assert (=> b!1038937 (= lt!457919 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11520 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41475 lt!457918) #b00000000000000000000000000000000 Nil!22061))))

(declare-fun arrayCountValidKeys!0 (array!65466 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038937 (= (arrayCountValidKeys!0 lt!457917 #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11520 thiss!1427) #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1038937 (= lt!457917 (array!65467 (store (arr!31503 (_keys!11520 thiss!1427)) (index!41475 lt!457918) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32035 (_keys!11520 thiss!1427))))))

(declare-fun lt!457916 () Unit!33978)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65466 (_ BitVec 32) (_ BitVec 64)) Unit!33978)

(assert (=> b!1038937 (= lt!457916 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11520 thiss!1427) (index!41475 lt!457918) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038938 () Bool)

(declare-fun e!587992 () Bool)

(assert (=> b!1038938 (= e!587992 tp_is_empty!24681)))

(declare-fun res!693028 () Bool)

(assert (=> start!90970 (=> (not res!693028) (not e!587990))))

(declare-fun valid!2160 (LongMapFixedSize!5868) Bool)

(assert (=> start!90970 (= res!693028 (valid!2160 thiss!1427))))

(assert (=> start!90970 e!587990))

(declare-fun e!587991 () Bool)

(assert (=> start!90970 e!587991))

(assert (=> start!90970 true))

(declare-fun mapNonEmpty!38575 () Bool)

(declare-fun tp!74055 () Bool)

(assert (=> mapNonEmpty!38575 (= mapRes!38575 (and tp!74055 e!587992))))

(declare-fun mapRest!38575 () (Array (_ BitVec 32) ValueCell!11637))

(declare-fun mapValue!38575 () ValueCell!11637)

(declare-fun mapKey!38575 () (_ BitVec 32))

(assert (=> mapNonEmpty!38575 (= (arr!31504 (_values!6339 thiss!1427)) (store mapRest!38575 mapKey!38575 mapValue!38575))))

(declare-fun array_inv!24195 (array!65466) Bool)

(declare-fun array_inv!24196 (array!65468) Bool)

(assert (=> b!1038939 (= e!587991 (and tp!74054 tp_is_empty!24681 (array_inv!24195 (_keys!11520 thiss!1427)) (array_inv!24196 (_values!6339 thiss!1427)) e!587988))))

(declare-fun b!1038940 () Bool)

(assert (=> b!1038940 (= e!587990 e!587989)))

(declare-fun res!693026 () Bool)

(assert (=> b!1038940 (=> (not res!693026) (not e!587989))))

(get-info :version)

(assert (=> b!1038940 (= res!693026 ((_ is Found!9776) lt!457918))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65466 (_ BitVec 32)) SeekEntryResult!9776)

(assert (=> b!1038940 (= lt!457918 (seekEntry!0 key!909 (_keys!11520 thiss!1427) (mask!30265 thiss!1427)))))

(assert (= (and start!90970 res!693028) b!1038935))

(assert (= (and b!1038935 res!693029) b!1038940))

(assert (= (and b!1038940 res!693026) b!1038937))

(assert (= (and b!1038937 (not res!693027)) b!1038936))

(assert (= (and b!1038934 condMapEmpty!38575) mapIsEmpty!38575))

(assert (= (and b!1038934 (not condMapEmpty!38575)) mapNonEmpty!38575))

(assert (= (and mapNonEmpty!38575 ((_ is ValueCellFull!11637) mapValue!38575)) b!1038938))

(assert (= (and b!1038934 ((_ is ValueCellFull!11637) mapDefault!38575)) b!1038933))

(assert (= b!1038939 b!1038934))

(assert (= start!90970 b!1038939))

(declare-fun m!958881 () Bool)

(assert (=> mapNonEmpty!38575 m!958881))

(declare-fun m!958883 () Bool)

(assert (=> b!1038940 m!958883))

(declare-fun m!958885 () Bool)

(assert (=> start!90970 m!958885))

(declare-fun m!958887 () Bool)

(assert (=> b!1038937 m!958887))

(declare-fun m!958889 () Bool)

(assert (=> b!1038937 m!958889))

(declare-fun m!958891 () Bool)

(assert (=> b!1038937 m!958891))

(declare-fun m!958893 () Bool)

(assert (=> b!1038937 m!958893))

(declare-fun m!958895 () Bool)

(assert (=> b!1038937 m!958895))

(declare-fun m!958897 () Bool)

(assert (=> b!1038937 m!958897))

(declare-fun m!958899 () Bool)

(assert (=> b!1038937 m!958899))

(declare-fun m!958901 () Bool)

(assert (=> b!1038939 m!958901))

(declare-fun m!958903 () Bool)

(assert (=> b!1038939 m!958903))

(check-sat b_and!33511 (not b_next!20961) (not b!1038940) (not start!90970) (not b!1038937) (not mapNonEmpty!38575) (not b!1038939) tp_is_empty!24681)
(check-sat b_and!33511 (not b_next!20961))
(get-model)

(declare-fun b!1038977 () Bool)

(declare-fun e!588024 () SeekEntryResult!9776)

(assert (=> b!1038977 (= e!588024 Undefined!9776)))

(declare-fun b!1038978 () Bool)

(declare-fun e!588026 () SeekEntryResult!9776)

(assert (=> b!1038978 (= e!588024 e!588026)))

(declare-fun lt!457942 () (_ BitVec 64))

(declare-fun lt!457943 () SeekEntryResult!9776)

(assert (=> b!1038978 (= lt!457942 (select (arr!31503 (_keys!11520 thiss!1427)) (index!41476 lt!457943)))))

(declare-fun c!105245 () Bool)

(assert (=> b!1038978 (= c!105245 (= lt!457942 key!909))))

(declare-fun b!1038979 () Bool)

(declare-fun e!588025 () SeekEntryResult!9776)

(assert (=> b!1038979 (= e!588025 (MissingZero!9776 (index!41476 lt!457943)))))

(declare-fun d!125389 () Bool)

(declare-fun lt!457940 () SeekEntryResult!9776)

(assert (=> d!125389 (and (or ((_ is MissingVacant!9776) lt!457940) (not ((_ is Found!9776) lt!457940)) (and (bvsge (index!41475 lt!457940) #b00000000000000000000000000000000) (bvslt (index!41475 lt!457940) (size!32035 (_keys!11520 thiss!1427))))) (not ((_ is MissingVacant!9776) lt!457940)) (or (not ((_ is Found!9776) lt!457940)) (= (select (arr!31503 (_keys!11520 thiss!1427)) (index!41475 lt!457940)) key!909)))))

(assert (=> d!125389 (= lt!457940 e!588024)))

(declare-fun c!105243 () Bool)

(assert (=> d!125389 (= c!105243 (and ((_ is Intermediate!9776) lt!457943) (undefined!10588 lt!457943)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65466 (_ BitVec 32)) SeekEntryResult!9776)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125389 (= lt!457943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30265 thiss!1427)) key!909 (_keys!11520 thiss!1427) (mask!30265 thiss!1427)))))

(assert (=> d!125389 (validMask!0 (mask!30265 thiss!1427))))

(assert (=> d!125389 (= (seekEntry!0 key!909 (_keys!11520 thiss!1427) (mask!30265 thiss!1427)) lt!457940)))

(declare-fun b!1038980 () Bool)

(assert (=> b!1038980 (= e!588026 (Found!9776 (index!41476 lt!457943)))))

(declare-fun b!1038981 () Bool)

(declare-fun c!105244 () Bool)

(assert (=> b!1038981 (= c!105244 (= lt!457942 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1038981 (= e!588026 e!588025)))

(declare-fun b!1038982 () Bool)

(declare-fun lt!457941 () SeekEntryResult!9776)

(assert (=> b!1038982 (= e!588025 (ite ((_ is MissingVacant!9776) lt!457941) (MissingZero!9776 (index!41477 lt!457941)) lt!457941))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65466 (_ BitVec 32)) SeekEntryResult!9776)

(assert (=> b!1038982 (= lt!457941 (seekKeyOrZeroReturnVacant!0 (x!92715 lt!457943) (index!41476 lt!457943) (index!41476 lt!457943) key!909 (_keys!11520 thiss!1427) (mask!30265 thiss!1427)))))

(assert (= (and d!125389 c!105243) b!1038977))

(assert (= (and d!125389 (not c!105243)) b!1038978))

(assert (= (and b!1038978 c!105245) b!1038980))

(assert (= (and b!1038978 (not c!105245)) b!1038981))

(assert (= (and b!1038981 c!105244) b!1038979))

(assert (= (and b!1038981 (not c!105244)) b!1038982))

(declare-fun m!958929 () Bool)

(assert (=> b!1038978 m!958929))

(declare-fun m!958931 () Bool)

(assert (=> d!125389 m!958931))

(declare-fun m!958933 () Bool)

(assert (=> d!125389 m!958933))

(assert (=> d!125389 m!958933))

(declare-fun m!958935 () Bool)

(assert (=> d!125389 m!958935))

(assert (=> d!125389 m!958889))

(declare-fun m!958937 () Bool)

(assert (=> b!1038982 m!958937))

(assert (=> b!1038940 d!125389))

(declare-fun d!125391 () Bool)

(assert (=> d!125391 (= (array_inv!24195 (_keys!11520 thiss!1427)) (bvsge (size!32035 (_keys!11520 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038939 d!125391))

(declare-fun d!125393 () Bool)

(assert (=> d!125393 (= (array_inv!24196 (_values!6339 thiss!1427)) (bvsge (size!32036 (_values!6339 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038939 d!125393))

(declare-fun d!125395 () Bool)

(declare-fun e!588032 () Bool)

(assert (=> d!125395 e!588032))

(declare-fun res!693050 () Bool)

(assert (=> d!125395 (=> (not res!693050) (not e!588032))))

(assert (=> d!125395 (= res!693050 (and (bvsge (index!41475 lt!457918) #b00000000000000000000000000000000) (bvslt (index!41475 lt!457918) (size!32035 (_keys!11520 thiss!1427)))))))

(declare-fun lt!457946 () Unit!33978)

(declare-fun choose!82 (array!65466 (_ BitVec 32) (_ BitVec 64)) Unit!33978)

(assert (=> d!125395 (= lt!457946 (choose!82 (_keys!11520 thiss!1427) (index!41475 lt!457918) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!588031 () Bool)

(assert (=> d!125395 e!588031))

(declare-fun res!693053 () Bool)

(assert (=> d!125395 (=> (not res!693053) (not e!588031))))

(assert (=> d!125395 (= res!693053 (and (bvsge (index!41475 lt!457918) #b00000000000000000000000000000000) (bvslt (index!41475 lt!457918) (size!32035 (_keys!11520 thiss!1427)))))))

(assert (=> d!125395 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11520 thiss!1427) (index!41475 lt!457918) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457946)))

(declare-fun b!1038993 () Bool)

(assert (=> b!1038993 (= e!588031 (bvslt (size!32035 (_keys!11520 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1038994 () Bool)

(assert (=> b!1038994 (= e!588032 (= (arrayCountValidKeys!0 (array!65467 (store (arr!31503 (_keys!11520 thiss!1427)) (index!41475 lt!457918) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32035 (_keys!11520 thiss!1427))) #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11520 thiss!1427) #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1038991 () Bool)

(declare-fun res!693051 () Bool)

(assert (=> b!1038991 (=> (not res!693051) (not e!588031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1038991 (= res!693051 (validKeyInArray!0 (select (arr!31503 (_keys!11520 thiss!1427)) (index!41475 lt!457918))))))

(declare-fun b!1038992 () Bool)

(declare-fun res!693052 () Bool)

(assert (=> b!1038992 (=> (not res!693052) (not e!588031))))

(assert (=> b!1038992 (= res!693052 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125395 res!693053) b!1038991))

(assert (= (and b!1038991 res!693051) b!1038992))

(assert (= (and b!1038992 res!693052) b!1038993))

(assert (= (and d!125395 res!693050) b!1038994))

(declare-fun m!958939 () Bool)

(assert (=> d!125395 m!958939))

(assert (=> b!1038994 m!958887))

(declare-fun m!958941 () Bool)

(assert (=> b!1038994 m!958941))

(assert (=> b!1038994 m!958895))

(declare-fun m!958943 () Bool)

(assert (=> b!1038991 m!958943))

(assert (=> b!1038991 m!958943))

(declare-fun m!958945 () Bool)

(assert (=> b!1038991 m!958945))

(declare-fun m!958947 () Bool)

(assert (=> b!1038992 m!958947))

(assert (=> b!1038937 d!125395))

(declare-fun d!125397 () Bool)

(declare-fun e!588035 () Bool)

(assert (=> d!125397 e!588035))

(declare-fun res!693056 () Bool)

(assert (=> d!125397 (=> (not res!693056) (not e!588035))))

(assert (=> d!125397 (= res!693056 (and (bvsge (index!41475 lt!457918) #b00000000000000000000000000000000) (bvslt (index!41475 lt!457918) (size!32035 (_keys!11520 thiss!1427)))))))

(declare-fun lt!457949 () Unit!33978)

(declare-fun choose!53 (array!65466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22064) Unit!33978)

(assert (=> d!125397 (= lt!457949 (choose!53 (_keys!11520 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41475 lt!457918) #b00000000000000000000000000000000 Nil!22061))))

(assert (=> d!125397 (bvslt (size!32035 (_keys!11520 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125397 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11520 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41475 lt!457918) #b00000000000000000000000000000000 Nil!22061) lt!457949)))

(declare-fun b!1038997 () Bool)

(assert (=> b!1038997 (= e!588035 (arrayNoDuplicates!0 (array!65467 (store (arr!31503 (_keys!11520 thiss!1427)) (index!41475 lt!457918) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32035 (_keys!11520 thiss!1427))) #b00000000000000000000000000000000 Nil!22061))))

(assert (= (and d!125397 res!693056) b!1038997))

(declare-fun m!958949 () Bool)

(assert (=> d!125397 m!958949))

(assert (=> b!1038997 m!958887))

(declare-fun m!958951 () Bool)

(assert (=> b!1038997 m!958951))

(assert (=> b!1038937 d!125397))

(declare-fun d!125399 () Bool)

(assert (=> d!125399 (= (validMask!0 (mask!30265 thiss!1427)) (and (or (= (mask!30265 thiss!1427) #b00000000000000000000000000000111) (= (mask!30265 thiss!1427) #b00000000000000000000000000001111) (= (mask!30265 thiss!1427) #b00000000000000000000000000011111) (= (mask!30265 thiss!1427) #b00000000000000000000000000111111) (= (mask!30265 thiss!1427) #b00000000000000000000000001111111) (= (mask!30265 thiss!1427) #b00000000000000000000000011111111) (= (mask!30265 thiss!1427) #b00000000000000000000000111111111) (= (mask!30265 thiss!1427) #b00000000000000000000001111111111) (= (mask!30265 thiss!1427) #b00000000000000000000011111111111) (= (mask!30265 thiss!1427) #b00000000000000000000111111111111) (= (mask!30265 thiss!1427) #b00000000000000000001111111111111) (= (mask!30265 thiss!1427) #b00000000000000000011111111111111) (= (mask!30265 thiss!1427) #b00000000000000000111111111111111) (= (mask!30265 thiss!1427) #b00000000000000001111111111111111) (= (mask!30265 thiss!1427) #b00000000000000011111111111111111) (= (mask!30265 thiss!1427) #b00000000000000111111111111111111) (= (mask!30265 thiss!1427) #b00000000000001111111111111111111) (= (mask!30265 thiss!1427) #b00000000000011111111111111111111) (= (mask!30265 thiss!1427) #b00000000000111111111111111111111) (= (mask!30265 thiss!1427) #b00000000001111111111111111111111) (= (mask!30265 thiss!1427) #b00000000011111111111111111111111) (= (mask!30265 thiss!1427) #b00000000111111111111111111111111) (= (mask!30265 thiss!1427) #b00000001111111111111111111111111) (= (mask!30265 thiss!1427) #b00000011111111111111111111111111) (= (mask!30265 thiss!1427) #b00000111111111111111111111111111) (= (mask!30265 thiss!1427) #b00001111111111111111111111111111) (= (mask!30265 thiss!1427) #b00011111111111111111111111111111) (= (mask!30265 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30265 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1038937 d!125399))

(declare-fun b!1039008 () Bool)

(declare-fun e!588046 () Bool)

(declare-fun call!43975 () Bool)

(assert (=> b!1039008 (= e!588046 call!43975)))

(declare-fun b!1039009 () Bool)

(declare-fun e!588045 () Bool)

(declare-fun contains!6064 (List!22064 (_ BitVec 64)) Bool)

(assert (=> b!1039009 (= e!588045 (contains!6064 Nil!22061 (select (arr!31503 lt!457917) #b00000000000000000000000000000000)))))

(declare-fun b!1039010 () Bool)

(assert (=> b!1039010 (= e!588046 call!43975)))

(declare-fun b!1039011 () Bool)

(declare-fun e!588044 () Bool)

(declare-fun e!588047 () Bool)

(assert (=> b!1039011 (= e!588044 e!588047)))

(declare-fun res!693065 () Bool)

(assert (=> b!1039011 (=> (not res!693065) (not e!588047))))

(assert (=> b!1039011 (= res!693065 (not e!588045))))

(declare-fun res!693064 () Bool)

(assert (=> b!1039011 (=> (not res!693064) (not e!588045))))

(assert (=> b!1039011 (= res!693064 (validKeyInArray!0 (select (arr!31503 lt!457917) #b00000000000000000000000000000000)))))

(declare-fun d!125401 () Bool)

(declare-fun res!693063 () Bool)

(assert (=> d!125401 (=> res!693063 e!588044)))

(assert (=> d!125401 (= res!693063 (bvsge #b00000000000000000000000000000000 (size!32035 lt!457917)))))

(assert (=> d!125401 (= (arrayNoDuplicates!0 lt!457917 #b00000000000000000000000000000000 Nil!22061) e!588044)))

(declare-fun bm!43972 () Bool)

(declare-fun c!105248 () Bool)

(assert (=> bm!43972 (= call!43975 (arrayNoDuplicates!0 lt!457917 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105248 (Cons!22060 (select (arr!31503 lt!457917) #b00000000000000000000000000000000) Nil!22061) Nil!22061)))))

(declare-fun b!1039012 () Bool)

(assert (=> b!1039012 (= e!588047 e!588046)))

(assert (=> b!1039012 (= c!105248 (validKeyInArray!0 (select (arr!31503 lt!457917) #b00000000000000000000000000000000)))))

(assert (= (and d!125401 (not res!693063)) b!1039011))

(assert (= (and b!1039011 res!693064) b!1039009))

(assert (= (and b!1039011 res!693065) b!1039012))

(assert (= (and b!1039012 c!105248) b!1039010))

(assert (= (and b!1039012 (not c!105248)) b!1039008))

(assert (= (or b!1039010 b!1039008) bm!43972))

(declare-fun m!958953 () Bool)

(assert (=> b!1039009 m!958953))

(assert (=> b!1039009 m!958953))

(declare-fun m!958955 () Bool)

(assert (=> b!1039009 m!958955))

(assert (=> b!1039011 m!958953))

(assert (=> b!1039011 m!958953))

(declare-fun m!958957 () Bool)

(assert (=> b!1039011 m!958957))

(assert (=> bm!43972 m!958953))

(declare-fun m!958959 () Bool)

(assert (=> bm!43972 m!958959))

(assert (=> b!1039012 m!958953))

(assert (=> b!1039012 m!958953))

(assert (=> b!1039012 m!958957))

(assert (=> b!1038937 d!125401))

(declare-fun d!125403 () Bool)

(declare-fun lt!457952 () (_ BitVec 32))

(assert (=> d!125403 (and (bvsge lt!457952 #b00000000000000000000000000000000) (bvsle lt!457952 (bvsub (size!32035 lt!457917) #b00000000000000000000000000000000)))))

(declare-fun e!588052 () (_ BitVec 32))

(assert (=> d!125403 (= lt!457952 e!588052)))

(declare-fun c!105253 () Bool)

(assert (=> d!125403 (= c!105253 (bvsge #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))))))

(assert (=> d!125403 (and (bvsle #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32035 (_keys!11520 thiss!1427)) (size!32035 lt!457917)))))

(assert (=> d!125403 (= (arrayCountValidKeys!0 lt!457917 #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))) lt!457952)))

(declare-fun bm!43975 () Bool)

(declare-fun call!43978 () (_ BitVec 32))

(assert (=> bm!43975 (= call!43978 (arrayCountValidKeys!0 lt!457917 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32035 (_keys!11520 thiss!1427))))))

(declare-fun b!1039021 () Bool)

(assert (=> b!1039021 (= e!588052 #b00000000000000000000000000000000)))

(declare-fun b!1039022 () Bool)

(declare-fun e!588053 () (_ BitVec 32))

(assert (=> b!1039022 (= e!588053 call!43978)))

(declare-fun b!1039023 () Bool)

(assert (=> b!1039023 (= e!588053 (bvadd #b00000000000000000000000000000001 call!43978))))

(declare-fun b!1039024 () Bool)

(assert (=> b!1039024 (= e!588052 e!588053)))

(declare-fun c!105254 () Bool)

(assert (=> b!1039024 (= c!105254 (validKeyInArray!0 (select (arr!31503 lt!457917) #b00000000000000000000000000000000)))))

(assert (= (and d!125403 c!105253) b!1039021))

(assert (= (and d!125403 (not c!105253)) b!1039024))

(assert (= (and b!1039024 c!105254) b!1039023))

(assert (= (and b!1039024 (not c!105254)) b!1039022))

(assert (= (or b!1039023 b!1039022) bm!43975))

(declare-fun m!958961 () Bool)

(assert (=> bm!43975 m!958961))

(assert (=> b!1039024 m!958953))

(assert (=> b!1039024 m!958953))

(assert (=> b!1039024 m!958957))

(assert (=> b!1038937 d!125403))

(declare-fun d!125405 () Bool)

(declare-fun lt!457953 () (_ BitVec 32))

(assert (=> d!125405 (and (bvsge lt!457953 #b00000000000000000000000000000000) (bvsle lt!457953 (bvsub (size!32035 (_keys!11520 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!588054 () (_ BitVec 32))

(assert (=> d!125405 (= lt!457953 e!588054)))

(declare-fun c!105255 () Bool)

(assert (=> d!125405 (= c!105255 (bvsge #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))))))

(assert (=> d!125405 (and (bvsle #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32035 (_keys!11520 thiss!1427)) (size!32035 (_keys!11520 thiss!1427))))))

(assert (=> d!125405 (= (arrayCountValidKeys!0 (_keys!11520 thiss!1427) #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))) lt!457953)))

(declare-fun bm!43976 () Bool)

(declare-fun call!43979 () (_ BitVec 32))

(assert (=> bm!43976 (= call!43979 (arrayCountValidKeys!0 (_keys!11520 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32035 (_keys!11520 thiss!1427))))))

(declare-fun b!1039025 () Bool)

(assert (=> b!1039025 (= e!588054 #b00000000000000000000000000000000)))

(declare-fun b!1039026 () Bool)

(declare-fun e!588055 () (_ BitVec 32))

(assert (=> b!1039026 (= e!588055 call!43979)))

(declare-fun b!1039027 () Bool)

(assert (=> b!1039027 (= e!588055 (bvadd #b00000000000000000000000000000001 call!43979))))

(declare-fun b!1039028 () Bool)

(assert (=> b!1039028 (= e!588054 e!588055)))

(declare-fun c!105256 () Bool)

(assert (=> b!1039028 (= c!105256 (validKeyInArray!0 (select (arr!31503 (_keys!11520 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125405 c!105255) b!1039025))

(assert (= (and d!125405 (not c!105255)) b!1039028))

(assert (= (and b!1039028 c!105256) b!1039027))

(assert (= (and b!1039028 (not c!105256)) b!1039026))

(assert (= (or b!1039027 b!1039026) bm!43976))

(declare-fun m!958963 () Bool)

(assert (=> bm!43976 m!958963))

(declare-fun m!958965 () Bool)

(assert (=> b!1039028 m!958965))

(assert (=> b!1039028 m!958965))

(declare-fun m!958967 () Bool)

(assert (=> b!1039028 m!958967))

(assert (=> b!1038937 d!125405))

(declare-fun d!125407 () Bool)

(declare-fun res!693072 () Bool)

(declare-fun e!588058 () Bool)

(assert (=> d!125407 (=> (not res!693072) (not e!588058))))

(declare-fun simpleValid!424 (LongMapFixedSize!5868) Bool)

(assert (=> d!125407 (= res!693072 (simpleValid!424 thiss!1427))))

(assert (=> d!125407 (= (valid!2160 thiss!1427) e!588058)))

(declare-fun b!1039035 () Bool)

(declare-fun res!693073 () Bool)

(assert (=> b!1039035 (=> (not res!693073) (not e!588058))))

(assert (=> b!1039035 (= res!693073 (= (arrayCountValidKeys!0 (_keys!11520 thiss!1427) #b00000000000000000000000000000000 (size!32035 (_keys!11520 thiss!1427))) (_size!2989 thiss!1427)))))

(declare-fun b!1039036 () Bool)

(declare-fun res!693074 () Bool)

(assert (=> b!1039036 (=> (not res!693074) (not e!588058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65466 (_ BitVec 32)) Bool)

(assert (=> b!1039036 (= res!693074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11520 thiss!1427) (mask!30265 thiss!1427)))))

(declare-fun b!1039037 () Bool)

(assert (=> b!1039037 (= e!588058 (arrayNoDuplicates!0 (_keys!11520 thiss!1427) #b00000000000000000000000000000000 Nil!22061))))

(assert (= (and d!125407 res!693072) b!1039035))

(assert (= (and b!1039035 res!693073) b!1039036))

(assert (= (and b!1039036 res!693074) b!1039037))

(declare-fun m!958969 () Bool)

(assert (=> d!125407 m!958969))

(assert (=> b!1039035 m!958895))

(declare-fun m!958971 () Bool)

(assert (=> b!1039036 m!958971))

(declare-fun m!958973 () Bool)

(assert (=> b!1039037 m!958973))

(assert (=> start!90970 d!125407))

(declare-fun b!1039044 () Bool)

(declare-fun e!588064 () Bool)

(assert (=> b!1039044 (= e!588064 tp_is_empty!24681)))

(declare-fun mapIsEmpty!38581 () Bool)

(declare-fun mapRes!38581 () Bool)

(assert (=> mapIsEmpty!38581 mapRes!38581))

(declare-fun b!1039045 () Bool)

(declare-fun e!588063 () Bool)

(assert (=> b!1039045 (= e!588063 tp_is_empty!24681)))

(declare-fun condMapEmpty!38581 () Bool)

(declare-fun mapDefault!38581 () ValueCell!11637)

(assert (=> mapNonEmpty!38575 (= condMapEmpty!38581 (= mapRest!38575 ((as const (Array (_ BitVec 32) ValueCell!11637)) mapDefault!38581)))))

(assert (=> mapNonEmpty!38575 (= tp!74055 (and e!588063 mapRes!38581))))

(declare-fun mapNonEmpty!38581 () Bool)

(declare-fun tp!74064 () Bool)

(assert (=> mapNonEmpty!38581 (= mapRes!38581 (and tp!74064 e!588064))))

(declare-fun mapRest!38581 () (Array (_ BitVec 32) ValueCell!11637))

(declare-fun mapKey!38581 () (_ BitVec 32))

(declare-fun mapValue!38581 () ValueCell!11637)

(assert (=> mapNonEmpty!38581 (= mapRest!38575 (store mapRest!38581 mapKey!38581 mapValue!38581))))

(assert (= (and mapNonEmpty!38575 condMapEmpty!38581) mapIsEmpty!38581))

(assert (= (and mapNonEmpty!38575 (not condMapEmpty!38581)) mapNonEmpty!38581))

(assert (= (and mapNonEmpty!38581 ((_ is ValueCellFull!11637) mapValue!38581)) b!1039044))

(assert (= (and mapNonEmpty!38575 ((_ is ValueCellFull!11637) mapDefault!38581)) b!1039045))

(declare-fun m!958975 () Bool)

(assert (=> mapNonEmpty!38581 m!958975))

(check-sat b_and!33511 (not bm!43972) (not d!125407) (not b_next!20961) (not b!1039009) (not b!1039028) (not bm!43976) (not b!1039024) (not d!125389) (not b!1038991) tp_is_empty!24681 (not b!1038992) (not d!125395) (not b!1039012) (not b!1039036) (not bm!43975) (not b!1039011) (not b!1038994) (not mapNonEmpty!38581) (not b!1038997) (not d!125397) (not b!1039037) (not b!1038982) (not b!1039035))
(check-sat b_and!33511 (not b_next!20961))
