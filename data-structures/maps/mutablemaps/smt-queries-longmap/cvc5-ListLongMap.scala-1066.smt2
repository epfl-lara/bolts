; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22090 () Bool)

(assert start!22090)

(declare-fun b!228888 () Bool)

(declare-fun b_free!6145 () Bool)

(declare-fun b_next!6145 () Bool)

(assert (=> b!228888 (= b_free!6145 (not b_next!6145))))

(declare-fun tp!21577 () Bool)

(declare-fun b_and!13061 () Bool)

(assert (=> b!228888 (= tp!21577 b_and!13061)))

(declare-fun b!228874 () Bool)

(declare-fun res!112666 () Bool)

(declare-fun e!148506 () Bool)

(assert (=> b!228874 (=> res!112666 e!148506)))

(declare-datatypes ((V!7657 0))(
  ( (V!7658 (val!3048 Int)) )
))
(declare-datatypes ((ValueCell!2660 0))(
  ( (ValueCellFull!2660 (v!5064 V!7657)) (EmptyCell!2660) )
))
(declare-datatypes ((array!11256 0))(
  ( (array!11257 (arr!5347 (Array (_ BitVec 32) ValueCell!2660)) (size!5680 (_ BitVec 32))) )
))
(declare-datatypes ((array!11258 0))(
  ( (array!11259 (arr!5348 (Array (_ BitVec 32) (_ BitVec 64))) (size!5681 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3220 0))(
  ( (LongMapFixedSize!3221 (defaultEntry!4269 Int) (mask!10145 (_ BitVec 32)) (extraKeys!4006 (_ BitVec 32)) (zeroValue!4110 V!7657) (minValue!4110 V!7657) (_size!1659 (_ BitVec 32)) (_keys!6323 array!11258) (_values!4252 array!11256) (_vacant!1659 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3220)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11258 (_ BitVec 32)) Bool)

(assert (=> b!228874 (= res!112666 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6323 thiss!1504) (mask!10145 thiss!1504))))))

(declare-fun b!228875 () Bool)

(declare-fun e!148508 () Bool)

(declare-fun e!148505 () Bool)

(assert (=> b!228875 (= e!148508 e!148505)))

(declare-fun res!112665 () Bool)

(declare-fun call!21267 () Bool)

(assert (=> b!228875 (= res!112665 call!21267)))

(assert (=> b!228875 (=> (not res!112665) (not e!148505))))

(declare-fun b!228876 () Bool)

(declare-fun e!148498 () Bool)

(declare-fun tp_is_empty!6007 () Bool)

(assert (=> b!228876 (= e!148498 tp_is_empty!6007)))

(declare-fun b!228877 () Bool)

(declare-datatypes ((Unit!6968 0))(
  ( (Unit!6969) )
))
(declare-fun e!148500 () Unit!6968)

(declare-fun lt!115179 () Unit!6968)

(assert (=> b!228877 (= e!148500 lt!115179)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!290 (array!11258 array!11256 (_ BitVec 32) (_ BitVec 32) V!7657 V!7657 (_ BitVec 64) Int) Unit!6968)

(assert (=> b!228877 (= lt!115179 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!290 (_keys!6323 thiss!1504) (_values!4252 thiss!1504) (mask!10145 thiss!1504) (extraKeys!4006 thiss!1504) (zeroValue!4110 thiss!1504) (minValue!4110 thiss!1504) key!932 (defaultEntry!4269 thiss!1504)))))

(declare-fun c!37948 () Bool)

(declare-datatypes ((SeekEntryResult!924 0))(
  ( (MissingZero!924 (index!5866 (_ BitVec 32))) (Found!924 (index!5867 (_ BitVec 32))) (Intermediate!924 (undefined!1736 Bool) (index!5868 (_ BitVec 32)) (x!23368 (_ BitVec 32))) (Undefined!924) (MissingVacant!924 (index!5869 (_ BitVec 32))) )
))
(declare-fun lt!115183 () SeekEntryResult!924)

(assert (=> b!228877 (= c!37948 (is-MissingZero!924 lt!115183))))

(declare-fun e!148496 () Bool)

(assert (=> b!228877 e!148496))

(declare-fun b!228878 () Bool)

(declare-fun c!37947 () Bool)

(assert (=> b!228878 (= c!37947 (is-MissingVacant!924 lt!115183))))

(assert (=> b!228878 (= e!148496 e!148508)))

(declare-fun b!228879 () Bool)

(declare-fun res!112671 () Bool)

(assert (=> b!228879 (= res!112671 (= (select (arr!5348 (_keys!6323 thiss!1504)) (index!5869 lt!115183)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!228879 (=> (not res!112671) (not e!148505))))

(declare-fun bm!21264 () Bool)

(declare-fun call!21268 () Bool)

(declare-fun arrayContainsKey!0 (array!11258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21264 (= call!21268 (arrayContainsKey!0 (_keys!6323 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228880 () Bool)

(declare-fun e!148502 () Bool)

(assert (=> b!228880 (= e!148502 (not call!21268))))

(declare-fun b!228881 () Bool)

(declare-fun res!112663 () Bool)

(assert (=> b!228881 (=> (not res!112663) (not e!148502))))

(assert (=> b!228881 (= res!112663 (= (select (arr!5348 (_keys!6323 thiss!1504)) (index!5866 lt!115183)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!228883 () Bool)

(declare-fun res!112670 () Bool)

(assert (=> b!228883 (=> res!112670 e!148506)))

(assert (=> b!228883 (= res!112670 (or (not (= (size!5680 (_values!4252 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10145 thiss!1504)))) (not (= (size!5681 (_keys!6323 thiss!1504)) (size!5680 (_values!4252 thiss!1504)))) (bvslt (mask!10145 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4006 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4006 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!228884 () Bool)

(declare-fun e!148497 () Bool)

(declare-fun e!148509 () Bool)

(declare-fun mapRes!10180 () Bool)

(assert (=> b!228884 (= e!148497 (and e!148509 mapRes!10180))))

(declare-fun condMapEmpty!10180 () Bool)

(declare-fun mapDefault!10180 () ValueCell!2660)

