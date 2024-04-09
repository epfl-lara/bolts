; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16702 () Bool)

(assert start!16702)

(declare-fun b!167174 () Bool)

(declare-fun b_free!3995 () Bool)

(declare-fun b_next!3995 () Bool)

(assert (=> b!167174 (= b_free!3995 (not b_next!3995))))

(declare-fun tp!14585 () Bool)

(declare-fun b_and!10427 () Bool)

(assert (=> b!167174 (= tp!14585 b_and!10427)))

(declare-fun b!167170 () Bool)

(declare-fun res!79514 () Bool)

(declare-fun e!109776 () Bool)

(assert (=> b!167170 (=> (not res!79514) (not e!109776))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!167170 (= res!79514 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167171 () Bool)

(declare-fun e!109773 () Bool)

(declare-fun e!109772 () Bool)

(assert (=> b!167171 (= e!109773 e!109772)))

(declare-fun res!79516 () Bool)

(assert (=> b!167171 (=> (not res!79516) (not e!109772))))

(declare-datatypes ((V!4709 0))(
  ( (V!4710 (val!1943 Int)) )
))
(declare-datatypes ((ValueCell!1555 0))(
  ( (ValueCellFull!1555 (v!3804 V!4709)) (EmptyCell!1555) )
))
(declare-datatypes ((array!6690 0))(
  ( (array!6691 (arr!3180 (Array (_ BitVec 32) (_ BitVec 64))) (size!3468 (_ BitVec 32))) )
))
(declare-datatypes ((array!6692 0))(
  ( (array!6693 (arr!3181 (Array (_ BitVec 32) ValueCell!1555)) (size!3469 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2018 0))(
  ( (LongMapFixedSize!2019 (defaultEntry!3451 Int) (mask!8194 (_ BitVec 32)) (extraKeys!3192 (_ BitVec 32)) (zeroValue!3294 V!4709) (minValue!3294 V!4709) (_size!1058 (_ BitVec 32)) (_keys!5276 array!6690) (_values!3434 array!6692) (_vacant!1058 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2018)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167171 (= res!79516 (validMask!0 (mask!8194 thiss!1248)))))

(declare-datatypes ((Unit!5109 0))(
  ( (Unit!5110) )
))
(declare-fun lt!83627 () Unit!5109)

(declare-fun e!109775 () Unit!5109)

(assert (=> b!167171 (= lt!83627 e!109775)))

(declare-fun c!30255 () Bool)

(declare-datatypes ((tuple2!3130 0))(
  ( (tuple2!3131 (_1!1575 (_ BitVec 64)) (_2!1575 V!4709)) )
))
(declare-datatypes ((List!2141 0))(
  ( (Nil!2138) (Cons!2137 (h!2754 tuple2!3130) (t!6951 List!2141)) )
))
(declare-datatypes ((ListLongMap!2099 0))(
  ( (ListLongMap!2100 (toList!1065 List!2141)) )
))
(declare-fun contains!1101 (ListLongMap!2099 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!718 (array!6690 array!6692 (_ BitVec 32) (_ BitVec 32) V!4709 V!4709 (_ BitVec 32) Int) ListLongMap!2099)

(assert (=> b!167171 (= c!30255 (contains!1101 (getCurrentListMap!718 (_keys!5276 thiss!1248) (_values!3434 thiss!1248) (mask!8194 thiss!1248) (extraKeys!3192 thiss!1248) (zeroValue!3294 thiss!1248) (minValue!3294 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3451 thiss!1248)) key!828))))

(declare-fun b!167172 () Bool)

(declare-fun Unit!5111 () Unit!5109)

(assert (=> b!167172 (= e!109775 Unit!5111)))

(declare-fun lt!83626 () Unit!5109)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!101 (array!6690 array!6692 (_ BitVec 32) (_ BitVec 32) V!4709 V!4709 (_ BitVec 64) Int) Unit!5109)

(assert (=> b!167172 (= lt!83626 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!101 (_keys!5276 thiss!1248) (_values!3434 thiss!1248) (mask!8194 thiss!1248) (extraKeys!3192 thiss!1248) (zeroValue!3294 thiss!1248) (minValue!3294 thiss!1248) key!828 (defaultEntry!3451 thiss!1248)))))

(assert (=> b!167172 false))

(declare-fun b!167173 () Bool)

(declare-fun e!109780 () Bool)

(declare-fun tp_is_empty!3797 () Bool)

(assert (=> b!167173 (= e!109780 tp_is_empty!3797)))

(declare-fun e!109774 () Bool)

(declare-fun e!109778 () Bool)

(declare-fun array_inv!2037 (array!6690) Bool)

(declare-fun array_inv!2038 (array!6692) Bool)

(assert (=> b!167174 (= e!109774 (and tp!14585 tp_is_empty!3797 (array_inv!2037 (_keys!5276 thiss!1248)) (array_inv!2038 (_values!3434 thiss!1248)) e!109778))))

(declare-datatypes ((SeekEntryResult!484 0))(
  ( (MissingZero!484 (index!4104 (_ BitVec 32))) (Found!484 (index!4105 (_ BitVec 32))) (Intermediate!484 (undefined!1296 Bool) (index!4106 (_ BitVec 32)) (x!18512 (_ BitVec 32))) (Undefined!484) (MissingVacant!484 (index!4107 (_ BitVec 32))) )
))
(declare-fun lt!83629 () SeekEntryResult!484)

(declare-fun b!167175 () Bool)

(declare-fun e!109779 () Bool)

(assert (=> b!167175 (= e!109779 (= (select (arr!3180 (_keys!5276 thiss!1248)) (index!4105 lt!83629)) key!828))))

(declare-fun b!167176 () Bool)

(declare-fun res!79512 () Bool)

(assert (=> b!167176 (=> (not res!79512) (not e!109772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6690 (_ BitVec 32)) Bool)

(assert (=> b!167176 (= res!79512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5276 thiss!1248) (mask!8194 thiss!1248)))))

(declare-fun mapIsEmpty!6414 () Bool)

(declare-fun mapRes!6414 () Bool)

(assert (=> mapIsEmpty!6414 mapRes!6414))

(declare-fun b!167177 () Bool)

(assert (=> b!167177 (= e!109776 e!109773)))

(declare-fun res!79518 () Bool)

(assert (=> b!167177 (=> (not res!79518) (not e!109773))))

(assert (=> b!167177 (= res!79518 (and (not (is-Undefined!484 lt!83629)) (not (is-MissingVacant!484 lt!83629)) (not (is-MissingZero!484 lt!83629)) (is-Found!484 lt!83629)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6690 (_ BitVec 32)) SeekEntryResult!484)

(assert (=> b!167177 (= lt!83629 (seekEntryOrOpen!0 key!828 (_keys!5276 thiss!1248) (mask!8194 thiss!1248)))))

(declare-fun b!167178 () Bool)

(declare-fun lt!83630 () Unit!5109)

(assert (=> b!167178 (= e!109775 lt!83630)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!102 (array!6690 array!6692 (_ BitVec 32) (_ BitVec 32) V!4709 V!4709 (_ BitVec 64) Int) Unit!5109)

(assert (=> b!167178 (= lt!83630 (lemmaInListMapThenSeekEntryOrOpenFindsIt!102 (_keys!5276 thiss!1248) (_values!3434 thiss!1248) (mask!8194 thiss!1248) (extraKeys!3192 thiss!1248) (zeroValue!3294 thiss!1248) (minValue!3294 thiss!1248) key!828 (defaultEntry!3451 thiss!1248)))))

(declare-fun res!79515 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167178 (= res!79515 (inRange!0 (index!4105 lt!83629) (mask!8194 thiss!1248)))))

(assert (=> b!167178 (=> (not res!79515) (not e!109779))))

(assert (=> b!167178 e!109779))

(declare-fun b!167179 () Bool)

(declare-fun e!109777 () Bool)

(assert (=> b!167179 (= e!109777 tp_is_empty!3797)))

(declare-fun b!167180 () Bool)

(assert (=> b!167180 (= e!109778 (and e!109780 mapRes!6414))))

(declare-fun condMapEmpty!6414 () Bool)

(declare-fun mapDefault!6414 () ValueCell!1555)

