; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22918 () Bool)

(assert start!22918)

(declare-fun b!238608 () Bool)

(declare-fun b_free!6409 () Bool)

(declare-fun b_next!6409 () Bool)

(assert (=> b!238608 (= b_free!6409 (not b_next!6409))))

(declare-fun tp!22431 () Bool)

(declare-fun b_and!13393 () Bool)

(assert (=> b!238608 (= tp!22431 b_and!13393)))

(declare-fun mapNonEmpty!10638 () Bool)

(declare-fun mapRes!10638 () Bool)

(declare-fun tp!22430 () Bool)

(declare-fun e!154924 () Bool)

(assert (=> mapNonEmpty!10638 (= mapRes!10638 (and tp!22430 e!154924))))

(declare-datatypes ((V!8009 0))(
  ( (V!8010 (val!3180 Int)) )
))
(declare-datatypes ((ValueCell!2792 0))(
  ( (ValueCellFull!2792 (v!5214 V!8009)) (EmptyCell!2792) )
))
(declare-fun mapRest!10638 () (Array (_ BitVec 32) ValueCell!2792))

(declare-fun mapKey!10638 () (_ BitVec 32))

(declare-datatypes ((array!11820 0))(
  ( (array!11821 (arr!5611 (Array (_ BitVec 32) ValueCell!2792)) (size!5952 (_ BitVec 32))) )
))
(declare-datatypes ((array!11822 0))(
  ( (array!11823 (arr!5612 (Array (_ BitVec 32) (_ BitVec 64))) (size!5953 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3484 0))(
  ( (LongMapFixedSize!3485 (defaultEntry!4427 Int) (mask!10465 (_ BitVec 32)) (extraKeys!4164 (_ BitVec 32)) (zeroValue!4268 V!8009) (minValue!4268 V!8009) (_size!1791 (_ BitVec 32)) (_keys!6529 array!11822) (_values!4410 array!11820) (_vacant!1791 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3484)

(declare-fun mapValue!10638 () ValueCell!2792)

(assert (=> mapNonEmpty!10638 (= (arr!5611 (_values!4410 thiss!1504)) (store mapRest!10638 mapKey!10638 mapValue!10638))))

(declare-fun b!238603 () Bool)

(declare-fun e!154923 () Bool)

(declare-datatypes ((SeekEntryResult!1030 0))(
  ( (MissingZero!1030 (index!6290 (_ BitVec 32))) (Found!1030 (index!6291 (_ BitVec 32))) (Intermediate!1030 (undefined!1842 Bool) (index!6292 (_ BitVec 32)) (x!24070 (_ BitVec 32))) (Undefined!1030) (MissingVacant!1030 (index!6293 (_ BitVec 32))) )
))
(declare-fun lt!120654 () SeekEntryResult!1030)

(assert (=> b!238603 (= e!154923 (is-Undefined!1030 lt!120654))))

(declare-fun b!238604 () Bool)

(declare-fun res!116956 () Bool)

(declare-fun e!154929 () Bool)

(assert (=> b!238604 (=> (not res!116956) (not e!154929))))

(declare-fun call!22186 () Bool)

(assert (=> b!238604 (= res!116956 call!22186)))

(declare-fun e!154933 () Bool)

(assert (=> b!238604 (= e!154933 e!154929)))

(declare-fun b!238605 () Bool)

(declare-fun res!116949 () Bool)

(declare-fun e!154928 () Bool)

(assert (=> b!238605 (=> (not res!116949) (not e!154928))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!238605 (= res!116949 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!10638 () Bool)

(assert (=> mapIsEmpty!10638 mapRes!10638))

(declare-fun b!238606 () Bool)

(declare-fun tp_is_empty!6271 () Bool)

(assert (=> b!238606 (= e!154924 tp_is_empty!6271)))

(declare-fun b!238607 () Bool)

(declare-fun e!154932 () Bool)

(assert (=> b!238607 (= e!154923 e!154932)))

(declare-fun res!116954 () Bool)

(assert (=> b!238607 (= res!116954 call!22186)))

(assert (=> b!238607 (=> (not res!116954) (not e!154932))))

(declare-fun e!154930 () Bool)

(declare-fun e!154931 () Bool)

(declare-fun array_inv!3701 (array!11822) Bool)

(declare-fun array_inv!3702 (array!11820) Bool)

(assert (=> b!238608 (= e!154930 (and tp!22431 tp_is_empty!6271 (array_inv!3701 (_keys!6529 thiss!1504)) (array_inv!3702 (_values!4410 thiss!1504)) e!154931))))

(declare-fun bm!22182 () Bool)

(declare-fun c!39775 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22182 (= call!22186 (inRange!0 (ite c!39775 (index!6290 lt!120654) (index!6293 lt!120654)) (mask!10465 thiss!1504)))))

(declare-fun b!238609 () Bool)

(declare-fun call!22185 () Bool)

(assert (=> b!238609 (= e!154929 (not call!22185))))

(declare-fun b!238610 () Bool)

(declare-datatypes ((Unit!7317 0))(
  ( (Unit!7318) )
))
(declare-fun e!154922 () Unit!7317)

(declare-fun lt!120652 () Unit!7317)

(assert (=> b!238610 (= e!154922 lt!120652)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!331 (array!11822 array!11820 (_ BitVec 32) (_ BitVec 32) V!8009 V!8009 (_ BitVec 64) Int) Unit!7317)

(assert (=> b!238610 (= lt!120652 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!331 (_keys!6529 thiss!1504) (_values!4410 thiss!1504) (mask!10465 thiss!1504) (extraKeys!4164 thiss!1504) (zeroValue!4268 thiss!1504) (minValue!4268 thiss!1504) key!932 (defaultEntry!4427 thiss!1504)))))

(assert (=> b!238610 (= c!39775 (is-MissingZero!1030 lt!120654))))

(assert (=> b!238610 e!154933))

(declare-fun b!238611 () Bool)

(declare-fun e!154927 () Bool)

(assert (=> b!238611 (= e!154931 (and e!154927 mapRes!10638))))

(declare-fun condMapEmpty!10638 () Bool)

(declare-fun mapDefault!10638 () ValueCell!2792)

