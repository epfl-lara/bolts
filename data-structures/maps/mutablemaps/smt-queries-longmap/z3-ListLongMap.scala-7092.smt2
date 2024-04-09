; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90004 () Bool)

(assert start!90004)

(declare-fun b!1030234 () Bool)

(declare-fun b_free!20607 () Bool)

(declare-fun b_next!20607 () Bool)

(assert (=> b!1030234 (= b_free!20607 (not b_next!20607))))

(declare-fun tp!72889 () Bool)

(declare-fun b_and!32993 () Bool)

(assert (=> b!1030234 (= tp!72889 b_and!32993)))

(declare-fun b!1030229 () Bool)

(declare-fun e!581778 () Bool)

(declare-fun e!581775 () Bool)

(assert (=> b!1030229 (= e!581778 e!581775)))

(declare-fun res!689044 () Bool)

(assert (=> b!1030229 (=> (not res!689044) (not e!581775))))

(declare-datatypes ((SeekEntryResult!9675 0))(
  ( (MissingZero!9675 (index!41070 (_ BitVec 32))) (Found!9675 (index!41071 (_ BitVec 32))) (Intermediate!9675 (undefined!10487 Bool) (index!41072 (_ BitVec 32)) (x!91664 (_ BitVec 32))) (Undefined!9675) (MissingVacant!9675 (index!41073 (_ BitVec 32))) )
))
(declare-fun lt!454399 () SeekEntryResult!9675)

(get-info :version)

