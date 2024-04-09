; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22928 () Bool)

(assert start!22928)

(declare-fun b!238899 () Bool)

(declare-fun b_free!6419 () Bool)

(declare-fun b_next!6419 () Bool)

(assert (=> b!238899 (= b_free!6419 (not b_next!6419))))

(declare-fun tp!22460 () Bool)

(declare-fun b_and!13403 () Bool)

(assert (=> b!238899 (= tp!22460 b_and!13403)))

(declare-fun b!238897 () Bool)

(declare-fun res!117097 () Bool)

(declare-fun e!155122 () Bool)

(assert (=> b!238897 (=> (not res!117097) (not e!155122))))

(declare-datatypes ((V!8021 0))(
  ( (V!8022 (val!3185 Int)) )
))
(declare-datatypes ((ValueCell!2797 0))(
  ( (ValueCellFull!2797 (v!5219 V!8021)) (EmptyCell!2797) )
))
(declare-datatypes ((array!11840 0))(
  ( (array!11841 (arr!5621 (Array (_ BitVec 32) ValueCell!2797)) (size!5962 (_ BitVec 32))) )
))
(declare-datatypes ((array!11842 0))(
  ( (array!11843 (arr!5622 (Array (_ BitVec 32) (_ BitVec 64))) (size!5963 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3494 0))(
  ( (LongMapFixedSize!3495 (defaultEntry!4432 Int) (mask!10472 (_ BitVec 32)) (extraKeys!4169 (_ BitVec 32)) (zeroValue!4273 V!8021) (minValue!4273 V!8021) (_size!1796 (_ BitVec 32)) (_keys!6534 array!11842) (_values!4415 array!11840) (_vacant!1796 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3494)

(declare-datatypes ((SeekEntryResult!1035 0))(
  ( (MissingZero!1035 (index!6310 (_ BitVec 32))) (Found!1035 (index!6311 (_ BitVec 32))) (Intermediate!1035 (undefined!1847 Bool) (index!6312 (_ BitVec 32)) (x!24083 (_ BitVec 32))) (Undefined!1035) (MissingVacant!1035 (index!6313 (_ BitVec 32))) )
))
(declare-fun lt!120714 () SeekEntryResult!1035)

(assert (=> b!238897 (= res!117097 (= (select (arr!5622 (_keys!6534 thiss!1504)) (index!6310 lt!120714)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!22212 () Bool)

(declare-fun call!22216 () Bool)

(declare-fun c!39820 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22212 (= call!22216 (inRange!0 (ite c!39820 (index!6310 lt!120714) (index!6313 lt!120714)) (mask!10472 thiss!1504)))))

(declare-fun b!238898 () Bool)

(declare-fun e!155127 () Bool)

(declare-fun call!22215 () Bool)

(assert (=> b!238898 (= e!155127 (not call!22215))))

(declare-fun e!155124 () Bool)

(declare-fun e!155129 () Bool)

(declare-fun tp_is_empty!6281 () Bool)

(declare-fun array_inv!3707 (array!11842) Bool)

(declare-fun array_inv!3708 (array!11840) Bool)

(assert (=> b!238899 (= e!155124 (and tp!22460 tp_is_empty!6281 (array_inv!3707 (_keys!6534 thiss!1504)) (array_inv!3708 (_values!4415 thiss!1504)) e!155129))))

(declare-fun mapIsEmpty!10653 () Bool)

(declare-fun mapRes!10653 () Bool)

(assert (=> mapIsEmpty!10653 mapRes!10653))

(declare-fun b!238900 () Bool)

(declare-datatypes ((Unit!7328 0))(
  ( (Unit!7329) )
))
(declare-fun e!155119 () Unit!7328)

(declare-fun lt!120713 () Unit!7328)

(assert (=> b!238900 (= e!155119 lt!120713)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!334 (array!11842 array!11840 (_ BitVec 32) (_ BitVec 32) V!8021 V!8021 (_ BitVec 64) Int) Unit!7328)

(assert (=> b!238900 (= lt!120713 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!334 (_keys!6534 thiss!1504) (_values!4415 thiss!1504) (mask!10472 thiss!1504) (extraKeys!4169 thiss!1504) (zeroValue!4273 thiss!1504) (minValue!4273 thiss!1504) key!932 (defaultEntry!4432 thiss!1504)))))

(assert (=> b!238900 (= c!39820 (is-MissingZero!1035 lt!120714))))

(declare-fun e!155123 () Bool)

(assert (=> b!238900 e!155123))

(declare-fun b!238901 () Bool)

(declare-fun e!155126 () Bool)

(assert (=> b!238901 (= e!155126 tp_is_empty!6281)))

(declare-fun b!238902 () Bool)

(declare-fun res!117096 () Bool)

(declare-fun e!155121 () Bool)

(assert (=> b!238902 (=> (not res!117096) (not e!155121))))

(declare-fun arrayContainsKey!0 (array!11842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!238902 (= res!117096 (arrayContainsKey!0 (_keys!6534 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!238903 () Bool)

(assert (=> b!238903 (= e!155121 (not (= (size!5962 (_values!4415 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10472 thiss!1504)))))))

(declare-fun bm!22213 () Bool)

(assert (=> bm!22213 (= call!22215 (arrayContainsKey!0 (_keys!6534 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!117093 () Bool)

(declare-fun e!155117 () Bool)

(assert (=> start!22928 (=> (not res!117093) (not e!155117))))

(declare-fun valid!1370 (LongMapFixedSize!3494) Bool)

(assert (=> start!22928 (= res!117093 (valid!1370 thiss!1504))))

(assert (=> start!22928 e!155117))

(assert (=> start!22928 e!155124))

(assert (=> start!22928 true))

(declare-fun b!238896 () Bool)

(declare-fun res!117100 () Bool)

(assert (=> b!238896 (=> (not res!117100) (not e!155121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238896 (= res!117100 (validMask!0 (mask!10472 thiss!1504)))))

(declare-fun b!238904 () Bool)

(assert (=> b!238904 (= e!155122 (not call!22215))))

(declare-fun mapNonEmpty!10653 () Bool)

(declare-fun tp!22461 () Bool)

(assert (=> mapNonEmpty!10653 (= mapRes!10653 (and tp!22461 e!155126))))

(declare-fun mapValue!10653 () ValueCell!2797)

(declare-fun mapRest!10653 () (Array (_ BitVec 32) ValueCell!2797))

(declare-fun mapKey!10653 () (_ BitVec 32))

(assert (=> mapNonEmpty!10653 (= (arr!5621 (_values!4415 thiss!1504)) (store mapRest!10653 mapKey!10653 mapValue!10653))))

(declare-fun b!238905 () Bool)

(declare-fun e!155118 () Bool)

(assert (=> b!238905 (= e!155129 (and e!155118 mapRes!10653))))

(declare-fun condMapEmpty!10653 () Bool)

(declare-fun mapDefault!10653 () ValueCell!2797)

