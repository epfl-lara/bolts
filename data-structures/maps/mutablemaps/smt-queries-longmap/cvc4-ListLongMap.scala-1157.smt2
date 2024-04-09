; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24306 () Bool)

(assert start!24306)

(declare-fun b!254651 () Bool)

(declare-fun b_free!6695 () Bool)

(declare-fun b_next!6695 () Bool)

(assert (=> b!254651 (= b_free!6695 (not b_next!6695))))

(declare-fun tp!23373 () Bool)

(declare-fun b_and!13755 () Bool)

(assert (=> b!254651 (= tp!23373 b_and!13755)))

(declare-fun c!42941 () Bool)

(declare-datatypes ((V!8389 0))(
  ( (V!8390 (val!3323 Int)) )
))
(declare-datatypes ((ValueCell!2935 0))(
  ( (ValueCellFull!2935 (v!5393 V!8389)) (EmptyCell!2935) )
))
(declare-datatypes ((array!12444 0))(
  ( (array!12445 (arr!5897 (Array (_ BitVec 32) ValueCell!2935)) (size!6244 (_ BitVec 32))) )
))
(declare-datatypes ((array!12446 0))(
  ( (array!12447 (arr!5898 (Array (_ BitVec 32) (_ BitVec 64))) (size!6245 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3770 0))(
  ( (LongMapFixedSize!3771 (defaultEntry!4698 Int) (mask!10946 (_ BitVec 32)) (extraKeys!4435 (_ BitVec 32)) (zeroValue!4539 V!8389) (minValue!4539 V!8389) (_size!1934 (_ BitVec 32)) (_keys!6852 array!12446) (_values!4681 array!12444) (_vacant!1934 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3770)

(declare-fun call!24029 () Bool)

(declare-datatypes ((SeekEntryResult!1163 0))(
  ( (MissingZero!1163 (index!6822 (_ BitVec 32))) (Found!1163 (index!6823 (_ BitVec 32))) (Intermediate!1163 (undefined!1975 Bool) (index!6824 (_ BitVec 32)) (x!24887 (_ BitVec 32))) (Undefined!1163) (MissingVacant!1163 (index!6825 (_ BitVec 32))) )
))
(declare-fun lt!127661 () SeekEntryResult!1163)

(declare-fun bm!24025 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24025 (= call!24029 (inRange!0 (ite c!42941 (index!6822 lt!127661) (index!6825 lt!127661)) (mask!10946 thiss!1504)))))

(declare-fun b!254640 () Bool)

(declare-datatypes ((Unit!7898 0))(
  ( (Unit!7899) )
))
(declare-fun e!165071 () Unit!7898)

(declare-fun lt!127651 () Unit!7898)

(assert (=> b!254640 (= e!165071 lt!127651)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!421 (array!12446 array!12444 (_ BitVec 32) (_ BitVec 32) V!8389 V!8389 (_ BitVec 64) Int) Unit!7898)

(assert (=> b!254640 (= lt!127651 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!421 (_keys!6852 thiss!1504) (_values!4681 thiss!1504) (mask!10946 thiss!1504) (extraKeys!4435 thiss!1504) (zeroValue!4539 thiss!1504) (minValue!4539 thiss!1504) key!932 (defaultEntry!4698 thiss!1504)))))

(assert (=> b!254640 (= c!42941 (is-MissingZero!1163 lt!127661))))

(declare-fun e!165076 () Bool)

(assert (=> b!254640 e!165076))

(declare-fun b!254641 () Bool)

(declare-fun Unit!7900 () Unit!7898)

(assert (=> b!254641 (= e!165071 Unit!7900)))

(declare-fun lt!127652 () Unit!7898)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!421 (array!12446 array!12444 (_ BitVec 32) (_ BitVec 32) V!8389 V!8389 (_ BitVec 64) Int) Unit!7898)

(assert (=> b!254641 (= lt!127652 (lemmaInListMapThenSeekEntryOrOpenFindsIt!421 (_keys!6852 thiss!1504) (_values!4681 thiss!1504) (mask!10946 thiss!1504) (extraKeys!4435 thiss!1504) (zeroValue!4539 thiss!1504) (minValue!4539 thiss!1504) key!932 (defaultEntry!4698 thiss!1504)))))

(assert (=> b!254641 false))

(declare-fun bm!24026 () Bool)

(declare-fun call!24028 () Bool)

(declare-fun arrayContainsKey!0 (array!12446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24026 (= call!24028 (arrayContainsKey!0 (_keys!6852 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254642 () Bool)

(declare-fun e!165080 () Unit!7898)

(declare-fun Unit!7901 () Unit!7898)

(assert (=> b!254642 (= e!165080 Unit!7901)))

(declare-fun lt!127659 () Unit!7898)

(declare-fun lemmaArrayContainsKeyThenInListMap!226 (array!12446 array!12444 (_ BitVec 32) (_ BitVec 32) V!8389 V!8389 (_ BitVec 64) (_ BitVec 32) Int) Unit!7898)

(assert (=> b!254642 (= lt!127659 (lemmaArrayContainsKeyThenInListMap!226 (_keys!6852 thiss!1504) (_values!4681 thiss!1504) (mask!10946 thiss!1504) (extraKeys!4435 thiss!1504) (zeroValue!4539 thiss!1504) (minValue!4539 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4698 thiss!1504)))))

(assert (=> b!254642 false))

(declare-fun b!254643 () Bool)

(declare-fun res!124661 () Bool)

(assert (=> b!254643 (= res!124661 (= (select (arr!5898 (_keys!6852 thiss!1504)) (index!6825 lt!127661)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!165074 () Bool)

(assert (=> b!254643 (=> (not res!124661) (not e!165074))))

(declare-fun b!254644 () Bool)

(declare-fun e!165078 () Bool)

(declare-fun tp_is_empty!6557 () Bool)

(assert (=> b!254644 (= e!165078 tp_is_empty!6557)))

(declare-fun b!254645 () Bool)

(declare-fun Unit!7902 () Unit!7898)

(assert (=> b!254645 (= e!165080 Unit!7902)))

(declare-fun b!254646 () Bool)

(declare-fun e!165082 () Bool)

(declare-fun e!165077 () Bool)

(declare-fun mapRes!11151 () Bool)

(assert (=> b!254646 (= e!165082 (and e!165077 mapRes!11151))))

(declare-fun condMapEmpty!11151 () Bool)

(declare-fun mapDefault!11151 () ValueCell!2935)

