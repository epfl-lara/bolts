; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23932 () Bool)

(assert start!23932)

(declare-fun b!250671 () Bool)

(declare-fun b_free!6631 () Bool)

(declare-fun b_next!6631 () Bool)

(assert (=> b!250671 (= b_free!6631 (not b_next!6631))))

(declare-fun tp!23161 () Bool)

(declare-fun b_and!13671 () Bool)

(assert (=> b!250671 (= tp!23161 b_and!13671)))

(declare-fun b!250665 () Bool)

(declare-datatypes ((Unit!7754 0))(
  ( (Unit!7755) )
))
(declare-fun e!162582 () Unit!7754)

(declare-fun lt!125642 () Unit!7754)

(assert (=> b!250665 (= e!162582 lt!125642)))

(declare-datatypes ((V!8305 0))(
  ( (V!8306 (val!3291 Int)) )
))
(declare-datatypes ((ValueCell!2903 0))(
  ( (ValueCellFull!2903 (v!5353 V!8305)) (EmptyCell!2903) )
))
(declare-datatypes ((array!12304 0))(
  ( (array!12305 (arr!5833 (Array (_ BitVec 32) ValueCell!2903)) (size!6178 (_ BitVec 32))) )
))
(declare-datatypes ((array!12306 0))(
  ( (array!12307 (arr!5834 (Array (_ BitVec 32) (_ BitVec 64))) (size!6179 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3706 0))(
  ( (LongMapFixedSize!3707 (defaultEntry!4634 Int) (mask!10824 (_ BitVec 32)) (extraKeys!4371 (_ BitVec 32)) (zeroValue!4475 V!8305) (minValue!4475 V!8305) (_size!1902 (_ BitVec 32)) (_keys!6772 array!12306) (_values!4617 array!12304) (_vacant!1902 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3706)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!399 (array!12306 array!12304 (_ BitVec 32) (_ BitVec 32) V!8305 V!8305 (_ BitVec 64) Int) Unit!7754)

(assert (=> b!250665 (= lt!125642 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!399 (_keys!6772 thiss!1504) (_values!4617 thiss!1504) (mask!10824 thiss!1504) (extraKeys!4371 thiss!1504) (zeroValue!4475 thiss!1504) (minValue!4475 thiss!1504) key!932 (defaultEntry!4634 thiss!1504)))))

(declare-fun c!42124 () Bool)

(declare-datatypes ((SeekEntryResult!1133 0))(
  ( (MissingZero!1133 (index!6702 (_ BitVec 32))) (Found!1133 (index!6703 (_ BitVec 32))) (Intermediate!1133 (undefined!1945 Bool) (index!6704 (_ BitVec 32)) (x!24701 (_ BitVec 32))) (Undefined!1133) (MissingVacant!1133 (index!6705 (_ BitVec 32))) )
))
(declare-fun lt!125646 () SeekEntryResult!1133)

(assert (=> b!250665 (= c!42124 (is-MissingZero!1133 lt!125646))))

(declare-fun e!162583 () Bool)

(assert (=> b!250665 e!162583))

(declare-fun b!250666 () Bool)

(declare-fun e!162579 () Bool)

(declare-fun e!162580 () Bool)

(assert (=> b!250666 (= e!162579 e!162580)))

(declare-fun res!122776 () Bool)

(assert (=> b!250666 (=> (not res!122776) (not e!162580))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!250666 (= res!122776 (or (= lt!125646 (MissingZero!1133 index!297)) (= lt!125646 (MissingVacant!1133 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12306 (_ BitVec 32)) SeekEntryResult!1133)

(assert (=> b!250666 (= lt!125646 (seekEntryOrOpen!0 key!932 (_keys!6772 thiss!1504) (mask!10824 thiss!1504)))))

(declare-fun b!250667 () Bool)

(declare-fun e!162590 () Bool)

(declare-fun call!23571 () Bool)

(assert (=> b!250667 (= e!162590 (not call!23571))))

(declare-fun b!250668 () Bool)

(declare-fun e!162587 () Bool)

(declare-fun e!162585 () Bool)

(assert (=> b!250668 (= e!162587 e!162585)))

(declare-fun res!122778 () Bool)

(declare-fun call!23572 () Bool)

(assert (=> b!250668 (= res!122778 call!23572)))

(assert (=> b!250668 (=> (not res!122778) (not e!162585))))

(declare-fun b!250669 () Bool)

(declare-fun e!162589 () Bool)

(assert (=> b!250669 (= e!162580 e!162589)))

(declare-fun res!122777 () Bool)

(assert (=> b!250669 (=> (not res!122777) (not e!162589))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!250669 (= res!122777 (inRange!0 index!297 (mask!10824 thiss!1504)))))

(declare-fun lt!125645 () Unit!7754)

(assert (=> b!250669 (= lt!125645 e!162582)))

(declare-fun c!42123 () Bool)

(declare-datatypes ((tuple2!4840 0))(
  ( (tuple2!4841 (_1!2430 (_ BitVec 64)) (_2!2430 V!8305)) )
))
(declare-datatypes ((List!3745 0))(
  ( (Nil!3742) (Cons!3741 (h!4401 tuple2!4840) (t!8788 List!3745)) )
))
(declare-datatypes ((ListLongMap!3767 0))(
  ( (ListLongMap!3768 (toList!1899 List!3745)) )
))
(declare-fun contains!1815 (ListLongMap!3767 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1422 (array!12306 array!12304 (_ BitVec 32) (_ BitVec 32) V!8305 V!8305 (_ BitVec 32) Int) ListLongMap!3767)

(assert (=> b!250669 (= c!42123 (contains!1815 (getCurrentListMap!1422 (_keys!6772 thiss!1504) (_values!4617 thiss!1504) (mask!10824 thiss!1504) (extraKeys!4371 thiss!1504) (zeroValue!4475 thiss!1504) (minValue!4475 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4634 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!11035 () Bool)

(declare-fun mapRes!11035 () Bool)

(assert (=> mapIsEmpty!11035 mapRes!11035))

(declare-fun b!250670 () Bool)

(declare-fun e!162588 () Unit!7754)

(declare-fun Unit!7756 () Unit!7754)

(assert (=> b!250670 (= e!162588 Unit!7756)))

(declare-fun lt!125650 () Unit!7754)

(declare-fun lemmaArrayContainsKeyThenInListMap!201 (array!12306 array!12304 (_ BitVec 32) (_ BitVec 32) V!8305 V!8305 (_ BitVec 64) (_ BitVec 32) Int) Unit!7754)

(assert (=> b!250670 (= lt!125650 (lemmaArrayContainsKeyThenInListMap!201 (_keys!6772 thiss!1504) (_values!4617 thiss!1504) (mask!10824 thiss!1504) (extraKeys!4371 thiss!1504) (zeroValue!4475 thiss!1504) (minValue!4475 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4634 thiss!1504)))))

(assert (=> b!250670 false))

(declare-fun e!162586 () Bool)

(declare-fun e!162577 () Bool)

(declare-fun tp_is_empty!6493 () Bool)

(declare-fun array_inv!3841 (array!12306) Bool)

(declare-fun array_inv!3842 (array!12304) Bool)

(assert (=> b!250671 (= e!162586 (and tp!23161 tp_is_empty!6493 (array_inv!3841 (_keys!6772 thiss!1504)) (array_inv!3842 (_values!4617 thiss!1504)) e!162577))))

(declare-fun mapNonEmpty!11035 () Bool)

(declare-fun tp!23160 () Bool)

(declare-fun e!162581 () Bool)

(assert (=> mapNonEmpty!11035 (= mapRes!11035 (and tp!23160 e!162581))))

(declare-fun mapValue!11035 () ValueCell!2903)

(declare-fun mapRest!11035 () (Array (_ BitVec 32) ValueCell!2903))

(declare-fun mapKey!11035 () (_ BitVec 32))

(assert (=> mapNonEmpty!11035 (= (arr!5833 (_values!4617 thiss!1504)) (store mapRest!11035 mapKey!11035 mapValue!11035))))

(declare-fun b!250672 () Bool)

(assert (=> b!250672 (= e!162587 (is-Undefined!1133 lt!125646))))

(declare-fun b!250673 () Bool)

(assert (=> b!250673 (= e!162581 tp_is_empty!6493)))

(declare-fun b!250674 () Bool)

(declare-fun e!162591 () Bool)

(assert (=> b!250674 (= e!162591 tp_is_empty!6493)))

(declare-fun b!250675 () Bool)

(assert (=> b!250675 (= e!162577 (and e!162591 mapRes!11035))))

(declare-fun condMapEmpty!11035 () Bool)

(declare-fun mapDefault!11035 () ValueCell!2903)