(assert (=> b!1030229 (= res!689044 ((_ is Found!9675) lt!454399))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37309 0))(
  ( (V!37310 (val!12214 Int)) )
))
(declare-datatypes ((ValueCell!11460 0))(
  ( (ValueCellFull!11460 (v!14792 V!37309)) (EmptyCell!11460) )
))
(declare-datatypes ((array!64700 0))(
  ( (array!64701 (arr!31149 (Array (_ BitVec 32) (_ BitVec 64))) (size!31667 (_ BitVec 32))) )
))
(declare-datatypes ((array!64702 0))(
  ( (array!64703 (arr!31150 (Array (_ BitVec 32) ValueCell!11460)) (size!31668 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5514 0))(
  ( (LongMapFixedSize!5515 (defaultEntry!6129 Int) (mask!29898 (_ BitVec 32)) (extraKeys!5861 (_ BitVec 32)) (zeroValue!5965 V!37309) (minValue!5965 V!37309) (_size!2812 (_ BitVec 32)) (_keys!11297 array!64700) (_values!6152 array!64702) (_vacant!2812 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5514)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64700 (_ BitVec 32)) SeekEntryResult!9675)

(assert (=> b!1030229 (= lt!454399 (seekEntry!0 key!909 (_keys!11297 thiss!1427) (mask!29898 thiss!1427)))))

(declare-fun b!1030230 () Bool)

(declare-fun e!581777 () Bool)

(declare-fun e!581779 () Bool)

(declare-fun mapRes!37941 () Bool)

(assert (=> b!1030230 (= e!581777 (and e!581779 mapRes!37941))))

(declare-fun condMapEmpty!37941 () Bool)

(declare-fun mapDefault!37941 () ValueCell!11460)

(assert (=> b!1030230 (= condMapEmpty!37941 (= (arr!31150 (_values!6152 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11460)) mapDefault!37941)))))

(declare-fun b!1030231 () Bool)

(declare-fun res!689043 () Bool)

(declare-fun e!581774 () Bool)

(assert (=> b!1030231 (=> res!689043 e!581774)))

(declare-datatypes ((Unit!33614 0))(
  ( (Unit!33615) )
))
(declare-datatypes ((tuple2!15668 0))(
  ( (tuple2!15669 (_1!7844 Unit!33614) (_2!7844 LongMapFixedSize!5514)) )
))
(declare-fun lt!454400 () tuple2!15668)

(assert (=> b!1030231 (= res!689043 (or (not (= (size!31668 (_values!6152 (_2!7844 lt!454400))) (bvadd #b00000000000000000000000000000001 (mask!29898 (_2!7844 lt!454400))))) (not (= (size!31667 (_keys!11297 (_2!7844 lt!454400))) (size!31668 (_values!6152 (_2!7844 lt!454400))))) (bvslt (mask!29898 (_2!7844 lt!454400)) #b00000000000000000000000000000000) (bvslt (extraKeys!5861 (_2!7844 lt!454400)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5861 (_2!7844 lt!454400)) #b00000000000000000000000000000011)))))

(declare-fun b!1030232 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64700 (_ BitVec 32)) Bool)

(assert (=> b!1030232 (= e!581774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11297 (_2!7844 lt!454400)) (mask!29898 (_2!7844 lt!454400))))))

(declare-fun mapNonEmpty!37941 () Bool)

(declare-fun tp!72890 () Bool)

(declare-fun e!581780 () Bool)

(assert (=> mapNonEmpty!37941 (= mapRes!37941 (and tp!72890 e!581780))))

(declare-fun mapValue!37941 () ValueCell!11460)

(declare-fun mapRest!37941 () (Array (_ BitVec 32) ValueCell!11460))

(declare-fun mapKey!37941 () (_ BitVec 32))

(assert (=> mapNonEmpty!37941 (= (arr!31150 (_values!6152 thiss!1427)) (store mapRest!37941 mapKey!37941 mapValue!37941))))

(declare-fun res!689042 () Bool)

(assert (=> start!90004 (=> (not res!689042) (not e!581778))))

(declare-fun valid!2041 (LongMapFixedSize!5514) Bool)

(assert (=> start!90004 (= res!689042 (valid!2041 thiss!1427))))

(assert (=> start!90004 e!581778))

(declare-fun e!581781 () Bool)

(assert (=> start!90004 e!581781))

(assert (=> start!90004 true))

(declare-fun b!1030233 () Bool)

(declare-fun res!689041 () Bool)

(assert (=> b!1030233 (=> (not res!689041) (not e!581778))))

(assert (=> b!1030233 (= res!689041 (not (= key!909 (bvneg key!909))))))

(declare-fun tp_is_empty!24327 () Bool)

(declare-fun array_inv!23959 (array!64700) Bool)

(declare-fun array_inv!23960 (array!64702) Bool)

(assert (=> b!1030234 (= e!581781 (and tp!72889 tp_is_empty!24327 (array_inv!23959 (_keys!11297 thiss!1427)) (array_inv!23960 (_values!6152 thiss!1427)) e!581777))))

(declare-fun b!1030235 () Bool)

(assert (=> b!1030235 (= e!581779 tp_is_empty!24327)))

(declare-fun b!1030236 () Bool)

(assert (=> b!1030236 (= e!581775 (not e!581774))))

(declare-fun res!689040 () Bool)

(assert (=> b!1030236 (=> res!689040 e!581774)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030236 (= res!689040 (not (validMask!0 (mask!29898 (_2!7844 lt!454400)))))))

(declare-fun lt!454404 () array!64702)

(declare-fun lt!454397 () array!64700)

(declare-fun Unit!33616 () Unit!33614)

(declare-fun Unit!33617 () Unit!33614)

(assert (=> b!1030236 (= lt!454400 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2812 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15669 Unit!33616 (LongMapFixedSize!5515 (defaultEntry!6129 thiss!1427) (mask!29898 thiss!1427) (extraKeys!5861 thiss!1427) (zeroValue!5965 thiss!1427) (minValue!5965 thiss!1427) (bvsub (_size!2812 thiss!1427) #b00000000000000000000000000000001) lt!454397 lt!454404 (bvadd #b00000000000000000000000000000001 (_vacant!2812 thiss!1427)))) (tuple2!15669 Unit!33617 (LongMapFixedSize!5515 (defaultEntry!6129 thiss!1427) (mask!29898 thiss!1427) (extraKeys!5861 thiss!1427) (zeroValue!5965 thiss!1427) (minValue!5965 thiss!1427) (bvsub (_size!2812 thiss!1427) #b00000000000000000000000000000001) lt!454397 lt!454404 (_vacant!2812 thiss!1427)))))))

(declare-datatypes ((tuple2!15670 0))(
  ( (tuple2!15671 (_1!7845 (_ BitVec 64)) (_2!7845 V!37309)) )
))
(declare-datatypes ((List!21937 0))(
  ( (Nil!21934) (Cons!21933 (h!23135 tuple2!15670) (t!31046 List!21937)) )
))
(declare-datatypes ((ListLongMap!13795 0))(
  ( (ListLongMap!13796 (toList!6913 List!21937)) )
))
(declare-fun -!489 (ListLongMap!13795 (_ BitVec 64)) ListLongMap!13795)

(declare-fun getCurrentListMap!3920 (array!64700 array!64702 (_ BitVec 32) (_ BitVec 32) V!37309 V!37309 (_ BitVec 32) Int) ListLongMap!13795)

(assert (=> b!1030236 (= (-!489 (getCurrentListMap!3920 (_keys!11297 thiss!1427) (_values!6152 thiss!1427) (mask!29898 thiss!1427) (extraKeys!5861 thiss!1427) (zeroValue!5965 thiss!1427) (minValue!5965 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6129 thiss!1427)) key!909) (getCurrentListMap!3920 lt!454397 lt!454404 (mask!29898 thiss!1427) (extraKeys!5861 thiss!1427) (zeroValue!5965 thiss!1427) (minValue!5965 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6129 thiss!1427)))))

(declare-fun dynLambda!1964 (Int (_ BitVec 64)) V!37309)

(assert (=> b!1030236 (= lt!454404 (array!64703 (store (arr!31150 (_values!6152 thiss!1427)) (index!41071 lt!454399) (ValueCellFull!11460 (dynLambda!1964 (defaultEntry!6129 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31668 (_values!6152 thiss!1427))))))

(declare-fun lt!454398 () Unit!33614)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!13 (array!64700 array!64702 (_ BitVec 32) (_ BitVec 32) V!37309 V!37309 (_ BitVec 32) (_ BitVec 64) Int) Unit!33614)

(assert (=> b!1030236 (= lt!454398 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!13 (_keys!11297 thiss!1427) (_values!6152 thiss!1427) (mask!29898 thiss!1427) (extraKeys!5861 thiss!1427) (zeroValue!5965 thiss!1427) (minValue!5965 thiss!1427) (index!41071 lt!454399) key!909 (defaultEntry!6129 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030236 (not (arrayContainsKey!0 lt!454397 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454401 () Unit!33614)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64700 (_ BitVec 32) (_ BitVec 64)) Unit!33614)

(assert (=> b!1030236 (= lt!454401 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11297 thiss!1427) (index!41071 lt!454399) key!909))))

(assert (=> b!1030236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454397 (mask!29898 thiss!1427))))

(declare-fun lt!454405 () Unit!33614)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64700 (_ BitVec 32) (_ BitVec 32)) Unit!33614)

(assert (=> b!1030236 (= lt!454405 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11297 thiss!1427) (index!41071 lt!454399) (mask!29898 thiss!1427)))))

(declare-datatypes ((List!21938 0))(
  ( (Nil!21935) (Cons!21934 (h!23136 (_ BitVec 64)) (t!31047 List!21938)) )
))
(declare-fun arrayNoDuplicates!0 (array!64700 (_ BitVec 32) List!21938) Bool)

(assert (=> b!1030236 (arrayNoDuplicates!0 lt!454397 #b00000000000000000000000000000000 Nil!21935)))

(declare-fun lt!454403 () Unit!33614)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64700 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21938) Unit!33614)

(assert (=> b!1030236 (= lt!454403 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11297 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41071 lt!454399) #b00000000000000000000000000000000 Nil!21935))))

(declare-fun arrayCountValidKeys!0 (array!64700 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030236 (= (arrayCountValidKeys!0 lt!454397 #b00000000000000000000000000000000 (size!31667 (_keys!11297 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11297 thiss!1427) #b00000000000000000000000000000000 (size!31667 (_keys!11297 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030236 (= lt!454397 (array!64701 (store (arr!31149 (_keys!11297 thiss!1427)) (index!41071 lt!454399) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31667 (_keys!11297 thiss!1427))))))

(declare-fun lt!454402 () Unit!33614)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64700 (_ BitVec 32) (_ BitVec 64)) Unit!33614)

(assert (=> b!1030236 (= lt!454402 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11297 thiss!1427) (index!41071 lt!454399) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030237 () Bool)

(assert (=> b!1030237 (= e!581780 tp_is_empty!24327)))

(declare-fun mapIsEmpty!37941 () Bool)

(assert (=> mapIsEmpty!37941 mapRes!37941))

(assert (= (and start!90004 res!689042) b!1030233))

(assert (= (and b!1030233 res!689041) b!1030229))

(assert (= (and b!1030229 res!689044) b!1030236))

(assert (= (and b!1030236 (not res!689040)) b!1030231))

(assert (= (and b!1030231 (not res!689043)) b!1030232))

(assert (= (and b!1030230 condMapEmpty!37941) mapIsEmpty!37941))

(assert (= (and b!1030230 (not condMapEmpty!37941)) mapNonEmpty!37941))

(assert (= (and mapNonEmpty!37941 ((_ is ValueCellFull!11460) mapValue!37941)) b!1030237))

(assert (= (and b!1030230 ((_ is ValueCellFull!11460) mapDefault!37941)) b!1030235))

(assert (= b!1030234 b!1030230))

(assert (= start!90004 b!1030234))

(declare-fun b_lambda!15967 () Bool)

(assert (=> (not b_lambda!15967) (not b!1030236)))

(declare-fun t!31045 () Bool)

(declare-fun tb!6933 () Bool)

(assert (=> (and b!1030234 (= (defaultEntry!6129 thiss!1427) (defaultEntry!6129 thiss!1427)) t!31045) tb!6933))

(declare-fun result!14185 () Bool)

(assert (=> tb!6933 (= result!14185 tp_is_empty!24327)))

(assert (=> b!1030236 t!31045))

(declare-fun b_and!32995 () Bool)

(assert (= b_and!32993 (and (=> t!31045 result!14185) b_and!32995)))

(declare-fun m!950037 () Bool)

(assert (=> b!1030234 m!950037))

(declare-fun m!950039 () Bool)

(assert (=> b!1030234 m!950039))

(declare-fun m!950041 () Bool)

(assert (=> b!1030236 m!950041))

(declare-fun m!950043 () Bool)

(assert (=> b!1030236 m!950043))

(declare-fun m!950045 () Bool)

(assert (=> b!1030236 m!950045))

(declare-fun m!950047 () Bool)

(assert (=> b!1030236 m!950047))

(declare-fun m!950049 () Bool)

(assert (=> b!1030236 m!950049))

(declare-fun m!950051 () Bool)

(assert (=> b!1030236 m!950051))

(declare-fun m!950053 () Bool)

(assert (=> b!1030236 m!950053))

(declare-fun m!950055 () Bool)

(assert (=> b!1030236 m!950055))

(declare-fun m!950057 () Bool)

(assert (=> b!1030236 m!950057))

(assert (=> b!1030236 m!950055))

(declare-fun m!950059 () Bool)

(assert (=> b!1030236 m!950059))

(declare-fun m!950061 () Bool)

(assert (=> b!1030236 m!950061))

(declare-fun m!950063 () Bool)

(assert (=> b!1030236 m!950063))

(declare-fun m!950065 () Bool)

(assert (=> b!1030236 m!950065))

(declare-fun m!950067 () Bool)

(assert (=> b!1030236 m!950067))

(declare-fun m!950069 () Bool)

(assert (=> b!1030236 m!950069))

(declare-fun m!950071 () Bool)

(assert (=> b!1030236 m!950071))

(declare-fun m!950073 () Bool)

(assert (=> b!1030236 m!950073))

(declare-fun m!950075 () Bool)

(assert (=> mapNonEmpty!37941 m!950075))

(declare-fun m!950077 () Bool)

(assert (=> b!1030229 m!950077))

(declare-fun m!950079 () Bool)

(assert (=> start!90004 m!950079))

(declare-fun m!950081 () Bool)

(assert (=> b!1030232 m!950081))

(check-sat (not b!1030236) b_and!32995 (not b_lambda!15967) (not mapNonEmpty!37941) (not b!1030234) (not start!90004) (not b!1030229) (not b!1030232) tp_is_empty!24327 (not b_next!20607))
(check-sat b_and!32995 (not b_next!20607))
