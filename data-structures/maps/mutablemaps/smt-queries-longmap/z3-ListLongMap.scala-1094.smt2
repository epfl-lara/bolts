; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22438 () Bool)

(assert start!22438)

(declare-fun b!234649 () Bool)

(declare-fun b_free!6315 () Bool)

(declare-fun b_next!6315 () Bool)

(assert (=> b!234649 (= b_free!6315 (not b_next!6315))))

(declare-fun tp!22104 () Bool)

(declare-fun b_and!13253 () Bool)

(assert (=> b!234649 (= tp!22104 b_and!13253)))

(declare-fun b!234641 () Bool)

(declare-fun e!152419 () Bool)

(declare-fun tp_is_empty!6177 () Bool)

(assert (=> b!234641 (= e!152419 tp_is_empty!6177)))

(declare-fun b!234642 () Bool)

(declare-fun e!152414 () Bool)

(declare-datatypes ((V!7883 0))(
  ( (V!7884 (val!3133 Int)) )
))
(declare-datatypes ((ValueCell!2745 0))(
  ( (ValueCellFull!2745 (v!5154 V!7883)) (EmptyCell!2745) )
))
(declare-datatypes ((array!11606 0))(
  ( (array!11607 (arr!5517 (Array (_ BitVec 32) ValueCell!2745)) (size!5853 (_ BitVec 32))) )
))
(declare-datatypes ((array!11608 0))(
  ( (array!11609 (arr!5518 (Array (_ BitVec 32) (_ BitVec 64))) (size!5854 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3390 0))(
  ( (LongMapFixedSize!3391 (defaultEntry!4362 Int) (mask!10316 (_ BitVec 32)) (extraKeys!4099 (_ BitVec 32)) (zeroValue!4203 V!7883) (minValue!4203 V!7883) (_size!1744 (_ BitVec 32)) (_keys!6430 array!11608) (_values!4345 array!11606) (_vacant!1744 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3390)

(assert (=> b!234642 (= e!152414 (and (= (size!5853 (_values!4345 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10316 thiss!1504))) (= (size!5854 (_keys!6430 thiss!1504)) (size!5853 (_values!4345 thiss!1504))) (bvsge (mask!10316 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4099 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4099 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!115100 () Bool)

(declare-fun e!152413 () Bool)

(assert (=> start!22438 (=> (not res!115100) (not e!152413))))

(declare-fun valid!1330 (LongMapFixedSize!3390) Bool)

(assert (=> start!22438 (= res!115100 (valid!1330 thiss!1504))))

(assert (=> start!22438 e!152413))

(declare-fun e!152415 () Bool)

(assert (=> start!22438 e!152415))

(assert (=> start!22438 true))

(declare-fun b!234643 () Bool)

(declare-fun res!115102 () Bool)

(assert (=> b!234643 (=> (not res!115102) (not e!152414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!234643 (= res!115102 (validMask!0 (mask!10316 thiss!1504)))))

(declare-fun b!234644 () Bool)

(declare-fun e!152417 () Bool)

(declare-fun mapRes!10453 () Bool)

(assert (=> b!234644 (= e!152417 (and e!152419 mapRes!10453))))

(declare-fun condMapEmpty!10453 () Bool)

(declare-fun mapDefault!10453 () ValueCell!2745)

(assert (=> b!234644 (= condMapEmpty!10453 (= (arr!5517 (_values!4345 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2745)) mapDefault!10453)))))

(declare-fun b!234645 () Bool)

(declare-fun res!115098 () Bool)

(assert (=> b!234645 (=> (not res!115098) (not e!152414))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4614 0))(
  ( (tuple2!4615 (_1!2317 (_ BitVec 64)) (_2!2317 V!7883)) )
))
(declare-datatypes ((List!3547 0))(
  ( (Nil!3544) (Cons!3543 (h!4194 tuple2!4614) (t!8524 List!3547)) )
))
(declare-datatypes ((ListLongMap!3541 0))(
  ( (ListLongMap!3542 (toList!1786 List!3547)) )
))
(declare-fun contains!1654 (ListLongMap!3541 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1309 (array!11608 array!11606 (_ BitVec 32) (_ BitVec 32) V!7883 V!7883 (_ BitVec 32) Int) ListLongMap!3541)

(assert (=> b!234645 (= res!115098 (contains!1654 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!10453 () Bool)

(assert (=> mapIsEmpty!10453 mapRes!10453))

(declare-fun b!234646 () Bool)

(declare-fun res!115099 () Bool)

(assert (=> b!234646 (=> (not res!115099) (not e!152413))))

(assert (=> b!234646 (= res!115099 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!234647 () Bool)

(declare-fun e!152416 () Bool)

(assert (=> b!234647 (= e!152416 tp_is_empty!6177)))

(declare-fun b!234648 () Bool)

(assert (=> b!234648 (= e!152413 e!152414)))

(declare-fun res!115101 () Bool)

(assert (=> b!234648 (=> (not res!115101) (not e!152414))))

(declare-datatypes ((SeekEntryResult!992 0))(
  ( (MissingZero!992 (index!6138 (_ BitVec 32))) (Found!992 (index!6139 (_ BitVec 32))) (Intermediate!992 (undefined!1804 Bool) (index!6140 (_ BitVec 32)) (x!23734 (_ BitVec 32))) (Undefined!992) (MissingVacant!992 (index!6141 (_ BitVec 32))) )
))
(declare-fun lt!118743 () SeekEntryResult!992)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!234648 (= res!115101 (or (= lt!118743 (MissingZero!992 index!297)) (= lt!118743 (MissingVacant!992 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11608 (_ BitVec 32)) SeekEntryResult!992)

(assert (=> b!234648 (= lt!118743 (seekEntryOrOpen!0 key!932 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)))))

(declare-fun mapNonEmpty!10453 () Bool)

(declare-fun tp!22105 () Bool)

(assert (=> mapNonEmpty!10453 (= mapRes!10453 (and tp!22105 e!152416))))

(declare-fun mapKey!10453 () (_ BitVec 32))

(declare-fun mapRest!10453 () (Array (_ BitVec 32) ValueCell!2745))

(declare-fun mapValue!10453 () ValueCell!2745)

(assert (=> mapNonEmpty!10453 (= (arr!5517 (_values!4345 thiss!1504)) (store mapRest!10453 mapKey!10453 mapValue!10453))))

(declare-fun array_inv!3627 (array!11608) Bool)

(declare-fun array_inv!3628 (array!11606) Bool)

(assert (=> b!234649 (= e!152415 (and tp!22104 tp_is_empty!6177 (array_inv!3627 (_keys!6430 thiss!1504)) (array_inv!3628 (_values!4345 thiss!1504)) e!152417))))

(assert (= (and start!22438 res!115100) b!234646))

(assert (= (and b!234646 res!115099) b!234648))

(assert (= (and b!234648 res!115101) b!234645))

(assert (= (and b!234645 res!115098) b!234643))

(assert (= (and b!234643 res!115102) b!234642))

(assert (= (and b!234644 condMapEmpty!10453) mapIsEmpty!10453))

(assert (= (and b!234644 (not condMapEmpty!10453)) mapNonEmpty!10453))

(get-info :version)

(assert (= (and mapNonEmpty!10453 ((_ is ValueCellFull!2745) mapValue!10453)) b!234647))

(assert (= (and b!234644 ((_ is ValueCellFull!2745) mapDefault!10453)) b!234641))

(assert (= b!234649 b!234644))

(assert (= start!22438 b!234649))

(declare-fun m!255923 () Bool)

(assert (=> b!234648 m!255923))

(declare-fun m!255925 () Bool)

(assert (=> start!22438 m!255925))

(declare-fun m!255927 () Bool)

(assert (=> mapNonEmpty!10453 m!255927))

(declare-fun m!255929 () Bool)

(assert (=> b!234649 m!255929))

(declare-fun m!255931 () Bool)

(assert (=> b!234649 m!255931))

(declare-fun m!255933 () Bool)

(assert (=> b!234645 m!255933))

(assert (=> b!234645 m!255933))

(declare-fun m!255935 () Bool)

(assert (=> b!234645 m!255935))

(declare-fun m!255937 () Bool)

(assert (=> b!234643 m!255937))

(check-sat (not b!234648) (not b_next!6315) tp_is_empty!6177 (not b!234643) (not start!22438) b_and!13253 (not b!234649) (not b!234645) (not mapNonEmpty!10453))
(check-sat b_and!13253 (not b_next!6315))
(get-model)

(declare-fun d!59081 () Bool)

(assert (=> d!59081 (= (validMask!0 (mask!10316 thiss!1504)) (and (or (= (mask!10316 thiss!1504) #b00000000000000000000000000000111) (= (mask!10316 thiss!1504) #b00000000000000000000000000001111) (= (mask!10316 thiss!1504) #b00000000000000000000000000011111) (= (mask!10316 thiss!1504) #b00000000000000000000000000111111) (= (mask!10316 thiss!1504) #b00000000000000000000000001111111) (= (mask!10316 thiss!1504) #b00000000000000000000000011111111) (= (mask!10316 thiss!1504) #b00000000000000000000000111111111) (= (mask!10316 thiss!1504) #b00000000000000000000001111111111) (= (mask!10316 thiss!1504) #b00000000000000000000011111111111) (= (mask!10316 thiss!1504) #b00000000000000000000111111111111) (= (mask!10316 thiss!1504) #b00000000000000000001111111111111) (= (mask!10316 thiss!1504) #b00000000000000000011111111111111) (= (mask!10316 thiss!1504) #b00000000000000000111111111111111) (= (mask!10316 thiss!1504) #b00000000000000001111111111111111) (= (mask!10316 thiss!1504) #b00000000000000011111111111111111) (= (mask!10316 thiss!1504) #b00000000000000111111111111111111) (= (mask!10316 thiss!1504) #b00000000000001111111111111111111) (= (mask!10316 thiss!1504) #b00000000000011111111111111111111) (= (mask!10316 thiss!1504) #b00000000000111111111111111111111) (= (mask!10316 thiss!1504) #b00000000001111111111111111111111) (= (mask!10316 thiss!1504) #b00000000011111111111111111111111) (= (mask!10316 thiss!1504) #b00000000111111111111111111111111) (= (mask!10316 thiss!1504) #b00000001111111111111111111111111) (= (mask!10316 thiss!1504) #b00000011111111111111111111111111) (= (mask!10316 thiss!1504) #b00000111111111111111111111111111) (= (mask!10316 thiss!1504) #b00001111111111111111111111111111) (= (mask!10316 thiss!1504) #b00011111111111111111111111111111) (= (mask!10316 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10316 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!234643 d!59081))

(declare-fun d!59083 () Bool)

(declare-fun res!115124 () Bool)

(declare-fun e!152443 () Bool)

(assert (=> d!59083 (=> (not res!115124) (not e!152443))))

(declare-fun simpleValid!230 (LongMapFixedSize!3390) Bool)

(assert (=> d!59083 (= res!115124 (simpleValid!230 thiss!1504))))

(assert (=> d!59083 (= (valid!1330 thiss!1504) e!152443)))

(declare-fun b!234683 () Bool)

(declare-fun res!115125 () Bool)

(assert (=> b!234683 (=> (not res!115125) (not e!152443))))

(declare-fun arrayCountValidKeys!0 (array!11608 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!234683 (= res!115125 (= (arrayCountValidKeys!0 (_keys!6430 thiss!1504) #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))) (_size!1744 thiss!1504)))))

(declare-fun b!234684 () Bool)

(declare-fun res!115126 () Bool)

(assert (=> b!234684 (=> (not res!115126) (not e!152443))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11608 (_ BitVec 32)) Bool)

(assert (=> b!234684 (= res!115126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)))))

(declare-fun b!234685 () Bool)

(declare-datatypes ((List!3548 0))(
  ( (Nil!3545) (Cons!3544 (h!4195 (_ BitVec 64)) (t!8527 List!3548)) )
))
(declare-fun arrayNoDuplicates!0 (array!11608 (_ BitVec 32) List!3548) Bool)

(assert (=> b!234685 (= e!152443 (arrayNoDuplicates!0 (_keys!6430 thiss!1504) #b00000000000000000000000000000000 Nil!3545))))

(assert (= (and d!59083 res!115124) b!234683))

(assert (= (and b!234683 res!115125) b!234684))

(assert (= (and b!234684 res!115126) b!234685))

(declare-fun m!255955 () Bool)

(assert (=> d!59083 m!255955))

(declare-fun m!255957 () Bool)

(assert (=> b!234683 m!255957))

(declare-fun m!255959 () Bool)

(assert (=> b!234684 m!255959))

(declare-fun m!255961 () Bool)

(assert (=> b!234685 m!255961))

(assert (=> start!22438 d!59083))

(declare-fun b!234698 () Bool)

(declare-fun c!39078 () Bool)

(declare-fun lt!118755 () (_ BitVec 64))

(assert (=> b!234698 (= c!39078 (= lt!118755 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!152450 () SeekEntryResult!992)

(declare-fun e!152452 () SeekEntryResult!992)

(assert (=> b!234698 (= e!152450 e!152452)))

(declare-fun b!234699 () Bool)

(declare-fun lt!118753 () SeekEntryResult!992)

(assert (=> b!234699 (= e!152452 (MissingZero!992 (index!6140 lt!118753)))))

(declare-fun b!234700 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11608 (_ BitVec 32)) SeekEntryResult!992)

(assert (=> b!234700 (= e!152452 (seekKeyOrZeroReturnVacant!0 (x!23734 lt!118753) (index!6140 lt!118753) (index!6140 lt!118753) key!932 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)))))

(declare-fun b!234701 () Bool)

(declare-fun e!152451 () SeekEntryResult!992)

(assert (=> b!234701 (= e!152451 e!152450)))

(assert (=> b!234701 (= lt!118755 (select (arr!5518 (_keys!6430 thiss!1504)) (index!6140 lt!118753)))))

(declare-fun c!39079 () Bool)

(assert (=> b!234701 (= c!39079 (= lt!118755 key!932))))

(declare-fun d!59085 () Bool)

(declare-fun lt!118754 () SeekEntryResult!992)

(assert (=> d!59085 (and (or ((_ is Undefined!992) lt!118754) (not ((_ is Found!992) lt!118754)) (and (bvsge (index!6139 lt!118754) #b00000000000000000000000000000000) (bvslt (index!6139 lt!118754) (size!5854 (_keys!6430 thiss!1504))))) (or ((_ is Undefined!992) lt!118754) ((_ is Found!992) lt!118754) (not ((_ is MissingZero!992) lt!118754)) (and (bvsge (index!6138 lt!118754) #b00000000000000000000000000000000) (bvslt (index!6138 lt!118754) (size!5854 (_keys!6430 thiss!1504))))) (or ((_ is Undefined!992) lt!118754) ((_ is Found!992) lt!118754) ((_ is MissingZero!992) lt!118754) (not ((_ is MissingVacant!992) lt!118754)) (and (bvsge (index!6141 lt!118754) #b00000000000000000000000000000000) (bvslt (index!6141 lt!118754) (size!5854 (_keys!6430 thiss!1504))))) (or ((_ is Undefined!992) lt!118754) (ite ((_ is Found!992) lt!118754) (= (select (arr!5518 (_keys!6430 thiss!1504)) (index!6139 lt!118754)) key!932) (ite ((_ is MissingZero!992) lt!118754) (= (select (arr!5518 (_keys!6430 thiss!1504)) (index!6138 lt!118754)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!992) lt!118754) (= (select (arr!5518 (_keys!6430 thiss!1504)) (index!6141 lt!118754)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59085 (= lt!118754 e!152451)))

(declare-fun c!39080 () Bool)

(assert (=> d!59085 (= c!39080 (and ((_ is Intermediate!992) lt!118753) (undefined!1804 lt!118753)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11608 (_ BitVec 32)) SeekEntryResult!992)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59085 (= lt!118753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10316 thiss!1504)) key!932 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)))))

(assert (=> d!59085 (validMask!0 (mask!10316 thiss!1504))))

(assert (=> d!59085 (= (seekEntryOrOpen!0 key!932 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)) lt!118754)))

(declare-fun b!234702 () Bool)

(assert (=> b!234702 (= e!152450 (Found!992 (index!6140 lt!118753)))))

(declare-fun b!234703 () Bool)

(assert (=> b!234703 (= e!152451 Undefined!992)))

(assert (= (and d!59085 c!39080) b!234703))

(assert (= (and d!59085 (not c!39080)) b!234701))

(assert (= (and b!234701 c!39079) b!234702))

(assert (= (and b!234701 (not c!39079)) b!234698))

(assert (= (and b!234698 c!39078) b!234699))

(assert (= (and b!234698 (not c!39078)) b!234700))

(declare-fun m!255963 () Bool)

(assert (=> b!234700 m!255963))

(declare-fun m!255965 () Bool)

(assert (=> b!234701 m!255965))

(declare-fun m!255967 () Bool)

(assert (=> d!59085 m!255967))

(assert (=> d!59085 m!255937))

(declare-fun m!255969 () Bool)

(assert (=> d!59085 m!255969))

(assert (=> d!59085 m!255967))

(declare-fun m!255971 () Bool)

(assert (=> d!59085 m!255971))

(declare-fun m!255973 () Bool)

(assert (=> d!59085 m!255973))

(declare-fun m!255975 () Bool)

(assert (=> d!59085 m!255975))

(assert (=> b!234648 d!59085))

(declare-fun d!59087 () Bool)

(declare-fun e!152457 () Bool)

(assert (=> d!59087 e!152457))

(declare-fun res!115129 () Bool)

(assert (=> d!59087 (=> res!115129 e!152457)))

(declare-fun lt!118765 () Bool)

(assert (=> d!59087 (= res!115129 (not lt!118765))))

(declare-fun lt!118764 () Bool)

(assert (=> d!59087 (= lt!118765 lt!118764)))

(declare-datatypes ((Unit!7239 0))(
  ( (Unit!7240) )
))
(declare-fun lt!118766 () Unit!7239)

(declare-fun e!152458 () Unit!7239)

(assert (=> d!59087 (= lt!118766 e!152458)))

(declare-fun c!39083 () Bool)

(assert (=> d!59087 (= c!39083 lt!118764)))

(declare-fun containsKey!257 (List!3547 (_ BitVec 64)) Bool)

(assert (=> d!59087 (= lt!118764 (containsKey!257 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932))))

(assert (=> d!59087 (= (contains!1654 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)) key!932) lt!118765)))

(declare-fun b!234710 () Bool)

(declare-fun lt!118767 () Unit!7239)

(assert (=> b!234710 (= e!152458 lt!118767)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!206 (List!3547 (_ BitVec 64)) Unit!7239)

(assert (=> b!234710 (= lt!118767 (lemmaContainsKeyImpliesGetValueByKeyDefined!206 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932))))

(declare-datatypes ((Option!271 0))(
  ( (Some!270 (v!5156 V!7883)) (None!269) )
))
(declare-fun isDefined!207 (Option!271) Bool)

(declare-fun getValueByKey!265 (List!3547 (_ BitVec 64)) Option!271)

(assert (=> b!234710 (isDefined!207 (getValueByKey!265 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932))))

(declare-fun b!234711 () Bool)

(declare-fun Unit!7241 () Unit!7239)

(assert (=> b!234711 (= e!152458 Unit!7241)))

(declare-fun b!234712 () Bool)

(assert (=> b!234712 (= e!152457 (isDefined!207 (getValueByKey!265 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932)))))

(assert (= (and d!59087 c!39083) b!234710))

(assert (= (and d!59087 (not c!39083)) b!234711))

(assert (= (and d!59087 (not res!115129)) b!234712))

(declare-fun m!255977 () Bool)

(assert (=> d!59087 m!255977))

(declare-fun m!255979 () Bool)

(assert (=> b!234710 m!255979))

(declare-fun m!255981 () Bool)

(assert (=> b!234710 m!255981))

(assert (=> b!234710 m!255981))

(declare-fun m!255983 () Bool)

(assert (=> b!234710 m!255983))

(assert (=> b!234712 m!255981))

(assert (=> b!234712 m!255981))

(assert (=> b!234712 m!255983))

(assert (=> b!234645 d!59087))

(declare-fun b!234755 () Bool)

(declare-fun e!152490 () ListLongMap!3541)

(declare-fun call!21838 () ListLongMap!3541)

(assert (=> b!234755 (= e!152490 call!21838)))

(declare-fun b!234756 () Bool)

(declare-fun e!152486 () ListLongMap!3541)

(assert (=> b!234756 (= e!152486 call!21838)))

(declare-fun b!234757 () Bool)

(declare-fun e!152489 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!234757 (= e!152489 (validKeyInArray!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234758 () Bool)

(declare-fun e!152488 () Bool)

(declare-fun e!152487 () Bool)

(assert (=> b!234758 (= e!152488 e!152487)))

(declare-fun res!115148 () Bool)

(declare-fun call!21836 () Bool)

(assert (=> b!234758 (= res!115148 call!21836)))

(assert (=> b!234758 (=> (not res!115148) (not e!152487))))

(declare-fun b!234759 () Bool)

(declare-fun e!152494 () Bool)

(declare-fun lt!118816 () ListLongMap!3541)

(declare-fun apply!208 (ListLongMap!3541 (_ BitVec 64)) V!7883)

(assert (=> b!234759 (= e!152494 (= (apply!208 lt!118816 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4203 thiss!1504)))))

(declare-fun b!234760 () Bool)

(declare-fun e!152493 () Bool)

(assert (=> b!234760 (= e!152493 e!152494)))

(declare-fun res!115154 () Bool)

(declare-fun call!21832 () Bool)

(assert (=> b!234760 (= res!115154 call!21832)))

(assert (=> b!234760 (=> (not res!115154) (not e!152494))))

(declare-fun bm!21829 () Bool)

(declare-fun call!21833 () ListLongMap!3541)

(declare-fun call!21837 () ListLongMap!3541)

(assert (=> bm!21829 (= call!21833 call!21837)))

(declare-fun bm!21830 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!527 (array!11608 array!11606 (_ BitVec 32) (_ BitVec 32) V!7883 V!7883 (_ BitVec 32) Int) ListLongMap!3541)

(assert (=> bm!21830 (= call!21837 (getCurrentListMapNoExtraKeys!527 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))))

(declare-fun b!234761 () Bool)

(declare-fun c!39099 () Bool)

(assert (=> b!234761 (= c!39099 (and (not (= (bvand (extraKeys!4099 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4099 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!234761 (= e!152490 e!152486)))

(declare-fun b!234762 () Bool)

(assert (=> b!234762 (= e!152493 (not call!21832))))

(declare-fun b!234763 () Bool)

(declare-fun e!152495 () Bool)

(assert (=> b!234763 (= e!152495 e!152488)))

(declare-fun c!39097 () Bool)

(assert (=> b!234763 (= c!39097 (not (= (bvand (extraKeys!4099 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!234764 () Bool)

(declare-fun e!152497 () Bool)

(declare-fun get!2835 (ValueCell!2745 V!7883) V!7883)

(declare-fun dynLambda!546 (Int (_ BitVec 64)) V!7883)

(assert (=> b!234764 (= e!152497 (= (apply!208 lt!118816 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)) (get!2835 (select (arr!5517 (_values!4345 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!546 (defaultEntry!4362 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!234764 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5853 (_values!4345 thiss!1504))))))

(assert (=> b!234764 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(declare-fun b!234765 () Bool)

(declare-fun e!152485 () Bool)

(assert (=> b!234765 (= e!152485 (validKeyInArray!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234766 () Bool)

(declare-fun e!152496 () Unit!7239)

(declare-fun lt!118822 () Unit!7239)

(assert (=> b!234766 (= e!152496 lt!118822)))

(declare-fun lt!118819 () ListLongMap!3541)

(assert (=> b!234766 (= lt!118819 (getCurrentListMapNoExtraKeys!527 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))))

(declare-fun lt!118832 () (_ BitVec 64))

(assert (=> b!234766 (= lt!118832 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118827 () (_ BitVec 64))

(assert (=> b!234766 (= lt!118827 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118829 () Unit!7239)

(declare-fun addStillContains!184 (ListLongMap!3541 (_ BitVec 64) V!7883 (_ BitVec 64)) Unit!7239)

(assert (=> b!234766 (= lt!118829 (addStillContains!184 lt!118819 lt!118832 (zeroValue!4203 thiss!1504) lt!118827))))

(declare-fun +!630 (ListLongMap!3541 tuple2!4614) ListLongMap!3541)

(assert (=> b!234766 (contains!1654 (+!630 lt!118819 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504))) lt!118827)))

(declare-fun lt!118818 () Unit!7239)

(assert (=> b!234766 (= lt!118818 lt!118829)))

(declare-fun lt!118820 () ListLongMap!3541)

(assert (=> b!234766 (= lt!118820 (getCurrentListMapNoExtraKeys!527 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))))

(declare-fun lt!118813 () (_ BitVec 64))

(assert (=> b!234766 (= lt!118813 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118817 () (_ BitVec 64))

(assert (=> b!234766 (= lt!118817 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118814 () Unit!7239)

(declare-fun addApplyDifferent!184 (ListLongMap!3541 (_ BitVec 64) V!7883 (_ BitVec 64)) Unit!7239)

(assert (=> b!234766 (= lt!118814 (addApplyDifferent!184 lt!118820 lt!118813 (minValue!4203 thiss!1504) lt!118817))))

(assert (=> b!234766 (= (apply!208 (+!630 lt!118820 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504))) lt!118817) (apply!208 lt!118820 lt!118817))))

(declare-fun lt!118828 () Unit!7239)

(assert (=> b!234766 (= lt!118828 lt!118814)))

(declare-fun lt!118812 () ListLongMap!3541)

(assert (=> b!234766 (= lt!118812 (getCurrentListMapNoExtraKeys!527 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))))

(declare-fun lt!118833 () (_ BitVec 64))

(assert (=> b!234766 (= lt!118833 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118824 () (_ BitVec 64))

(assert (=> b!234766 (= lt!118824 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118826 () Unit!7239)

(assert (=> b!234766 (= lt!118826 (addApplyDifferent!184 lt!118812 lt!118833 (zeroValue!4203 thiss!1504) lt!118824))))

(assert (=> b!234766 (= (apply!208 (+!630 lt!118812 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504))) lt!118824) (apply!208 lt!118812 lt!118824))))

(declare-fun lt!118825 () Unit!7239)

(assert (=> b!234766 (= lt!118825 lt!118826)))

(declare-fun lt!118830 () ListLongMap!3541)

(assert (=> b!234766 (= lt!118830 (getCurrentListMapNoExtraKeys!527 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))))

(declare-fun lt!118831 () (_ BitVec 64))

(assert (=> b!234766 (= lt!118831 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118815 () (_ BitVec 64))

(assert (=> b!234766 (= lt!118815 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234766 (= lt!118822 (addApplyDifferent!184 lt!118830 lt!118831 (minValue!4203 thiss!1504) lt!118815))))

(assert (=> b!234766 (= (apply!208 (+!630 lt!118830 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504))) lt!118815) (apply!208 lt!118830 lt!118815))))

(declare-fun b!234767 () Bool)

(declare-fun call!21834 () ListLongMap!3541)

(assert (=> b!234767 (= e!152486 call!21834)))

(declare-fun b!234768 () Bool)

(assert (=> b!234768 (= e!152488 (not call!21836))))

(declare-fun b!234769 () Bool)

(declare-fun res!115155 () Bool)

(assert (=> b!234769 (=> (not res!115155) (not e!152495))))

(declare-fun e!152491 () Bool)

(assert (=> b!234769 (= res!115155 e!152491)))

(declare-fun res!115156 () Bool)

(assert (=> b!234769 (=> res!115156 e!152491)))

(assert (=> b!234769 (= res!115156 (not e!152489))))

(declare-fun res!115150 () Bool)

(assert (=> b!234769 (=> (not res!115150) (not e!152489))))

(assert (=> b!234769 (= res!115150 (bvslt #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(declare-fun b!234770 () Bool)

(declare-fun res!115151 () Bool)

(assert (=> b!234770 (=> (not res!115151) (not e!152495))))

(assert (=> b!234770 (= res!115151 e!152493)))

(declare-fun c!39100 () Bool)

(assert (=> b!234770 (= c!39100 (not (= (bvand (extraKeys!4099 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!21831 () Bool)

(assert (=> bm!21831 (= call!21834 call!21833)))

(declare-fun b!234771 () Bool)

(declare-fun e!152492 () ListLongMap!3541)

(declare-fun call!21835 () ListLongMap!3541)

(assert (=> b!234771 (= e!152492 (+!630 call!21835 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))))))

(declare-fun b!234772 () Bool)

(assert (=> b!234772 (= e!152491 e!152497)))

(declare-fun res!115152 () Bool)

(assert (=> b!234772 (=> (not res!115152) (not e!152497))))

(assert (=> b!234772 (= res!115152 (contains!1654 lt!118816 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234772 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(declare-fun b!234773 () Bool)

(assert (=> b!234773 (= e!152487 (= (apply!208 lt!118816 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4203 thiss!1504)))))

(declare-fun d!59089 () Bool)

(assert (=> d!59089 e!152495))

(declare-fun res!115153 () Bool)

(assert (=> d!59089 (=> (not res!115153) (not e!152495))))

(assert (=> d!59089 (= res!115153 (or (bvsge #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))))

(declare-fun lt!118821 () ListLongMap!3541)

(assert (=> d!59089 (= lt!118816 lt!118821)))

(declare-fun lt!118823 () Unit!7239)

(assert (=> d!59089 (= lt!118823 e!152496)))

(declare-fun c!39096 () Bool)

(assert (=> d!59089 (= c!39096 e!152485)))

(declare-fun res!115149 () Bool)

(assert (=> d!59089 (=> (not res!115149) (not e!152485))))

(assert (=> d!59089 (= res!115149 (bvslt #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(assert (=> d!59089 (= lt!118821 e!152492)))

(declare-fun c!39101 () Bool)

(assert (=> d!59089 (= c!39101 (and (not (= (bvand (extraKeys!4099 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4099 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59089 (validMask!0 (mask!10316 thiss!1504))))

(assert (=> d!59089 (= (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)) lt!118816)))

(declare-fun b!234774 () Bool)

(declare-fun Unit!7242 () Unit!7239)

(assert (=> b!234774 (= e!152496 Unit!7242)))

(declare-fun bm!21832 () Bool)

(assert (=> bm!21832 (= call!21836 (contains!1654 lt!118816 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21833 () Bool)

(declare-fun c!39098 () Bool)

(assert (=> bm!21833 (= call!21835 (+!630 (ite c!39101 call!21837 (ite c!39098 call!21833 call!21834)) (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))))))

(declare-fun bm!21834 () Bool)

(assert (=> bm!21834 (= call!21838 call!21835)))

(declare-fun bm!21835 () Bool)

(assert (=> bm!21835 (= call!21832 (contains!1654 lt!118816 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!234775 () Bool)

(assert (=> b!234775 (= e!152492 e!152490)))

(assert (=> b!234775 (= c!39098 (and (not (= (bvand (extraKeys!4099 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4099 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!59089 c!39101) b!234771))

(assert (= (and d!59089 (not c!39101)) b!234775))

(assert (= (and b!234775 c!39098) b!234755))

(assert (= (and b!234775 (not c!39098)) b!234761))

(assert (= (and b!234761 c!39099) b!234756))

(assert (= (and b!234761 (not c!39099)) b!234767))

(assert (= (or b!234756 b!234767) bm!21831))

(assert (= (or b!234755 bm!21831) bm!21829))

(assert (= (or b!234755 b!234756) bm!21834))

(assert (= (or b!234771 bm!21829) bm!21830))

(assert (= (or b!234771 bm!21834) bm!21833))

(assert (= (and d!59089 res!115149) b!234765))

(assert (= (and d!59089 c!39096) b!234766))

(assert (= (and d!59089 (not c!39096)) b!234774))

(assert (= (and d!59089 res!115153) b!234769))

(assert (= (and b!234769 res!115150) b!234757))

(assert (= (and b!234769 (not res!115156)) b!234772))

(assert (= (and b!234772 res!115152) b!234764))

(assert (= (and b!234769 res!115155) b!234770))

(assert (= (and b!234770 c!39100) b!234760))

(assert (= (and b!234770 (not c!39100)) b!234762))

(assert (= (and b!234760 res!115154) b!234759))

(assert (= (or b!234760 b!234762) bm!21835))

(assert (= (and b!234770 res!115151) b!234763))

(assert (= (and b!234763 c!39097) b!234758))

(assert (= (and b!234763 (not c!39097)) b!234768))

(assert (= (and b!234758 res!115148) b!234773))

(assert (= (or b!234758 b!234768) bm!21832))

(declare-fun b_lambda!7917 () Bool)

(assert (=> (not b_lambda!7917) (not b!234764)))

(declare-fun t!8526 () Bool)

(declare-fun tb!2937 () Bool)

(assert (=> (and b!234649 (= (defaultEntry!4362 thiss!1504) (defaultEntry!4362 thiss!1504)) t!8526) tb!2937))

(declare-fun result!5117 () Bool)

(assert (=> tb!2937 (= result!5117 tp_is_empty!6177)))

(assert (=> b!234764 t!8526))

(declare-fun b_and!13257 () Bool)

(assert (= b_and!13253 (and (=> t!8526 result!5117) b_and!13257)))

(declare-fun m!255985 () Bool)

(assert (=> b!234766 m!255985))

(assert (=> b!234766 m!255985))

(declare-fun m!255987 () Bool)

(assert (=> b!234766 m!255987))

(declare-fun m!255989 () Bool)

(assert (=> b!234766 m!255989))

(declare-fun m!255991 () Bool)

(assert (=> b!234766 m!255991))

(declare-fun m!255993 () Bool)

(assert (=> b!234766 m!255993))

(declare-fun m!255995 () Bool)

(assert (=> b!234766 m!255995))

(declare-fun m!255997 () Bool)

(assert (=> b!234766 m!255997))

(declare-fun m!255999 () Bool)

(assert (=> b!234766 m!255999))

(declare-fun m!256001 () Bool)

(assert (=> b!234766 m!256001))

(assert (=> b!234766 m!255991))

(declare-fun m!256003 () Bool)

(assert (=> b!234766 m!256003))

(declare-fun m!256005 () Bool)

(assert (=> b!234766 m!256005))

(declare-fun m!256007 () Bool)

(assert (=> b!234766 m!256007))

(assert (=> b!234766 m!256001))

(declare-fun m!256009 () Bool)

(assert (=> b!234766 m!256009))

(declare-fun m!256011 () Bool)

(assert (=> b!234766 m!256011))

(declare-fun m!256013 () Bool)

(assert (=> b!234766 m!256013))

(declare-fun m!256015 () Bool)

(assert (=> b!234766 m!256015))

(assert (=> b!234766 m!256005))

(declare-fun m!256017 () Bool)

(assert (=> b!234766 m!256017))

(assert (=> d!59089 m!255937))

(assert (=> b!234772 m!256013))

(assert (=> b!234772 m!256013))

(declare-fun m!256019 () Bool)

(assert (=> b!234772 m!256019))

(assert (=> b!234764 m!256013))

(declare-fun m!256021 () Bool)

(assert (=> b!234764 m!256021))

(assert (=> b!234764 m!256013))

(declare-fun m!256023 () Bool)

(assert (=> b!234764 m!256023))

(declare-fun m!256025 () Bool)

(assert (=> b!234764 m!256025))

(declare-fun m!256027 () Bool)

(assert (=> b!234764 m!256027))

(assert (=> b!234764 m!256023))

(assert (=> b!234764 m!256025))

(declare-fun m!256029 () Bool)

(assert (=> b!234773 m!256029))

(declare-fun m!256031 () Bool)

(assert (=> b!234759 m!256031))

(assert (=> bm!21830 m!256015))

(assert (=> b!234757 m!256013))

(assert (=> b!234757 m!256013))

(declare-fun m!256033 () Bool)

(assert (=> b!234757 m!256033))

(declare-fun m!256035 () Bool)

(assert (=> bm!21835 m!256035))

(declare-fun m!256037 () Bool)

(assert (=> bm!21833 m!256037))

(assert (=> b!234765 m!256013))

(assert (=> b!234765 m!256013))

(assert (=> b!234765 m!256033))

(declare-fun m!256039 () Bool)

(assert (=> b!234771 m!256039))

(declare-fun m!256041 () Bool)

(assert (=> bm!21832 m!256041))

(assert (=> b!234645 d!59089))

(declare-fun d!59091 () Bool)

(assert (=> d!59091 (= (array_inv!3627 (_keys!6430 thiss!1504)) (bvsge (size!5854 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234649 d!59091))

(declare-fun d!59093 () Bool)

(assert (=> d!59093 (= (array_inv!3628 (_values!4345 thiss!1504)) (bvsge (size!5853 (_values!4345 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234649 d!59093))

(declare-fun b!234784 () Bool)

(declare-fun e!152502 () Bool)

(assert (=> b!234784 (= e!152502 tp_is_empty!6177)))

(declare-fun mapIsEmpty!10459 () Bool)

(declare-fun mapRes!10459 () Bool)

(assert (=> mapIsEmpty!10459 mapRes!10459))

(declare-fun condMapEmpty!10459 () Bool)

(declare-fun mapDefault!10459 () ValueCell!2745)

(assert (=> mapNonEmpty!10453 (= condMapEmpty!10459 (= mapRest!10453 ((as const (Array (_ BitVec 32) ValueCell!2745)) mapDefault!10459)))))

(declare-fun e!152503 () Bool)

(assert (=> mapNonEmpty!10453 (= tp!22105 (and e!152503 mapRes!10459))))

(declare-fun b!234785 () Bool)

(assert (=> b!234785 (= e!152503 tp_is_empty!6177)))

(declare-fun mapNonEmpty!10459 () Bool)

(declare-fun tp!22114 () Bool)

(assert (=> mapNonEmpty!10459 (= mapRes!10459 (and tp!22114 e!152502))))

(declare-fun mapKey!10459 () (_ BitVec 32))

(declare-fun mapRest!10459 () (Array (_ BitVec 32) ValueCell!2745))

(declare-fun mapValue!10459 () ValueCell!2745)

(assert (=> mapNonEmpty!10459 (= mapRest!10453 (store mapRest!10459 mapKey!10459 mapValue!10459))))

(assert (= (and mapNonEmpty!10453 condMapEmpty!10459) mapIsEmpty!10459))

(assert (= (and mapNonEmpty!10453 (not condMapEmpty!10459)) mapNonEmpty!10459))

(assert (= (and mapNonEmpty!10459 ((_ is ValueCellFull!2745) mapValue!10459)) b!234784))

(assert (= (and mapNonEmpty!10453 ((_ is ValueCellFull!2745) mapDefault!10459)) b!234785))

(declare-fun m!256043 () Bool)

(assert (=> mapNonEmpty!10459 m!256043))

(declare-fun b_lambda!7919 () Bool)

(assert (= b_lambda!7917 (or (and b!234649 b_free!6315) b_lambda!7919)))

(check-sat (not b!234772) (not d!59083) (not b!234759) (not bm!21832) (not mapNonEmpty!10459) (not b_next!6315) (not d!59085) (not d!59087) (not b!234710) (not d!59089) (not b!234765) (not bm!21833) (not b!234773) (not bm!21835) (not b!234684) (not b_lambda!7919) tp_is_empty!6177 (not b!234757) (not bm!21830) (not b!234771) (not b!234712) (not b!234685) b_and!13257 (not b!234766) (not b!234700) (not b!234764) (not b!234683))
(check-sat b_and!13257 (not b_next!6315))
(get-model)

(declare-fun d!59095 () Bool)

(declare-fun e!152506 () Bool)

(assert (=> d!59095 e!152506))

(declare-fun res!115162 () Bool)

(assert (=> d!59095 (=> (not res!115162) (not e!152506))))

(declare-fun lt!118843 () ListLongMap!3541)

(assert (=> d!59095 (= res!115162 (contains!1654 lt!118843 (_1!2317 (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))))))))

(declare-fun lt!118845 () List!3547)

(assert (=> d!59095 (= lt!118843 (ListLongMap!3542 lt!118845))))

(declare-fun lt!118844 () Unit!7239)

(declare-fun lt!118842 () Unit!7239)

(assert (=> d!59095 (= lt!118844 lt!118842)))

(assert (=> d!59095 (= (getValueByKey!265 lt!118845 (_1!2317 (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))))) (Some!270 (_2!2317 (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!151 (List!3547 (_ BitVec 64) V!7883) Unit!7239)

(assert (=> d!59095 (= lt!118842 (lemmaContainsTupThenGetReturnValue!151 lt!118845 (_1!2317 (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))) (_2!2317 (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))))))))

(declare-fun insertStrictlySorted!153 (List!3547 (_ BitVec 64) V!7883) List!3547)

(assert (=> d!59095 (= lt!118845 (insertStrictlySorted!153 (toList!1786 (ite c!39101 call!21837 (ite c!39098 call!21833 call!21834))) (_1!2317 (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))) (_2!2317 (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))))))))

(assert (=> d!59095 (= (+!630 (ite c!39101 call!21837 (ite c!39098 call!21833 call!21834)) (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))) lt!118843)))

(declare-fun b!234790 () Bool)

(declare-fun res!115161 () Bool)

(assert (=> b!234790 (=> (not res!115161) (not e!152506))))

(assert (=> b!234790 (= res!115161 (= (getValueByKey!265 (toList!1786 lt!118843) (_1!2317 (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))))) (Some!270 (_2!2317 (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))))))))

(declare-fun b!234791 () Bool)

(declare-fun contains!1655 (List!3547 tuple2!4614) Bool)

(assert (=> b!234791 (= e!152506 (contains!1655 (toList!1786 lt!118843) (ite (or c!39101 c!39098) (tuple2!4615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4203 thiss!1504)) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))))))

(assert (= (and d!59095 res!115162) b!234790))

(assert (= (and b!234790 res!115161) b!234791))

(declare-fun m!256045 () Bool)

(assert (=> d!59095 m!256045))

(declare-fun m!256047 () Bool)

(assert (=> d!59095 m!256047))

(declare-fun m!256049 () Bool)

(assert (=> d!59095 m!256049))

(declare-fun m!256051 () Bool)

(assert (=> d!59095 m!256051))

(declare-fun m!256053 () Bool)

(assert (=> b!234790 m!256053))

(declare-fun m!256055 () Bool)

(assert (=> b!234791 m!256055))

(assert (=> bm!21833 d!59095))

(declare-fun d!59097 () Bool)

(declare-fun get!2836 (Option!271) V!7883)

(assert (=> d!59097 (= (apply!208 (+!630 lt!118830 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504))) lt!118815) (get!2836 (getValueByKey!265 (toList!1786 (+!630 lt!118830 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504)))) lt!118815)))))

(declare-fun bs!8696 () Bool)

(assert (= bs!8696 d!59097))

(declare-fun m!256057 () Bool)

(assert (=> bs!8696 m!256057))

(assert (=> bs!8696 m!256057))

(declare-fun m!256059 () Bool)

(assert (=> bs!8696 m!256059))

(assert (=> b!234766 d!59097))

(declare-fun d!59099 () Bool)

(declare-fun e!152507 () Bool)

(assert (=> d!59099 e!152507))

(declare-fun res!115164 () Bool)

(assert (=> d!59099 (=> (not res!115164) (not e!152507))))

(declare-fun lt!118847 () ListLongMap!3541)

(assert (=> d!59099 (= res!115164 (contains!1654 lt!118847 (_1!2317 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))))))

(declare-fun lt!118849 () List!3547)

(assert (=> d!59099 (= lt!118847 (ListLongMap!3542 lt!118849))))

(declare-fun lt!118848 () Unit!7239)

(declare-fun lt!118846 () Unit!7239)

(assert (=> d!59099 (= lt!118848 lt!118846)))

(assert (=> d!59099 (= (getValueByKey!265 lt!118849 (_1!2317 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))))))

(assert (=> d!59099 (= lt!118846 (lemmaContainsTupThenGetReturnValue!151 lt!118849 (_1!2317 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))))))

(assert (=> d!59099 (= lt!118849 (insertStrictlySorted!153 (toList!1786 lt!118819) (_1!2317 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))))))

(assert (=> d!59099 (= (+!630 lt!118819 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504))) lt!118847)))

(declare-fun b!234792 () Bool)

(declare-fun res!115163 () Bool)

(assert (=> b!234792 (=> (not res!115163) (not e!152507))))

(assert (=> b!234792 (= res!115163 (= (getValueByKey!265 (toList!1786 lt!118847) (_1!2317 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504))))))))

(declare-fun b!234793 () Bool)

(assert (=> b!234793 (= e!152507 (contains!1655 (toList!1786 lt!118847) (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504))))))

(assert (= (and d!59099 res!115164) b!234792))

(assert (= (and b!234792 res!115163) b!234793))

(declare-fun m!256061 () Bool)

(assert (=> d!59099 m!256061))

(declare-fun m!256063 () Bool)

(assert (=> d!59099 m!256063))

(declare-fun m!256065 () Bool)

(assert (=> d!59099 m!256065))

(declare-fun m!256067 () Bool)

(assert (=> d!59099 m!256067))

(declare-fun m!256069 () Bool)

(assert (=> b!234792 m!256069))

(declare-fun m!256071 () Bool)

(assert (=> b!234793 m!256071))

(assert (=> b!234766 d!59099))

(declare-fun d!59101 () Bool)

(assert (=> d!59101 (= (apply!208 (+!630 lt!118820 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504))) lt!118817) (apply!208 lt!118820 lt!118817))))

(declare-fun lt!118852 () Unit!7239)

(declare-fun choose!1109 (ListLongMap!3541 (_ BitVec 64) V!7883 (_ BitVec 64)) Unit!7239)

(assert (=> d!59101 (= lt!118852 (choose!1109 lt!118820 lt!118813 (minValue!4203 thiss!1504) lt!118817))))

(declare-fun e!152510 () Bool)

(assert (=> d!59101 e!152510))

(declare-fun res!115167 () Bool)

(assert (=> d!59101 (=> (not res!115167) (not e!152510))))

(assert (=> d!59101 (= res!115167 (contains!1654 lt!118820 lt!118817))))

(assert (=> d!59101 (= (addApplyDifferent!184 lt!118820 lt!118813 (minValue!4203 thiss!1504) lt!118817) lt!118852)))

(declare-fun b!234797 () Bool)

(assert (=> b!234797 (= e!152510 (not (= lt!118817 lt!118813)))))

(assert (= (and d!59101 res!115167) b!234797))

(declare-fun m!256073 () Bool)

(assert (=> d!59101 m!256073))

(assert (=> d!59101 m!256001))

(assert (=> d!59101 m!256009))

(assert (=> d!59101 m!256001))

(assert (=> d!59101 m!255989))

(declare-fun m!256075 () Bool)

(assert (=> d!59101 m!256075))

(assert (=> b!234766 d!59101))

(declare-fun d!59103 () Bool)

(declare-fun e!152511 () Bool)

(assert (=> d!59103 e!152511))

(declare-fun res!115168 () Bool)

(assert (=> d!59103 (=> res!115168 e!152511)))

(declare-fun lt!118854 () Bool)

(assert (=> d!59103 (= res!115168 (not lt!118854))))

(declare-fun lt!118853 () Bool)

(assert (=> d!59103 (= lt!118854 lt!118853)))

(declare-fun lt!118855 () Unit!7239)

(declare-fun e!152512 () Unit!7239)

(assert (=> d!59103 (= lt!118855 e!152512)))

(declare-fun c!39102 () Bool)

(assert (=> d!59103 (= c!39102 lt!118853)))

(assert (=> d!59103 (= lt!118853 (containsKey!257 (toList!1786 (+!630 lt!118819 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))) lt!118827))))

(assert (=> d!59103 (= (contains!1654 (+!630 lt!118819 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504))) lt!118827) lt!118854)))

(declare-fun b!234798 () Bool)

(declare-fun lt!118856 () Unit!7239)

(assert (=> b!234798 (= e!152512 lt!118856)))

(assert (=> b!234798 (= lt!118856 (lemmaContainsKeyImpliesGetValueByKeyDefined!206 (toList!1786 (+!630 lt!118819 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))) lt!118827))))

(assert (=> b!234798 (isDefined!207 (getValueByKey!265 (toList!1786 (+!630 lt!118819 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))) lt!118827))))

(declare-fun b!234799 () Bool)

(declare-fun Unit!7243 () Unit!7239)

(assert (=> b!234799 (= e!152512 Unit!7243)))

(declare-fun b!234800 () Bool)

(assert (=> b!234800 (= e!152511 (isDefined!207 (getValueByKey!265 (toList!1786 (+!630 lt!118819 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504)))) lt!118827)))))

(assert (= (and d!59103 c!39102) b!234798))

(assert (= (and d!59103 (not c!39102)) b!234799))

(assert (= (and d!59103 (not res!115168)) b!234800))

(declare-fun m!256077 () Bool)

(assert (=> d!59103 m!256077))

(declare-fun m!256079 () Bool)

(assert (=> b!234798 m!256079))

(declare-fun m!256081 () Bool)

(assert (=> b!234798 m!256081))

(assert (=> b!234798 m!256081))

(declare-fun m!256083 () Bool)

(assert (=> b!234798 m!256083))

(assert (=> b!234800 m!256081))

(assert (=> b!234800 m!256081))

(assert (=> b!234800 m!256083))

(assert (=> b!234766 d!59103))

(declare-fun d!59105 () Bool)

(assert (=> d!59105 (= (apply!208 (+!630 lt!118830 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504))) lt!118815) (apply!208 lt!118830 lt!118815))))

(declare-fun lt!118857 () Unit!7239)

(assert (=> d!59105 (= lt!118857 (choose!1109 lt!118830 lt!118831 (minValue!4203 thiss!1504) lt!118815))))

(declare-fun e!152513 () Bool)

(assert (=> d!59105 e!152513))

(declare-fun res!115169 () Bool)

(assert (=> d!59105 (=> (not res!115169) (not e!152513))))

(assert (=> d!59105 (= res!115169 (contains!1654 lt!118830 lt!118815))))

(assert (=> d!59105 (= (addApplyDifferent!184 lt!118830 lt!118831 (minValue!4203 thiss!1504) lt!118815) lt!118857)))

(declare-fun b!234801 () Bool)

(assert (=> b!234801 (= e!152513 (not (= lt!118815 lt!118831)))))

(assert (= (and d!59105 res!115169) b!234801))

(declare-fun m!256085 () Bool)

(assert (=> d!59105 m!256085))

(assert (=> d!59105 m!255985))

(assert (=> d!59105 m!255987))

(assert (=> d!59105 m!255985))

(assert (=> d!59105 m!255997))

(declare-fun m!256087 () Bool)

(assert (=> d!59105 m!256087))

(assert (=> b!234766 d!59105))

(declare-fun d!59107 () Bool)

(declare-fun e!152514 () Bool)

(assert (=> d!59107 e!152514))

(declare-fun res!115171 () Bool)

(assert (=> d!59107 (=> (not res!115171) (not e!152514))))

(declare-fun lt!118859 () ListLongMap!3541)

(assert (=> d!59107 (= res!115171 (contains!1654 lt!118859 (_1!2317 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504)))))))

(declare-fun lt!118861 () List!3547)

(assert (=> d!59107 (= lt!118859 (ListLongMap!3542 lt!118861))))

(declare-fun lt!118860 () Unit!7239)

(declare-fun lt!118858 () Unit!7239)

(assert (=> d!59107 (= lt!118860 lt!118858)))

(assert (=> d!59107 (= (getValueByKey!265 lt!118861 (_1!2317 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504)))))))

(assert (=> d!59107 (= lt!118858 (lemmaContainsTupThenGetReturnValue!151 lt!118861 (_1!2317 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504)))))))

(assert (=> d!59107 (= lt!118861 (insertStrictlySorted!153 (toList!1786 lt!118812) (_1!2317 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504)))))))

(assert (=> d!59107 (= (+!630 lt!118812 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504))) lt!118859)))

(declare-fun b!234802 () Bool)

(declare-fun res!115170 () Bool)

(assert (=> b!234802 (=> (not res!115170) (not e!152514))))

(assert (=> b!234802 (= res!115170 (= (getValueByKey!265 (toList!1786 lt!118859) (_1!2317 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504))))))))

(declare-fun b!234803 () Bool)

(assert (=> b!234803 (= e!152514 (contains!1655 (toList!1786 lt!118859) (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504))))))

(assert (= (and d!59107 res!115171) b!234802))

(assert (= (and b!234802 res!115170) b!234803))

(declare-fun m!256089 () Bool)

(assert (=> d!59107 m!256089))

(declare-fun m!256091 () Bool)

(assert (=> d!59107 m!256091))

(declare-fun m!256093 () Bool)

(assert (=> d!59107 m!256093))

(declare-fun m!256095 () Bool)

(assert (=> d!59107 m!256095))

(declare-fun m!256097 () Bool)

(assert (=> b!234802 m!256097))

(declare-fun m!256099 () Bool)

(assert (=> b!234803 m!256099))

(assert (=> b!234766 d!59107))

(declare-fun d!59109 () Bool)

(declare-fun e!152515 () Bool)

(assert (=> d!59109 e!152515))

(declare-fun res!115173 () Bool)

(assert (=> d!59109 (=> (not res!115173) (not e!152515))))

(declare-fun lt!118863 () ListLongMap!3541)

(assert (=> d!59109 (= res!115173 (contains!1654 lt!118863 (_1!2317 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504)))))))

(declare-fun lt!118865 () List!3547)

(assert (=> d!59109 (= lt!118863 (ListLongMap!3542 lt!118865))))

(declare-fun lt!118864 () Unit!7239)

(declare-fun lt!118862 () Unit!7239)

(assert (=> d!59109 (= lt!118864 lt!118862)))

(assert (=> d!59109 (= (getValueByKey!265 lt!118865 (_1!2317 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504)))))))

(assert (=> d!59109 (= lt!118862 (lemmaContainsTupThenGetReturnValue!151 lt!118865 (_1!2317 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504)))))))

(assert (=> d!59109 (= lt!118865 (insertStrictlySorted!153 (toList!1786 lt!118820) (_1!2317 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504)))))))

(assert (=> d!59109 (= (+!630 lt!118820 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504))) lt!118863)))

(declare-fun b!234804 () Bool)

(declare-fun res!115172 () Bool)

(assert (=> b!234804 (=> (not res!115172) (not e!152515))))

(assert (=> b!234804 (= res!115172 (= (getValueByKey!265 (toList!1786 lt!118863) (_1!2317 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504))))))))

(declare-fun b!234805 () Bool)

(assert (=> b!234805 (= e!152515 (contains!1655 (toList!1786 lt!118863) (tuple2!4615 lt!118813 (minValue!4203 thiss!1504))))))

(assert (= (and d!59109 res!115173) b!234804))

(assert (= (and b!234804 res!115172) b!234805))

(declare-fun m!256101 () Bool)

(assert (=> d!59109 m!256101))

(declare-fun m!256103 () Bool)

(assert (=> d!59109 m!256103))

(declare-fun m!256105 () Bool)

(assert (=> d!59109 m!256105))

(declare-fun m!256107 () Bool)

(assert (=> d!59109 m!256107))

(declare-fun m!256109 () Bool)

(assert (=> b!234804 m!256109))

(declare-fun m!256111 () Bool)

(assert (=> b!234805 m!256111))

(assert (=> b!234766 d!59109))

(declare-fun d!59111 () Bool)

(declare-fun e!152516 () Bool)

(assert (=> d!59111 e!152516))

(declare-fun res!115175 () Bool)

(assert (=> d!59111 (=> (not res!115175) (not e!152516))))

(declare-fun lt!118867 () ListLongMap!3541)

(assert (=> d!59111 (= res!115175 (contains!1654 lt!118867 (_1!2317 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504)))))))

(declare-fun lt!118869 () List!3547)

(assert (=> d!59111 (= lt!118867 (ListLongMap!3542 lt!118869))))

(declare-fun lt!118868 () Unit!7239)

(declare-fun lt!118866 () Unit!7239)

(assert (=> d!59111 (= lt!118868 lt!118866)))

(assert (=> d!59111 (= (getValueByKey!265 lt!118869 (_1!2317 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504)))))))

(assert (=> d!59111 (= lt!118866 (lemmaContainsTupThenGetReturnValue!151 lt!118869 (_1!2317 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504)))))))

(assert (=> d!59111 (= lt!118869 (insertStrictlySorted!153 (toList!1786 lt!118830) (_1!2317 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504)))))))

(assert (=> d!59111 (= (+!630 lt!118830 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504))) lt!118867)))

(declare-fun b!234806 () Bool)

(declare-fun res!115174 () Bool)

(assert (=> b!234806 (=> (not res!115174) (not e!152516))))

(assert (=> b!234806 (= res!115174 (= (getValueByKey!265 (toList!1786 lt!118867) (_1!2317 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 lt!118831 (minValue!4203 thiss!1504))))))))

(declare-fun b!234807 () Bool)

(assert (=> b!234807 (= e!152516 (contains!1655 (toList!1786 lt!118867) (tuple2!4615 lt!118831 (minValue!4203 thiss!1504))))))

(assert (= (and d!59111 res!115175) b!234806))

(assert (= (and b!234806 res!115174) b!234807))

(declare-fun m!256113 () Bool)

(assert (=> d!59111 m!256113))

(declare-fun m!256115 () Bool)

(assert (=> d!59111 m!256115))

(declare-fun m!256117 () Bool)

(assert (=> d!59111 m!256117))

(declare-fun m!256119 () Bool)

(assert (=> d!59111 m!256119))

(declare-fun m!256121 () Bool)

(assert (=> b!234806 m!256121))

(declare-fun m!256123 () Bool)

(assert (=> b!234807 m!256123))

(assert (=> b!234766 d!59111))

(declare-fun b!234832 () Bool)

(declare-fun e!152531 () ListLongMap!3541)

(declare-fun call!21841 () ListLongMap!3541)

(assert (=> b!234832 (= e!152531 call!21841)))

(declare-fun b!234833 () Bool)

(declare-fun e!152532 () Bool)

(declare-fun lt!118885 () ListLongMap!3541)

(assert (=> b!234833 (= e!152532 (= lt!118885 (getCurrentListMapNoExtraKeys!527 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4362 thiss!1504))))))

(declare-fun b!234834 () Bool)

(declare-fun e!152534 () Bool)

(assert (=> b!234834 (= e!152534 e!152532)))

(declare-fun c!39113 () Bool)

(assert (=> b!234834 (= c!39113 (bvslt #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(declare-fun b!234835 () Bool)

(declare-fun e!152533 () Bool)

(assert (=> b!234835 (= e!152534 e!152533)))

(assert (=> b!234835 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(declare-fun res!115186 () Bool)

(assert (=> b!234835 (= res!115186 (contains!1654 lt!118885 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234835 (=> (not res!115186) (not e!152533))))

(declare-fun b!234836 () Bool)

(declare-fun isEmpty!515 (ListLongMap!3541) Bool)

(assert (=> b!234836 (= e!152532 (isEmpty!515 lt!118885))))

(declare-fun b!234837 () Bool)

(declare-fun e!152535 () Bool)

(assert (=> b!234837 (= e!152535 (validKeyInArray!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234837 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!234838 () Bool)

(declare-fun res!115187 () Bool)

(declare-fun e!152537 () Bool)

(assert (=> b!234838 (=> (not res!115187) (not e!152537))))

(assert (=> b!234838 (= res!115187 (not (contains!1654 lt!118885 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!234839 () Bool)

(declare-fun e!152536 () ListLongMap!3541)

(assert (=> b!234839 (= e!152536 (ListLongMap!3542 Nil!3544))))

(declare-fun b!234840 () Bool)

(assert (=> b!234840 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(assert (=> b!234840 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5853 (_values!4345 thiss!1504))))))

(assert (=> b!234840 (= e!152533 (= (apply!208 lt!118885 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)) (get!2835 (select (arr!5517 (_values!4345 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!546 (defaultEntry!4362 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!21838 () Bool)

(assert (=> bm!21838 (= call!21841 (getCurrentListMapNoExtraKeys!527 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4362 thiss!1504)))))

(declare-fun b!234841 () Bool)

(assert (=> b!234841 (= e!152536 e!152531)))

(declare-fun c!39114 () Bool)

(assert (=> b!234841 (= c!39114 (validKeyInArray!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234842 () Bool)

(assert (=> b!234842 (= e!152537 e!152534)))

(declare-fun c!39112 () Bool)

(assert (=> b!234842 (= c!39112 e!152535)))

(declare-fun res!115185 () Bool)

(assert (=> b!234842 (=> (not res!115185) (not e!152535))))

(assert (=> b!234842 (= res!115185 (bvslt #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(declare-fun d!59113 () Bool)

(assert (=> d!59113 e!152537))

(declare-fun res!115184 () Bool)

(assert (=> d!59113 (=> (not res!115184) (not e!152537))))

(assert (=> d!59113 (= res!115184 (not (contains!1654 lt!118885 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!59113 (= lt!118885 e!152536)))

(declare-fun c!39111 () Bool)

(assert (=> d!59113 (= c!39111 (bvsge #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(assert (=> d!59113 (validMask!0 (mask!10316 thiss!1504))))

(assert (=> d!59113 (= (getCurrentListMapNoExtraKeys!527 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)) lt!118885)))

(declare-fun b!234843 () Bool)

(declare-fun lt!118890 () Unit!7239)

(declare-fun lt!118886 () Unit!7239)

(assert (=> b!234843 (= lt!118890 lt!118886)))

(declare-fun lt!118887 () (_ BitVec 64))

(declare-fun lt!118884 () (_ BitVec 64))

(declare-fun lt!118889 () ListLongMap!3541)

(declare-fun lt!118888 () V!7883)

(assert (=> b!234843 (not (contains!1654 (+!630 lt!118889 (tuple2!4615 lt!118887 lt!118888)) lt!118884))))

(declare-fun addStillNotContains!116 (ListLongMap!3541 (_ BitVec 64) V!7883 (_ BitVec 64)) Unit!7239)

(assert (=> b!234843 (= lt!118886 (addStillNotContains!116 lt!118889 lt!118887 lt!118888 lt!118884))))

(assert (=> b!234843 (= lt!118884 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!234843 (= lt!118888 (get!2835 (select (arr!5517 (_values!4345 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!546 (defaultEntry!4362 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!234843 (= lt!118887 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234843 (= lt!118889 call!21841)))

(assert (=> b!234843 (= e!152531 (+!630 call!21841 (tuple2!4615 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000) (get!2835 (select (arr!5517 (_values!4345 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!546 (defaultEntry!4362 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!59113 c!39111) b!234839))

(assert (= (and d!59113 (not c!39111)) b!234841))

(assert (= (and b!234841 c!39114) b!234843))

(assert (= (and b!234841 (not c!39114)) b!234832))

(assert (= (or b!234843 b!234832) bm!21838))

(assert (= (and d!59113 res!115184) b!234838))

(assert (= (and b!234838 res!115187) b!234842))

(assert (= (and b!234842 res!115185) b!234837))

(assert (= (and b!234842 c!39112) b!234835))

(assert (= (and b!234842 (not c!39112)) b!234834))

(assert (= (and b!234835 res!115186) b!234840))

(assert (= (and b!234834 c!39113) b!234833))

(assert (= (and b!234834 (not c!39113)) b!234836))

(declare-fun b_lambda!7921 () Bool)

(assert (=> (not b_lambda!7921) (not b!234840)))

(assert (=> b!234840 t!8526))

(declare-fun b_and!13259 () Bool)

(assert (= b_and!13257 (and (=> t!8526 result!5117) b_and!13259)))

(declare-fun b_lambda!7923 () Bool)

(assert (=> (not b_lambda!7923) (not b!234843)))

(assert (=> b!234843 t!8526))

(declare-fun b_and!13261 () Bool)

(assert (= b_and!13259 (and (=> t!8526 result!5117) b_and!13261)))

(assert (=> b!234835 m!256013))

(assert (=> b!234835 m!256013))

(declare-fun m!256125 () Bool)

(assert (=> b!234835 m!256125))

(declare-fun m!256127 () Bool)

(assert (=> d!59113 m!256127))

(assert (=> d!59113 m!255937))

(declare-fun m!256129 () Bool)

(assert (=> b!234833 m!256129))

(assert (=> b!234841 m!256013))

(assert (=> b!234841 m!256013))

(assert (=> b!234841 m!256033))

(declare-fun m!256131 () Bool)

(assert (=> b!234836 m!256131))

(declare-fun m!256133 () Bool)

(assert (=> b!234838 m!256133))

(assert (=> bm!21838 m!256129))

(assert (=> b!234843 m!256023))

(assert (=> b!234843 m!256025))

(assert (=> b!234843 m!256013))

(declare-fun m!256135 () Bool)

(assert (=> b!234843 m!256135))

(declare-fun m!256137 () Bool)

(assert (=> b!234843 m!256137))

(assert (=> b!234843 m!256135))

(assert (=> b!234843 m!256023))

(assert (=> b!234843 m!256025))

(assert (=> b!234843 m!256027))

(declare-fun m!256139 () Bool)

(assert (=> b!234843 m!256139))

(declare-fun m!256141 () Bool)

(assert (=> b!234843 m!256141))

(assert (=> b!234837 m!256013))

(assert (=> b!234837 m!256013))

(assert (=> b!234837 m!256033))

(assert (=> b!234840 m!256023))

(assert (=> b!234840 m!256013))

(declare-fun m!256143 () Bool)

(assert (=> b!234840 m!256143))

(assert (=> b!234840 m!256025))

(assert (=> b!234840 m!256013))

(assert (=> b!234840 m!256023))

(assert (=> b!234840 m!256025))

(assert (=> b!234840 m!256027))

(assert (=> b!234766 d!59113))

(declare-fun d!59115 () Bool)

(assert (=> d!59115 (= (apply!208 (+!630 lt!118820 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504))) lt!118817) (get!2836 (getValueByKey!265 (toList!1786 (+!630 lt!118820 (tuple2!4615 lt!118813 (minValue!4203 thiss!1504)))) lt!118817)))))

(declare-fun bs!8697 () Bool)

(assert (= bs!8697 d!59115))

(declare-fun m!256145 () Bool)

(assert (=> bs!8697 m!256145))

(assert (=> bs!8697 m!256145))

(declare-fun m!256147 () Bool)

(assert (=> bs!8697 m!256147))

(assert (=> b!234766 d!59115))

(declare-fun d!59117 () Bool)

(assert (=> d!59117 (= (apply!208 lt!118812 lt!118824) (get!2836 (getValueByKey!265 (toList!1786 lt!118812) lt!118824)))))

(declare-fun bs!8698 () Bool)

(assert (= bs!8698 d!59117))

(declare-fun m!256149 () Bool)

(assert (=> bs!8698 m!256149))

(assert (=> bs!8698 m!256149))

(declare-fun m!256151 () Bool)

(assert (=> bs!8698 m!256151))

(assert (=> b!234766 d!59117))

(declare-fun d!59119 () Bool)

(assert (=> d!59119 (contains!1654 (+!630 lt!118819 (tuple2!4615 lt!118832 (zeroValue!4203 thiss!1504))) lt!118827)))

(declare-fun lt!118893 () Unit!7239)

(declare-fun choose!1110 (ListLongMap!3541 (_ BitVec 64) V!7883 (_ BitVec 64)) Unit!7239)

(assert (=> d!59119 (= lt!118893 (choose!1110 lt!118819 lt!118832 (zeroValue!4203 thiss!1504) lt!118827))))

(assert (=> d!59119 (contains!1654 lt!118819 lt!118827)))

(assert (=> d!59119 (= (addStillContains!184 lt!118819 lt!118832 (zeroValue!4203 thiss!1504) lt!118827) lt!118893)))

(declare-fun bs!8699 () Bool)

(assert (= bs!8699 d!59119))

(assert (=> bs!8699 m!255991))

(assert (=> bs!8699 m!255991))

(assert (=> bs!8699 m!255993))

(declare-fun m!256153 () Bool)

(assert (=> bs!8699 m!256153))

(declare-fun m!256155 () Bool)

(assert (=> bs!8699 m!256155))

(assert (=> b!234766 d!59119))

(declare-fun d!59121 () Bool)

(assert (=> d!59121 (= (apply!208 (+!630 lt!118812 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504))) lt!118824) (apply!208 lt!118812 lt!118824))))

(declare-fun lt!118894 () Unit!7239)

(assert (=> d!59121 (= lt!118894 (choose!1109 lt!118812 lt!118833 (zeroValue!4203 thiss!1504) lt!118824))))

(declare-fun e!152538 () Bool)

(assert (=> d!59121 e!152538))

(declare-fun res!115188 () Bool)

(assert (=> d!59121 (=> (not res!115188) (not e!152538))))

(assert (=> d!59121 (= res!115188 (contains!1654 lt!118812 lt!118824))))

(assert (=> d!59121 (= (addApplyDifferent!184 lt!118812 lt!118833 (zeroValue!4203 thiss!1504) lt!118824) lt!118894)))

(declare-fun b!234845 () Bool)

(assert (=> b!234845 (= e!152538 (not (= lt!118824 lt!118833)))))

(assert (= (and d!59121 res!115188) b!234845))

(declare-fun m!256157 () Bool)

(assert (=> d!59121 m!256157))

(assert (=> d!59121 m!256005))

(assert (=> d!59121 m!256007))

(assert (=> d!59121 m!256005))

(assert (=> d!59121 m!256017))

(declare-fun m!256159 () Bool)

(assert (=> d!59121 m!256159))

(assert (=> b!234766 d!59121))

(declare-fun d!59123 () Bool)

(assert (=> d!59123 (= (apply!208 lt!118830 lt!118815) (get!2836 (getValueByKey!265 (toList!1786 lt!118830) lt!118815)))))

(declare-fun bs!8700 () Bool)

(assert (= bs!8700 d!59123))

(declare-fun m!256161 () Bool)

(assert (=> bs!8700 m!256161))

(assert (=> bs!8700 m!256161))

(declare-fun m!256163 () Bool)

(assert (=> bs!8700 m!256163))

(assert (=> b!234766 d!59123))

(declare-fun d!59125 () Bool)

(assert (=> d!59125 (= (apply!208 lt!118820 lt!118817) (get!2836 (getValueByKey!265 (toList!1786 lt!118820) lt!118817)))))

(declare-fun bs!8701 () Bool)

(assert (= bs!8701 d!59125))

(declare-fun m!256165 () Bool)

(assert (=> bs!8701 m!256165))

(assert (=> bs!8701 m!256165))

(declare-fun m!256167 () Bool)

(assert (=> bs!8701 m!256167))

(assert (=> b!234766 d!59125))

(declare-fun d!59127 () Bool)

(assert (=> d!59127 (= (apply!208 (+!630 lt!118812 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504))) lt!118824) (get!2836 (getValueByKey!265 (toList!1786 (+!630 lt!118812 (tuple2!4615 lt!118833 (zeroValue!4203 thiss!1504)))) lt!118824)))))

(declare-fun bs!8702 () Bool)

(assert (= bs!8702 d!59127))

(declare-fun m!256169 () Bool)

(assert (=> bs!8702 m!256169))

(assert (=> bs!8702 m!256169))

(declare-fun m!256171 () Bool)

(assert (=> bs!8702 m!256171))

(assert (=> b!234766 d!59127))

(declare-fun d!59129 () Bool)

(assert (=> d!59129 (= (validKeyInArray!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!234757 d!59129))

(declare-fun d!59131 () Bool)

(declare-fun e!152539 () Bool)

(assert (=> d!59131 e!152539))

(declare-fun res!115189 () Bool)

(assert (=> d!59131 (=> res!115189 e!152539)))

(declare-fun lt!118896 () Bool)

(assert (=> d!59131 (= res!115189 (not lt!118896))))

(declare-fun lt!118895 () Bool)

(assert (=> d!59131 (= lt!118896 lt!118895)))

(declare-fun lt!118897 () Unit!7239)

(declare-fun e!152540 () Unit!7239)

(assert (=> d!59131 (= lt!118897 e!152540)))

(declare-fun c!39115 () Bool)

(assert (=> d!59131 (= c!39115 lt!118895)))

(assert (=> d!59131 (= lt!118895 (containsKey!257 (toList!1786 lt!118816) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59131 (= (contains!1654 lt!118816 #b1000000000000000000000000000000000000000000000000000000000000000) lt!118896)))

(declare-fun b!234846 () Bool)

(declare-fun lt!118898 () Unit!7239)

(assert (=> b!234846 (= e!152540 lt!118898)))

(assert (=> b!234846 (= lt!118898 (lemmaContainsKeyImpliesGetValueByKeyDefined!206 (toList!1786 lt!118816) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!234846 (isDefined!207 (getValueByKey!265 (toList!1786 lt!118816) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!234847 () Bool)

(declare-fun Unit!7244 () Unit!7239)

(assert (=> b!234847 (= e!152540 Unit!7244)))

(declare-fun b!234848 () Bool)

(assert (=> b!234848 (= e!152539 (isDefined!207 (getValueByKey!265 (toList!1786 lt!118816) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59131 c!39115) b!234846))

(assert (= (and d!59131 (not c!39115)) b!234847))

(assert (= (and d!59131 (not res!115189)) b!234848))

(declare-fun m!256173 () Bool)

(assert (=> d!59131 m!256173))

(declare-fun m!256175 () Bool)

(assert (=> b!234846 m!256175))

(declare-fun m!256177 () Bool)

(assert (=> b!234846 m!256177))

(assert (=> b!234846 m!256177))

(declare-fun m!256179 () Bool)

(assert (=> b!234846 m!256179))

(assert (=> b!234848 m!256177))

(assert (=> b!234848 m!256177))

(assert (=> b!234848 m!256179))

(assert (=> bm!21832 d!59131))

(assert (=> b!234765 d!59129))

(declare-fun d!59133 () Bool)

(assert (=> d!59133 (= (apply!208 lt!118816 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)) (get!2836 (getValueByKey!265 (toList!1786 lt!118816) (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8703 () Bool)

(assert (= bs!8703 d!59133))

(assert (=> bs!8703 m!256013))

(declare-fun m!256181 () Bool)

(assert (=> bs!8703 m!256181))

(assert (=> bs!8703 m!256181))

(declare-fun m!256183 () Bool)

(assert (=> bs!8703 m!256183))

(assert (=> b!234764 d!59133))

(declare-fun d!59135 () Bool)

(declare-fun c!39118 () Bool)

(assert (=> d!59135 (= c!39118 ((_ is ValueCellFull!2745) (select (arr!5517 (_values!4345 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!152543 () V!7883)

(assert (=> d!59135 (= (get!2835 (select (arr!5517 (_values!4345 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!546 (defaultEntry!4362 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!152543)))

(declare-fun b!234853 () Bool)

(declare-fun get!2837 (ValueCell!2745 V!7883) V!7883)

(assert (=> b!234853 (= e!152543 (get!2837 (select (arr!5517 (_values!4345 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!546 (defaultEntry!4362 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!234854 () Bool)

(declare-fun get!2838 (ValueCell!2745 V!7883) V!7883)

(assert (=> b!234854 (= e!152543 (get!2838 (select (arr!5517 (_values!4345 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!546 (defaultEntry!4362 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59135 c!39118) b!234853))

(assert (= (and d!59135 (not c!39118)) b!234854))

(assert (=> b!234853 m!256023))

(assert (=> b!234853 m!256025))

(declare-fun m!256185 () Bool)

(assert (=> b!234853 m!256185))

(assert (=> b!234854 m!256023))

(assert (=> b!234854 m!256025))

(declare-fun m!256187 () Bool)

(assert (=> b!234854 m!256187))

(assert (=> b!234764 d!59135))

(declare-fun d!59137 () Bool)

(declare-fun lt!118904 () SeekEntryResult!992)

(assert (=> d!59137 (and (or ((_ is Undefined!992) lt!118904) (not ((_ is Found!992) lt!118904)) (and (bvsge (index!6139 lt!118904) #b00000000000000000000000000000000) (bvslt (index!6139 lt!118904) (size!5854 (_keys!6430 thiss!1504))))) (or ((_ is Undefined!992) lt!118904) ((_ is Found!992) lt!118904) (not ((_ is MissingVacant!992) lt!118904)) (not (= (index!6141 lt!118904) (index!6140 lt!118753))) (and (bvsge (index!6141 lt!118904) #b00000000000000000000000000000000) (bvslt (index!6141 lt!118904) (size!5854 (_keys!6430 thiss!1504))))) (or ((_ is Undefined!992) lt!118904) (ite ((_ is Found!992) lt!118904) (= (select (arr!5518 (_keys!6430 thiss!1504)) (index!6139 lt!118904)) key!932) (and ((_ is MissingVacant!992) lt!118904) (= (index!6141 lt!118904) (index!6140 lt!118753)) (= (select (arr!5518 (_keys!6430 thiss!1504)) (index!6141 lt!118904)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!152551 () SeekEntryResult!992)

(assert (=> d!59137 (= lt!118904 e!152551)))

(declare-fun c!39127 () Bool)

(assert (=> d!59137 (= c!39127 (bvsge (x!23734 lt!118753) #b01111111111111111111111111111110))))

(declare-fun lt!118903 () (_ BitVec 64))

(assert (=> d!59137 (= lt!118903 (select (arr!5518 (_keys!6430 thiss!1504)) (index!6140 lt!118753)))))

(assert (=> d!59137 (validMask!0 (mask!10316 thiss!1504))))

(assert (=> d!59137 (= (seekKeyOrZeroReturnVacant!0 (x!23734 lt!118753) (index!6140 lt!118753) (index!6140 lt!118753) key!932 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)) lt!118904)))

(declare-fun b!234867 () Bool)

(declare-fun e!152550 () SeekEntryResult!992)

(assert (=> b!234867 (= e!152551 e!152550)))

(declare-fun c!39126 () Bool)

(assert (=> b!234867 (= c!39126 (= lt!118903 key!932))))

(declare-fun b!234868 () Bool)

(declare-fun e!152552 () SeekEntryResult!992)

(assert (=> b!234868 (= e!152552 (MissingVacant!992 (index!6140 lt!118753)))))

(declare-fun b!234869 () Bool)

(assert (=> b!234869 (= e!152551 Undefined!992)))

(declare-fun b!234870 () Bool)

(declare-fun c!39125 () Bool)

(assert (=> b!234870 (= c!39125 (= lt!118903 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!234870 (= e!152550 e!152552)))

(declare-fun b!234871 () Bool)

(assert (=> b!234871 (= e!152550 (Found!992 (index!6140 lt!118753)))))

(declare-fun b!234872 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!234872 (= e!152552 (seekKeyOrZeroReturnVacant!0 (bvadd (x!23734 lt!118753) #b00000000000000000000000000000001) (nextIndex!0 (index!6140 lt!118753) (x!23734 lt!118753) (mask!10316 thiss!1504)) (index!6140 lt!118753) key!932 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)))))

(assert (= (and d!59137 c!39127) b!234869))

(assert (= (and d!59137 (not c!39127)) b!234867))

(assert (= (and b!234867 c!39126) b!234871))

(assert (= (and b!234867 (not c!39126)) b!234870))

(assert (= (and b!234870 c!39125) b!234868))

(assert (= (and b!234870 (not c!39125)) b!234872))

(declare-fun m!256189 () Bool)

(assert (=> d!59137 m!256189))

(declare-fun m!256191 () Bool)

(assert (=> d!59137 m!256191))

(assert (=> d!59137 m!255965))

(assert (=> d!59137 m!255937))

(declare-fun m!256193 () Bool)

(assert (=> b!234872 m!256193))

(assert (=> b!234872 m!256193))

(declare-fun m!256195 () Bool)

(assert (=> b!234872 m!256195))

(assert (=> b!234700 d!59137))

(declare-fun d!59139 () Bool)

(declare-fun e!152553 () Bool)

(assert (=> d!59139 e!152553))

(declare-fun res!115190 () Bool)

(assert (=> d!59139 (=> res!115190 e!152553)))

(declare-fun lt!118906 () Bool)

(assert (=> d!59139 (= res!115190 (not lt!118906))))

(declare-fun lt!118905 () Bool)

(assert (=> d!59139 (= lt!118906 lt!118905)))

(declare-fun lt!118907 () Unit!7239)

(declare-fun e!152554 () Unit!7239)

(assert (=> d!59139 (= lt!118907 e!152554)))

(declare-fun c!39128 () Bool)

(assert (=> d!59139 (= c!39128 lt!118905)))

(assert (=> d!59139 (= lt!118905 (containsKey!257 (toList!1786 lt!118816) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59139 (= (contains!1654 lt!118816 #b0000000000000000000000000000000000000000000000000000000000000000) lt!118906)))

(declare-fun b!234873 () Bool)

(declare-fun lt!118908 () Unit!7239)

(assert (=> b!234873 (= e!152554 lt!118908)))

(assert (=> b!234873 (= lt!118908 (lemmaContainsKeyImpliesGetValueByKeyDefined!206 (toList!1786 lt!118816) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!234873 (isDefined!207 (getValueByKey!265 (toList!1786 lt!118816) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!234874 () Bool)

(declare-fun Unit!7245 () Unit!7239)

(assert (=> b!234874 (= e!152554 Unit!7245)))

(declare-fun b!234875 () Bool)

(assert (=> b!234875 (= e!152553 (isDefined!207 (getValueByKey!265 (toList!1786 lt!118816) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59139 c!39128) b!234873))

(assert (= (and d!59139 (not c!39128)) b!234874))

(assert (= (and d!59139 (not res!115190)) b!234875))

(declare-fun m!256197 () Bool)

(assert (=> d!59139 m!256197))

(declare-fun m!256199 () Bool)

(assert (=> b!234873 m!256199))

(declare-fun m!256201 () Bool)

(assert (=> b!234873 m!256201))

(assert (=> b!234873 m!256201))

(declare-fun m!256203 () Bool)

(assert (=> b!234873 m!256203))

(assert (=> b!234875 m!256201))

(assert (=> b!234875 m!256201))

(assert (=> b!234875 m!256203))

(assert (=> bm!21835 d!59139))

(declare-fun d!59141 () Bool)

(assert (=> d!59141 (= (apply!208 lt!118816 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2836 (getValueByKey!265 (toList!1786 lt!118816) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8704 () Bool)

(assert (= bs!8704 d!59141))

(assert (=> bs!8704 m!256201))

(assert (=> bs!8704 m!256201))

(declare-fun m!256205 () Bool)

(assert (=> bs!8704 m!256205))

(assert (=> b!234759 d!59141))

(declare-fun d!59143 () Bool)

(declare-fun res!115195 () Bool)

(declare-fun e!152559 () Bool)

(assert (=> d!59143 (=> res!115195 e!152559)))

(assert (=> d!59143 (= res!115195 (and ((_ is Cons!3543) (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))) (= (_1!2317 (h!4194 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))))) key!932)))))

(assert (=> d!59143 (= (containsKey!257 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932) e!152559)))

(declare-fun b!234880 () Bool)

(declare-fun e!152560 () Bool)

(assert (=> b!234880 (= e!152559 e!152560)))

(declare-fun res!115196 () Bool)

(assert (=> b!234880 (=> (not res!115196) (not e!152560))))

(assert (=> b!234880 (= res!115196 (and (or (not ((_ is Cons!3543) (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))))) (bvsle (_1!2317 (h!4194 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))))) key!932)) ((_ is Cons!3543) (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))) (bvslt (_1!2317 (h!4194 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))))) key!932)))))

(declare-fun b!234881 () Bool)

(assert (=> b!234881 (= e!152560 (containsKey!257 (t!8524 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))) key!932))))

(assert (= (and d!59143 (not res!115195)) b!234880))

(assert (= (and b!234880 res!115196) b!234881))

(declare-fun m!256207 () Bool)

(assert (=> b!234881 m!256207))

(assert (=> d!59087 d!59143))

(declare-fun d!59145 () Bool)

(declare-fun isEmpty!516 (Option!271) Bool)

(assert (=> d!59145 (= (isDefined!207 (getValueByKey!265 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932)) (not (isEmpty!516 (getValueByKey!265 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932))))))

(declare-fun bs!8705 () Bool)

(assert (= bs!8705 d!59145))

(assert (=> bs!8705 m!255981))

(declare-fun m!256209 () Bool)

(assert (=> bs!8705 m!256209))

(assert (=> b!234712 d!59145))

(declare-fun b!234892 () Bool)

(declare-fun e!152566 () Option!271)

(assert (=> b!234892 (= e!152566 (getValueByKey!265 (t!8524 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))) key!932))))

(declare-fun b!234891 () Bool)

(declare-fun e!152565 () Option!271)

(assert (=> b!234891 (= e!152565 e!152566)))

(declare-fun c!39134 () Bool)

(assert (=> b!234891 (= c!39134 (and ((_ is Cons!3543) (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))) (not (= (_1!2317 (h!4194 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))))) key!932))))))

(declare-fun b!234890 () Bool)

(assert (=> b!234890 (= e!152565 (Some!270 (_2!2317 (h!4194 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))))))))

(declare-fun b!234893 () Bool)

(assert (=> b!234893 (= e!152566 None!269)))

(declare-fun d!59147 () Bool)

(declare-fun c!39133 () Bool)

(assert (=> d!59147 (= c!39133 (and ((_ is Cons!3543) (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))) (= (_1!2317 (h!4194 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))))) key!932)))))

(assert (=> d!59147 (= (getValueByKey!265 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932) e!152565)))

(assert (= (and d!59147 c!39133) b!234890))

(assert (= (and d!59147 (not c!39133)) b!234891))

(assert (= (and b!234891 c!39134) b!234892))

(assert (= (and b!234891 (not c!39134)) b!234893))

(declare-fun m!256211 () Bool)

(assert (=> b!234892 m!256211))

(assert (=> b!234712 d!59147))

(assert (=> d!59089 d!59081))

(declare-fun bm!21841 () Bool)

(declare-fun call!21844 () (_ BitVec 32))

(assert (=> bm!21841 (= call!21844 (arrayCountValidKeys!0 (_keys!6430 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5854 (_keys!6430 thiss!1504))))))

(declare-fun d!59149 () Bool)

(declare-fun lt!118911 () (_ BitVec 32))

(assert (=> d!59149 (and (bvsge lt!118911 #b00000000000000000000000000000000) (bvsle lt!118911 (bvsub (size!5854 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!152572 () (_ BitVec 32))

(assert (=> d!59149 (= lt!118911 e!152572)))

(declare-fun c!39139 () Bool)

(assert (=> d!59149 (= c!39139 (bvsge #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(assert (=> d!59149 (and (bvsle #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5854 (_keys!6430 thiss!1504)) (size!5854 (_keys!6430 thiss!1504))))))

(assert (=> d!59149 (= (arrayCountValidKeys!0 (_keys!6430 thiss!1504) #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))) lt!118911)))

(declare-fun b!234902 () Bool)

(declare-fun e!152571 () (_ BitVec 32))

(assert (=> b!234902 (= e!152571 (bvadd #b00000000000000000000000000000001 call!21844))))

(declare-fun b!234903 () Bool)

(assert (=> b!234903 (= e!152572 #b00000000000000000000000000000000)))

(declare-fun b!234904 () Bool)

(assert (=> b!234904 (= e!152571 call!21844)))

(declare-fun b!234905 () Bool)

(assert (=> b!234905 (= e!152572 e!152571)))

(declare-fun c!39140 () Bool)

(assert (=> b!234905 (= c!39140 (validKeyInArray!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!59149 c!39139) b!234903))

(assert (= (and d!59149 (not c!39139)) b!234905))

(assert (= (and b!234905 c!39140) b!234902))

(assert (= (and b!234905 (not c!39140)) b!234904))

(assert (= (or b!234902 b!234904) bm!21841))

(declare-fun m!256213 () Bool)

(assert (=> bm!21841 m!256213))

(assert (=> b!234905 m!256013))

(assert (=> b!234905 m!256013))

(assert (=> b!234905 m!256033))

(assert (=> b!234683 d!59149))

(assert (=> bm!21830 d!59113))

(declare-fun b!234914 () Bool)

(declare-fun res!115205 () Bool)

(declare-fun e!152575 () Bool)

(assert (=> b!234914 (=> (not res!115205) (not e!152575))))

(assert (=> b!234914 (= res!115205 (and (= (size!5853 (_values!4345 thiss!1504)) (bvadd (mask!10316 thiss!1504) #b00000000000000000000000000000001)) (= (size!5854 (_keys!6430 thiss!1504)) (size!5853 (_values!4345 thiss!1504))) (bvsge (_size!1744 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1744 thiss!1504) (bvadd (mask!10316 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun d!59151 () Bool)

(declare-fun res!115207 () Bool)

(assert (=> d!59151 (=> (not res!115207) (not e!152575))))

(assert (=> d!59151 (= res!115207 (validMask!0 (mask!10316 thiss!1504)))))

(assert (=> d!59151 (= (simpleValid!230 thiss!1504) e!152575)))

(declare-fun b!234917 () Bool)

(assert (=> b!234917 (= e!152575 (and (bvsge (extraKeys!4099 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4099 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1744 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!234915 () Bool)

(declare-fun res!115208 () Bool)

(assert (=> b!234915 (=> (not res!115208) (not e!152575))))

(declare-fun size!5857 (LongMapFixedSize!3390) (_ BitVec 32))

(assert (=> b!234915 (= res!115208 (bvsge (size!5857 thiss!1504) (_size!1744 thiss!1504)))))

(declare-fun b!234916 () Bool)

(declare-fun res!115206 () Bool)

(assert (=> b!234916 (=> (not res!115206) (not e!152575))))

(assert (=> b!234916 (= res!115206 (= (size!5857 thiss!1504) (bvadd (_size!1744 thiss!1504) (bvsdiv (bvadd (extraKeys!4099 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!59151 res!115207) b!234914))

(assert (= (and b!234914 res!115205) b!234915))

(assert (= (and b!234915 res!115208) b!234916))

(assert (= (and b!234916 res!115206) b!234917))

(assert (=> d!59151 m!255937))

(declare-fun m!256215 () Bool)

(assert (=> b!234915 m!256215))

(assert (=> b!234916 m!256215))

(assert (=> d!59083 d!59151))

(declare-fun d!59153 () Bool)

(assert (=> d!59153 (isDefined!207 (getValueByKey!265 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932))))

(declare-fun lt!118914 () Unit!7239)

(declare-fun choose!1111 (List!3547 (_ BitVec 64)) Unit!7239)

(assert (=> d!59153 (= lt!118914 (choose!1111 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932))))

(declare-fun e!152578 () Bool)

(assert (=> d!59153 e!152578))

(declare-fun res!115211 () Bool)

(assert (=> d!59153 (=> (not res!115211) (not e!152578))))

(declare-fun isStrictlySorted!357 (List!3547) Bool)

(assert (=> d!59153 (= res!115211 (isStrictlySorted!357 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504)))))))

(assert (=> d!59153 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!206 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932) lt!118914)))

(declare-fun b!234920 () Bool)

(assert (=> b!234920 (= e!152578 (containsKey!257 (toList!1786 (getCurrentListMap!1309 (_keys!6430 thiss!1504) (_values!4345 thiss!1504) (mask!10316 thiss!1504) (extraKeys!4099 thiss!1504) (zeroValue!4203 thiss!1504) (minValue!4203 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4362 thiss!1504))) key!932))))

(assert (= (and d!59153 res!115211) b!234920))

(assert (=> d!59153 m!255981))

(assert (=> d!59153 m!255981))

(assert (=> d!59153 m!255983))

(declare-fun m!256217 () Bool)

(assert (=> d!59153 m!256217))

(declare-fun m!256219 () Bool)

(assert (=> d!59153 m!256219))

(assert (=> b!234920 m!255977))

(assert (=> b!234710 d!59153))

(assert (=> b!234710 d!59145))

(assert (=> b!234710 d!59147))

(declare-fun d!59155 () Bool)

(assert (=> d!59155 (= (apply!208 lt!118816 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2836 (getValueByKey!265 (toList!1786 lt!118816) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8706 () Bool)

(assert (= bs!8706 d!59155))

(assert (=> bs!8706 m!256177))

(assert (=> bs!8706 m!256177))

(declare-fun m!256221 () Bool)

(assert (=> bs!8706 m!256221))

(assert (=> b!234773 d!59155))

(declare-fun d!59157 () Bool)

(declare-fun e!152579 () Bool)

(assert (=> d!59157 e!152579))

(declare-fun res!115212 () Bool)

(assert (=> d!59157 (=> res!115212 e!152579)))

(declare-fun lt!118916 () Bool)

(assert (=> d!59157 (= res!115212 (not lt!118916))))

(declare-fun lt!118915 () Bool)

(assert (=> d!59157 (= lt!118916 lt!118915)))

(declare-fun lt!118917 () Unit!7239)

(declare-fun e!152580 () Unit!7239)

(assert (=> d!59157 (= lt!118917 e!152580)))

(declare-fun c!39141 () Bool)

(assert (=> d!59157 (= c!39141 lt!118915)))

(assert (=> d!59157 (= lt!118915 (containsKey!257 (toList!1786 lt!118816) (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59157 (= (contains!1654 lt!118816 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)) lt!118916)))

(declare-fun b!234921 () Bool)

(declare-fun lt!118918 () Unit!7239)

(assert (=> b!234921 (= e!152580 lt!118918)))

(assert (=> b!234921 (= lt!118918 (lemmaContainsKeyImpliesGetValueByKeyDefined!206 (toList!1786 lt!118816) (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234921 (isDefined!207 (getValueByKey!265 (toList!1786 lt!118816) (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234922 () Bool)

(declare-fun Unit!7246 () Unit!7239)

(assert (=> b!234922 (= e!152580 Unit!7246)))

(declare-fun b!234923 () Bool)

(assert (=> b!234923 (= e!152579 (isDefined!207 (getValueByKey!265 (toList!1786 lt!118816) (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!59157 c!39141) b!234921))

(assert (= (and d!59157 (not c!39141)) b!234922))

(assert (= (and d!59157 (not res!115212)) b!234923))

(assert (=> d!59157 m!256013))

(declare-fun m!256223 () Bool)

(assert (=> d!59157 m!256223))

(assert (=> b!234921 m!256013))

(declare-fun m!256225 () Bool)

(assert (=> b!234921 m!256225))

(assert (=> b!234921 m!256013))

(assert (=> b!234921 m!256181))

(assert (=> b!234921 m!256181))

(declare-fun m!256227 () Bool)

(assert (=> b!234921 m!256227))

(assert (=> b!234923 m!256013))

(assert (=> b!234923 m!256181))

(assert (=> b!234923 m!256181))

(assert (=> b!234923 m!256227))

(assert (=> b!234772 d!59157))

(declare-fun b!234934 () Bool)

(declare-fun e!152591 () Bool)

(declare-fun contains!1656 (List!3548 (_ BitVec 64)) Bool)

(assert (=> b!234934 (= e!152591 (contains!1656 Nil!3545 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234935 () Bool)

(declare-fun e!152590 () Bool)

(declare-fun e!152589 () Bool)

(assert (=> b!234935 (= e!152590 e!152589)))

(declare-fun res!115219 () Bool)

(assert (=> b!234935 (=> (not res!115219) (not e!152589))))

(assert (=> b!234935 (= res!115219 (not e!152591))))

(declare-fun res!115220 () Bool)

(assert (=> b!234935 (=> (not res!115220) (not e!152591))))

(assert (=> b!234935 (= res!115220 (validKeyInArray!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234936 () Bool)

(declare-fun e!152592 () Bool)

(assert (=> b!234936 (= e!152589 e!152592)))

(declare-fun c!39144 () Bool)

(assert (=> b!234936 (= c!39144 (validKeyInArray!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59159 () Bool)

(declare-fun res!115221 () Bool)

(assert (=> d!59159 (=> res!115221 e!152590)))

(assert (=> d!59159 (= res!115221 (bvsge #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(assert (=> d!59159 (= (arrayNoDuplicates!0 (_keys!6430 thiss!1504) #b00000000000000000000000000000000 Nil!3545) e!152590)))

(declare-fun bm!21844 () Bool)

(declare-fun call!21847 () Bool)

(assert (=> bm!21844 (= call!21847 (arrayNoDuplicates!0 (_keys!6430 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39144 (Cons!3544 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000) Nil!3545) Nil!3545)))))

(declare-fun b!234937 () Bool)

(assert (=> b!234937 (= e!152592 call!21847)))

(declare-fun b!234938 () Bool)

(assert (=> b!234938 (= e!152592 call!21847)))

(assert (= (and d!59159 (not res!115221)) b!234935))

(assert (= (and b!234935 res!115220) b!234934))

(assert (= (and b!234935 res!115219) b!234936))

(assert (= (and b!234936 c!39144) b!234938))

(assert (= (and b!234936 (not c!39144)) b!234937))

(assert (= (or b!234938 b!234937) bm!21844))

(assert (=> b!234934 m!256013))

(assert (=> b!234934 m!256013))

(declare-fun m!256229 () Bool)

(assert (=> b!234934 m!256229))

(assert (=> b!234935 m!256013))

(assert (=> b!234935 m!256013))

(assert (=> b!234935 m!256033))

(assert (=> b!234936 m!256013))

(assert (=> b!234936 m!256013))

(assert (=> b!234936 m!256033))

(assert (=> bm!21844 m!256013))

(declare-fun m!256231 () Bool)

(assert (=> bm!21844 m!256231))

(assert (=> b!234685 d!59159))

(declare-fun b!234957 () Bool)

(declare-fun e!152606 () SeekEntryResult!992)

(declare-fun e!152603 () SeekEntryResult!992)

(assert (=> b!234957 (= e!152606 e!152603)))

(declare-fun c!39153 () Bool)

(declare-fun lt!118924 () (_ BitVec 64))

(assert (=> b!234957 (= c!39153 (or (= lt!118924 key!932) (= (bvadd lt!118924 lt!118924) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!234958 () Bool)

(assert (=> b!234958 (= e!152603 (Intermediate!992 false (toIndex!0 key!932 (mask!10316 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!234959 () Bool)

(declare-fun e!152605 () Bool)

(declare-fun e!152604 () Bool)

(assert (=> b!234959 (= e!152605 e!152604)))

(declare-fun res!115229 () Bool)

(declare-fun lt!118923 () SeekEntryResult!992)

(assert (=> b!234959 (= res!115229 (and ((_ is Intermediate!992) lt!118923) (not (undefined!1804 lt!118923)) (bvslt (x!23734 lt!118923) #b01111111111111111111111111111110) (bvsge (x!23734 lt!118923) #b00000000000000000000000000000000) (bvsge (x!23734 lt!118923) #b00000000000000000000000000000000)))))

(assert (=> b!234959 (=> (not res!115229) (not e!152604))))

(declare-fun b!234960 () Bool)

(assert (=> b!234960 (= e!152603 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10316 thiss!1504)) #b00000000000000000000000000000000 (mask!10316 thiss!1504)) key!932 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)))))

(declare-fun b!234961 () Bool)

(assert (=> b!234961 (= e!152605 (bvsge (x!23734 lt!118923) #b01111111111111111111111111111110))))

(declare-fun b!234962 () Bool)

(assert (=> b!234962 (and (bvsge (index!6140 lt!118923) #b00000000000000000000000000000000) (bvslt (index!6140 lt!118923) (size!5854 (_keys!6430 thiss!1504))))))

(declare-fun res!115230 () Bool)

(assert (=> b!234962 (= res!115230 (= (select (arr!5518 (_keys!6430 thiss!1504)) (index!6140 lt!118923)) key!932))))

(declare-fun e!152607 () Bool)

(assert (=> b!234962 (=> res!115230 e!152607)))

(assert (=> b!234962 (= e!152604 e!152607)))

(declare-fun d!59161 () Bool)

(assert (=> d!59161 e!152605))

(declare-fun c!39151 () Bool)

(assert (=> d!59161 (= c!39151 (and ((_ is Intermediate!992) lt!118923) (undefined!1804 lt!118923)))))

(assert (=> d!59161 (= lt!118923 e!152606)))

(declare-fun c!39152 () Bool)

(assert (=> d!59161 (= c!39152 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!59161 (= lt!118924 (select (arr!5518 (_keys!6430 thiss!1504)) (toIndex!0 key!932 (mask!10316 thiss!1504))))))

(assert (=> d!59161 (validMask!0 (mask!10316 thiss!1504))))

(assert (=> d!59161 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10316 thiss!1504)) key!932 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)) lt!118923)))

(declare-fun b!234963 () Bool)

(assert (=> b!234963 (and (bvsge (index!6140 lt!118923) #b00000000000000000000000000000000) (bvslt (index!6140 lt!118923) (size!5854 (_keys!6430 thiss!1504))))))

(assert (=> b!234963 (= e!152607 (= (select (arr!5518 (_keys!6430 thiss!1504)) (index!6140 lt!118923)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!234964 () Bool)

(assert (=> b!234964 (= e!152606 (Intermediate!992 true (toIndex!0 key!932 (mask!10316 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!234965 () Bool)

(assert (=> b!234965 (and (bvsge (index!6140 lt!118923) #b00000000000000000000000000000000) (bvslt (index!6140 lt!118923) (size!5854 (_keys!6430 thiss!1504))))))

(declare-fun res!115228 () Bool)

(assert (=> b!234965 (= res!115228 (= (select (arr!5518 (_keys!6430 thiss!1504)) (index!6140 lt!118923)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!234965 (=> res!115228 e!152607)))

(assert (= (and d!59161 c!39152) b!234964))

(assert (= (and d!59161 (not c!39152)) b!234957))

(assert (= (and b!234957 c!39153) b!234958))

(assert (= (and b!234957 (not c!39153)) b!234960))

(assert (= (and d!59161 c!39151) b!234961))

(assert (= (and d!59161 (not c!39151)) b!234959))

(assert (= (and b!234959 res!115229) b!234962))

(assert (= (and b!234962 (not res!115230)) b!234965))

(assert (= (and b!234965 (not res!115228)) b!234963))

(declare-fun m!256233 () Bool)

(assert (=> b!234962 m!256233))

(assert (=> b!234963 m!256233))

(assert (=> d!59161 m!255967))

(declare-fun m!256235 () Bool)

(assert (=> d!59161 m!256235))

(assert (=> d!59161 m!255937))

(assert (=> b!234960 m!255967))

(declare-fun m!256237 () Bool)

(assert (=> b!234960 m!256237))

(assert (=> b!234960 m!256237))

(declare-fun m!256239 () Bool)

(assert (=> b!234960 m!256239))

(assert (=> b!234965 m!256233))

(assert (=> d!59085 d!59161))

(declare-fun d!59163 () Bool)

(declare-fun lt!118930 () (_ BitVec 32))

(declare-fun lt!118929 () (_ BitVec 32))

(assert (=> d!59163 (= lt!118930 (bvmul (bvxor lt!118929 (bvlshr lt!118929 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!59163 (= lt!118929 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!59163 (and (bvsge (mask!10316 thiss!1504) #b00000000000000000000000000000000) (let ((res!115231 (let ((h!4196 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!23752 (bvmul (bvxor h!4196 (bvlshr h!4196 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!23752 (bvlshr x!23752 #b00000000000000000000000000001101)) (mask!10316 thiss!1504)))))) (and (bvslt res!115231 (bvadd (mask!10316 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!115231 #b00000000000000000000000000000000))))))

(assert (=> d!59163 (= (toIndex!0 key!932 (mask!10316 thiss!1504)) (bvand (bvxor lt!118930 (bvlshr lt!118930 #b00000000000000000000000000001101)) (mask!10316 thiss!1504)))))

(assert (=> d!59085 d!59163))

(assert (=> d!59085 d!59081))

(declare-fun d!59165 () Bool)

(declare-fun e!152608 () Bool)

(assert (=> d!59165 e!152608))

(declare-fun res!115233 () Bool)

(assert (=> d!59165 (=> (not res!115233) (not e!152608))))

(declare-fun lt!118932 () ListLongMap!3541)

(assert (=> d!59165 (= res!115233 (contains!1654 lt!118932 (_1!2317 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))))))

(declare-fun lt!118934 () List!3547)

(assert (=> d!59165 (= lt!118932 (ListLongMap!3542 lt!118934))))

(declare-fun lt!118933 () Unit!7239)

(declare-fun lt!118931 () Unit!7239)

(assert (=> d!59165 (= lt!118933 lt!118931)))

(assert (=> d!59165 (= (getValueByKey!265 lt!118934 (_1!2317 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))))))

(assert (=> d!59165 (= lt!118931 (lemmaContainsTupThenGetReturnValue!151 lt!118934 (_1!2317 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))))))

(assert (=> d!59165 (= lt!118934 (insertStrictlySorted!153 (toList!1786 call!21835) (_1!2317 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))) (_2!2317 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))))))

(assert (=> d!59165 (= (+!630 call!21835 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))) lt!118932)))

(declare-fun b!234966 () Bool)

(declare-fun res!115232 () Bool)

(assert (=> b!234966 (=> (not res!115232) (not e!152608))))

(assert (=> b!234966 (= res!115232 (= (getValueByKey!265 (toList!1786 lt!118932) (_1!2317 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504)))) (Some!270 (_2!2317 (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))))))))

(declare-fun b!234967 () Bool)

(assert (=> b!234967 (= e!152608 (contains!1655 (toList!1786 lt!118932) (tuple2!4615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4203 thiss!1504))))))

(assert (= (and d!59165 res!115233) b!234966))

(assert (= (and b!234966 res!115232) b!234967))

(declare-fun m!256241 () Bool)

(assert (=> d!59165 m!256241))

(declare-fun m!256243 () Bool)

(assert (=> d!59165 m!256243))

(declare-fun m!256245 () Bool)

(assert (=> d!59165 m!256245))

(declare-fun m!256247 () Bool)

(assert (=> d!59165 m!256247))

(declare-fun m!256249 () Bool)

(assert (=> b!234966 m!256249))

(declare-fun m!256251 () Bool)

(assert (=> b!234967 m!256251))

(assert (=> b!234771 d!59165))

(declare-fun d!59167 () Bool)

(declare-fun res!115238 () Bool)

(declare-fun e!152617 () Bool)

(assert (=> d!59167 (=> res!115238 e!152617)))

(assert (=> d!59167 (= res!115238 (bvsge #b00000000000000000000000000000000 (size!5854 (_keys!6430 thiss!1504))))))

(assert (=> d!59167 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6430 thiss!1504) (mask!10316 thiss!1504)) e!152617)))

(declare-fun b!234976 () Bool)

(declare-fun e!152616 () Bool)

(declare-fun e!152615 () Bool)

(assert (=> b!234976 (= e!152616 e!152615)))

(declare-fun lt!118941 () (_ BitVec 64))

(assert (=> b!234976 (= lt!118941 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118943 () Unit!7239)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11608 (_ BitVec 64) (_ BitVec 32)) Unit!7239)

(assert (=> b!234976 (= lt!118943 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6430 thiss!1504) lt!118941 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!234976 (arrayContainsKey!0 (_keys!6430 thiss!1504) lt!118941 #b00000000000000000000000000000000)))

(declare-fun lt!118942 () Unit!7239)

(assert (=> b!234976 (= lt!118942 lt!118943)))

(declare-fun res!115239 () Bool)

(assert (=> b!234976 (= res!115239 (= (seekEntryOrOpen!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000) (_keys!6430 thiss!1504) (mask!10316 thiss!1504)) (Found!992 #b00000000000000000000000000000000)))))

(assert (=> b!234976 (=> (not res!115239) (not e!152615))))

(declare-fun b!234977 () Bool)

(assert (=> b!234977 (= e!152617 e!152616)))

(declare-fun c!39156 () Bool)

(assert (=> b!234977 (= c!39156 (validKeyInArray!0 (select (arr!5518 (_keys!6430 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21847 () Bool)

(declare-fun call!21850 () Bool)

(assert (=> bm!21847 (= call!21850 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6430 thiss!1504) (mask!10316 thiss!1504)))))

(declare-fun b!234978 () Bool)

(assert (=> b!234978 (= e!152615 call!21850)))

(declare-fun b!234979 () Bool)

(assert (=> b!234979 (= e!152616 call!21850)))

(assert (= (and d!59167 (not res!115238)) b!234977))

(assert (= (and b!234977 c!39156) b!234976))

(assert (= (and b!234977 (not c!39156)) b!234979))

(assert (= (and b!234976 res!115239) b!234978))

(assert (= (or b!234978 b!234979) bm!21847))

(assert (=> b!234976 m!256013))

(declare-fun m!256253 () Bool)

(assert (=> b!234976 m!256253))

(declare-fun m!256255 () Bool)

(assert (=> b!234976 m!256255))

(assert (=> b!234976 m!256013))

(declare-fun m!256257 () Bool)

(assert (=> b!234976 m!256257))

(assert (=> b!234977 m!256013))

(assert (=> b!234977 m!256013))

(assert (=> b!234977 m!256033))

(declare-fun m!256259 () Bool)

(assert (=> bm!21847 m!256259))

(assert (=> b!234684 d!59167))

(declare-fun b!234980 () Bool)

(declare-fun e!152618 () Bool)

(assert (=> b!234980 (= e!152618 tp_is_empty!6177)))

(declare-fun mapIsEmpty!10460 () Bool)

(declare-fun mapRes!10460 () Bool)

(assert (=> mapIsEmpty!10460 mapRes!10460))

(declare-fun condMapEmpty!10460 () Bool)

(declare-fun mapDefault!10460 () ValueCell!2745)

(assert (=> mapNonEmpty!10459 (= condMapEmpty!10460 (= mapRest!10459 ((as const (Array (_ BitVec 32) ValueCell!2745)) mapDefault!10460)))))

(declare-fun e!152619 () Bool)

(assert (=> mapNonEmpty!10459 (= tp!22114 (and e!152619 mapRes!10460))))

(declare-fun b!234981 () Bool)

(assert (=> b!234981 (= e!152619 tp_is_empty!6177)))

(declare-fun mapNonEmpty!10460 () Bool)

(declare-fun tp!22115 () Bool)

(assert (=> mapNonEmpty!10460 (= mapRes!10460 (and tp!22115 e!152618))))

(declare-fun mapValue!10460 () ValueCell!2745)

(declare-fun mapRest!10460 () (Array (_ BitVec 32) ValueCell!2745))

(declare-fun mapKey!10460 () (_ BitVec 32))

(assert (=> mapNonEmpty!10460 (= mapRest!10459 (store mapRest!10460 mapKey!10460 mapValue!10460))))

(assert (= (and mapNonEmpty!10459 condMapEmpty!10460) mapIsEmpty!10460))

(assert (= (and mapNonEmpty!10459 (not condMapEmpty!10460)) mapNonEmpty!10460))

(assert (= (and mapNonEmpty!10460 ((_ is ValueCellFull!2745) mapValue!10460)) b!234980))

(assert (= (and mapNonEmpty!10459 ((_ is ValueCellFull!2745) mapDefault!10460)) b!234981))

(declare-fun m!256261 () Bool)

(assert (=> mapNonEmpty!10460 m!256261))

(declare-fun b_lambda!7925 () Bool)

(assert (= b_lambda!7921 (or (and b!234649 b_free!6315) b_lambda!7925)))

(declare-fun b_lambda!7927 () Bool)

(assert (= b_lambda!7923 (or (and b!234649 b_free!6315) b_lambda!7927)))

(check-sat (not d!59155) (not d!59113) (not b!234790) (not d!59151) (not b!234791) (not d!59109) (not b!234843) (not d!59107) (not d!59161) (not b!234838) (not d!59165) (not bm!21841) (not bm!21838) (not d!59111) (not b!234853) (not b!234966) (not d!59095) (not b!234848) (not b!234881) (not b!234798) (not bm!21847) (not b!234967) (not d!59105) (not d!59133) (not b!234915) (not b!234916) (not d!59131) (not b!234803) (not b!234875) (not d!59153) (not b!234935) (not b!234936) (not b_lambda!7919) (not d!59101) (not b!234806) (not d!59123) (not b_next!6315) (not d!59137) tp_is_empty!6177 (not b!234800) (not b!234934) (not b!234837) (not b!234921) (not b!234846) (not d!59103) (not b!234977) (not b!234892) (not b!234804) (not b!234835) (not d!59145) b_and!13261 (not b!234792) (not b!234920) (not b!234836) (not d!59097) (not b!234976) (not d!59157) (not b!234840) (not b!234833) (not b!234841) (not b_lambda!7927) (not d!59121) (not d!59117) (not d!59127) (not b!234854) (not b!234807) (not d!59141) (not d!59119) (not d!59125) (not b_lambda!7925) (not b!234805) (not b!234960) (not d!59099) (not b!234872) (not b!234793) (not d!59115) (not mapNonEmpty!10460) (not b!234873) (not d!59139) (not b!234802) (not b!234905) (not b!234923) (not bm!21844))
(check-sat b_and!13261 (not b_next!6315))
