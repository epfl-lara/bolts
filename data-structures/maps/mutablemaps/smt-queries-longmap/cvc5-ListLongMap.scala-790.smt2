; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18816 () Bool)

(assert start!18816)

(declare-fun b!185794 () Bool)

(declare-fun b_free!4579 () Bool)

(declare-fun b_next!4579 () Bool)

(assert (=> b!185794 (= b_free!4579 (not b_next!4579))))

(declare-fun tp!16535 () Bool)

(declare-fun b_and!11199 () Bool)

(assert (=> b!185794 (= tp!16535 b_and!11199)))

(declare-fun b!185787 () Bool)

(declare-fun res!87918 () Bool)

(declare-fun e!122254 () Bool)

(assert (=> b!185787 (=> (not res!87918) (not e!122254))))

(declare-datatypes ((V!5449 0))(
  ( (V!5450 (val!2220 Int)) )
))
(declare-datatypes ((ValueCell!1832 0))(
  ( (ValueCellFull!1832 (v!4127 V!5449)) (EmptyCell!1832) )
))
(declare-datatypes ((array!7910 0))(
  ( (array!7911 (arr!3734 (Array (_ BitVec 32) (_ BitVec 64))) (size!4050 (_ BitVec 32))) )
))
(declare-datatypes ((array!7912 0))(
  ( (array!7913 (arr!3735 (Array (_ BitVec 32) ValueCell!1832)) (size!4051 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2572 0))(
  ( (LongMapFixedSize!2573 (defaultEntry!3788 Int) (mask!8903 (_ BitVec 32)) (extraKeys!3525 (_ BitVec 32)) (zeroValue!3629 V!5449) (minValue!3629 V!5449) (_size!1335 (_ BitVec 32)) (_keys!5729 array!7910) (_values!3771 array!7912) (_vacant!1335 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2572)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3454 0))(
  ( (tuple2!3455 (_1!1737 (_ BitVec 64)) (_2!1737 V!5449)) )
))
(declare-datatypes ((List!2388 0))(
  ( (Nil!2385) (Cons!2384 (h!3017 tuple2!3454) (t!7280 List!2388)) )
))
(declare-datatypes ((ListLongMap!2385 0))(
  ( (ListLongMap!2386 (toList!1208 List!2388)) )
))
(declare-fun contains!1298 (ListLongMap!2385 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!851 (array!7910 array!7912 (_ BitVec 32) (_ BitVec 32) V!5449 V!5449 (_ BitVec 32) Int) ListLongMap!2385)

(assert (=> b!185787 (= res!87918 (not (contains!1298 (getCurrentListMap!851 (_keys!5729 thiss!1248) (_values!3771 thiss!1248) (mask!8903 thiss!1248) (extraKeys!3525 thiss!1248) (zeroValue!3629 thiss!1248) (minValue!3629 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3788 thiss!1248)) key!828)))))

(declare-fun b!185788 () Bool)

(assert (=> b!185788 (= e!122254 (not true))))

(assert (=> b!185788 false))

(declare-datatypes ((Unit!5593 0))(
  ( (Unit!5594) )
))
(declare-fun lt!91897 () Unit!5593)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!141 (array!7910 array!7912 (_ BitVec 32) (_ BitVec 32) V!5449 V!5449 (_ BitVec 64) Int) Unit!5593)

(assert (=> b!185788 (= lt!91897 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!141 (_keys!5729 thiss!1248) (_values!3771 thiss!1248) (mask!8903 thiss!1248) (extraKeys!3525 thiss!1248) (zeroValue!3629 thiss!1248) (minValue!3629 thiss!1248) key!828 (defaultEntry!3788 thiss!1248)))))

(declare-fun b!185789 () Bool)

(declare-fun e!122256 () Bool)

(declare-fun tp_is_empty!4351 () Bool)

(assert (=> b!185789 (= e!122256 tp_is_empty!4351)))

(declare-fun b!185790 () Bool)

(declare-fun e!122258 () Bool)

(declare-fun e!122253 () Bool)

(declare-fun mapRes!7488 () Bool)

(assert (=> b!185790 (= e!122258 (and e!122253 mapRes!7488))))

(declare-fun condMapEmpty!7488 () Bool)

(declare-fun mapDefault!7488 () ValueCell!1832)

