; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21666 () Bool)

(assert start!21666)

(declare-fun b!217219 () Bool)

(declare-fun b_free!5803 () Bool)

(declare-fun b_next!5803 () Bool)

(assert (=> b!217219 (= b_free!5803 (not b_next!5803))))

(declare-fun tp!20544 () Bool)

(declare-fun b_and!12711 () Bool)

(assert (=> b!217219 (= tp!20544 b_and!12711)))

(declare-fun b!217217 () Bool)

(declare-fun e!141322 () Bool)

(assert (=> b!217217 (= e!141322 false)))

(declare-fun lt!111337 () Bool)

(declare-datatypes ((V!7201 0))(
  ( (V!7202 (val!2877 Int)) )
))
(declare-datatypes ((ValueCell!2489 0))(
  ( (ValueCellFull!2489 (v!4891 V!7201)) (EmptyCell!2489) )
))
(declare-datatypes ((array!10568 0))(
  ( (array!10569 (arr!5005 (Array (_ BitVec 32) ValueCell!2489)) (size!5337 (_ BitVec 32))) )
))
(declare-datatypes ((array!10570 0))(
  ( (array!10571 (arr!5006 (Array (_ BitVec 32) (_ BitVec 64))) (size!5338 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2878 0))(
  ( (LongMapFixedSize!2879 (defaultEntry!4089 Int) (mask!9842 (_ BitVec 32)) (extraKeys!3826 (_ BitVec 32)) (zeroValue!3930 V!7201) (minValue!3930 V!7201) (_size!1488 (_ BitVec 32)) (_keys!6138 array!10570) (_values!4072 array!10568) (_vacant!1488 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2878)

(declare-datatypes ((List!3204 0))(
  ( (Nil!3201) (Cons!3200 (h!3847 (_ BitVec 64)) (t!8167 List!3204)) )
))
(declare-fun arrayNoDuplicates!0 (array!10570 (_ BitVec 32) List!3204) Bool)

(assert (=> b!217217 (= lt!111337 (arrayNoDuplicates!0 (_keys!6138 thiss!1504) #b00000000000000000000000000000000 Nil!3201))))

(declare-fun mapIsEmpty!9660 () Bool)

(declare-fun mapRes!9660 () Bool)

(assert (=> mapIsEmpty!9660 mapRes!9660))

(declare-fun b!217218 () Bool)

(declare-fun res!106351 () Bool)

(assert (=> b!217218 (=> (not res!106351) (not e!141322))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4278 0))(
  ( (tuple2!4279 (_1!2149 (_ BitVec 64)) (_2!2149 V!7201)) )
))
(declare-datatypes ((List!3205 0))(
  ( (Nil!3202) (Cons!3201 (h!3848 tuple2!4278) (t!8168 List!3205)) )
))
(declare-datatypes ((ListLongMap!3205 0))(
  ( (ListLongMap!3206 (toList!1618 List!3205)) )
))
(declare-fun contains!1453 (ListLongMap!3205 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1141 (array!10570 array!10568 (_ BitVec 32) (_ BitVec 32) V!7201 V!7201 (_ BitVec 32) Int) ListLongMap!3205)

(assert (=> b!217218 (= res!106351 (contains!1453 (getCurrentListMap!1141 (_keys!6138 thiss!1504) (_values!4072 thiss!1504) (mask!9842 thiss!1504) (extraKeys!3826 thiss!1504) (zeroValue!3930 thiss!1504) (minValue!3930 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4089 thiss!1504)) key!932))))

(declare-fun res!106353 () Bool)

(declare-fun e!141325 () Bool)

(assert (=> start!21666 (=> (not res!106353) (not e!141325))))

(declare-fun valid!1162 (LongMapFixedSize!2878) Bool)

(assert (=> start!21666 (= res!106353 (valid!1162 thiss!1504))))

(assert (=> start!21666 e!141325))

(declare-fun e!141324 () Bool)

(assert (=> start!21666 e!141324))

(assert (=> start!21666 true))

(declare-fun e!141327 () Bool)

(declare-fun tp_is_empty!5665 () Bool)

(declare-fun array_inv!3307 (array!10570) Bool)

(declare-fun array_inv!3308 (array!10568) Bool)

(assert (=> b!217219 (= e!141324 (and tp!20544 tp_is_empty!5665 (array_inv!3307 (_keys!6138 thiss!1504)) (array_inv!3308 (_values!4072 thiss!1504)) e!141327))))

(declare-fun b!217220 () Bool)

(declare-fun res!106350 () Bool)

(assert (=> b!217220 (=> (not res!106350) (not e!141322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10570 (_ BitVec 32)) Bool)

(assert (=> b!217220 (= res!106350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6138 thiss!1504) (mask!9842 thiss!1504)))))

(declare-fun b!217221 () Bool)

(declare-fun res!106355 () Bool)

(assert (=> b!217221 (=> (not res!106355) (not e!141325))))

(assert (=> b!217221 (= res!106355 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217222 () Bool)

(declare-fun e!141326 () Bool)

(assert (=> b!217222 (= e!141326 tp_is_empty!5665)))

(declare-fun mapNonEmpty!9660 () Bool)

(declare-fun tp!20543 () Bool)

(assert (=> mapNonEmpty!9660 (= mapRes!9660 (and tp!20543 e!141326))))

(declare-fun mapValue!9660 () ValueCell!2489)

(declare-fun mapKey!9660 () (_ BitVec 32))

(declare-fun mapRest!9660 () (Array (_ BitVec 32) ValueCell!2489))

(assert (=> mapNonEmpty!9660 (= (arr!5005 (_values!4072 thiss!1504)) (store mapRest!9660 mapKey!9660 mapValue!9660))))

(declare-fun b!217223 () Bool)

(assert (=> b!217223 (= e!141325 e!141322)))

(declare-fun res!106352 () Bool)

(assert (=> b!217223 (=> (not res!106352) (not e!141322))))

(declare-datatypes ((SeekEntryResult!775 0))(
  ( (MissingZero!775 (index!5270 (_ BitVec 32))) (Found!775 (index!5271 (_ BitVec 32))) (Intermediate!775 (undefined!1587 Bool) (index!5272 (_ BitVec 32)) (x!22735 (_ BitVec 32))) (Undefined!775) (MissingVacant!775 (index!5273 (_ BitVec 32))) )
))
(declare-fun lt!111336 () SeekEntryResult!775)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217223 (= res!106352 (or (= lt!111336 (MissingZero!775 index!297)) (= lt!111336 (MissingVacant!775 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10570 (_ BitVec 32)) SeekEntryResult!775)

(assert (=> b!217223 (= lt!111336 (seekEntryOrOpen!0 key!932 (_keys!6138 thiss!1504) (mask!9842 thiss!1504)))))

(declare-fun b!217224 () Bool)

(declare-fun e!141321 () Bool)

(assert (=> b!217224 (= e!141327 (and e!141321 mapRes!9660))))

(declare-fun condMapEmpty!9660 () Bool)

(declare-fun mapDefault!9660 () ValueCell!2489)

