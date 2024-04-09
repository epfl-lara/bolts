; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23464 () Bool)

(assert start!23464)

(declare-fun b!246361 () Bool)

(declare-fun b_free!6569 () Bool)

(declare-fun b_next!6569 () Bool)

(assert (=> b!246361 (= b_free!6569 (not b_next!6569))))

(declare-fun tp!22945 () Bool)

(declare-fun b_and!13583 () Bool)

(assert (=> b!246361 (= tp!22945 b_and!13583)))

(declare-fun b!246348 () Bool)

(declare-fun e!159835 () Bool)

(declare-datatypes ((SeekEntryResult!1105 0))(
  ( (MissingZero!1105 (index!6590 (_ BitVec 32))) (Found!1105 (index!6591 (_ BitVec 32))) (Intermediate!1105 (undefined!1917 Bool) (index!6592 (_ BitVec 32)) (x!24479 (_ BitVec 32))) (Undefined!1105) (MissingVacant!1105 (index!6593 (_ BitVec 32))) )
))
(declare-fun lt!123417 () SeekEntryResult!1105)

(assert (=> b!246348 (= e!159835 (is-Undefined!1105 lt!123417))))

(declare-fun b!246349 () Bool)

(declare-fun e!159834 () Bool)

(declare-fun tp_is_empty!6431 () Bool)

(assert (=> b!246349 (= e!159834 tp_is_empty!6431)))

(declare-fun b!246351 () Bool)

(declare-fun e!159839 () Bool)

(declare-datatypes ((V!8221 0))(
  ( (V!8222 (val!3260 Int)) )
))
(declare-datatypes ((ValueCell!2872 0))(
  ( (ValueCellFull!2872 (v!5311 V!8221)) (EmptyCell!2872) )
))
(declare-datatypes ((array!12162 0))(
  ( (array!12163 (arr!5771 (Array (_ BitVec 32) ValueCell!2872)) (size!6114 (_ BitVec 32))) )
))
(declare-datatypes ((array!12164 0))(
  ( (array!12165 (arr!5772 (Array (_ BitVec 32) (_ BitVec 64))) (size!6115 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3644 0))(
  ( (LongMapFixedSize!3645 (defaultEntry!4559 Int) (mask!10682 (_ BitVec 32)) (extraKeys!4296 (_ BitVec 32)) (zeroValue!4400 V!8221) (minValue!4400 V!8221) (_size!1871 (_ BitVec 32)) (_keys!6678 array!12164) (_values!4542 array!12162) (_vacant!1871 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3644)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!246351 (= e!159839 (or (not (= (size!6115 (_keys!6678 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10682 thiss!1504)))) (bvsge index!297 #b00000000000000000000000000000000)))))

(declare-fun b!246352 () Bool)

(declare-datatypes ((Unit!7608 0))(
  ( (Unit!7609) )
))
(declare-fun e!159837 () Unit!7608)

(declare-fun Unit!7610 () Unit!7608)

(assert (=> b!246352 (= e!159837 Unit!7610)))

(declare-fun lt!123422 () Unit!7608)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!179 (array!12164 array!12162 (_ BitVec 32) (_ BitVec 32) V!8221 V!8221 (_ BitVec 64) (_ BitVec 32) Int) Unit!7608)

(assert (=> b!246352 (= lt!123422 (lemmaArrayContainsKeyThenInListMap!179 (_keys!6678 thiss!1504) (_values!4542 thiss!1504) (mask!10682 thiss!1504) (extraKeys!4296 thiss!1504) (zeroValue!4400 thiss!1504) (minValue!4400 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4559 thiss!1504)))))

(assert (=> b!246352 false))

(declare-fun b!246353 () Bool)

(declare-fun e!159836 () Bool)

(declare-fun mapRes!10913 () Bool)

(assert (=> b!246353 (= e!159836 (and e!159834 mapRes!10913))))

(declare-fun condMapEmpty!10913 () Bool)

(declare-fun mapDefault!10913 () ValueCell!2872)

