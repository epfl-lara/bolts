; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22224 () Bool)

(assert start!22224)

(declare-fun b!233000 () Bool)

(declare-fun b_free!6279 () Bool)

(declare-fun b_next!6279 () Bool)

(assert (=> b!233000 (= b_free!6279 (not b_next!6279))))

(declare-fun tp!21978 () Bool)

(declare-fun b_and!13195 () Bool)

(assert (=> b!233000 (= tp!21978 b_and!13195)))

(declare-fun b!232999 () Bool)

(declare-datatypes ((Unit!7202 0))(
  ( (Unit!7203) )
))
(declare-fun e!151363 () Unit!7202)

(declare-fun lt!117912 () Unit!7202)

(assert (=> b!232999 (= e!151363 lt!117912)))

(declare-datatypes ((V!7835 0))(
  ( (V!7836 (val!3115 Int)) )
))
(declare-datatypes ((ValueCell!2727 0))(
  ( (ValueCellFull!2727 (v!5131 V!7835)) (EmptyCell!2727) )
))
(declare-datatypes ((array!11524 0))(
  ( (array!11525 (arr!5481 (Array (_ BitVec 32) ValueCell!2727)) (size!5814 (_ BitVec 32))) )
))
(declare-datatypes ((array!11526 0))(
  ( (array!11527 (arr!5482 (Array (_ BitVec 32) (_ BitVec 64))) (size!5815 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3354 0))(
  ( (LongMapFixedSize!3355 (defaultEntry!4336 Int) (mask!10256 (_ BitVec 32)) (extraKeys!4073 (_ BitVec 32)) (zeroValue!4177 V!7835) (minValue!4177 V!7835) (_size!1726 (_ BitVec 32)) (_keys!6390 array!11526) (_values!4319 array!11524) (_vacant!1726 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3354)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!329 (array!11526 array!11524 (_ BitVec 32) (_ BitVec 32) V!7835 V!7835 (_ BitVec 64) Int) Unit!7202)

(assert (=> b!232999 (= lt!117912 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!329 (_keys!6390 thiss!1504) (_values!4319 thiss!1504) (mask!10256 thiss!1504) (extraKeys!4073 thiss!1504) (zeroValue!4177 thiss!1504) (minValue!4177 thiss!1504) key!932 (defaultEntry!4336 thiss!1504)))))

(declare-fun c!38746 () Bool)

(declare-datatypes ((SeekEntryResult!982 0))(
  ( (MissingZero!982 (index!6098 (_ BitVec 32))) (Found!982 (index!6099 (_ BitVec 32))) (Intermediate!982 (undefined!1794 Bool) (index!6100 (_ BitVec 32)) (x!23602 (_ BitVec 32))) (Undefined!982) (MissingVacant!982 (index!6101 (_ BitVec 32))) )
))
(declare-fun lt!117914 () SeekEntryResult!982)

(get-info :version)

(assert (=> b!232999 (= c!38746 ((_ is MissingZero!982) lt!117914))))

(declare-fun e!151359 () Bool)

(assert (=> b!232999 e!151359))

(declare-fun e!151356 () Bool)

(declare-fun e!151354 () Bool)

(declare-fun tp_is_empty!6141 () Bool)

(declare-fun array_inv!3603 (array!11526) Bool)

(declare-fun array_inv!3604 (array!11524) Bool)

(assert (=> b!233000 (= e!151356 (and tp!21978 tp_is_empty!6141 (array_inv!3603 (_keys!6390 thiss!1504)) (array_inv!3604 (_values!4319 thiss!1504)) e!151354))))

(declare-fun b!233001 () Bool)

(declare-fun res!114391 () Bool)

(assert (=> b!233001 (= res!114391 (= (select (arr!5482 (_keys!6390 thiss!1504)) (index!6101 lt!117914)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!151357 () Bool)

(assert (=> b!233001 (=> (not res!114391) (not e!151357))))

(declare-fun b!233002 () Bool)

(declare-fun e!151358 () Bool)

(declare-fun call!21669 () Bool)

(assert (=> b!233002 (= e!151358 (not call!21669))))

(declare-fun b!233003 () Bool)

(declare-fun e!151360 () Bool)

(assert (=> b!233003 (= e!151360 ((_ is Undefined!982) lt!117914))))

(declare-fun b!233004 () Bool)

(declare-fun Unit!7204 () Unit!7202)

(assert (=> b!233004 (= e!151363 Unit!7204)))

(declare-fun lt!117913 () Unit!7202)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!315 (array!11526 array!11524 (_ BitVec 32) (_ BitVec 32) V!7835 V!7835 (_ BitVec 64) Int) Unit!7202)

(assert (=> b!233004 (= lt!117913 (lemmaInListMapThenSeekEntryOrOpenFindsIt!315 (_keys!6390 thiss!1504) (_values!4319 thiss!1504) (mask!10256 thiss!1504) (extraKeys!4073 thiss!1504) (zeroValue!4177 thiss!1504) (minValue!4177 thiss!1504) key!932 (defaultEntry!4336 thiss!1504)))))

(assert (=> b!233004 false))

(declare-fun b!233005 () Bool)

(declare-fun res!114385 () Bool)

(assert (=> b!233005 (=> (not res!114385) (not e!151358))))

(assert (=> b!233005 (= res!114385 (= (select (arr!5482 (_keys!6390 thiss!1504)) (index!6098 lt!117914)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233006 () Bool)

(declare-fun e!151355 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!233006 (= e!151355 (not (inRange!0 index!297 (mask!10256 thiss!1504))))))

(declare-fun lt!117915 () Unit!7202)

(assert (=> b!233006 (= lt!117915 e!151363)))

(declare-fun c!38745 () Bool)

(declare-datatypes ((tuple2!4592 0))(
  ( (tuple2!4593 (_1!2306 (_ BitVec 64)) (_2!2306 V!7835)) )
))
(declare-datatypes ((List!3531 0))(
  ( (Nil!3528) (Cons!3527 (h!4175 tuple2!4592) (t!8498 List!3531)) )
))
(declare-datatypes ((ListLongMap!3519 0))(
  ( (ListLongMap!3520 (toList!1775 List!3531)) )
))
(declare-fun contains!1637 (ListLongMap!3519 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1298 (array!11526 array!11524 (_ BitVec 32) (_ BitVec 32) V!7835 V!7835 (_ BitVec 32) Int) ListLongMap!3519)

(assert (=> b!233006 (= c!38745 (contains!1637 (getCurrentListMap!1298 (_keys!6390 thiss!1504) (_values!4319 thiss!1504) (mask!10256 thiss!1504) (extraKeys!4073 thiss!1504) (zeroValue!4177 thiss!1504) (minValue!4177 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4336 thiss!1504)) key!932))))

(declare-fun b!233007 () Bool)

(declare-fun e!151361 () Bool)

(declare-fun mapRes!10381 () Bool)

(assert (=> b!233007 (= e!151354 (and e!151361 mapRes!10381))))

(declare-fun condMapEmpty!10381 () Bool)

(declare-fun mapDefault!10381 () ValueCell!2727)

(assert (=> b!233007 (= condMapEmpty!10381 (= (arr!5481 (_values!4319 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2727)) mapDefault!10381)))))

(declare-fun b!233008 () Bool)

(declare-fun e!151352 () Bool)

(assert (=> b!233008 (= e!151352 e!151355)))

(declare-fun res!114387 () Bool)

(assert (=> b!233008 (=> (not res!114387) (not e!151355))))

(assert (=> b!233008 (= res!114387 (or (= lt!117914 (MissingZero!982 index!297)) (= lt!117914 (MissingVacant!982 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11526 (_ BitVec 32)) SeekEntryResult!982)

(assert (=> b!233008 (= lt!117914 (seekEntryOrOpen!0 key!932 (_keys!6390 thiss!1504) (mask!10256 thiss!1504)))))

(declare-fun b!233009 () Bool)

(declare-fun c!38747 () Bool)

(assert (=> b!233009 (= c!38747 ((_ is MissingVacant!982) lt!117914))))

(assert (=> b!233009 (= e!151359 e!151360)))

(declare-fun bm!21666 () Bool)

(declare-fun call!21670 () Bool)

(assert (=> bm!21666 (= call!21670 (inRange!0 (ite c!38746 (index!6098 lt!117914) (index!6101 lt!117914)) (mask!10256 thiss!1504)))))

(declare-fun b!233010 () Bool)

(declare-fun res!114388 () Bool)

(assert (=> b!233010 (=> (not res!114388) (not e!151358))))

(assert (=> b!233010 (= res!114388 call!21670)))

(assert (=> b!233010 (= e!151359 e!151358)))

(declare-fun bm!21667 () Bool)

(declare-fun arrayContainsKey!0 (array!11526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21667 (= call!21669 (arrayContainsKey!0 (_keys!6390 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!233011 () Bool)

(assert (=> b!233011 (= e!151357 (not call!21669))))

(declare-fun b!233012 () Bool)

(declare-fun res!114390 () Bool)

(assert (=> b!233012 (=> (not res!114390) (not e!151352))))

(assert (=> b!233012 (= res!114390 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!233013 () Bool)

(assert (=> b!233013 (= e!151361 tp_is_empty!6141)))

(declare-fun mapIsEmpty!10381 () Bool)

(assert (=> mapIsEmpty!10381 mapRes!10381))

(declare-fun b!233014 () Bool)

(declare-fun e!151353 () Bool)

(assert (=> b!233014 (= e!151353 tp_is_empty!6141)))

(declare-fun b!233015 () Bool)

(assert (=> b!233015 (= e!151360 e!151357)))

(declare-fun res!114389 () Bool)

(assert (=> b!233015 (= res!114389 call!21670)))

(assert (=> b!233015 (=> (not res!114389) (not e!151357))))

(declare-fun res!114386 () Bool)

(assert (=> start!22224 (=> (not res!114386) (not e!151352))))

(declare-fun valid!1317 (LongMapFixedSize!3354) Bool)

(assert (=> start!22224 (= res!114386 (valid!1317 thiss!1504))))

(assert (=> start!22224 e!151352))

(assert (=> start!22224 e!151356))

(assert (=> start!22224 true))

(declare-fun mapNonEmpty!10381 () Bool)

(declare-fun tp!21979 () Bool)

(assert (=> mapNonEmpty!10381 (= mapRes!10381 (and tp!21979 e!151353))))

(declare-fun mapRest!10381 () (Array (_ BitVec 32) ValueCell!2727))

(declare-fun mapKey!10381 () (_ BitVec 32))

(declare-fun mapValue!10381 () ValueCell!2727)

(assert (=> mapNonEmpty!10381 (= (arr!5481 (_values!4319 thiss!1504)) (store mapRest!10381 mapKey!10381 mapValue!10381))))

(assert (= (and start!22224 res!114386) b!233012))

(assert (= (and b!233012 res!114390) b!233008))

(assert (= (and b!233008 res!114387) b!233006))

(assert (= (and b!233006 c!38745) b!233004))

(assert (= (and b!233006 (not c!38745)) b!232999))

(assert (= (and b!232999 c!38746) b!233010))

(assert (= (and b!232999 (not c!38746)) b!233009))

(assert (= (and b!233010 res!114388) b!233005))

(assert (= (and b!233005 res!114385) b!233002))

(assert (= (and b!233009 c!38747) b!233015))

(assert (= (and b!233009 (not c!38747)) b!233003))

(assert (= (and b!233015 res!114389) b!233001))

(assert (= (and b!233001 res!114391) b!233011))

(assert (= (or b!233010 b!233015) bm!21666))

(assert (= (or b!233002 b!233011) bm!21667))

(assert (= (and b!233007 condMapEmpty!10381) mapIsEmpty!10381))

(assert (= (and b!233007 (not condMapEmpty!10381)) mapNonEmpty!10381))

(assert (= (and mapNonEmpty!10381 ((_ is ValueCellFull!2727) mapValue!10381)) b!233014))

(assert (= (and b!233007 ((_ is ValueCellFull!2727) mapDefault!10381)) b!233013))

(assert (= b!233000 b!233007))

(assert (= start!22224 b!233000))

(declare-fun m!254507 () Bool)

(assert (=> b!233008 m!254507))

(declare-fun m!254509 () Bool)

(assert (=> b!233000 m!254509))

(declare-fun m!254511 () Bool)

(assert (=> b!233000 m!254511))

(declare-fun m!254513 () Bool)

(assert (=> bm!21666 m!254513))

(declare-fun m!254515 () Bool)

(assert (=> bm!21667 m!254515))

(declare-fun m!254517 () Bool)

(assert (=> b!233004 m!254517))

(declare-fun m!254519 () Bool)

(assert (=> b!233006 m!254519))

(declare-fun m!254521 () Bool)

(assert (=> b!233006 m!254521))

(assert (=> b!233006 m!254521))

(declare-fun m!254523 () Bool)

(assert (=> b!233006 m!254523))

(declare-fun m!254525 () Bool)

(assert (=> mapNonEmpty!10381 m!254525))

(declare-fun m!254527 () Bool)

(assert (=> b!233005 m!254527))

(declare-fun m!254529 () Bool)

(assert (=> b!232999 m!254529))

(declare-fun m!254531 () Bool)

(assert (=> b!233001 m!254531))

(declare-fun m!254533 () Bool)

(assert (=> start!22224 m!254533))

(check-sat (not mapNonEmpty!10381) (not start!22224) (not b!232999) (not b_next!6279) (not bm!21667) (not b!233000) (not b!233006) (not b!233004) (not b!233008) tp_is_empty!6141 (not bm!21666) b_and!13195)
(check-sat b_and!13195 (not b_next!6279))
