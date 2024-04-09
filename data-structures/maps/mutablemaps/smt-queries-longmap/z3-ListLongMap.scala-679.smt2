; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16592 () Bool)

(assert start!16592)

(declare-fun b!165204 () Bool)

(declare-fun b_free!3885 () Bool)

(declare-fun b_next!3885 () Bool)

(assert (=> b!165204 (= b_free!3885 (not b_next!3885))))

(declare-fun tp!14255 () Bool)

(declare-fun b_and!10317 () Bool)

(assert (=> b!165204 (= tp!14255 b_and!10317)))

(declare-fun b!165195 () Bool)

(declare-fun e!108378 () Bool)

(declare-fun e!108380 () Bool)

(assert (=> b!165195 (= e!108378 e!108380)))

(declare-fun res!78358 () Bool)

(assert (=> b!165195 (=> (not res!78358) (not e!108380))))

(declare-datatypes ((SeekEntryResult!441 0))(
  ( (MissingZero!441 (index!3932 (_ BitVec 32))) (Found!441 (index!3933 (_ BitVec 32))) (Intermediate!441 (undefined!1253 Bool) (index!3934 (_ BitVec 32)) (x!18325 (_ BitVec 32))) (Undefined!441) (MissingVacant!441 (index!3935 (_ BitVec 32))) )
))
(declare-fun lt!83056 () SeekEntryResult!441)

(get-info :version)

