; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89488 () Bool)

(assert start!89488)

(declare-fun b!1025763 () Bool)

(declare-fun b_free!20451 () Bool)

(declare-fun b_next!20451 () Bool)

(assert (=> b!1025763 (= b_free!20451 (not b_next!20451))))

(declare-fun tp!72399 () Bool)

(declare-fun b_and!32715 () Bool)

(assert (=> b!1025763 (= tp!72399 b_and!32715)))

(declare-fun b!1025761 () Bool)

(declare-fun e!578477 () Bool)

(declare-fun e!578478 () Bool)

(assert (=> b!1025761 (= e!578477 e!578478)))

(declare-fun res!686832 () Bool)

(assert (=> b!1025761 (=> (not res!686832) (not e!578478))))

(declare-datatypes ((SeekEntryResult!9616 0))(
  ( (MissingZero!9616 (index!40834 (_ BitVec 32))) (Found!9616 (index!40835 (_ BitVec 32))) (Intermediate!9616 (undefined!10428 Bool) (index!40836 (_ BitVec 32)) (x!91209 (_ BitVec 32))) (Undefined!9616) (MissingVacant!9616 (index!40837 (_ BitVec 32))) )
))
(declare-fun lt!451089 () SeekEntryResult!9616)

(get-info :version)

(assert (=> b!1025761 (= res!686832 ((_ is Found!9616) lt!451089))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37101 0))(
  ( (V!37102 (val!12136 Int)) )
))
(declare-datatypes ((ValueCell!11382 0))(
  ( (ValueCellFull!11382 (v!14706 V!37101)) (EmptyCell!11382) )
))
(declare-datatypes ((array!64376 0))(
  ( (array!64377 (arr!30993 (Array (_ BitVec 32) (_ BitVec 64))) (size!31507 (_ BitVec 32))) )
))
(declare-datatypes ((array!64378 0))(
  ( (array!64379 (arr!30994 (Array (_ BitVec 32) ValueCell!11382)) (size!31508 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5358 0))(
  ( (LongMapFixedSize!5359 (defaultEntry!6031 Int) (mask!29704 (_ BitVec 32)) (extraKeys!5763 (_ BitVec 32)) (zeroValue!5867 V!37101) (minValue!5867 V!37101) (_size!2734 (_ BitVec 32)) (_keys!11175 array!64376) (_values!6054 array!64378) (_vacant!2734 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5358)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64376 (_ BitVec 32)) SeekEntryResult!9616)

(assert (=> b!1025761 (= lt!451089 (seekEntry!0 key!909 (_keys!11175 thiss!1427) (mask!29704 thiss!1427)))))

(declare-fun b!1025762 () Bool)

(declare-fun res!686831 () Bool)

(declare-fun e!578479 () Bool)

(assert (=> b!1025762 (=> res!686831 e!578479)))

(assert (=> b!1025762 (= res!686831 (or (not (= (size!31507 (_keys!11175 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29704 thiss!1427)))) (bvslt (index!40835 lt!451089) #b00000000000000000000000000000000) (bvsge (index!40835 lt!451089) (size!31507 (_keys!11175 thiss!1427)))))))

(declare-fun e!578476 () Bool)

(declare-fun tp_is_empty!24171 () Bool)

(declare-fun e!578474 () Bool)

(declare-fun array_inv!23857 (array!64376) Bool)

(declare-fun array_inv!23858 (array!64378) Bool)

(assert (=> b!1025763 (= e!578476 (and tp!72399 tp_is_empty!24171 (array_inv!23857 (_keys!11175 thiss!1427)) (array_inv!23858 (_values!6054 thiss!1427)) e!578474))))

(declare-fun mapIsEmpty!37685 () Bool)

(declare-fun mapRes!37685 () Bool)

(assert (=> mapIsEmpty!37685 mapRes!37685))

(declare-fun b!1025764 () Bool)

(declare-fun res!686828 () Bool)

(assert (=> b!1025764 (=> res!686828 e!578479)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025764 (= res!686828 (not (validKeyInArray!0 (select (arr!30993 (_keys!11175 thiss!1427)) (index!40835 lt!451089)))))))

(declare-fun res!686826 () Bool)

(assert (=> start!89488 (=> (not res!686826) (not e!578477))))

(declare-fun valid!1987 (LongMapFixedSize!5358) Bool)

(assert (=> start!89488 (= res!686826 (valid!1987 thiss!1427))))

(assert (=> start!89488 e!578477))

(assert (=> start!89488 e!578476))

(assert (=> start!89488 true))

(declare-fun mapNonEmpty!37685 () Bool)

(declare-fun tp!72400 () Bool)

(declare-fun e!578473 () Bool)

(assert (=> mapNonEmpty!37685 (= mapRes!37685 (and tp!72400 e!578473))))

(declare-fun mapValue!37685 () ValueCell!11382)

(declare-fun mapKey!37685 () (_ BitVec 32))

(declare-fun mapRest!37685 () (Array (_ BitVec 32) ValueCell!11382))

(assert (=> mapNonEmpty!37685 (= (arr!30994 (_values!6054 thiss!1427)) (store mapRest!37685 mapKey!37685 mapValue!37685))))

(declare-fun b!1025765 () Bool)

(assert (=> b!1025765 (= e!578473 tp_is_empty!24171)))

(declare-fun b!1025766 () Bool)

(assert (=> b!1025766 (= e!578479 true)))

(declare-fun lt!451090 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64376 (_ BitVec 32)) Bool)

(assert (=> b!1025766 (= lt!451090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11175 thiss!1427) (mask!29704 thiss!1427)))))

(declare-fun b!1025767 () Bool)

(declare-fun e!578480 () Bool)

(assert (=> b!1025767 (= e!578474 (and e!578480 mapRes!37685))))

(declare-fun condMapEmpty!37685 () Bool)

(declare-fun mapDefault!37685 () ValueCell!11382)

(assert (=> b!1025767 (= condMapEmpty!37685 (= (arr!30994 (_values!6054 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11382)) mapDefault!37685)))))

(declare-fun b!1025768 () Bool)

(declare-fun res!686830 () Bool)

(assert (=> b!1025768 (=> (not res!686830) (not e!578477))))

(assert (=> b!1025768 (= res!686830 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025769 () Bool)

(declare-fun res!686829 () Bool)

(assert (=> b!1025769 (=> res!686829 e!578479)))

(declare-datatypes ((List!21868 0))(
  ( (Nil!21865) (Cons!21864 (h!23062 (_ BitVec 64)) (t!30937 List!21868)) )
))
(declare-fun arrayNoDuplicates!0 (array!64376 (_ BitVec 32) List!21868) Bool)

(assert (=> b!1025769 (= res!686829 (not (arrayNoDuplicates!0 (_keys!11175 thiss!1427) #b00000000000000000000000000000000 Nil!21865)))))

(declare-fun b!1025770 () Bool)

(assert (=> b!1025770 (= e!578480 tp_is_empty!24171)))

(declare-fun b!1025771 () Bool)

(assert (=> b!1025771 (= e!578478 (not e!578479))))

(declare-fun res!686827 () Bool)

(assert (=> b!1025771 (=> res!686827 e!578479)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025771 (= res!686827 (not (validMask!0 (mask!29704 thiss!1427))))))

(declare-fun lt!451086 () array!64376)

(assert (=> b!1025771 (arrayNoDuplicates!0 lt!451086 #b00000000000000000000000000000000 Nil!21865)))

(declare-datatypes ((Unit!33370 0))(
  ( (Unit!33371) )
))
(declare-fun lt!451087 () Unit!33370)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64376 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21868) Unit!33370)

(assert (=> b!1025771 (= lt!451087 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11175 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40835 lt!451089) #b00000000000000000000000000000000 Nil!21865))))

(declare-fun arrayCountValidKeys!0 (array!64376 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025771 (= (arrayCountValidKeys!0 lt!451086 #b00000000000000000000000000000000 (size!31507 (_keys!11175 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11175 thiss!1427) #b00000000000000000000000000000000 (size!31507 (_keys!11175 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025771 (= lt!451086 (array!64377 (store (arr!30993 (_keys!11175 thiss!1427)) (index!40835 lt!451089) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31507 (_keys!11175 thiss!1427))))))

(declare-fun lt!451088 () Unit!33370)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64376 (_ BitVec 32) (_ BitVec 64)) Unit!33370)

(assert (=> b!1025771 (= lt!451088 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11175 thiss!1427) (index!40835 lt!451089) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!89488 res!686826) b!1025768))

(assert (= (and b!1025768 res!686830) b!1025761))

(assert (= (and b!1025761 res!686832) b!1025771))

(assert (= (and b!1025771 (not res!686827)) b!1025762))

(assert (= (and b!1025762 (not res!686831)) b!1025764))

(assert (= (and b!1025764 (not res!686828)) b!1025769))

(assert (= (and b!1025769 (not res!686829)) b!1025766))

(assert (= (and b!1025767 condMapEmpty!37685) mapIsEmpty!37685))

(assert (= (and b!1025767 (not condMapEmpty!37685)) mapNonEmpty!37685))

(assert (= (and mapNonEmpty!37685 ((_ is ValueCellFull!11382) mapValue!37685)) b!1025765))

(assert (= (and b!1025767 ((_ is ValueCellFull!11382) mapDefault!37685)) b!1025770))

(assert (= b!1025763 b!1025767))

(assert (= start!89488 b!1025763))

(declare-fun m!944067 () Bool)

(assert (=> b!1025771 m!944067))

(declare-fun m!944069 () Bool)

(assert (=> b!1025771 m!944069))

(declare-fun m!944071 () Bool)

(assert (=> b!1025771 m!944071))

(declare-fun m!944073 () Bool)

(assert (=> b!1025771 m!944073))

(declare-fun m!944075 () Bool)

(assert (=> b!1025771 m!944075))

(declare-fun m!944077 () Bool)

(assert (=> b!1025771 m!944077))

(declare-fun m!944079 () Bool)

(assert (=> b!1025771 m!944079))

(declare-fun m!944081 () Bool)

(assert (=> b!1025761 m!944081))

(declare-fun m!944083 () Bool)

(assert (=> b!1025763 m!944083))

(declare-fun m!944085 () Bool)

(assert (=> b!1025763 m!944085))

(declare-fun m!944087 () Bool)

(assert (=> start!89488 m!944087))

(declare-fun m!944089 () Bool)

(assert (=> b!1025766 m!944089))

(declare-fun m!944091 () Bool)

(assert (=> b!1025764 m!944091))

(assert (=> b!1025764 m!944091))

(declare-fun m!944093 () Bool)

(assert (=> b!1025764 m!944093))

(declare-fun m!944095 () Bool)

(assert (=> b!1025769 m!944095))

(declare-fun m!944097 () Bool)

(assert (=> mapNonEmpty!37685 m!944097))

(check-sat b_and!32715 (not start!89488) tp_is_empty!24171 (not mapNonEmpty!37685) (not b!1025766) (not b!1025769) (not b_next!20451) (not b!1025764) (not b!1025771) (not b!1025761) (not b!1025763))
(check-sat b_and!32715 (not b_next!20451))
