; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21838 () Bool)

(assert start!21838)

(declare-fun b!219439 () Bool)

(declare-fun b_free!5893 () Bool)

(declare-fun b_next!5893 () Bool)

(assert (=> b!219439 (= b_free!5893 (not b_next!5893))))

(declare-fun tp!20821 () Bool)

(declare-fun b_and!12809 () Bool)

(assert (=> b!219439 (= tp!20821 b_and!12809)))

(declare-fun b!219422 () Bool)

(declare-datatypes ((Unit!6538 0))(
  ( (Unit!6539) )
))
(declare-fun e!142732 () Unit!6538)

(declare-fun Unit!6540 () Unit!6538)

(assert (=> b!219422 (= e!142732 Unit!6540)))

(declare-fun lt!111983 () Unit!6538)

(declare-datatypes ((V!7321 0))(
  ( (V!7322 (val!2922 Int)) )
))
(declare-datatypes ((ValueCell!2534 0))(
  ( (ValueCellFull!2534 (v!4938 V!7321)) (EmptyCell!2534) )
))
(declare-datatypes ((array!10752 0))(
  ( (array!10753 (arr!5095 (Array (_ BitVec 32) ValueCell!2534)) (size!5428 (_ BitVec 32))) )
))
(declare-datatypes ((array!10754 0))(
  ( (array!10755 (arr!5096 (Array (_ BitVec 32) (_ BitVec 64))) (size!5429 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2968 0))(
  ( (LongMapFixedSize!2969 (defaultEntry!4143 Int) (mask!9935 (_ BitVec 32)) (extraKeys!3880 (_ BitVec 32)) (zeroValue!3984 V!7321) (minValue!3984 V!7321) (_size!1533 (_ BitVec 32)) (_keys!6197 array!10754) (_values!4126 array!10752) (_vacant!1533 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2968)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!195 (array!10754 array!10752 (_ BitVec 32) (_ BitVec 32) V!7321 V!7321 (_ BitVec 64) Int) Unit!6538)

(assert (=> b!219422 (= lt!111983 (lemmaInListMapThenSeekEntryOrOpenFindsIt!195 (_keys!6197 thiss!1504) (_values!4126 thiss!1504) (mask!9935 thiss!1504) (extraKeys!3880 thiss!1504) (zeroValue!3984 thiss!1504) (minValue!3984 thiss!1504) key!932 (defaultEntry!4143 thiss!1504)))))

(assert (=> b!219422 false))

(declare-fun b!219423 () Bool)

(declare-fun e!142739 () Bool)

(assert (=> b!219423 (= e!142739 false)))

(declare-fun lt!111980 () Bool)

(declare-datatypes ((List!3260 0))(
  ( (Nil!3257) (Cons!3256 (h!3904 (_ BitVec 64)) (t!8227 List!3260)) )
))
(declare-fun arrayNoDuplicates!0 (array!10754 (_ BitVec 32) List!3260) Bool)

(assert (=> b!219423 (= lt!111980 (arrayNoDuplicates!0 (_keys!6197 thiss!1504) #b00000000000000000000000000000000 Nil!3257))))

(declare-fun b!219424 () Bool)

(declare-fun e!142744 () Bool)

(declare-fun tp_is_empty!5755 () Bool)

(assert (=> b!219424 (= e!142744 tp_is_empty!5755)))

(declare-fun b!219425 () Bool)

(declare-fun e!142742 () Bool)

(assert (=> b!219425 (= e!142742 tp_is_empty!5755)))

(declare-fun b!219426 () Bool)

(declare-fun res!107560 () Bool)

(declare-fun e!142738 () Bool)

(assert (=> b!219426 (=> (not res!107560) (not e!142738))))

(declare-datatypes ((SeekEntryResult!807 0))(
  ( (MissingZero!807 (index!5398 (_ BitVec 32))) (Found!807 (index!5399 (_ BitVec 32))) (Intermediate!807 (undefined!1619 Bool) (index!5400 (_ BitVec 32)) (x!22915 (_ BitVec 32))) (Undefined!807) (MissingVacant!807 (index!5401 (_ BitVec 32))) )
))
(declare-fun lt!111984 () SeekEntryResult!807)

(assert (=> b!219426 (= res!107560 (= (select (arr!5096 (_keys!6197 thiss!1504)) (index!5398 lt!111984)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219427 () Bool)

(declare-fun lt!111981 () Unit!6538)

(assert (=> b!219427 (= e!142732 lt!111981)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!203 (array!10754 array!10752 (_ BitVec 32) (_ BitVec 32) V!7321 V!7321 (_ BitVec 64) Int) Unit!6538)

(assert (=> b!219427 (= lt!111981 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!203 (_keys!6197 thiss!1504) (_values!4126 thiss!1504) (mask!9935 thiss!1504) (extraKeys!3880 thiss!1504) (zeroValue!3984 thiss!1504) (minValue!3984 thiss!1504) key!932 (defaultEntry!4143 thiss!1504)))))

(declare-fun c!36531 () Bool)

(assert (=> b!219427 (= c!36531 (is-MissingZero!807 lt!111984))))

(declare-fun e!142736 () Bool)

(assert (=> b!219427 e!142736))

(declare-fun res!107562 () Bool)

(declare-fun e!142733 () Bool)

(assert (=> start!21838 (=> (not res!107562) (not e!142733))))

(declare-fun valid!1193 (LongMapFixedSize!2968) Bool)

(assert (=> start!21838 (= res!107562 (valid!1193 thiss!1504))))

(assert (=> start!21838 e!142733))

(declare-fun e!142741 () Bool)

(assert (=> start!21838 e!142741))

(assert (=> start!21838 true))

(declare-fun bm!20508 () Bool)

(declare-fun call!20512 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20508 (= call!20512 (inRange!0 (ite c!36531 (index!5398 lt!111984) (index!5401 lt!111984)) (mask!9935 thiss!1504)))))

(declare-fun b!219428 () Bool)

(declare-fun e!142737 () Bool)

(declare-fun e!142743 () Bool)

(assert (=> b!219428 (= e!142737 e!142743)))

(declare-fun res!107554 () Bool)

(assert (=> b!219428 (= res!107554 call!20512)))

(assert (=> b!219428 (=> (not res!107554) (not e!142743))))

(declare-fun b!219429 () Bool)

(assert (=> b!219429 (= e!142737 (is-Undefined!807 lt!111984))))

(declare-fun b!219430 () Bool)

(declare-fun call!20511 () Bool)

(assert (=> b!219430 (= e!142743 (not call!20511))))

(declare-fun b!219431 () Bool)

(declare-fun c!36532 () Bool)

(assert (=> b!219431 (= c!36532 (is-MissingVacant!807 lt!111984))))

(assert (=> b!219431 (= e!142736 e!142737)))

(declare-fun b!219432 () Bool)

(declare-fun e!142740 () Bool)

(assert (=> b!219432 (= e!142733 e!142740)))

(declare-fun res!107561 () Bool)

(assert (=> b!219432 (=> (not res!107561) (not e!142740))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!219432 (= res!107561 (or (= lt!111984 (MissingZero!807 index!297)) (= lt!111984 (MissingVacant!807 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10754 (_ BitVec 32)) SeekEntryResult!807)

(assert (=> b!219432 (= lt!111984 (seekEntryOrOpen!0 key!932 (_keys!6197 thiss!1504) (mask!9935 thiss!1504)))))

(declare-fun b!219433 () Bool)

(declare-fun res!107557 () Bool)

(assert (=> b!219433 (=> (not res!107557) (not e!142739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!219433 (= res!107557 (validMask!0 (mask!9935 thiss!1504)))))

(declare-fun b!219434 () Bool)

(assert (=> b!219434 (= e!142738 (not call!20511))))

(declare-fun bm!20509 () Bool)

(declare-fun arrayContainsKey!0 (array!10754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20509 (= call!20511 (arrayContainsKey!0 (_keys!6197 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219435 () Bool)

(declare-fun res!107556 () Bool)

(assert (=> b!219435 (=> (not res!107556) (not e!142733))))

(assert (=> b!219435 (= res!107556 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!219436 () Bool)

(declare-fun res!107553 () Bool)

(assert (=> b!219436 (=> (not res!107553) (not e!142739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10754 (_ BitVec 32)) Bool)

(assert (=> b!219436 (= res!107553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6197 thiss!1504) (mask!9935 thiss!1504)))))

(declare-fun b!219437 () Bool)

(declare-fun res!107563 () Bool)

(assert (=> b!219437 (=> (not res!107563) (not e!142739))))

(assert (=> b!219437 (= res!107563 (arrayContainsKey!0 (_keys!6197 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219438 () Bool)

(assert (=> b!219438 (= e!142740 e!142739)))

(declare-fun res!107558 () Bool)

(assert (=> b!219438 (=> (not res!107558) (not e!142739))))

(assert (=> b!219438 (= res!107558 (inRange!0 index!297 (mask!9935 thiss!1504)))))

(declare-fun lt!111982 () Unit!6538)

(assert (=> b!219438 (= lt!111982 e!142732)))

(declare-fun c!36533 () Bool)

(declare-datatypes ((tuple2!4334 0))(
  ( (tuple2!4335 (_1!2177 (_ BitVec 64)) (_2!2177 V!7321)) )
))
(declare-datatypes ((List!3261 0))(
  ( (Nil!3258) (Cons!3257 (h!3905 tuple2!4334) (t!8228 List!3261)) )
))
(declare-datatypes ((ListLongMap!3261 0))(
  ( (ListLongMap!3262 (toList!1646 List!3261)) )
))
(declare-fun contains!1483 (ListLongMap!3261 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1169 (array!10754 array!10752 (_ BitVec 32) (_ BitVec 32) V!7321 V!7321 (_ BitVec 32) Int) ListLongMap!3261)

(assert (=> b!219438 (= c!36533 (contains!1483 (getCurrentListMap!1169 (_keys!6197 thiss!1504) (_values!4126 thiss!1504) (mask!9935 thiss!1504) (extraKeys!3880 thiss!1504) (zeroValue!3984 thiss!1504) (minValue!3984 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4143 thiss!1504)) key!932))))

(declare-fun e!142735 () Bool)

(declare-fun array_inv!3365 (array!10754) Bool)

(declare-fun array_inv!3366 (array!10752) Bool)

(assert (=> b!219439 (= e!142741 (and tp!20821 tp_is_empty!5755 (array_inv!3365 (_keys!6197 thiss!1504)) (array_inv!3366 (_values!4126 thiss!1504)) e!142735))))

(declare-fun b!219440 () Bool)

(declare-fun res!107552 () Bool)

(assert (=> b!219440 (= res!107552 (= (select (arr!5096 (_keys!6197 thiss!1504)) (index!5401 lt!111984)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!219440 (=> (not res!107552) (not e!142743))))

(declare-fun mapNonEmpty!9802 () Bool)

(declare-fun mapRes!9802 () Bool)

(declare-fun tp!20820 () Bool)

(assert (=> mapNonEmpty!9802 (= mapRes!9802 (and tp!20820 e!142742))))

(declare-fun mapRest!9802 () (Array (_ BitVec 32) ValueCell!2534))

(declare-fun mapKey!9802 () (_ BitVec 32))

(declare-fun mapValue!9802 () ValueCell!2534)

(assert (=> mapNonEmpty!9802 (= (arr!5095 (_values!4126 thiss!1504)) (store mapRest!9802 mapKey!9802 mapValue!9802))))

(declare-fun b!219441 () Bool)

(declare-fun res!107555 () Bool)

(assert (=> b!219441 (=> (not res!107555) (not e!142738))))

(assert (=> b!219441 (= res!107555 call!20512)))

(assert (=> b!219441 (= e!142736 e!142738)))

(declare-fun b!219442 () Bool)

(assert (=> b!219442 (= e!142735 (and e!142744 mapRes!9802))))

(declare-fun condMapEmpty!9802 () Bool)

(declare-fun mapDefault!9802 () ValueCell!2534)

