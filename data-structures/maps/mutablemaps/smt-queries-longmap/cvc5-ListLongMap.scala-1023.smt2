; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21770 () Bool)

(assert start!21770)

(declare-fun b!218887 () Bool)

(declare-fun b_free!5887 () Bool)

(declare-fun b_next!5887 () Bool)

(assert (=> b!218887 (= b_free!5887 (not b_next!5887))))

(declare-fun tp!20799 () Bool)

(declare-fun b_and!12797 () Bool)

(assert (=> b!218887 (= tp!20799 b_and!12797)))

(declare-fun mapIsEmpty!9789 () Bool)

(declare-fun mapRes!9789 () Bool)

(assert (=> mapIsEmpty!9789 mapRes!9789))

(declare-fun b!218879 () Bool)

(declare-fun res!107307 () Bool)

(declare-datatypes ((V!7313 0))(
  ( (V!7314 (val!2919 Int)) )
))
(declare-datatypes ((ValueCell!2531 0))(
  ( (ValueCellFull!2531 (v!4934 V!7313)) (EmptyCell!2531) )
))
(declare-datatypes ((array!10738 0))(
  ( (array!10739 (arr!5089 (Array (_ BitVec 32) ValueCell!2531)) (size!5421 (_ BitVec 32))) )
))
(declare-datatypes ((array!10740 0))(
  ( (array!10741 (arr!5090 (Array (_ BitVec 32) (_ BitVec 64))) (size!5422 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2962 0))(
  ( (LongMapFixedSize!2963 (defaultEntry!4134 Int) (mask!9917 (_ BitVec 32)) (extraKeys!3871 (_ BitVec 32)) (zeroValue!3975 V!7313) (minValue!3975 V!7313) (_size!1530 (_ BitVec 32)) (_keys!6184 array!10740) (_values!4117 array!10738) (_vacant!1530 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2962)

(declare-datatypes ((SeekEntryResult!804 0))(
  ( (MissingZero!804 (index!5386 (_ BitVec 32))) (Found!804 (index!5387 (_ BitVec 32))) (Intermediate!804 (undefined!1616 Bool) (index!5388 (_ BitVec 32)) (x!22886 (_ BitVec 32))) (Undefined!804) (MissingVacant!804 (index!5389 (_ BitVec 32))) )
))
(declare-fun lt!111730 () SeekEntryResult!804)

(assert (=> b!218879 (= res!107307 (= (select (arr!5090 (_keys!6184 thiss!1504)) (index!5389 lt!111730)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!142410 () Bool)

(assert (=> b!218879 (=> (not res!107307) (not e!142410))))

(declare-fun b!218880 () Bool)

(declare-datatypes ((Unit!6523 0))(
  ( (Unit!6524) )
))
(declare-fun e!142409 () Unit!6523)

(declare-fun Unit!6525 () Unit!6523)

(assert (=> b!218880 (= e!142409 Unit!6525)))

(declare-fun lt!111729 () Unit!6523)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!192 (array!10740 array!10738 (_ BitVec 32) (_ BitVec 32) V!7313 V!7313 (_ BitVec 64) Int) Unit!6523)

(assert (=> b!218880 (= lt!111729 (lemmaInListMapThenSeekEntryOrOpenFindsIt!192 (_keys!6184 thiss!1504) (_values!4117 thiss!1504) (mask!9917 thiss!1504) (extraKeys!3871 thiss!1504) (zeroValue!3975 thiss!1504) (minValue!3975 thiss!1504) key!932 (defaultEntry!4134 thiss!1504)))))

(assert (=> b!218880 false))

(declare-fun mapNonEmpty!9789 () Bool)

(declare-fun tp!20798 () Bool)

(declare-fun e!142399 () Bool)

(assert (=> mapNonEmpty!9789 (= mapRes!9789 (and tp!20798 e!142399))))

(declare-fun mapValue!9789 () ValueCell!2531)

(declare-fun mapKey!9789 () (_ BitVec 32))

(declare-fun mapRest!9789 () (Array (_ BitVec 32) ValueCell!2531))

(assert (=> mapNonEmpty!9789 (= (arr!5089 (_values!4117 thiss!1504)) (store mapRest!9789 mapKey!9789 mapValue!9789))))

(declare-fun b!218881 () Bool)

(declare-fun res!107312 () Bool)

(declare-fun e!142404 () Bool)

(assert (=> b!218881 (=> (not res!107312) (not e!142404))))

(declare-fun call!20448 () Bool)

(assert (=> b!218881 (= res!107312 call!20448)))

(declare-fun e!142405 () Bool)

(assert (=> b!218881 (= e!142405 e!142404)))

(declare-fun b!218882 () Bool)

(declare-fun res!107310 () Bool)

(assert (=> b!218882 (=> (not res!107310) (not e!142404))))

(assert (=> b!218882 (= res!107310 (= (select (arr!5090 (_keys!6184 thiss!1504)) (index!5386 lt!111730)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!218883 () Bool)

(declare-fun tp_is_empty!5749 () Bool)

(assert (=> b!218883 (= e!142399 tp_is_empty!5749)))

(declare-fun b!218885 () Bool)

(declare-fun e!142408 () Bool)

(assert (=> b!218885 (= e!142408 tp_is_empty!5749)))

(declare-fun b!218886 () Bool)

(declare-fun e!142406 () Bool)

(assert (=> b!218886 (= e!142406 (and e!142408 mapRes!9789))))

(declare-fun condMapEmpty!9789 () Bool)

(declare-fun mapDefault!9789 () ValueCell!2531)