(assert (=> b!165195 (= res!78358 (and (not ((_ is Undefined!441) lt!83056)) (not ((_ is MissingVacant!441) lt!83056)) (not ((_ is MissingZero!441) lt!83056)) ((_ is Found!441) lt!83056)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4563 0))(
  ( (V!4564 (val!1888 Int)) )
))
(declare-datatypes ((ValueCell!1500 0))(
  ( (ValueCellFull!1500 (v!3749 V!4563)) (EmptyCell!1500) )
))
(declare-datatypes ((array!6470 0))(
  ( (array!6471 (arr!3070 (Array (_ BitVec 32) (_ BitVec 64))) (size!3358 (_ BitVec 32))) )
))
(declare-datatypes ((array!6472 0))(
  ( (array!6473 (arr!3071 (Array (_ BitVec 32) ValueCell!1500)) (size!3359 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1908 0))(
  ( (LongMapFixedSize!1909 (defaultEntry!3396 Int) (mask!8103 (_ BitVec 32)) (extraKeys!3137 (_ BitVec 32)) (zeroValue!3239 V!4563) (minValue!3239 V!4563) (_size!1003 (_ BitVec 32)) (_keys!5221 array!6470) (_values!3379 array!6472) (_vacant!1003 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1908)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6470 (_ BitVec 32)) SeekEntryResult!441)

(assert (=> b!165195 (= lt!83056 (seekEntryOrOpen!0 key!828 (_keys!5221 thiss!1248) (mask!8103 thiss!1248)))))

(declare-fun b!165196 () Bool)

(declare-fun e!108382 () Bool)

(declare-fun tp_is_empty!3687 () Bool)

(assert (=> b!165196 (= e!108382 tp_is_empty!3687)))

(declare-fun b!165197 () Bool)

(declare-fun res!78357 () Bool)

(assert (=> b!165197 (=> (not res!78357) (not e!108380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6470 (_ BitVec 32)) Bool)

(assert (=> b!165197 (= res!78357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5221 thiss!1248) (mask!8103 thiss!1248)))))

(declare-fun b!165198 () Bool)

(declare-fun res!78360 () Bool)

(assert (=> b!165198 (=> (not res!78360) (not e!108380))))

(assert (=> b!165198 (= res!78360 (and (= (size!3359 (_values!3379 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8103 thiss!1248))) (= (size!3358 (_keys!5221 thiss!1248)) (size!3359 (_values!3379 thiss!1248))) (bvsge (mask!8103 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3137 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3137 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165199 () Bool)

(declare-fun res!78359 () Bool)

(assert (=> b!165199 (=> (not res!78359) (not e!108378))))

(assert (=> b!165199 (= res!78359 (not (= key!828 (bvneg key!828))))))

(declare-fun res!78363 () Bool)

(assert (=> start!16592 (=> (not res!78363) (not e!108378))))

(declare-fun valid!836 (LongMapFixedSize!1908) Bool)

(assert (=> start!16592 (= res!78363 (valid!836 thiss!1248))))

(assert (=> start!16592 e!108378))

(declare-fun e!108377 () Bool)

(assert (=> start!16592 e!108377))

(assert (=> start!16592 true))

(declare-fun b!165200 () Bool)

(declare-fun e!108381 () Bool)

(assert (=> b!165200 (= e!108381 tp_is_empty!3687)))

(declare-fun b!165201 () Bool)

(declare-fun res!78361 () Bool)

(assert (=> b!165201 (=> (not res!78361) (not e!108380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165201 (= res!78361 (validMask!0 (mask!8103 thiss!1248)))))

(declare-fun b!165202 () Bool)

(assert (=> b!165202 (= e!108380 false)))

(declare-fun lt!83057 () Bool)

(declare-datatypes ((List!2061 0))(
  ( (Nil!2058) (Cons!2057 (h!2674 (_ BitVec 64)) (t!6871 List!2061)) )
))
(declare-fun arrayNoDuplicates!0 (array!6470 (_ BitVec 32) List!2061) Bool)

(assert (=> b!165202 (= lt!83057 (arrayNoDuplicates!0 (_keys!5221 thiss!1248) #b00000000000000000000000000000000 Nil!2058))))

(declare-fun b!165203 () Bool)

(declare-fun e!108376 () Bool)

(declare-fun mapRes!6249 () Bool)

(assert (=> b!165203 (= e!108376 (and e!108381 mapRes!6249))))

(declare-fun condMapEmpty!6249 () Bool)

(declare-fun mapDefault!6249 () ValueCell!1500)

(assert (=> b!165203 (= condMapEmpty!6249 (= (arr!3071 (_values!3379 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1500)) mapDefault!6249)))))

(declare-fun array_inv!1961 (array!6470) Bool)

(declare-fun array_inv!1962 (array!6472) Bool)

(assert (=> b!165204 (= e!108377 (and tp!14255 tp_is_empty!3687 (array_inv!1961 (_keys!5221 thiss!1248)) (array_inv!1962 (_values!3379 thiss!1248)) e!108376))))

(declare-fun mapNonEmpty!6249 () Bool)

(declare-fun tp!14256 () Bool)

(assert (=> mapNonEmpty!6249 (= mapRes!6249 (and tp!14256 e!108382))))

(declare-fun mapKey!6249 () (_ BitVec 32))

(declare-fun mapValue!6249 () ValueCell!1500)

(declare-fun mapRest!6249 () (Array (_ BitVec 32) ValueCell!1500))

(assert (=> mapNonEmpty!6249 (= (arr!3071 (_values!3379 thiss!1248)) (store mapRest!6249 mapKey!6249 mapValue!6249))))

(declare-fun b!165205 () Bool)

(declare-fun res!78362 () Bool)

(assert (=> b!165205 (=> (not res!78362) (not e!108380))))

(declare-datatypes ((tuple2!3054 0))(
  ( (tuple2!3055 (_1!1537 (_ BitVec 64)) (_2!1537 V!4563)) )
))
(declare-datatypes ((List!2062 0))(
  ( (Nil!2059) (Cons!2058 (h!2675 tuple2!3054) (t!6872 List!2062)) )
))
(declare-datatypes ((ListLongMap!2023 0))(
  ( (ListLongMap!2024 (toList!1027 List!2062)) )
))
(declare-fun contains!1063 (ListLongMap!2023 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!680 (array!6470 array!6472 (_ BitVec 32) (_ BitVec 32) V!4563 V!4563 (_ BitVec 32) Int) ListLongMap!2023)

(assert (=> b!165205 (= res!78362 (not (contains!1063 (getCurrentListMap!680 (_keys!5221 thiss!1248) (_values!3379 thiss!1248) (mask!8103 thiss!1248) (extraKeys!3137 thiss!1248) (zeroValue!3239 thiss!1248) (minValue!3239 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3396 thiss!1248)) key!828)))))

(declare-fun mapIsEmpty!6249 () Bool)

(assert (=> mapIsEmpty!6249 mapRes!6249))

(assert (= (and start!16592 res!78363) b!165199))

(assert (= (and b!165199 res!78359) b!165195))

(assert (= (and b!165195 res!78358) b!165205))

(assert (= (and b!165205 res!78362) b!165201))

(assert (= (and b!165201 res!78361) b!165198))

(assert (= (and b!165198 res!78360) b!165197))

(assert (= (and b!165197 res!78357) b!165202))

(assert (= (and b!165203 condMapEmpty!6249) mapIsEmpty!6249))

(assert (= (and b!165203 (not condMapEmpty!6249)) mapNonEmpty!6249))

(assert (= (and mapNonEmpty!6249 ((_ is ValueCellFull!1500) mapValue!6249)) b!165196))

(assert (= (and b!165203 ((_ is ValueCellFull!1500) mapDefault!6249)) b!165200))

(assert (= b!165204 b!165203))

(assert (= start!16592 b!165204))

(declare-fun m!195109 () Bool)

(assert (=> b!165195 m!195109))

(declare-fun m!195111 () Bool)

(assert (=> b!165197 m!195111))

(declare-fun m!195113 () Bool)

(assert (=> b!165201 m!195113))

(declare-fun m!195115 () Bool)

(assert (=> start!16592 m!195115))

(declare-fun m!195117 () Bool)

(assert (=> b!165205 m!195117))

(assert (=> b!165205 m!195117))

(declare-fun m!195119 () Bool)

(assert (=> b!165205 m!195119))

(declare-fun m!195121 () Bool)

(assert (=> b!165204 m!195121))

(declare-fun m!195123 () Bool)

(assert (=> b!165204 m!195123))

(declare-fun m!195125 () Bool)

(assert (=> mapNonEmpty!6249 m!195125))

(declare-fun m!195127 () Bool)

(assert (=> b!165202 m!195127))

(check-sat (not b!165205) (not b_next!3885) (not b!165197) (not b!165195) tp_is_empty!3687 (not b!165202) b_and!10317 (not b!165204) (not b!165201) (not mapNonEmpty!6249) (not start!16592))
(check-sat b_and!10317 (not b_next!3885))
