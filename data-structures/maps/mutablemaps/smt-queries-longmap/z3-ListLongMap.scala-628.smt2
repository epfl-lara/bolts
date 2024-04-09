; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16130 () Bool)

(assert start!16130)

(declare-fun b!160317 () Bool)

(declare-fun b_free!3579 () Bool)

(declare-fun b_next!3579 () Bool)

(assert (=> b!160317 (= b_free!3579 (not b_next!3579))))

(declare-fun tp!13307 () Bool)

(declare-fun b_and!10011 () Bool)

(assert (=> b!160317 (= tp!13307 b_and!10011)))

(declare-fun b!160309 () Bool)

(declare-fun res!75909 () Bool)

(declare-fun e!104842 () Bool)

(assert (=> b!160309 (=> (not res!75909) (not e!104842))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4155 0))(
  ( (V!4156 (val!1735 Int)) )
))
(declare-datatypes ((ValueCell!1347 0))(
  ( (ValueCellFull!1347 (v!3596 V!4155)) (EmptyCell!1347) )
))
(declare-datatypes ((array!5840 0))(
  ( (array!5841 (arr!2764 (Array (_ BitVec 32) (_ BitVec 64))) (size!3048 (_ BitVec 32))) )
))
(declare-datatypes ((array!5842 0))(
  ( (array!5843 (arr!2765 (Array (_ BitVec 32) ValueCell!1347)) (size!3049 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1602 0))(
  ( (LongMapFixedSize!1603 (defaultEntry!3243 Int) (mask!7811 (_ BitVec 32)) (extraKeys!2984 (_ BitVec 32)) (zeroValue!3086 V!4155) (minValue!3086 V!4155) (_size!850 (_ BitVec 32)) (_keys!5044 array!5840) (_values!3226 array!5842) (_vacant!850 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1602)

(get-info :version)

(declare-datatypes ((SeekEntryResult!340 0))(
  ( (MissingZero!340 (index!3528 (_ BitVec 32))) (Found!340 (index!3529 (_ BitVec 32))) (Intermediate!340 (undefined!1152 Bool) (index!3530 (_ BitVec 32)) (x!17708 (_ BitVec 32))) (Undefined!340) (MissingVacant!340 (index!3531 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5840 (_ BitVec 32)) SeekEntryResult!340)

(assert (=> b!160309 (= res!75909 ((_ is Undefined!340) (seekEntryOrOpen!0 key!828 (_keys!5044 thiss!1248) (mask!7811 thiss!1248))))))

(declare-fun b!160310 () Bool)

(assert (=> b!160310 (= e!104842 false)))

(declare-fun lt!82103 () Bool)

(declare-datatypes ((List!1962 0))(
  ( (Nil!1959) (Cons!1958 (h!2571 (_ BitVec 64)) (t!6772 List!1962)) )
))
(declare-fun arrayNoDuplicates!0 (array!5840 (_ BitVec 32) List!1962) Bool)

(assert (=> b!160310 (= lt!82103 (arrayNoDuplicates!0 (_keys!5044 thiss!1248) #b00000000000000000000000000000000 Nil!1959))))

(declare-fun mapNonEmpty!5759 () Bool)

(declare-fun mapRes!5759 () Bool)

(declare-fun tp!13306 () Bool)

(declare-fun e!104843 () Bool)

(assert (=> mapNonEmpty!5759 (= mapRes!5759 (and tp!13306 e!104843))))

(declare-fun mapValue!5759 () ValueCell!1347)

(declare-fun mapRest!5759 () (Array (_ BitVec 32) ValueCell!1347))

(declare-fun mapKey!5759 () (_ BitVec 32))

(assert (=> mapNonEmpty!5759 (= (arr!2765 (_values!3226 thiss!1248)) (store mapRest!5759 mapKey!5759 mapValue!5759))))

(declare-fun mapIsEmpty!5759 () Bool)

(assert (=> mapIsEmpty!5759 mapRes!5759))

(declare-fun b!160311 () Bool)

(declare-fun e!104840 () Bool)

(declare-fun tp_is_empty!3381 () Bool)

(assert (=> b!160311 (= e!104840 tp_is_empty!3381)))

(declare-fun b!160312 () Bool)

(declare-fun res!75905 () Bool)

(assert (=> b!160312 (=> (not res!75905) (not e!104842))))

(declare-datatypes ((tuple2!2906 0))(
  ( (tuple2!2907 (_1!1463 (_ BitVec 64)) (_2!1463 V!4155)) )
))
(declare-datatypes ((List!1963 0))(
  ( (Nil!1960) (Cons!1959 (h!2572 tuple2!2906) (t!6773 List!1963)) )
))
(declare-datatypes ((ListLongMap!1915 0))(
  ( (ListLongMap!1916 (toList!973 List!1963)) )
))
(declare-fun contains!1003 (ListLongMap!1915 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!633 (array!5840 array!5842 (_ BitVec 32) (_ BitVec 32) V!4155 V!4155 (_ BitVec 32) Int) ListLongMap!1915)

(assert (=> b!160312 (= res!75905 (not (contains!1003 (getCurrentListMap!633 (_keys!5044 thiss!1248) (_values!3226 thiss!1248) (mask!7811 thiss!1248) (extraKeys!2984 thiss!1248) (zeroValue!3086 thiss!1248) (minValue!3086 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3243 thiss!1248)) key!828)))))

(declare-fun b!160313 () Bool)

(declare-fun res!75911 () Bool)

(assert (=> b!160313 (=> (not res!75911) (not e!104842))))

(assert (=> b!160313 (= res!75911 (and (= (size!3049 (_values!3226 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7811 thiss!1248))) (= (size!3048 (_keys!5044 thiss!1248)) (size!3049 (_values!3226 thiss!1248))) (bvsge (mask!7811 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2984 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2984 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160314 () Bool)

(declare-fun res!75906 () Bool)

(assert (=> b!160314 (=> (not res!75906) (not e!104842))))

(assert (=> b!160314 (= res!75906 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160315 () Bool)

(declare-fun res!75910 () Bool)

(assert (=> b!160315 (=> (not res!75910) (not e!104842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160315 (= res!75910 (validMask!0 (mask!7811 thiss!1248)))))

(declare-fun b!160316 () Bool)

(declare-fun e!104841 () Bool)

(assert (=> b!160316 (= e!104841 (and e!104840 mapRes!5759))))

(declare-fun condMapEmpty!5759 () Bool)

(declare-fun mapDefault!5759 () ValueCell!1347)

(assert (=> b!160316 (= condMapEmpty!5759 (= (arr!2765 (_values!3226 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1347)) mapDefault!5759)))))

(declare-fun e!104839 () Bool)

(declare-fun array_inv!1755 (array!5840) Bool)

(declare-fun array_inv!1756 (array!5842) Bool)

(assert (=> b!160317 (= e!104839 (and tp!13307 tp_is_empty!3381 (array_inv!1755 (_keys!5044 thiss!1248)) (array_inv!1756 (_values!3226 thiss!1248)) e!104841))))

(declare-fun b!160318 () Bool)

(declare-fun res!75907 () Bool)

(assert (=> b!160318 (=> (not res!75907) (not e!104842))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5840 (_ BitVec 32)) Bool)

(assert (=> b!160318 (= res!75907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5044 thiss!1248) (mask!7811 thiss!1248)))))

(declare-fun res!75908 () Bool)

(assert (=> start!16130 (=> (not res!75908) (not e!104842))))

(declare-fun valid!739 (LongMapFixedSize!1602) Bool)

(assert (=> start!16130 (= res!75908 (valid!739 thiss!1248))))

(assert (=> start!16130 e!104842))

(assert (=> start!16130 e!104839))

(assert (=> start!16130 true))

(declare-fun b!160319 () Bool)

(assert (=> b!160319 (= e!104843 tp_is_empty!3381)))

(assert (= (and start!16130 res!75908) b!160314))

(assert (= (and b!160314 res!75906) b!160309))

(assert (= (and b!160309 res!75909) b!160312))

(assert (= (and b!160312 res!75905) b!160315))

(assert (= (and b!160315 res!75910) b!160313))

(assert (= (and b!160313 res!75911) b!160318))

(assert (= (and b!160318 res!75907) b!160310))

(assert (= (and b!160316 condMapEmpty!5759) mapIsEmpty!5759))

(assert (= (and b!160316 (not condMapEmpty!5759)) mapNonEmpty!5759))

(assert (= (and mapNonEmpty!5759 ((_ is ValueCellFull!1347) mapValue!5759)) b!160319))

(assert (= (and b!160316 ((_ is ValueCellFull!1347) mapDefault!5759)) b!160311))

(assert (= b!160317 b!160316))

(assert (= start!16130 b!160317))

(declare-fun m!192235 () Bool)

(assert (=> b!160318 m!192235))

(declare-fun m!192237 () Bool)

(assert (=> b!160312 m!192237))

(assert (=> b!160312 m!192237))

(declare-fun m!192239 () Bool)

(assert (=> b!160312 m!192239))

(declare-fun m!192241 () Bool)

(assert (=> start!16130 m!192241))

(declare-fun m!192243 () Bool)

(assert (=> b!160315 m!192243))

(declare-fun m!192245 () Bool)

(assert (=> mapNonEmpty!5759 m!192245))

(declare-fun m!192247 () Bool)

(assert (=> b!160317 m!192247))

(declare-fun m!192249 () Bool)

(assert (=> b!160317 m!192249))

(declare-fun m!192251 () Bool)

(assert (=> b!160309 m!192251))

(declare-fun m!192253 () Bool)

(assert (=> b!160310 m!192253))

(check-sat (not b!160315) (not b!160310) (not b!160312) (not b_next!3579) (not b!160309) b_and!10011 tp_is_empty!3381 (not start!16130) (not b!160318) (not mapNonEmpty!5759) (not b!160317))
(check-sat b_and!10011 (not b_next!3579))
