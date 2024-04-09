; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21898 () Bool)

(assert start!21898)

(declare-fun b!221405 () Bool)

(declare-fun b_free!5953 () Bool)

(declare-fun b_next!5953 () Bool)

(assert (=> b!221405 (= b_free!5953 (not b_next!5953))))

(declare-fun tp!21001 () Bool)

(declare-fun b_and!12869 () Bool)

(assert (=> b!221405 (= tp!21001 b_and!12869)))

(declare-fun b!221402 () Bool)

(declare-fun e!143902 () Bool)

(declare-fun call!20692 () Bool)

(assert (=> b!221402 (= e!143902 (not call!20692))))

(declare-fun b!221403 () Bool)

(declare-fun res!108637 () Bool)

(declare-fun e!143910 () Bool)

(assert (=> b!221403 (=> (not res!108637) (not e!143910))))

(declare-datatypes ((V!7401 0))(
  ( (V!7402 (val!2952 Int)) )
))
(declare-datatypes ((ValueCell!2564 0))(
  ( (ValueCellFull!2564 (v!4968 V!7401)) (EmptyCell!2564) )
))
(declare-datatypes ((array!10872 0))(
  ( (array!10873 (arr!5155 (Array (_ BitVec 32) ValueCell!2564)) (size!5488 (_ BitVec 32))) )
))
(declare-datatypes ((array!10874 0))(
  ( (array!10875 (arr!5156 (Array (_ BitVec 32) (_ BitVec 64))) (size!5489 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3028 0))(
  ( (LongMapFixedSize!3029 (defaultEntry!4173 Int) (mask!9985 (_ BitVec 32)) (extraKeys!3910 (_ BitVec 32)) (zeroValue!4014 V!7401) (minValue!4014 V!7401) (_size!1563 (_ BitVec 32)) (_keys!6227 array!10874) (_values!4156 array!10872) (_vacant!1563 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3028)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!221403 (= res!108637 (validMask!0 (mask!9985 thiss!1504)))))

(declare-fun c!36802 () Bool)

(declare-datatypes ((SeekEntryResult!835 0))(
  ( (MissingZero!835 (index!5510 (_ BitVec 32))) (Found!835 (index!5511 (_ BitVec 32))) (Intermediate!835 (undefined!1647 Bool) (index!5512 (_ BitVec 32)) (x!23023 (_ BitVec 32))) (Undefined!835) (MissingVacant!835 (index!5513 (_ BitVec 32))) )
))
(declare-fun lt!112432 () SeekEntryResult!835)

(declare-fun call!20691 () Bool)

(declare-fun bm!20688 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20688 (= call!20691 (inRange!0 (ite c!36802 (index!5510 lt!112432) (index!5513 lt!112432)) (mask!9985 thiss!1504)))))

(declare-fun b!221404 () Bool)

(declare-fun res!108639 () Bool)

(assert (=> b!221404 (=> (not res!108639) (not e!143910))))

(assert (=> b!221404 (= res!108639 (and (= (size!5488 (_values!4156 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9985 thiss!1504))) (= (size!5489 (_keys!6227 thiss!1504)) (size!5488 (_values!4156 thiss!1504))) (bvsge (mask!9985 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3910 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3910 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!108641 () Bool)

(declare-fun e!143904 () Bool)

(assert (=> start!21898 (=> (not res!108641) (not e!143904))))

(declare-fun valid!1214 (LongMapFixedSize!3028) Bool)

(assert (=> start!21898 (= res!108641 (valid!1214 thiss!1504))))

(assert (=> start!21898 e!143904))

(declare-fun e!143906 () Bool)

(assert (=> start!21898 e!143906))

(assert (=> start!21898 true))

(declare-fun tp_is_empty!5815 () Bool)

(declare-fun e!143905 () Bool)

(declare-fun array_inv!3403 (array!10874) Bool)

(declare-fun array_inv!3404 (array!10872) Bool)

(assert (=> b!221405 (= e!143906 (and tp!21001 tp_is_empty!5815 (array_inv!3403 (_keys!6227 thiss!1504)) (array_inv!3404 (_values!4156 thiss!1504)) e!143905))))

(declare-fun b!221406 () Bool)

(declare-datatypes ((Unit!6614 0))(
  ( (Unit!6615) )
))
(declare-fun e!143913 () Unit!6614)

(declare-fun lt!112434 () Unit!6614)

(assert (=> b!221406 (= e!143913 lt!112434)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!225 (array!10874 array!10872 (_ BitVec 32) (_ BitVec 32) V!7401 V!7401 (_ BitVec 64) Int) Unit!6614)

(assert (=> b!221406 (= lt!112434 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!225 (_keys!6227 thiss!1504) (_values!4156 thiss!1504) (mask!9985 thiss!1504) (extraKeys!3910 thiss!1504) (zeroValue!4014 thiss!1504) (minValue!4014 thiss!1504) key!932 (defaultEntry!4173 thiss!1504)))))

(assert (=> b!221406 (= c!36802 (is-MissingZero!835 lt!112432))))

(declare-fun e!143908 () Bool)

(assert (=> b!221406 e!143908))

(declare-fun b!221407 () Bool)

(declare-fun res!108643 () Bool)

(assert (=> b!221407 (= res!108643 (= (select (arr!5156 (_keys!6227 thiss!1504)) (index!5513 lt!112432)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!221407 (=> (not res!108643) (not e!143902))))

(declare-fun b!221408 () Bool)

(assert (=> b!221408 (= e!143910 false)))

(declare-fun lt!112431 () Bool)

(declare-datatypes ((List!3302 0))(
  ( (Nil!3299) (Cons!3298 (h!3946 (_ BitVec 64)) (t!8269 List!3302)) )
))
(declare-fun arrayNoDuplicates!0 (array!10874 (_ BitVec 32) List!3302) Bool)

(assert (=> b!221408 (= lt!112431 (arrayNoDuplicates!0 (_keys!6227 thiss!1504) #b00000000000000000000000000000000 Nil!3299))))

(declare-fun b!221409 () Bool)

(declare-fun e!143909 () Bool)

(assert (=> b!221409 (= e!143909 e!143910)))

(declare-fun res!108642 () Bool)

(assert (=> b!221409 (=> (not res!108642) (not e!143910))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!221409 (= res!108642 (inRange!0 index!297 (mask!9985 thiss!1504)))))

(declare-fun lt!112433 () Unit!6614)

(assert (=> b!221409 (= lt!112433 e!143913)))

(declare-fun c!36803 () Bool)

(declare-datatypes ((tuple2!4376 0))(
  ( (tuple2!4377 (_1!2198 (_ BitVec 64)) (_2!2198 V!7401)) )
))
(declare-datatypes ((List!3303 0))(
  ( (Nil!3300) (Cons!3299 (h!3947 tuple2!4376) (t!8270 List!3303)) )
))
(declare-datatypes ((ListLongMap!3303 0))(
  ( (ListLongMap!3304 (toList!1667 List!3303)) )
))
(declare-fun contains!1504 (ListLongMap!3303 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1190 (array!10874 array!10872 (_ BitVec 32) (_ BitVec 32) V!7401 V!7401 (_ BitVec 32) Int) ListLongMap!3303)

(assert (=> b!221409 (= c!36803 (contains!1504 (getCurrentListMap!1190 (_keys!6227 thiss!1504) (_values!4156 thiss!1504) (mask!9985 thiss!1504) (extraKeys!3910 thiss!1504) (zeroValue!4014 thiss!1504) (minValue!4014 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4173 thiss!1504)) key!932))))

(declare-fun b!221410 () Bool)

(declare-fun res!108636 () Bool)

(assert (=> b!221410 (=> (not res!108636) (not e!143910))))

(declare-fun arrayContainsKey!0 (array!10874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!221410 (= res!108636 (arrayContainsKey!0 (_keys!6227 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221411 () Bool)

(assert (=> b!221411 (= e!143904 e!143909)))

(declare-fun res!108635 () Bool)

(assert (=> b!221411 (=> (not res!108635) (not e!143909))))

(assert (=> b!221411 (= res!108635 (or (= lt!112432 (MissingZero!835 index!297)) (= lt!112432 (MissingVacant!835 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10874 (_ BitVec 32)) SeekEntryResult!835)

(assert (=> b!221411 (= lt!112432 (seekEntryOrOpen!0 key!932 (_keys!6227 thiss!1504) (mask!9985 thiss!1504)))))

(declare-fun b!221412 () Bool)

(declare-fun res!108634 () Bool)

(declare-fun e!143907 () Bool)

(assert (=> b!221412 (=> (not res!108634) (not e!143907))))

(assert (=> b!221412 (= res!108634 (= (select (arr!5156 (_keys!6227 thiss!1504)) (index!5510 lt!112432)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20689 () Bool)

(assert (=> bm!20689 (= call!20692 (arrayContainsKey!0 (_keys!6227 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221413 () Bool)

(declare-fun res!108640 () Bool)

(assert (=> b!221413 (=> (not res!108640) (not e!143910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10874 (_ BitVec 32)) Bool)

(assert (=> b!221413 (= res!108640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6227 thiss!1504) (mask!9985 thiss!1504)))))

(declare-fun b!221414 () Bool)

(declare-fun Unit!6616 () Unit!6614)

(assert (=> b!221414 (= e!143913 Unit!6616)))

(declare-fun lt!112430 () Unit!6614)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!217 (array!10874 array!10872 (_ BitVec 32) (_ BitVec 32) V!7401 V!7401 (_ BitVec 64) Int) Unit!6614)

(assert (=> b!221414 (= lt!112430 (lemmaInListMapThenSeekEntryOrOpenFindsIt!217 (_keys!6227 thiss!1504) (_values!4156 thiss!1504) (mask!9985 thiss!1504) (extraKeys!3910 thiss!1504) (zeroValue!4014 thiss!1504) (minValue!4014 thiss!1504) key!932 (defaultEntry!4173 thiss!1504)))))

(assert (=> b!221414 false))

(declare-fun b!221415 () Bool)

(declare-fun e!143912 () Bool)

(assert (=> b!221415 (= e!143912 (is-Undefined!835 lt!112432))))

(declare-fun b!221416 () Bool)

(declare-fun res!108638 () Bool)

(assert (=> b!221416 (=> (not res!108638) (not e!143904))))

(assert (=> b!221416 (= res!108638 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221417 () Bool)

(declare-fun e!143903 () Bool)

(declare-fun mapRes!9892 () Bool)

(assert (=> b!221417 (= e!143905 (and e!143903 mapRes!9892))))

(declare-fun condMapEmpty!9892 () Bool)

(declare-fun mapDefault!9892 () ValueCell!2564)

