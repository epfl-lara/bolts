; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24196 () Bool)

(assert start!24196)

(declare-fun b!252922 () Bool)

(declare-fun b_free!6659 () Bool)

(declare-fun b_next!6659 () Bool)

(assert (=> b!252922 (= b_free!6659 (not b_next!6659))))

(declare-fun tp!23259 () Bool)

(declare-fun b_and!13715 () Bool)

(assert (=> b!252922 (= tp!23259 b_and!13715)))

(declare-fun b!252919 () Bool)

(declare-fun e!164009 () Bool)

(declare-fun e!164007 () Bool)

(assert (=> b!252919 (= e!164009 e!164007)))

(declare-fun res!123814 () Bool)

(declare-fun call!23842 () Bool)

(assert (=> b!252919 (= res!123814 call!23842)))

(assert (=> b!252919 (=> (not res!123814) (not e!164007))))

(declare-fun b!252920 () Bool)

(declare-datatypes ((Unit!7832 0))(
  ( (Unit!7833) )
))
(declare-fun e!164012 () Unit!7832)

(declare-fun Unit!7834 () Unit!7832)

(assert (=> b!252920 (= e!164012 Unit!7834)))

(declare-fun lt!126820 () Unit!7832)

(declare-datatypes ((V!8341 0))(
  ( (V!8342 (val!3305 Int)) )
))
(declare-datatypes ((ValueCell!2917 0))(
  ( (ValueCellFull!2917 (v!5373 V!8341)) (EmptyCell!2917) )
))
(declare-datatypes ((array!12368 0))(
  ( (array!12369 (arr!5861 (Array (_ BitVec 32) ValueCell!2917)) (size!6208 (_ BitVec 32))) )
))
(declare-datatypes ((array!12370 0))(
  ( (array!12371 (arr!5862 (Array (_ BitVec 32) (_ BitVec 64))) (size!6209 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3734 0))(
  ( (LongMapFixedSize!3735 (defaultEntry!4672 Int) (mask!10898 (_ BitVec 32)) (extraKeys!4409 (_ BitVec 32)) (zeroValue!4513 V!8341) (minValue!4513 V!8341) (_size!1916 (_ BitVec 32)) (_keys!6822 array!12370) (_values!4655 array!12368) (_vacant!1916 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3734)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!214 (array!12370 array!12368 (_ BitVec 32) (_ BitVec 32) V!8341 V!8341 (_ BitVec 64) (_ BitVec 32) Int) Unit!7832)

(assert (=> b!252920 (= lt!126820 (lemmaArrayContainsKeyThenInListMap!214 (_keys!6822 thiss!1504) (_values!4655 thiss!1504) (mask!10898 thiss!1504) (extraKeys!4409 thiss!1504) (zeroValue!4513 thiss!1504) (minValue!4513 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4672 thiss!1504)))))

(assert (=> b!252920 false))

(declare-fun b!252921 () Bool)

(declare-fun call!23843 () Bool)

(assert (=> b!252921 (= e!164007 (not call!23843))))

(declare-fun e!164011 () Bool)

(declare-fun tp_is_empty!6521 () Bool)

(declare-fun e!164006 () Bool)

(declare-fun array_inv!3867 (array!12370) Bool)

(declare-fun array_inv!3868 (array!12368) Bool)

(assert (=> b!252922 (= e!164011 (and tp!23259 tp_is_empty!6521 (array_inv!3867 (_keys!6822 thiss!1504)) (array_inv!3868 (_values!4655 thiss!1504)) e!164006))))

(declare-fun res!123818 () Bool)

(declare-fun e!164018 () Bool)

(assert (=> start!24196 (=> (not res!123818) (not e!164018))))

(declare-fun valid!1454 (LongMapFixedSize!3734) Bool)

(assert (=> start!24196 (= res!123818 (valid!1454 thiss!1504))))

(assert (=> start!24196 e!164018))

(assert (=> start!24196 e!164011))

(assert (=> start!24196 true))

(declare-fun b!252923 () Bool)

(declare-fun Unit!7835 () Unit!7832)

(assert (=> b!252923 (= e!164012 Unit!7835)))

(declare-fun b!252924 () Bool)

(declare-fun e!164008 () Unit!7832)

(declare-fun lt!126821 () Unit!7832)

(assert (=> b!252924 (= e!164008 lt!126821)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!411 (array!12370 array!12368 (_ BitVec 32) (_ BitVec 32) V!8341 V!8341 (_ BitVec 64) Int) Unit!7832)

(assert (=> b!252924 (= lt!126821 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!411 (_keys!6822 thiss!1504) (_values!4655 thiss!1504) (mask!10898 thiss!1504) (extraKeys!4409 thiss!1504) (zeroValue!4513 thiss!1504) (minValue!4513 thiss!1504) key!932 (defaultEntry!4672 thiss!1504)))))

(declare-fun c!42621 () Bool)

(declare-datatypes ((SeekEntryResult!1147 0))(
  ( (MissingZero!1147 (index!6758 (_ BitVec 32))) (Found!1147 (index!6759 (_ BitVec 32))) (Intermediate!1147 (undefined!1959 Bool) (index!6760 (_ BitVec 32)) (x!24803 (_ BitVec 32))) (Undefined!1147) (MissingVacant!1147 (index!6761 (_ BitVec 32))) )
))
(declare-fun lt!126814 () SeekEntryResult!1147)

(assert (=> b!252924 (= c!42621 (is-MissingZero!1147 lt!126814))))

(declare-fun e!164014 () Bool)

(assert (=> b!252924 e!164014))

(declare-fun b!252925 () Bool)

(declare-fun e!164016 () Bool)

(declare-fun mapRes!11091 () Bool)

(assert (=> b!252925 (= e!164006 (and e!164016 mapRes!11091))))

(declare-fun condMapEmpty!11091 () Bool)

(declare-fun mapDefault!11091 () ValueCell!2917)

