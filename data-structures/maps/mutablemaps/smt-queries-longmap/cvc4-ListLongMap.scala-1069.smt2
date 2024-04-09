; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22112 () Bool)

(assert start!22112)

(declare-fun b!229647 () Bool)

(declare-fun b_free!6167 () Bool)

(declare-fun b_next!6167 () Bool)

(assert (=> b!229647 (= b_free!6167 (not b_next!6167))))

(declare-fun tp!21642 () Bool)

(declare-fun b_and!13083 () Bool)

(assert (=> b!229647 (= tp!21642 b_and!13083)))

(declare-fun b!229633 () Bool)

(declare-datatypes ((Unit!7007 0))(
  ( (Unit!7008) )
))
(declare-fun e!149002 () Unit!7007)

(declare-fun Unit!7009 () Unit!7007)

(assert (=> b!229633 (= e!149002 Unit!7009)))

(declare-fun lt!115547 () Unit!7007)

(declare-datatypes ((V!7685 0))(
  ( (V!7686 (val!3059 Int)) )
))
(declare-datatypes ((ValueCell!2671 0))(
  ( (ValueCellFull!2671 (v!5075 V!7685)) (EmptyCell!2671) )
))
(declare-datatypes ((array!11300 0))(
  ( (array!11301 (arr!5369 (Array (_ BitVec 32) ValueCell!2671)) (size!5702 (_ BitVec 32))) )
))
(declare-datatypes ((array!11302 0))(
  ( (array!11303 (arr!5370 (Array (_ BitVec 32) (_ BitVec 64))) (size!5703 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3242 0))(
  ( (LongMapFixedSize!3243 (defaultEntry!4280 Int) (mask!10162 (_ BitVec 32)) (extraKeys!4017 (_ BitVec 32)) (zeroValue!4121 V!7685) (minValue!4121 V!7685) (_size!1670 (_ BitVec 32)) (_keys!6334 array!11302) (_values!4263 array!11300) (_vacant!1670 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3242)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!284 (array!11302 array!11300 (_ BitVec 32) (_ BitVec 32) V!7685 V!7685 (_ BitVec 64) Int) Unit!7007)

(assert (=> b!229633 (= lt!115547 (lemmaInListMapThenSeekEntryOrOpenFindsIt!284 (_keys!6334 thiss!1504) (_values!4263 thiss!1504) (mask!10162 thiss!1504) (extraKeys!4017 thiss!1504) (zeroValue!4121 thiss!1504) (minValue!4121 thiss!1504) key!932 (defaultEntry!4280 thiss!1504)))))

(assert (=> b!229633 false))

(declare-fun b!229634 () Bool)

(declare-fun e!148997 () Unit!7007)

(declare-fun Unit!7010 () Unit!7007)

(assert (=> b!229634 (= e!148997 Unit!7010)))

(declare-fun b!229635 () Bool)

(declare-fun res!113028 () Bool)

(declare-fun e!149004 () Bool)

(assert (=> b!229635 (=> (not res!113028) (not e!149004))))

(declare-fun call!21334 () Bool)

(assert (=> b!229635 (= res!113028 call!21334)))

(declare-fun e!148992 () Bool)

(assert (=> b!229635 (= e!148992 e!149004)))

(declare-fun b!229636 () Bool)

(declare-fun e!148993 () Bool)

(declare-fun call!21333 () Bool)

(assert (=> b!229636 (= e!148993 (not call!21333))))

(declare-fun bm!21330 () Bool)

(declare-fun arrayContainsKey!0 (array!11302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21330 (= call!21333 (arrayContainsKey!0 (_keys!6334 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10213 () Bool)

(declare-fun mapRes!10213 () Bool)

(assert (=> mapIsEmpty!10213 mapRes!10213))

(declare-fun b!229637 () Bool)

(declare-fun e!148991 () Bool)

(assert (=> b!229637 (= e!148991 e!148993)))

(declare-fun res!113027 () Bool)

(assert (=> b!229637 (= res!113027 call!21334)))

(assert (=> b!229637 (=> (not res!113027) (not e!148993))))

(declare-fun b!229638 () Bool)

(declare-fun e!148996 () Bool)

(declare-fun e!149003 () Bool)

(assert (=> b!229638 (= e!148996 e!149003)))

(declare-fun res!113034 () Bool)

(assert (=> b!229638 (=> (not res!113034) (not e!149003))))

(declare-datatypes ((SeekEntryResult!935 0))(
  ( (MissingZero!935 (index!5910 (_ BitVec 32))) (Found!935 (index!5911 (_ BitVec 32))) (Intermediate!935 (undefined!1747 Bool) (index!5912 (_ BitVec 32)) (x!23403 (_ BitVec 32))) (Undefined!935) (MissingVacant!935 (index!5913 (_ BitVec 32))) )
))
(declare-fun lt!115546 () SeekEntryResult!935)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!229638 (= res!113034 (or (= lt!115546 (MissingZero!935 index!297)) (= lt!115546 (MissingVacant!935 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11302 (_ BitVec 32)) SeekEntryResult!935)

(assert (=> b!229638 (= lt!115546 (seekEntryOrOpen!0 key!932 (_keys!6334 thiss!1504) (mask!10162 thiss!1504)))))

(declare-fun res!113029 () Bool)

(assert (=> start!22112 (=> (not res!113029) (not e!148996))))

(declare-fun valid!1285 (LongMapFixedSize!3242) Bool)

(assert (=> start!22112 (= res!113029 (valid!1285 thiss!1504))))

(assert (=> start!22112 e!148996))

(declare-fun e!149001 () Bool)

(assert (=> start!22112 e!149001))

(assert (=> start!22112 true))

(declare-fun bm!21331 () Bool)

(declare-fun c!38081 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21331 (= call!21334 (inRange!0 (ite c!38081 (index!5910 lt!115546) (index!5913 lt!115546)) (mask!10162 thiss!1504)))))

(declare-fun b!229639 () Bool)

(declare-fun e!148999 () Bool)

(declare-fun tp_is_empty!6029 () Bool)

(assert (=> b!229639 (= e!148999 tp_is_empty!6029)))

(declare-fun b!229640 () Bool)

(declare-fun lt!115541 () Unit!7007)

(assert (=> b!229640 (= e!149002 lt!115541)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!298 (array!11302 array!11300 (_ BitVec 32) (_ BitVec 32) V!7685 V!7685 (_ BitVec 64) Int) Unit!7007)

(assert (=> b!229640 (= lt!115541 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!298 (_keys!6334 thiss!1504) (_values!4263 thiss!1504) (mask!10162 thiss!1504) (extraKeys!4017 thiss!1504) (zeroValue!4121 thiss!1504) (minValue!4121 thiss!1504) key!932 (defaultEntry!4280 thiss!1504)))))

(assert (=> b!229640 (= c!38081 (is-MissingZero!935 lt!115546))))

(assert (=> b!229640 e!148992))

(declare-fun b!229641 () Bool)

(declare-fun e!148994 () Bool)

(declare-fun e!148998 () Bool)

(assert (=> b!229641 (= e!148994 (and e!148998 mapRes!10213))))

(declare-fun condMapEmpty!10213 () Bool)

(declare-fun mapDefault!10213 () ValueCell!2671)

