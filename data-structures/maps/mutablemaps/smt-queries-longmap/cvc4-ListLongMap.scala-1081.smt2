; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22184 () Bool)

(assert start!22184)

(declare-fun b!231796 () Bool)

(declare-fun b_free!6239 () Bool)

(declare-fun b_next!6239 () Bool)

(assert (=> b!231796 (= b_free!6239 (not b_next!6239))))

(declare-fun tp!21859 () Bool)

(declare-fun b_and!13155 () Bool)

(assert (=> b!231796 (= tp!21859 b_and!13155)))

(declare-fun tp_is_empty!6101 () Bool)

(declare-datatypes ((V!7781 0))(
  ( (V!7782 (val!3095 Int)) )
))
(declare-datatypes ((ValueCell!2707 0))(
  ( (ValueCellFull!2707 (v!5111 V!7781)) (EmptyCell!2707) )
))
(declare-datatypes ((array!11444 0))(
  ( (array!11445 (arr!5441 (Array (_ BitVec 32) ValueCell!2707)) (size!5774 (_ BitVec 32))) )
))
(declare-datatypes ((array!11446 0))(
  ( (array!11447 (arr!5442 (Array (_ BitVec 32) (_ BitVec 64))) (size!5775 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3314 0))(
  ( (LongMapFixedSize!3315 (defaultEntry!4316 Int) (mask!10222 (_ BitVec 32)) (extraKeys!4053 (_ BitVec 32)) (zeroValue!4157 V!7781) (minValue!4157 V!7781) (_size!1706 (_ BitVec 32)) (_keys!6370 array!11446) (_values!4299 array!11444) (_vacant!1706 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3314)

(declare-fun e!150517 () Bool)

(declare-fun e!150509 () Bool)

(declare-fun array_inv!3577 (array!11446) Bool)

(declare-fun array_inv!3578 (array!11444) Bool)

(assert (=> b!231796 (= e!150517 (and tp!21859 tp_is_empty!6101 (array_inv!3577 (_keys!6370 thiss!1504)) (array_inv!3578 (_values!4299 thiss!1504)) e!150509))))

(declare-fun b!231797 () Bool)

(declare-datatypes ((Unit!7140 0))(
  ( (Unit!7141) )
))
(declare-fun e!150510 () Unit!7140)

(declare-fun Unit!7142 () Unit!7140)

(assert (=> b!231797 (= e!150510 Unit!7142)))

(declare-fun lt!116978 () Unit!7140)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!140 (array!11446 array!11444 (_ BitVec 32) (_ BitVec 32) V!7781 V!7781 (_ BitVec 64) (_ BitVec 32) Int) Unit!7140)

(assert (=> b!231797 (= lt!116978 (lemmaArrayContainsKeyThenInListMap!140 (_keys!6370 thiss!1504) (_values!4299 thiss!1504) (mask!10222 thiss!1504) (extraKeys!4053 thiss!1504) (zeroValue!4157 thiss!1504) (minValue!4157 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4316 thiss!1504)))))

(assert (=> b!231797 false))

(declare-fun b!231798 () Bool)

(declare-fun e!150515 () Unit!7140)

(declare-fun Unit!7143 () Unit!7140)

(assert (=> b!231798 (= e!150515 Unit!7143)))

(declare-fun lt!116969 () Unit!7140)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!305 (array!11446 array!11444 (_ BitVec 32) (_ BitVec 32) V!7781 V!7781 (_ BitVec 64) Int) Unit!7140)

(assert (=> b!231798 (= lt!116969 (lemmaInListMapThenSeekEntryOrOpenFindsIt!305 (_keys!6370 thiss!1504) (_values!4299 thiss!1504) (mask!10222 thiss!1504) (extraKeys!4053 thiss!1504) (zeroValue!4157 thiss!1504) (minValue!4157 thiss!1504) key!932 (defaultEntry!4316 thiss!1504)))))

(assert (=> b!231798 false))

(declare-fun b!231799 () Bool)

(declare-fun e!150506 () Bool)

(declare-fun call!21550 () Bool)

(assert (=> b!231799 (= e!150506 (not call!21550))))

(declare-fun res!113892 () Bool)

(declare-fun e!150504 () Bool)

(assert (=> start!22184 (=> (not res!113892) (not e!150504))))

(declare-fun valid!1306 (LongMapFixedSize!3314) Bool)

(assert (=> start!22184 (= res!113892 (valid!1306 thiss!1504))))

(assert (=> start!22184 e!150504))

(assert (=> start!22184 e!150517))

(assert (=> start!22184 true))

(assert (=> start!22184 tp_is_empty!6101))

(declare-fun b!231800 () Bool)

(declare-fun e!150507 () Bool)

(assert (=> b!231800 (= e!150507 e!150506)))

(declare-fun res!113899 () Bool)

(declare-fun call!21549 () Bool)

(assert (=> b!231800 (= res!113899 call!21549)))

(assert (=> b!231800 (=> (not res!113899) (not e!150506))))

(declare-fun mapNonEmpty!10321 () Bool)

(declare-fun mapRes!10321 () Bool)

(declare-fun tp!21858 () Bool)

(declare-fun e!150508 () Bool)

(assert (=> mapNonEmpty!10321 (= mapRes!10321 (and tp!21858 e!150508))))

(declare-fun mapRest!10321 () (Array (_ BitVec 32) ValueCell!2707))

(declare-fun mapKey!10321 () (_ BitVec 32))

(declare-fun mapValue!10321 () ValueCell!2707)

(assert (=> mapNonEmpty!10321 (= (arr!5441 (_values!4299 thiss!1504)) (store mapRest!10321 mapKey!10321 mapValue!10321))))

(declare-fun bm!21546 () Bool)

(declare-fun arrayContainsKey!0 (array!11446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21546 (= call!21550 (arrayContainsKey!0 (_keys!6370 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231801 () Bool)

(declare-fun e!150511 () Bool)

(assert (=> b!231801 (= e!150509 (and e!150511 mapRes!10321))))

(declare-fun condMapEmpty!10321 () Bool)

(declare-fun mapDefault!10321 () ValueCell!2707)

