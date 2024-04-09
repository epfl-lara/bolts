; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80438 () Bool)

(assert start!80438)

(declare-fun b!944343 () Bool)

(declare-fun b_free!18053 () Bool)

(declare-fun b_next!18053 () Bool)

(assert (=> b!944343 (= b_free!18053 (not b_next!18053))))

(declare-fun tp!62670 () Bool)

(declare-fun b_and!29489 () Bool)

(assert (=> b!944343 (= tp!62670 b_and!29489)))

(declare-fun b!944341 () Bool)

(declare-fun e!531083 () Bool)

(declare-fun tp_is_empty!20561 () Bool)

(assert (=> b!944341 (= e!531083 tp_is_empty!20561)))

(declare-fun mapNonEmpty!32667 () Bool)

(declare-fun mapRes!32667 () Bool)

(declare-fun tp!62669 () Bool)

(declare-fun e!531086 () Bool)

(assert (=> mapNonEmpty!32667 (= mapRes!32667 (and tp!62669 e!531086))))

(declare-datatypes ((V!32379 0))(
  ( (V!32380 (val!10331 Int)) )
))
(declare-datatypes ((ValueCell!9799 0))(
  ( (ValueCellFull!9799 (v!12863 V!32379)) (EmptyCell!9799) )
))
(declare-fun mapValue!32667 () ValueCell!9799)

