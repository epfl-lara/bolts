; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22436 () Bool)

(assert start!22436)

(declare-fun b!234621 () Bool)

(declare-fun b_free!6313 () Bool)

(declare-fun b_next!6313 () Bool)

(assert (=> b!234621 (= b_free!6313 (not b_next!6313))))

(declare-fun tp!22099 () Bool)

(declare-fun b_and!13251 () Bool)

(assert (=> b!234621 (= tp!22099 b_and!13251)))

(declare-fun b!234614 () Bool)

(declare-fun e!152394 () Bool)

(declare-fun e!152398 () Bool)

(assert (=> b!234614 (= e!152394 e!152398)))

(declare-fun res!115083 () Bool)

(assert (=> b!234614 (=> (not res!115083) (not e!152398))))

(declare-datatypes ((SeekEntryResult!991 0))(
  ( (MissingZero!991 (index!6134 (_ BitVec 32))) (Found!991 (index!6135 (_ BitVec 32))) (Intermediate!991 (undefined!1803 Bool) (index!6136 (_ BitVec 32)) (x!23733 (_ BitVec 32))) (Undefined!991) (MissingVacant!991 (index!6137 (_ BitVec 32))) )
))
(declare-fun lt!118740 () SeekEntryResult!991)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!234614 (= res!115083 (or (= lt!118740 (MissingZero!991 index!297)) (= lt!118740 (MissingVacant!991 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7881 0))(
  ( (V!7882 (val!3132 Int)) )
))
(declare-datatypes ((ValueCell!2744 0))(
  ( (ValueCellFull!2744 (v!5153 V!7881)) (EmptyCell!2744) )
))
(declare-datatypes ((array!11602 0))(
  ( (array!11603 (arr!5515 (Array (_ BitVec 32) ValueCell!2744)) (size!5851 (_ BitVec 32))) )
))
(declare-datatypes ((array!11604 0))(
  ( (array!11605 (arr!5516 (Array (_ BitVec 32) (_ BitVec 64))) (size!5852 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3388 0))(
  ( (LongMapFixedSize!3389 (defaultEntry!4361 Int) (mask!10315 (_ BitVec 32)) (extraKeys!4098 (_ BitVec 32)) (zeroValue!4202 V!7881) (minValue!4202 V!7881) (_size!1743 (_ BitVec 32)) (_keys!6429 array!11604) (_values!4344 array!11602) (_vacant!1743 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3388)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11604 (_ BitVec 32)) SeekEntryResult!991)

(assert (=> b!234614 (= lt!118740 (seekEntryOrOpen!0 key!932 (_keys!6429 thiss!1504) (mask!10315 thiss!1504)))))

(declare-fun b!234615 () Bool)

(declare-fun e!152393 () Bool)

(declare-fun tp_is_empty!6175 () Bool)

(assert (=> b!234615 (= e!152393 tp_is_empty!6175)))

(declare-fun b!234616 () Bool)

(assert (=> b!234616 (= e!152398 (and (= (size!5851 (_values!4344 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10315 thiss!1504))) (= (size!5852 (_keys!6429 thiss!1504)) (size!5851 (_values!4344 thiss!1504))) (bvsge (mask!10315 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4098 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4098 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!115086 () Bool)

(assert (=> start!22436 (=> (not res!115086) (not e!152394))))

(declare-fun valid!1329 (LongMapFixedSize!3388) Bool)

(assert (=> start!22436 (= res!115086 (valid!1329 thiss!1504))))

(assert (=> start!22436 e!152394))

(declare-fun e!152397 () Bool)

(assert (=> start!22436 e!152397))

(assert (=> start!22436 true))

(declare-fun b!234617 () Bool)

(declare-fun e!152395 () Bool)

(assert (=> b!234617 (= e!152395 tp_is_empty!6175)))

(declare-fun b!234618 () Bool)

(declare-fun res!115085 () Bool)

(assert (=> b!234618 (=> (not res!115085) (not e!152398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!234618 (= res!115085 (validMask!0 (mask!10315 thiss!1504)))))

(declare-fun b!234619 () Bool)

(declare-fun res!115084 () Bool)

(assert (=> b!234619 (=> (not res!115084) (not e!152398))))

(declare-datatypes ((tuple2!4612 0))(
  ( (tuple2!4613 (_1!2316 (_ BitVec 64)) (_2!2316 V!7881)) )
))
(declare-datatypes ((List!3546 0))(
  ( (Nil!3543) (Cons!3542 (h!4193 tuple2!4612) (t!8523 List!3546)) )
))
(declare-datatypes ((ListLongMap!3539 0))(
  ( (ListLongMap!3540 (toList!1785 List!3546)) )
))
(declare-fun contains!1653 (ListLongMap!3539 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1308 (array!11604 array!11602 (_ BitVec 32) (_ BitVec 32) V!7881 V!7881 (_ BitVec 32) Int) ListLongMap!3539)

(assert (=> b!234619 (= res!115084 (contains!1653 (getCurrentListMap!1308 (_keys!6429 thiss!1504) (_values!4344 thiss!1504) (mask!10315 thiss!1504) (extraKeys!4098 thiss!1504) (zeroValue!4202 thiss!1504) (minValue!4202 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4361 thiss!1504)) key!932))))

(declare-fun b!234620 () Bool)

(declare-fun res!115087 () Bool)

(assert (=> b!234620 (=> (not res!115087) (not e!152394))))

(assert (=> b!234620 (= res!115087 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!152396 () Bool)

(declare-fun array_inv!3625 (array!11604) Bool)

(declare-fun array_inv!3626 (array!11602) Bool)

(assert (=> b!234621 (= e!152397 (and tp!22099 tp_is_empty!6175 (array_inv!3625 (_keys!6429 thiss!1504)) (array_inv!3626 (_values!4344 thiss!1504)) e!152396))))

(declare-fun mapNonEmpty!10450 () Bool)

(declare-fun mapRes!10450 () Bool)

(declare-fun tp!22098 () Bool)

(assert (=> mapNonEmpty!10450 (= mapRes!10450 (and tp!22098 e!152395))))

(declare-fun mapKey!10450 () (_ BitVec 32))

(declare-fun mapRest!10450 () (Array (_ BitVec 32) ValueCell!2744))

(declare-fun mapValue!10450 () ValueCell!2744)

(assert (=> mapNonEmpty!10450 (= (arr!5515 (_values!4344 thiss!1504)) (store mapRest!10450 mapKey!10450 mapValue!10450))))

(declare-fun mapIsEmpty!10450 () Bool)

(assert (=> mapIsEmpty!10450 mapRes!10450))

(declare-fun b!234622 () Bool)

(assert (=> b!234622 (= e!152396 (and e!152393 mapRes!10450))))

(declare-fun condMapEmpty!10450 () Bool)

(declare-fun mapDefault!10450 () ValueCell!2744)

