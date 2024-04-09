; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23066 () Bool)

(assert start!23066)

(declare-fun b!241529 () Bool)

(declare-fun b_free!6491 () Bool)

(declare-fun b_next!6491 () Bool)

(assert (=> b!241529 (= b_free!6491 (not b_next!6491))))

(declare-fun tp!22681 () Bool)

(declare-fun b_and!13481 () Bool)

(assert (=> b!241529 (= tp!22681 b_and!13481)))

(declare-fun b!241528 () Bool)

(declare-datatypes ((Unit!7438 0))(
  ( (Unit!7439) )
))
(declare-fun e!156757 () Unit!7438)

(declare-fun Unit!7440 () Unit!7438)

(assert (=> b!241528 (= e!156757 Unit!7440)))

(declare-fun lt!121424 () Unit!7438)

(declare-datatypes ((V!8117 0))(
  ( (V!8118 (val!3221 Int)) )
))
(declare-datatypes ((ValueCell!2833 0))(
  ( (ValueCellFull!2833 (v!5256 V!8117)) (EmptyCell!2833) )
))
(declare-datatypes ((array!11986 0))(
  ( (array!11987 (arr!5693 (Array (_ BitVec 32) ValueCell!2833)) (size!6035 (_ BitVec 32))) )
))
(declare-datatypes ((array!11988 0))(
  ( (array!11989 (arr!5694 (Array (_ BitVec 32) (_ BitVec 64))) (size!6036 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3566 0))(
  ( (LongMapFixedSize!3567 (defaultEntry!4476 Int) (mask!10547 (_ BitVec 32)) (extraKeys!4213 (_ BitVec 32)) (zeroValue!4317 V!8117) (minValue!4317 V!8117) (_size!1832 (_ BitVec 32)) (_keys!6582 array!11988) (_values!4459 array!11986) (_vacant!1832 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3566)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!350 (array!11988 array!11986 (_ BitVec 32) (_ BitVec 32) V!8117 V!8117 (_ BitVec 64) Int) Unit!7438)

(assert (=> b!241528 (= lt!121424 (lemmaInListMapThenSeekEntryOrOpenFindsIt!350 (_keys!6582 thiss!1504) (_values!4459 thiss!1504) (mask!10547 thiss!1504) (extraKeys!4213 thiss!1504) (zeroValue!4317 thiss!1504) (minValue!4317 thiss!1504) key!932 (defaultEntry!4476 thiss!1504)))))

(assert (=> b!241528 false))

(declare-fun tp_is_empty!6353 () Bool)

(declare-fun e!156764 () Bool)

(declare-fun e!156761 () Bool)

(declare-fun array_inv!3759 (array!11988) Bool)

(declare-fun array_inv!3760 (array!11986) Bool)

(assert (=> b!241529 (= e!156761 (and tp!22681 tp_is_empty!6353 (array_inv!3759 (_keys!6582 thiss!1504)) (array_inv!3760 (_values!4459 thiss!1504)) e!156764))))

(declare-fun mapNonEmpty!10765 () Bool)

(declare-fun mapRes!10765 () Bool)

(declare-fun tp!22680 () Bool)

(declare-fun e!156762 () Bool)

(assert (=> mapNonEmpty!10765 (= mapRes!10765 (and tp!22680 e!156762))))

(declare-fun mapValue!10765 () ValueCell!2833)

(declare-fun mapKey!10765 () (_ BitVec 32))

(declare-fun mapRest!10765 () (Array (_ BitVec 32) ValueCell!2833))

(assert (=> mapNonEmpty!10765 (= (arr!5693 (_values!4459 thiss!1504)) (store mapRest!10765 mapKey!10765 mapValue!10765))))

(declare-fun b!241531 () Bool)

(declare-fun res!118409 () Bool)

(declare-datatypes ((SeekEntryResult!1067 0))(
  ( (MissingZero!1067 (index!6438 (_ BitVec 32))) (Found!1067 (index!6439 (_ BitVec 32))) (Intermediate!1067 (undefined!1879 Bool) (index!6440 (_ BitVec 32)) (x!24229 (_ BitVec 32))) (Undefined!1067) (MissingVacant!1067 (index!6441 (_ BitVec 32))) )
))
(declare-fun lt!121428 () SeekEntryResult!1067)

(assert (=> b!241531 (= res!118409 (= (select (arr!5694 (_keys!6582 thiss!1504)) (index!6441 lt!121428)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156765 () Bool)

(assert (=> b!241531 (=> (not res!118409) (not e!156765))))

(declare-fun b!241532 () Bool)

(declare-fun e!156767 () Bool)

(assert (=> b!241532 (= e!156764 (and e!156767 mapRes!10765))))

(declare-fun condMapEmpty!10765 () Bool)

(declare-fun mapDefault!10765 () ValueCell!2833)