(declare-datatypes ((array!57112 0))(
  ( (array!57113 (arr!27477 (Array (_ BitVec 32) ValueCell!9799)) (size!27944 (_ BitVec 32))) )
))
(declare-datatypes ((array!57114 0))(
  ( (array!57115 (arr!27478 (Array (_ BitVec 32) (_ BitVec 64))) (size!27945 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4748 0))(
  ( (LongMapFixedSize!4749 (defaultEntry!5669 Int) (mask!27312 (_ BitVec 32)) (extraKeys!5401 (_ BitVec 32)) (zeroValue!5505 V!32379) (minValue!5505 V!32379) (_size!2429 (_ BitVec 32)) (_keys!10543 array!57114) (_values!5692 array!57112) (_vacant!2429 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4748)

(declare-fun mapRest!32667 () (Array (_ BitVec 32) ValueCell!9799))

(declare-fun mapKey!32667 () (_ BitVec 32))

(assert (=> mapNonEmpty!32667 (= (arr!27477 (_values!5692 thiss!1141)) (store mapRest!32667 mapKey!32667 mapValue!32667))))

(declare-fun b!944342 () Bool)

(declare-fun e!531081 () Bool)

(assert (=> b!944342 (= e!531081 true)))

(declare-datatypes ((SeekEntryResult!9060 0))(
  ( (MissingZero!9060 (index!38610 (_ BitVec 32))) (Found!9060 (index!38611 (_ BitVec 32))) (Intermediate!9060 (undefined!9872 Bool) (index!38612 (_ BitVec 32)) (x!81104 (_ BitVec 32))) (Undefined!9060) (MissingVacant!9060 (index!38613 (_ BitVec 32))) )
))
(declare-fun lt!425591 () SeekEntryResult!9060)

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57114 (_ BitVec 32)) SeekEntryResult!9060)

(assert (=> b!944342 (= lt!425591 (seekEntryOrOpen!0 key!756 (_keys!10543 thiss!1141) (mask!27312 thiss!1141)))))

(declare-fun e!531087 () Bool)

(declare-fun e!531085 () Bool)

(declare-fun array_inv!21294 (array!57114) Bool)

(declare-fun array_inv!21295 (array!57112) Bool)

(assert (=> b!944343 (= e!531087 (and tp!62670 tp_is_empty!20561 (array_inv!21294 (_keys!10543 thiss!1141)) (array_inv!21295 (_values!5692 thiss!1141)) e!531085))))

(declare-fun b!944344 () Bool)

(declare-fun res!634501 () Bool)

(assert (=> b!944344 (=> res!634501 e!531081)))

(assert (=> b!944344 (= res!634501 (not (= (size!27945 (_keys!10543 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27312 thiss!1141)))))))

(declare-fun b!944346 () Bool)

(assert (=> b!944346 (= e!531086 tp_is_empty!20561)))

(declare-fun b!944347 () Bool)

(declare-fun res!634504 () Bool)

(declare-fun e!531084 () Bool)

(assert (=> b!944347 (=> (not res!634504) (not e!531084))))

(declare-datatypes ((tuple2!13580 0))(
  ( (tuple2!13581 (_1!6800 (_ BitVec 64)) (_2!6800 V!32379)) )
))
(declare-datatypes ((List!19404 0))(
  ( (Nil!19401) (Cons!19400 (h!20551 tuple2!13580) (t!27729 List!19404)) )
))
(declare-datatypes ((ListLongMap!12291 0))(
  ( (ListLongMap!12292 (toList!6161 List!19404)) )
))
(declare-fun contains!5184 (ListLongMap!12291 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3349 (array!57114 array!57112 (_ BitVec 32) (_ BitVec 32) V!32379 V!32379 (_ BitVec 32) Int) ListLongMap!12291)

(assert (=> b!944347 (= res!634504 (contains!5184 (getCurrentListMap!3349 (_keys!10543 thiss!1141) (_values!5692 thiss!1141) (mask!27312 thiss!1141) (extraKeys!5401 thiss!1141) (zeroValue!5505 thiss!1141) (minValue!5505 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5669 thiss!1141)) key!756))))

(declare-fun b!944348 () Bool)

(declare-fun res!634503 () Bool)

(assert (=> b!944348 (=> res!634503 e!531081)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57114 (_ BitVec 32)) Bool)

(assert (=> b!944348 (= res!634503 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10543 thiss!1141) (mask!27312 thiss!1141))))))

(declare-fun b!944349 () Bool)

(declare-fun res!634500 () Bool)

(assert (=> b!944349 (=> (not res!634500) (not e!531084))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57114 (_ BitVec 32)) SeekEntryResult!9060)

(assert (=> b!944349 (= res!634500 (not (is-Found!9060 (seekEntry!0 key!756 (_keys!10543 thiss!1141) (mask!27312 thiss!1141)))))))

(declare-fun b!944350 () Bool)

(declare-fun res!634499 () Bool)

(assert (=> b!944350 (=> (not res!634499) (not e!531084))))

(assert (=> b!944350 (= res!634499 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32667 () Bool)

(assert (=> mapIsEmpty!32667 mapRes!32667))

(declare-fun b!944351 () Bool)

(declare-fun res!634497 () Bool)

(assert (=> b!944351 (=> res!634497 e!531081)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944351 (= res!634497 (not (validKeyInArray!0 key!756)))))

(declare-fun b!944352 () Bool)

(assert (=> b!944352 (= e!531084 (not e!531081))))

(declare-fun res!634502 () Bool)

(assert (=> b!944352 (=> res!634502 e!531081)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944352 (= res!634502 (not (validMask!0 (mask!27312 thiss!1141))))))

(declare-fun lt!425592 () (_ BitVec 32))

(assert (=> b!944352 (arrayForallSeekEntryOrOpenFound!0 lt!425592 (_keys!10543 thiss!1141) (mask!27312 thiss!1141))))

(declare-datatypes ((Unit!31849 0))(
  ( (Unit!31850) )
))
(declare-fun lt!425594 () Unit!31849)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57114 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31849)

(assert (=> b!944352 (= lt!425594 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10543 thiss!1141) (mask!27312 thiss!1141) #b00000000000000000000000000000000 lt!425592))))

(declare-fun arrayScanForKey!0 (array!57114 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944352 (= lt!425592 (arrayScanForKey!0 (_keys!10543 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944352 (arrayContainsKey!0 (_keys!10543 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425593 () Unit!31849)

(declare-fun lemmaKeyInListMapIsInArray!308 (array!57114 array!57112 (_ BitVec 32) (_ BitVec 32) V!32379 V!32379 (_ BitVec 64) Int) Unit!31849)

(assert (=> b!944352 (= lt!425593 (lemmaKeyInListMapIsInArray!308 (_keys!10543 thiss!1141) (_values!5692 thiss!1141) (mask!27312 thiss!1141) (extraKeys!5401 thiss!1141) (zeroValue!5505 thiss!1141) (minValue!5505 thiss!1141) key!756 (defaultEntry!5669 thiss!1141)))))

(declare-fun b!944345 () Bool)

(assert (=> b!944345 (= e!531085 (and e!531083 mapRes!32667))))

(declare-fun condMapEmpty!32667 () Bool)

(declare-fun mapDefault!32667 () ValueCell!9799)

