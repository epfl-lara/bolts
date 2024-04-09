; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16684 () Bool)

(assert start!16684)

(declare-fun b!166824 () Bool)

(declare-fun b_free!3977 () Bool)

(declare-fun b_next!3977 () Bool)

(assert (=> b!166824 (= b_free!3977 (not b_next!3977))))

(declare-fun tp!14532 () Bool)

(declare-fun b_and!10409 () Bool)

(assert (=> b!166824 (= tp!14532 b_and!10409)))

(declare-fun b!166819 () Bool)

(declare-datatypes ((Unit!5084 0))(
  ( (Unit!5085) )
))
(declare-fun e!109503 () Unit!5084)

(declare-fun lt!83492 () Unit!5084)

(assert (=> b!166819 (= e!109503 lt!83492)))

(declare-datatypes ((V!4685 0))(
  ( (V!4686 (val!1934 Int)) )
))
(declare-datatypes ((ValueCell!1546 0))(
  ( (ValueCellFull!1546 (v!3795 V!4685)) (EmptyCell!1546) )
))
(declare-datatypes ((array!6654 0))(
  ( (array!6655 (arr!3162 (Array (_ BitVec 32) (_ BitVec 64))) (size!3450 (_ BitVec 32))) )
))
(declare-datatypes ((array!6656 0))(
  ( (array!6657 (arr!3163 (Array (_ BitVec 32) ValueCell!1546)) (size!3451 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2000 0))(
  ( (LongMapFixedSize!2001 (defaultEntry!3442 Int) (mask!8179 (_ BitVec 32)) (extraKeys!3183 (_ BitVec 32)) (zeroValue!3285 V!4685) (minValue!3285 V!4685) (_size!1049 (_ BitVec 32)) (_keys!5267 array!6654) (_values!3425 array!6656) (_vacant!1049 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2000)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!95 (array!6654 array!6656 (_ BitVec 32) (_ BitVec 32) V!4685 V!4685 (_ BitVec 64) Int) Unit!5084)

(assert (=> b!166819 (= lt!83492 (lemmaInListMapThenSeekEntryOrOpenFindsIt!95 (_keys!5267 thiss!1248) (_values!3425 thiss!1248) (mask!8179 thiss!1248) (extraKeys!3183 thiss!1248) (zeroValue!3285 thiss!1248) (minValue!3285 thiss!1248) key!828 (defaultEntry!3442 thiss!1248)))))

(declare-fun res!79329 () Bool)

(declare-datatypes ((SeekEntryResult!475 0))(
  ( (MissingZero!475 (index!4068 (_ BitVec 32))) (Found!475 (index!4069 (_ BitVec 32))) (Intermediate!475 (undefined!1287 Bool) (index!4070 (_ BitVec 32)) (x!18479 (_ BitVec 32))) (Undefined!475) (MissingVacant!475 (index!4071 (_ BitVec 32))) )
))
(declare-fun lt!83494 () SeekEntryResult!475)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166819 (= res!79329 (inRange!0 (index!4069 lt!83494) (mask!8179 thiss!1248)))))

(declare-fun e!109506 () Bool)

(assert (=> b!166819 (=> (not res!79329) (not e!109506))))

(assert (=> b!166819 e!109506))

(declare-fun b!166820 () Bool)

(declare-fun e!109505 () Bool)

(declare-fun e!109504 () Bool)

(assert (=> b!166820 (= e!109505 e!109504)))

(declare-fun res!79327 () Bool)

(assert (=> b!166820 (=> (not res!79327) (not e!109504))))

(assert (=> b!166820 (= res!79327 (and (not (is-Undefined!475 lt!83494)) (not (is-MissingVacant!475 lt!83494)) (not (is-MissingZero!475 lt!83494)) (is-Found!475 lt!83494)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6654 (_ BitVec 32)) SeekEntryResult!475)

(assert (=> b!166820 (= lt!83494 (seekEntryOrOpen!0 key!828 (_keys!5267 thiss!1248) (mask!8179 thiss!1248)))))

(declare-fun b!166821 () Bool)

(declare-fun res!79323 () Bool)

(declare-fun e!109510 () Bool)

(assert (=> b!166821 (=> (not res!79323) (not e!109510))))

(assert (=> b!166821 (= res!79323 (and (= (size!3451 (_values!3425 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8179 thiss!1248))) (= (size!3450 (_keys!5267 thiss!1248)) (size!3451 (_values!3425 thiss!1248))) (bvsge (mask!8179 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3183 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3183 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166822 () Bool)

(assert (=> b!166822 (= e!109504 e!109510)))

(declare-fun res!79325 () Bool)

(assert (=> b!166822 (=> (not res!79325) (not e!109510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166822 (= res!79325 (validMask!0 (mask!8179 thiss!1248)))))

(declare-fun lt!83493 () Unit!5084)

(assert (=> b!166822 (= lt!83493 e!109503)))

(declare-fun c!30228 () Bool)

(declare-datatypes ((tuple2!3114 0))(
  ( (tuple2!3115 (_1!1567 (_ BitVec 64)) (_2!1567 V!4685)) )
))
(declare-datatypes ((List!2127 0))(
  ( (Nil!2124) (Cons!2123 (h!2740 tuple2!3114) (t!6937 List!2127)) )
))
(declare-datatypes ((ListLongMap!2083 0))(
  ( (ListLongMap!2084 (toList!1057 List!2127)) )
))
(declare-fun contains!1093 (ListLongMap!2083 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!710 (array!6654 array!6656 (_ BitVec 32) (_ BitVec 32) V!4685 V!4685 (_ BitVec 32) Int) ListLongMap!2083)

(assert (=> b!166822 (= c!30228 (contains!1093 (getCurrentListMap!710 (_keys!5267 thiss!1248) (_values!3425 thiss!1248) (mask!8179 thiss!1248) (extraKeys!3183 thiss!1248) (zeroValue!3285 thiss!1248) (minValue!3285 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3442 thiss!1248)) key!828))))

(declare-fun res!79324 () Bool)

(assert (=> start!16684 (=> (not res!79324) (not e!109505))))

(declare-fun valid!868 (LongMapFixedSize!2000) Bool)

(assert (=> start!16684 (= res!79324 (valid!868 thiss!1248))))

(assert (=> start!16684 e!109505))

(declare-fun e!109502 () Bool)

(assert (=> start!16684 e!109502))

(assert (=> start!16684 true))

(declare-fun b!166823 () Bool)

(declare-fun Unit!5086 () Unit!5084)

(assert (=> b!166823 (= e!109503 Unit!5086)))

(declare-fun lt!83495 () Unit!5084)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!94 (array!6654 array!6656 (_ BitVec 32) (_ BitVec 32) V!4685 V!4685 (_ BitVec 64) Int) Unit!5084)

(assert (=> b!166823 (= lt!83495 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!94 (_keys!5267 thiss!1248) (_values!3425 thiss!1248) (mask!8179 thiss!1248) (extraKeys!3183 thiss!1248) (zeroValue!3285 thiss!1248) (minValue!3285 thiss!1248) key!828 (defaultEntry!3442 thiss!1248)))))

(assert (=> b!166823 false))

(declare-fun tp_is_empty!3779 () Bool)

(declare-fun e!109508 () Bool)

(declare-fun array_inv!2021 (array!6654) Bool)

(declare-fun array_inv!2022 (array!6656) Bool)

(assert (=> b!166824 (= e!109502 (and tp!14532 tp_is_empty!3779 (array_inv!2021 (_keys!5267 thiss!1248)) (array_inv!2022 (_values!3425 thiss!1248)) e!109508))))

(declare-fun mapNonEmpty!6387 () Bool)

(declare-fun mapRes!6387 () Bool)

(declare-fun tp!14531 () Bool)

(declare-fun e!109501 () Bool)

(assert (=> mapNonEmpty!6387 (= mapRes!6387 (and tp!14531 e!109501))))

(declare-fun mapKey!6387 () (_ BitVec 32))

(declare-fun mapValue!6387 () ValueCell!1546)

(declare-fun mapRest!6387 () (Array (_ BitVec 32) ValueCell!1546))

(assert (=> mapNonEmpty!6387 (= (arr!3163 (_values!3425 thiss!1248)) (store mapRest!6387 mapKey!6387 mapValue!6387))))

(declare-fun mapIsEmpty!6387 () Bool)

(assert (=> mapIsEmpty!6387 mapRes!6387))

(declare-fun b!166825 () Bool)

(declare-fun e!109509 () Bool)

(assert (=> b!166825 (= e!109509 tp_is_empty!3779)))

(declare-fun b!166826 () Bool)

(assert (=> b!166826 (= e!109508 (and e!109509 mapRes!6387))))

(declare-fun condMapEmpty!6387 () Bool)

(declare-fun mapDefault!6387 () ValueCell!1546)

