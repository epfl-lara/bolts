; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21742 () Bool)

(assert start!21742)

(declare-fun b!218530 () Bool)

(declare-fun b_free!5879 () Bool)

(declare-fun b_next!5879 () Bool)

(assert (=> b!218530 (= b_free!5879 (not b_next!5879))))

(declare-fun tp!20771 () Bool)

(declare-fun b_and!12787 () Bool)

(assert (=> b!218530 (= tp!20771 b_and!12787)))

(declare-fun b!218519 () Bool)

(declare-fun res!107154 () Bool)

(declare-datatypes ((V!7301 0))(
  ( (V!7302 (val!2915 Int)) )
))
(declare-datatypes ((ValueCell!2527 0))(
  ( (ValueCellFull!2527 (v!4929 V!7301)) (EmptyCell!2527) )
))
(declare-datatypes ((array!10720 0))(
  ( (array!10721 (arr!5081 (Array (_ BitVec 32) ValueCell!2527)) (size!5413 (_ BitVec 32))) )
))
(declare-datatypes ((array!10722 0))(
  ( (array!10723 (arr!5082 (Array (_ BitVec 32) (_ BitVec 64))) (size!5414 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2954 0))(
  ( (LongMapFixedSize!2955 (defaultEntry!4127 Int) (mask!9904 (_ BitVec 32)) (extraKeys!3864 (_ BitVec 32)) (zeroValue!3968 V!7301) (minValue!3968 V!7301) (_size!1526 (_ BitVec 32)) (_keys!6176 array!10722) (_values!4110 array!10720) (_vacant!1526 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2954)

(declare-datatypes ((SeekEntryResult!800 0))(
  ( (MissingZero!800 (index!5370 (_ BitVec 32))) (Found!800 (index!5371 (_ BitVec 32))) (Intermediate!800 (undefined!1612 Bool) (index!5372 (_ BitVec 32)) (x!22856 (_ BitVec 32))) (Undefined!800) (MissingVacant!800 (index!5373 (_ BitVec 32))) )
))
(declare-fun lt!111583 () SeekEntryResult!800)

(assert (=> b!218519 (= res!107154 (= (select (arr!5082 (_keys!6176 thiss!1504)) (index!5373 lt!111583)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!142163 () Bool)

(assert (=> b!218519 (=> (not res!107154) (not e!142163))))

(declare-fun b!218520 () Bool)

(declare-fun e!142169 () Bool)

(declare-fun tp_is_empty!5741 () Bool)

(assert (=> b!218520 (= e!142169 tp_is_empty!5741)))

(declare-fun mapIsEmpty!9774 () Bool)

(declare-fun mapRes!9774 () Bool)

(assert (=> mapIsEmpty!9774 mapRes!9774))

(declare-fun b!218521 () Bool)

(declare-fun call!20398 () Bool)

(assert (=> b!218521 (= e!142163 (not call!20398))))

(declare-fun b!218522 () Bool)

(declare-datatypes ((Unit!6510 0))(
  ( (Unit!6511) )
))
(declare-fun e!142168 () Unit!6510)

(declare-fun lt!111580 () Unit!6510)

(assert (=> b!218522 (= e!142168 lt!111580)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!198 (array!10722 array!10720 (_ BitVec 32) (_ BitVec 32) V!7301 V!7301 (_ BitVec 64) Int) Unit!6510)

(assert (=> b!218522 (= lt!111580 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!198 (_keys!6176 thiss!1504) (_values!4110 thiss!1504) (mask!9904 thiss!1504) (extraKeys!3864 thiss!1504) (zeroValue!3968 thiss!1504) (minValue!3968 thiss!1504) key!932 (defaultEntry!4127 thiss!1504)))))

(declare-fun c!36336 () Bool)

(assert (=> b!218522 (= c!36336 (is-MissingZero!800 lt!111583))))

(declare-fun e!142160 () Bool)

(assert (=> b!218522 e!142160))

(declare-fun mapNonEmpty!9774 () Bool)

(declare-fun tp!20772 () Bool)

(declare-fun e!142159 () Bool)

(assert (=> mapNonEmpty!9774 (= mapRes!9774 (and tp!20772 e!142159))))

(declare-fun mapRest!9774 () (Array (_ BitVec 32) ValueCell!2527))

(declare-fun mapValue!9774 () ValueCell!2527)

(declare-fun mapKey!9774 () (_ BitVec 32))

(assert (=> mapNonEmpty!9774 (= (arr!5081 (_values!4110 thiss!1504)) (store mapRest!9774 mapKey!9774 mapValue!9774))))

(declare-fun b!218523 () Bool)

(declare-fun e!142166 () Bool)

(assert (=> b!218523 (= e!142166 (and e!142169 mapRes!9774))))

(declare-fun condMapEmpty!9774 () Bool)

(declare-fun mapDefault!9774 () ValueCell!2527)

