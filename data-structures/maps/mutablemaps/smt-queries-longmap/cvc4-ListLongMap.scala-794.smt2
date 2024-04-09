; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18988 () Bool)

(assert start!18988)

(declare-fun b!187105 () Bool)

(declare-fun b_free!4607 () Bool)

(declare-fun b_next!4607 () Bool)

(assert (=> b!187105 (= b_free!4607 (not b_next!4607))))

(declare-fun tp!16630 () Bool)

(declare-fun b_and!11241 () Bool)

(assert (=> b!187105 (= tp!16630 b_and!11241)))

(declare-fun b!187100 () Bool)

(declare-datatypes ((Unit!5636 0))(
  ( (Unit!5637) )
))
(declare-fun e!123152 () Unit!5636)

(declare-fun Unit!5638 () Unit!5636)

(assert (=> b!187100 (= e!123152 Unit!5638)))

(declare-fun lt!92579 () Unit!5636)

(declare-datatypes ((V!5485 0))(
  ( (V!5486 (val!2234 Int)) )
))
(declare-datatypes ((ValueCell!1846 0))(
  ( (ValueCellFull!1846 (v!4144 V!5485)) (EmptyCell!1846) )
))
(declare-datatypes ((array!7972 0))(
  ( (array!7973 (arr!3762 (Array (_ BitVec 32) (_ BitVec 64))) (size!4080 (_ BitVec 32))) )
))
(declare-datatypes ((array!7974 0))(
  ( (array!7975 (arr!3763 (Array (_ BitVec 32) ValueCell!1846)) (size!4081 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2600 0))(
  ( (LongMapFixedSize!2601 (defaultEntry!3817 Int) (mask!8957 (_ BitVec 32)) (extraKeys!3554 (_ BitVec 32)) (zeroValue!3658 V!5485) (minValue!3658 V!5485) (_size!1349 (_ BitVec 32)) (_keys!5767 array!7972) (_values!3800 array!7974) (_vacant!1349 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2600)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!150 (array!7972 array!7974 (_ BitVec 32) (_ BitVec 32) V!5485 V!5485 (_ BitVec 64) Int) Unit!5636)

(assert (=> b!187100 (= lt!92579 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!150 (_keys!5767 thiss!1248) (_values!3800 thiss!1248) (mask!8957 thiss!1248) (extraKeys!3554 thiss!1248) (zeroValue!3658 thiss!1248) (minValue!3658 thiss!1248) key!828 (defaultEntry!3817 thiss!1248)))))

(assert (=> b!187100 false))

(declare-fun mapIsEmpty!7541 () Bool)

(declare-fun mapRes!7541 () Bool)

(assert (=> mapIsEmpty!7541 mapRes!7541))

(declare-fun b!187101 () Bool)

(declare-fun res!88496 () Bool)

(declare-fun e!123156 () Bool)

(assert (=> b!187101 (=> (not res!88496) (not e!123156))))

(assert (=> b!187101 (= res!88496 (not (= key!828 (bvneg key!828))))))

(declare-fun b!187102 () Bool)

(declare-fun e!123151 () Bool)

(declare-fun e!123154 () Bool)

(assert (=> b!187102 (= e!123151 (and e!123154 mapRes!7541))))

(declare-fun condMapEmpty!7541 () Bool)

(declare-fun mapDefault!7541 () ValueCell!1846)

