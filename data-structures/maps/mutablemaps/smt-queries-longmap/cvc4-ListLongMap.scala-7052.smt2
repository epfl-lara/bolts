; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89406 () Bool)

(assert start!89406)

(declare-fun b!1024414 () Bool)

(declare-fun b_free!20369 () Bool)

(declare-fun b_next!20369 () Bool)

(assert (=> b!1024414 (= b_free!20369 (not b_next!20369))))

(declare-fun tp!72153 () Bool)

(declare-fun b_and!32633 () Bool)

(assert (=> b!1024414 (= tp!72153 b_and!32633)))

(declare-fun b!1024408 () Bool)

(declare-fun res!685968 () Bool)

(declare-fun e!577495 () Bool)

(assert (=> b!1024408 (=> res!685968 e!577495)))

(declare-datatypes ((List!21833 0))(
  ( (Nil!21830) (Cons!21829 (h!23027 (_ BitVec 64)) (t!30902 List!21833)) )
))
(declare-fun contains!5961 (List!21833 (_ BitVec 64)) Bool)

(assert (=> b!1024408 (= res!685968 (contains!5961 Nil!21830 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024409 () Bool)

(declare-fun res!685970 () Bool)

(assert (=> b!1024409 (=> res!685970 e!577495)))

(declare-fun noDuplicate!1472 (List!21833) Bool)

(assert (=> b!1024409 (= res!685970 (not (noDuplicate!1472 Nil!21830)))))

(declare-fun b!1024410 () Bool)

(declare-fun res!685967 () Bool)

(assert (=> b!1024410 (=> res!685967 e!577495)))

(assert (=> b!1024410 (= res!685967 (contains!5961 Nil!21830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!37562 () Bool)

(declare-fun mapRes!37562 () Bool)

(declare-fun tp!72154 () Bool)

(declare-fun e!577490 () Bool)

(assert (=> mapNonEmpty!37562 (= mapRes!37562 (and tp!72154 e!577490))))

(declare-datatypes ((V!36991 0))(
  ( (V!36992 (val!12095 Int)) )
))
(declare-datatypes ((ValueCell!11341 0))(
  ( (ValueCellFull!11341 (v!14665 V!36991)) (EmptyCell!11341) )
))
(declare-datatypes ((array!64212 0))(
  ( (array!64213 (arr!30911 (Array (_ BitVec 32) (_ BitVec 64))) (size!31425 (_ BitVec 32))) )
))
(declare-datatypes ((array!64214 0))(
  ( (array!64215 (arr!30912 (Array (_ BitVec 32) ValueCell!11341)) (size!31426 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5276 0))(
  ( (LongMapFixedSize!5277 (defaultEntry!5990 Int) (mask!29635 (_ BitVec 32)) (extraKeys!5722 (_ BitVec 32)) (zeroValue!5826 V!36991) (minValue!5826 V!36991) (_size!2693 (_ BitVec 32)) (_keys!11134 array!64212) (_values!6013 array!64214) (_vacant!2693 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5276)

(declare-fun mapKey!37562 () (_ BitVec 32))

(declare-fun mapRest!37562 () (Array (_ BitVec 32) ValueCell!11341))

(declare-fun mapValue!37562 () ValueCell!11341)

(assert (=> mapNonEmpty!37562 (= (arr!30912 (_values!6013 thiss!1427)) (store mapRest!37562 mapKey!37562 mapValue!37562))))

(declare-fun b!1024411 () Bool)

(assert (=> b!1024411 (= e!577495 true)))

(declare-fun lt!450600 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64212 (_ BitVec 32) List!21833) Bool)

(assert (=> b!1024411 (= lt!450600 (arrayNoDuplicates!0 (_keys!11134 thiss!1427) #b00000000000000000000000000000000 Nil!21830))))

(declare-fun b!1024413 () Bool)

(declare-fun e!577492 () Bool)

(declare-fun e!577494 () Bool)

(assert (=> b!1024413 (= e!577492 e!577494)))

(declare-fun res!685971 () Bool)

(assert (=> b!1024413 (=> (not res!685971) (not e!577494))))

(declare-datatypes ((SeekEntryResult!9585 0))(
  ( (MissingZero!9585 (index!40710 (_ BitVec 32))) (Found!9585 (index!40711 (_ BitVec 32))) (Intermediate!9585 (undefined!10397 Bool) (index!40712 (_ BitVec 32)) (x!91066 (_ BitVec 32))) (Undefined!9585) (MissingVacant!9585 (index!40713 (_ BitVec 32))) )
))
(declare-fun lt!450599 () SeekEntryResult!9585)

(assert (=> b!1024413 (= res!685971 (is-Found!9585 lt!450599))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64212 (_ BitVec 32)) SeekEntryResult!9585)

(assert (=> b!1024413 (= lt!450599 (seekEntry!0 key!909 (_keys!11134 thiss!1427) (mask!29635 thiss!1427)))))

(declare-fun e!577496 () Bool)

(declare-fun e!577493 () Bool)

(declare-fun tp_is_empty!24089 () Bool)

(declare-fun array_inv!23809 (array!64212) Bool)

(declare-fun array_inv!23810 (array!64214) Bool)

(assert (=> b!1024414 (= e!577493 (and tp!72153 tp_is_empty!24089 (array_inv!23809 (_keys!11134 thiss!1427)) (array_inv!23810 (_values!6013 thiss!1427)) e!577496))))

(declare-fun b!1024415 () Bool)

(assert (=> b!1024415 (= e!577490 tp_is_empty!24089)))

(declare-fun mapIsEmpty!37562 () Bool)

(assert (=> mapIsEmpty!37562 mapRes!37562))

(declare-fun b!1024416 () Bool)

(assert (=> b!1024416 (= e!577494 (not e!577495))))

(declare-fun res!685965 () Bool)

(assert (=> b!1024416 (=> res!685965 e!577495)))

(assert (=> b!1024416 (= res!685965 (or (bvsge (size!31425 (_keys!11134 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31425 (_keys!11134 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!64212 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024416 (= (arrayCountValidKeys!0 (array!64213 (store (arr!30911 (_keys!11134 thiss!1427)) (index!40711 lt!450599) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31425 (_keys!11134 thiss!1427))) #b00000000000000000000000000000000 (size!31425 (_keys!11134 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11134 thiss!1427) #b00000000000000000000000000000000 (size!31425 (_keys!11134 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33316 0))(
  ( (Unit!33317) )
))
(declare-fun lt!450601 () Unit!33316)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64212 (_ BitVec 32) (_ BitVec 64)) Unit!33316)

(assert (=> b!1024416 (= lt!450601 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11134 thiss!1427) (index!40711 lt!450599) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024417 () Bool)

(declare-fun res!685969 () Bool)

(assert (=> b!1024417 (=> (not res!685969) (not e!577492))))

(assert (=> b!1024417 (= res!685969 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024418 () Bool)

(declare-fun e!577489 () Bool)

(assert (=> b!1024418 (= e!577489 tp_is_empty!24089)))

(declare-fun b!1024412 () Bool)

(assert (=> b!1024412 (= e!577496 (and e!577489 mapRes!37562))))

(declare-fun condMapEmpty!37562 () Bool)

(declare-fun mapDefault!37562 () ValueCell!11341)

