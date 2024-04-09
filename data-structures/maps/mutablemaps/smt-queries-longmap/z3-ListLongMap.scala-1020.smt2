; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21734 () Bool)

(assert start!21734)

(declare-fun b!218339 () Bool)

(declare-fun b_free!5871 () Bool)

(declare-fun b_next!5871 () Bool)

(assert (=> b!218339 (= b_free!5871 (not b_next!5871))))

(declare-fun tp!20747 () Bool)

(declare-fun b_and!12779 () Bool)

(assert (=> b!218339 (= tp!20747 b_and!12779)))

(declare-fun e!142038 () Bool)

(declare-datatypes ((V!7291 0))(
  ( (V!7292 (val!2911 Int)) )
))
(declare-datatypes ((ValueCell!2523 0))(
  ( (ValueCellFull!2523 (v!4925 V!7291)) (EmptyCell!2523) )
))
(declare-datatypes ((array!10704 0))(
  ( (array!10705 (arr!5073 (Array (_ BitVec 32) ValueCell!2523)) (size!5405 (_ BitVec 32))) )
))
(declare-datatypes ((array!10706 0))(
  ( (array!10707 (arr!5074 (Array (_ BitVec 32) (_ BitVec 64))) (size!5406 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2946 0))(
  ( (LongMapFixedSize!2947 (defaultEntry!4123 Int) (mask!9898 (_ BitVec 32)) (extraKeys!3860 (_ BitVec 32)) (zeroValue!3964 V!7291) (minValue!3964 V!7291) (_size!1522 (_ BitVec 32)) (_keys!6172 array!10706) (_values!4106 array!10704) (_vacant!1522 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2946)

(declare-fun tp_is_empty!5733 () Bool)

(declare-fun e!142039 () Bool)

(declare-fun array_inv!3351 (array!10706) Bool)

(declare-fun array_inv!3352 (array!10704) Bool)

(assert (=> b!218339 (= e!142039 (and tp!20747 tp_is_empty!5733 (array_inv!3351 (_keys!6172 thiss!1504)) (array_inv!3352 (_values!4106 thiss!1504)) e!142038))))

(declare-fun b!218340 () Bool)

(declare-fun e!142037 () Bool)

(declare-fun e!142041 () Bool)

(assert (=> b!218340 (= e!142037 e!142041)))

(declare-fun res!107068 () Bool)

(assert (=> b!218340 (=> (not res!107068) (not e!142041))))

(declare-datatypes ((SeekEntryResult!797 0))(
  ( (MissingZero!797 (index!5358 (_ BitVec 32))) (Found!797 (index!5359 (_ BitVec 32))) (Intermediate!797 (undefined!1609 Bool) (index!5360 (_ BitVec 32)) (x!22845 (_ BitVec 32))) (Undefined!797) (MissingVacant!797 (index!5361 (_ BitVec 32))) )
))
(declare-fun lt!111541 () SeekEntryResult!797)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218340 (= res!107068 (or (= lt!111541 (MissingZero!797 index!297)) (= lt!111541 (MissingVacant!797 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10706 (_ BitVec 32)) SeekEntryResult!797)

(assert (=> b!218340 (= lt!111541 (seekEntryOrOpen!0 key!932 (_keys!6172 thiss!1504) (mask!9898 thiss!1504)))))

(declare-fun b!218341 () Bool)

(declare-fun e!142035 () Bool)

(assert (=> b!218341 (= e!142035 tp_is_empty!5733)))

(declare-fun mapIsEmpty!9762 () Bool)

(declare-fun mapRes!9762 () Bool)

(assert (=> mapIsEmpty!9762 mapRes!9762))

(declare-fun b!218342 () Bool)

(declare-fun res!107067 () Bool)

(assert (=> b!218342 (=> (not res!107067) (not e!142041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!218342 (= res!107067 (validMask!0 (mask!9898 thiss!1504)))))

(declare-fun b!218343 () Bool)

(declare-fun res!107069 () Bool)

(assert (=> b!218343 (=> (not res!107069) (not e!142041))))

(declare-datatypes ((tuple2!4322 0))(
  ( (tuple2!4323 (_1!2171 (_ BitVec 64)) (_2!2171 V!7291)) )
))
(declare-datatypes ((List!3251 0))(
  ( (Nil!3248) (Cons!3247 (h!3894 tuple2!4322) (t!8214 List!3251)) )
))
(declare-datatypes ((ListLongMap!3249 0))(
  ( (ListLongMap!3250 (toList!1640 List!3251)) )
))
(declare-fun contains!1475 (ListLongMap!3249 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1163 (array!10706 array!10704 (_ BitVec 32) (_ BitVec 32) V!7291 V!7291 (_ BitVec 32) Int) ListLongMap!3249)

(assert (=> b!218343 (= res!107069 (not (contains!1475 (getCurrentListMap!1163 (_keys!6172 thiss!1504) (_values!4106 thiss!1504) (mask!9898 thiss!1504) (extraKeys!3860 thiss!1504) (zeroValue!3964 thiss!1504) (minValue!3964 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4123 thiss!1504)) key!932)))))

(declare-fun b!218344 () Bool)

(declare-fun res!107065 () Bool)

(assert (=> b!218344 (=> (not res!107065) (not e!142037))))

(assert (=> b!218344 (= res!107065 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!218345 () Bool)

(declare-fun res!107070 () Bool)

(assert (=> b!218345 (=> (not res!107070) (not e!142041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10706 (_ BitVec 32)) Bool)

(assert (=> b!218345 (= res!107070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6172 thiss!1504) (mask!9898 thiss!1504)))))

(declare-fun b!218346 () Bool)

(assert (=> b!218346 (= e!142041 false)))

(declare-fun lt!111540 () Bool)

(declare-datatypes ((List!3252 0))(
  ( (Nil!3249) (Cons!3248 (h!3895 (_ BitVec 64)) (t!8215 List!3252)) )
))
(declare-fun arrayNoDuplicates!0 (array!10706 (_ BitVec 32) List!3252) Bool)

(assert (=> b!218346 (= lt!111540 (arrayNoDuplicates!0 (_keys!6172 thiss!1504) #b00000000000000000000000000000000 Nil!3249))))

(declare-fun b!218347 () Bool)

(declare-fun e!142040 () Bool)

(assert (=> b!218347 (= e!142040 tp_is_empty!5733)))

(declare-fun b!218348 () Bool)

(assert (=> b!218348 (= e!142038 (and e!142035 mapRes!9762))))

(declare-fun condMapEmpty!9762 () Bool)

(declare-fun mapDefault!9762 () ValueCell!2523)

(assert (=> b!218348 (= condMapEmpty!9762 (= (arr!5073 (_values!4106 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2523)) mapDefault!9762)))))

(declare-fun b!218349 () Bool)

(declare-fun res!107066 () Bool)

(assert (=> b!218349 (=> (not res!107066) (not e!142041))))

(assert (=> b!218349 (= res!107066 (and (= (size!5405 (_values!4106 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9898 thiss!1504))) (= (size!5406 (_keys!6172 thiss!1504)) (size!5405 (_values!4106 thiss!1504))) (bvsge (mask!9898 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3860 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3860 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9762 () Bool)

(declare-fun tp!20748 () Bool)

(assert (=> mapNonEmpty!9762 (= mapRes!9762 (and tp!20748 e!142040))))

(declare-fun mapRest!9762 () (Array (_ BitVec 32) ValueCell!2523))

(declare-fun mapKey!9762 () (_ BitVec 32))

(declare-fun mapValue!9762 () ValueCell!2523)

(assert (=> mapNonEmpty!9762 (= (arr!5073 (_values!4106 thiss!1504)) (store mapRest!9762 mapKey!9762 mapValue!9762))))

(declare-fun res!107064 () Bool)

(assert (=> start!21734 (=> (not res!107064) (not e!142037))))

(declare-fun valid!1186 (LongMapFixedSize!2946) Bool)

(assert (=> start!21734 (= res!107064 (valid!1186 thiss!1504))))

(assert (=> start!21734 e!142037))

(assert (=> start!21734 e!142039))

(assert (=> start!21734 true))

(assert (= (and start!21734 res!107064) b!218344))

(assert (= (and b!218344 res!107065) b!218340))

(assert (= (and b!218340 res!107068) b!218343))

(assert (= (and b!218343 res!107069) b!218342))

(assert (= (and b!218342 res!107067) b!218349))

(assert (= (and b!218349 res!107066) b!218345))

(assert (= (and b!218345 res!107070) b!218346))

(assert (= (and b!218348 condMapEmpty!9762) mapIsEmpty!9762))

(assert (= (and b!218348 (not condMapEmpty!9762)) mapNonEmpty!9762))

(get-info :version)

(assert (= (and mapNonEmpty!9762 ((_ is ValueCellFull!2523) mapValue!9762)) b!218347))

(assert (= (and b!218348 ((_ is ValueCellFull!2523) mapDefault!9762)) b!218341))

(assert (= b!218339 b!218348))

(assert (= start!21734 b!218339))

(declare-fun m!244307 () Bool)

(assert (=> mapNonEmpty!9762 m!244307))

(declare-fun m!244309 () Bool)

(assert (=> b!218346 m!244309))

(declare-fun m!244311 () Bool)

(assert (=> start!21734 m!244311))

(declare-fun m!244313 () Bool)

(assert (=> b!218342 m!244313))

(declare-fun m!244315 () Bool)

(assert (=> b!218343 m!244315))

(assert (=> b!218343 m!244315))

(declare-fun m!244317 () Bool)

(assert (=> b!218343 m!244317))

(declare-fun m!244319 () Bool)

(assert (=> b!218345 m!244319))

(declare-fun m!244321 () Bool)

(assert (=> b!218340 m!244321))

(declare-fun m!244323 () Bool)

(assert (=> b!218339 m!244323))

(declare-fun m!244325 () Bool)

(assert (=> b!218339 m!244325))

(check-sat (not b!218340) (not b!218339) (not mapNonEmpty!9762) (not b!218346) b_and!12779 tp_is_empty!5733 (not b!218343) (not start!21734) (not b!218342) (not b!218345) (not b_next!5871))
(check-sat b_and!12779 (not b_next!5871))
