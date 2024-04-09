; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23630 () Bool)

(assert start!23630)

(declare-fun b!248206 () Bool)

(declare-fun b_free!6601 () Bool)

(declare-fun b_next!6601 () Bool)

(assert (=> b!248206 (= b_free!6601 (not b_next!6601))))

(declare-fun tp!23054 () Bool)

(declare-fun b_and!13623 () Bool)

(assert (=> b!248206 (= tp!23054 b_and!13623)))

(declare-fun b!248185 () Bool)

(declare-fun c!41565 () Bool)

(declare-datatypes ((SeekEntryResult!1119 0))(
  ( (MissingZero!1119 (index!6646 (_ BitVec 32))) (Found!1119 (index!6647 (_ BitVec 32))) (Intermediate!1119 (undefined!1931 Bool) (index!6648 (_ BitVec 32)) (x!24581 (_ BitVec 32))) (Undefined!1119) (MissingVacant!1119 (index!6649 (_ BitVec 32))) )
))
(declare-fun lt!124325 () SeekEntryResult!1119)

(assert (=> b!248185 (= c!41565 (is-MissingVacant!1119 lt!124325))))

(declare-fun e!161009 () Bool)

(declare-fun e!161010 () Bool)

(assert (=> b!248185 (= e!161009 e!161010)))

(declare-fun b!248186 () Bool)

(declare-datatypes ((Unit!7680 0))(
  ( (Unit!7681) )
))
(declare-fun e!160998 () Unit!7680)

(declare-fun Unit!7682 () Unit!7680)

(assert (=> b!248186 (= e!160998 Unit!7682)))

(declare-fun lt!124328 () Unit!7680)

(declare-datatypes ((V!8265 0))(
  ( (V!8266 (val!3276 Int)) )
))
(declare-datatypes ((ValueCell!2888 0))(
  ( (ValueCellFull!2888 (v!5331 V!8265)) (EmptyCell!2888) )
))
(declare-datatypes ((array!12234 0))(
  ( (array!12235 (arr!5803 (Array (_ BitVec 32) ValueCell!2888)) (size!6146 (_ BitVec 32))) )
))
(declare-datatypes ((array!12236 0))(
  ( (array!12237 (arr!5804 (Array (_ BitVec 32) (_ BitVec 64))) (size!6147 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3676 0))(
  ( (LongMapFixedSize!3677 (defaultEntry!4591 Int) (mask!10739 (_ BitVec 32)) (extraKeys!4328 (_ BitVec 32)) (zeroValue!4432 V!8265) (minValue!4432 V!8265) (_size!1887 (_ BitVec 32)) (_keys!6715 array!12236) (_values!4574 array!12234) (_vacant!1887 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3676)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!191 (array!12236 array!12234 (_ BitVec 32) (_ BitVec 32) V!8265 V!8265 (_ BitVec 64) (_ BitVec 32) Int) Unit!7680)

(assert (=> b!248186 (= lt!124328 (lemmaArrayContainsKeyThenInListMap!191 (_keys!6715 thiss!1504) (_values!4574 thiss!1504) (mask!10739 thiss!1504) (extraKeys!4328 thiss!1504) (zeroValue!4432 thiss!1504) (minValue!4432 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4591 thiss!1504)))))

(assert (=> b!248186 false))

(declare-fun b!248187 () Bool)

(declare-fun res!121647 () Bool)

(declare-fun e!161007 () Bool)

(assert (=> b!248187 (=> res!121647 e!161007)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!248187 (= res!121647 (or (not (= (size!6147 (_keys!6715 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10739 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6147 (_keys!6715 thiss!1504)))))))

(declare-fun b!248188 () Bool)

(declare-fun e!161000 () Bool)

(declare-fun e!160997 () Bool)

(assert (=> b!248188 (= e!161000 e!160997)))

(declare-fun res!121657 () Bool)

(assert (=> b!248188 (=> (not res!121657) (not e!160997))))

(assert (=> b!248188 (= res!121657 (or (= lt!124325 (MissingZero!1119 index!297)) (= lt!124325 (MissingVacant!1119 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12236 (_ BitVec 32)) SeekEntryResult!1119)

(assert (=> b!248188 (= lt!124325 (seekEntryOrOpen!0 key!932 (_keys!6715 thiss!1504) (mask!10739 thiss!1504)))))

(declare-fun c!41562 () Bool)

(declare-fun bm!23256 () Bool)

(declare-fun call!23260 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23256 (= call!23260 (inRange!0 (ite c!41562 (index!6646 lt!124325) (index!6649 lt!124325)) (mask!10739 thiss!1504)))))

(declare-fun b!248190 () Bool)

(declare-fun e!161008 () Bool)

(declare-fun tp_is_empty!6463 () Bool)

(assert (=> b!248190 (= e!161008 tp_is_empty!6463)))

(declare-fun b!248191 () Bool)

(declare-fun e!161003 () Unit!7680)

(declare-fun lt!124333 () Unit!7680)

(assert (=> b!248191 (= e!161003 lt!124333)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!389 (array!12236 array!12234 (_ BitVec 32) (_ BitVec 32) V!8265 V!8265 (_ BitVec 64) Int) Unit!7680)

(assert (=> b!248191 (= lt!124333 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!389 (_keys!6715 thiss!1504) (_values!4574 thiss!1504) (mask!10739 thiss!1504) (extraKeys!4328 thiss!1504) (zeroValue!4432 thiss!1504) (minValue!4432 thiss!1504) key!932 (defaultEntry!4591 thiss!1504)))))

(assert (=> b!248191 (= c!41562 (is-MissingZero!1119 lt!124325))))

(assert (=> b!248191 e!161009))

(declare-fun b!248192 () Bool)

(declare-fun e!161005 () Bool)

(declare-fun e!161001 () Bool)

(declare-fun mapRes!10973 () Bool)

(assert (=> b!248192 (= e!161005 (and e!161001 mapRes!10973))))

(declare-fun condMapEmpty!10973 () Bool)

(declare-fun mapDefault!10973 () ValueCell!2888)

