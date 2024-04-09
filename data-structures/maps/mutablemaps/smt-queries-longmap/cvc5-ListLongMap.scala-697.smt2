; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16698 () Bool)

(assert start!16698)

(declare-fun b!167095 () Bool)

(declare-fun b_free!3991 () Bool)

(declare-fun b_next!3991 () Bool)

(assert (=> b!167095 (= b_free!3991 (not b_next!3991))))

(declare-fun tp!14574 () Bool)

(declare-fun b_and!10423 () Bool)

(assert (=> b!167095 (= tp!14574 b_and!10423)))

(declare-fun res!79472 () Bool)

(declare-fun e!109719 () Bool)

(assert (=> start!16698 (=> (not res!79472) (not e!109719))))

(declare-datatypes ((V!4705 0))(
  ( (V!4706 (val!1941 Int)) )
))
(declare-datatypes ((ValueCell!1553 0))(
  ( (ValueCellFull!1553 (v!3802 V!4705)) (EmptyCell!1553) )
))
(declare-datatypes ((array!6682 0))(
  ( (array!6683 (arr!3176 (Array (_ BitVec 32) (_ BitVec 64))) (size!3464 (_ BitVec 32))) )
))
(declare-datatypes ((array!6684 0))(
  ( (array!6685 (arr!3177 (Array (_ BitVec 32) ValueCell!1553)) (size!3465 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2014 0))(
  ( (LongMapFixedSize!2015 (defaultEntry!3449 Int) (mask!8192 (_ BitVec 32)) (extraKeys!3190 (_ BitVec 32)) (zeroValue!3292 V!4705) (minValue!3292 V!4705) (_size!1056 (_ BitVec 32)) (_keys!5274 array!6682) (_values!3432 array!6684) (_vacant!1056 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2014)

(declare-fun valid!874 (LongMapFixedSize!2014) Bool)

(assert (=> start!16698 (= res!79472 (valid!874 thiss!1248))))

(assert (=> start!16698 e!109719))

(declare-fun e!109712 () Bool)

(assert (=> start!16698 e!109712))

(assert (=> start!16698 true))

(declare-fun b!167092 () Bool)

(declare-fun e!109715 () Bool)

(assert (=> b!167092 (= e!109719 e!109715)))

(declare-fun res!79471 () Bool)

(assert (=> b!167092 (=> (not res!79471) (not e!109715))))

(declare-datatypes ((SeekEntryResult!482 0))(
  ( (MissingZero!482 (index!4096 (_ BitVec 32))) (Found!482 (index!4097 (_ BitVec 32))) (Intermediate!482 (undefined!1294 Bool) (index!4098 (_ BitVec 32)) (x!18510 (_ BitVec 32))) (Undefined!482) (MissingVacant!482 (index!4099 (_ BitVec 32))) )
))
(declare-fun lt!83598 () SeekEntryResult!482)

(assert (=> b!167092 (= res!79471 (and (not (is-Undefined!482 lt!83598)) (not (is-MissingVacant!482 lt!83598)) (not (is-MissingZero!482 lt!83598)) (is-Found!482 lt!83598)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6682 (_ BitVec 32)) SeekEntryResult!482)

(assert (=> b!167092 (= lt!83598 (seekEntryOrOpen!0 key!828 (_keys!5274 thiss!1248) (mask!8192 thiss!1248)))))

(declare-fun b!167093 () Bool)

(declare-fun e!109716 () Bool)

(declare-fun tp_is_empty!3793 () Bool)

(assert (=> b!167093 (= e!109716 tp_is_empty!3793)))

(declare-fun b!167094 () Bool)

(declare-fun e!109714 () Bool)

(assert (=> b!167094 (= e!109714 tp_is_empty!3793)))

(declare-fun e!109718 () Bool)

(declare-fun array_inv!2033 (array!6682) Bool)

(declare-fun array_inv!2034 (array!6684) Bool)

(assert (=> b!167095 (= e!109712 (and tp!14574 tp_is_empty!3793 (array_inv!2033 (_keys!5274 thiss!1248)) (array_inv!2034 (_values!3432 thiss!1248)) e!109718))))

(declare-fun b!167096 () Bool)

(declare-fun res!79474 () Bool)

(assert (=> b!167096 (=> (not res!79474) (not e!109719))))

(assert (=> b!167096 (= res!79474 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6408 () Bool)

(declare-fun mapRes!6408 () Bool)

(assert (=> mapIsEmpty!6408 mapRes!6408))

(declare-fun mapNonEmpty!6408 () Bool)

(declare-fun tp!14573 () Bool)

(assert (=> mapNonEmpty!6408 (= mapRes!6408 (and tp!14573 e!109716))))

(declare-fun mapRest!6408 () (Array (_ BitVec 32) ValueCell!1553))

(declare-fun mapValue!6408 () ValueCell!1553)

(declare-fun mapKey!6408 () (_ BitVec 32))

(assert (=> mapNonEmpty!6408 (= (arr!3177 (_values!3432 thiss!1248)) (store mapRest!6408 mapKey!6408 mapValue!6408))))

(declare-fun b!167097 () Bool)

(declare-datatypes ((Unit!5103 0))(
  ( (Unit!5104) )
))
(declare-fun e!109711 () Unit!5103)

(declare-fun Unit!5105 () Unit!5103)

(assert (=> b!167097 (= e!109711 Unit!5105)))

(declare-fun lt!83596 () Unit!5103)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!99 (array!6682 array!6684 (_ BitVec 32) (_ BitVec 32) V!4705 V!4705 (_ BitVec 64) Int) Unit!5103)

(assert (=> b!167097 (= lt!83596 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!99 (_keys!5274 thiss!1248) (_values!3432 thiss!1248) (mask!8192 thiss!1248) (extraKeys!3190 thiss!1248) (zeroValue!3292 thiss!1248) (minValue!3292 thiss!1248) key!828 (defaultEntry!3449 thiss!1248)))))

(assert (=> b!167097 false))

(declare-fun b!167098 () Bool)

(declare-fun e!109720 () Bool)

(assert (=> b!167098 (= e!109720 false)))

(declare-fun lt!83597 () Bool)

(declare-datatypes ((List!2138 0))(
  ( (Nil!2135) (Cons!2134 (h!2751 (_ BitVec 64)) (t!6948 List!2138)) )
))
(declare-fun arrayNoDuplicates!0 (array!6682 (_ BitVec 32) List!2138) Bool)

(assert (=> b!167098 (= lt!83597 (arrayNoDuplicates!0 (_keys!5274 thiss!1248) #b00000000000000000000000000000000 Nil!2135))))

(declare-fun b!167099 () Bool)

(assert (=> b!167099 (= e!109718 (and e!109714 mapRes!6408))))

(declare-fun condMapEmpty!6408 () Bool)

(declare-fun mapDefault!6408 () ValueCell!1553)

