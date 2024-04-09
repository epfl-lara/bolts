; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21892 () Bool)

(assert start!21892)

(declare-fun b!221214 () Bool)

(declare-fun b_free!5947 () Bool)

(declare-fun b_next!5947 () Bool)

(assert (=> b!221214 (= b_free!5947 (not b_next!5947))))

(declare-fun tp!20982 () Bool)

(declare-fun b_and!12863 () Bool)

(assert (=> b!221214 (= tp!20982 b_and!12863)))

(declare-fun mapIsEmpty!9883 () Bool)

(declare-fun mapRes!9883 () Bool)

(assert (=> mapIsEmpty!9883 mapRes!9883))

(declare-fun b!221204 () Bool)

(declare-fun res!108530 () Bool)

(declare-fun e!143794 () Bool)

(assert (=> b!221204 (=> (not res!108530) (not e!143794))))

(declare-datatypes ((V!7393 0))(
  ( (V!7394 (val!2949 Int)) )
))
(declare-datatypes ((ValueCell!2561 0))(
  ( (ValueCellFull!2561 (v!4965 V!7393)) (EmptyCell!2561) )
))
(declare-datatypes ((array!10860 0))(
  ( (array!10861 (arr!5149 (Array (_ BitVec 32) ValueCell!2561)) (size!5482 (_ BitVec 32))) )
))
(declare-datatypes ((array!10862 0))(
  ( (array!10863 (arr!5150 (Array (_ BitVec 32) (_ BitVec 64))) (size!5483 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3022 0))(
  ( (LongMapFixedSize!3023 (defaultEntry!4170 Int) (mask!9980 (_ BitVec 32)) (extraKeys!3907 (_ BitVec 32)) (zeroValue!4011 V!7393) (minValue!4011 V!7393) (_size!1560 (_ BitVec 32)) (_keys!6224 array!10862) (_values!4153 array!10860) (_vacant!1560 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3022)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10862 (_ BitVec 32)) Bool)

(assert (=> b!221204 (= res!108530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6224 thiss!1504) (mask!9980 thiss!1504)))))

(declare-fun b!221205 () Bool)

(declare-datatypes ((Unit!6605 0))(
  ( (Unit!6606) )
))
(declare-fun e!143791 () Unit!6605)

(declare-fun Unit!6607 () Unit!6605)

(assert (=> b!221205 (= e!143791 Unit!6607)))

(declare-fun lt!112386 () Unit!6605)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!214 (array!10862 array!10860 (_ BitVec 32) (_ BitVec 32) V!7393 V!7393 (_ BitVec 64) Int) Unit!6605)

(assert (=> b!221205 (= lt!112386 (lemmaInListMapThenSeekEntryOrOpenFindsIt!214 (_keys!6224 thiss!1504) (_values!4153 thiss!1504) (mask!9980 thiss!1504) (extraKeys!3907 thiss!1504) (zeroValue!4011 thiss!1504) (minValue!4011 thiss!1504) key!932 (defaultEntry!4170 thiss!1504)))))

(assert (=> b!221205 false))

(declare-fun b!221206 () Bool)

(declare-fun e!143792 () Bool)

(assert (=> b!221206 (= e!143792 e!143794)))

(declare-fun res!108527 () Bool)

(assert (=> b!221206 (=> (not res!108527) (not e!143794))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!221206 (= res!108527 (inRange!0 index!297 (mask!9980 thiss!1504)))))

(declare-fun lt!112387 () Unit!6605)

(assert (=> b!221206 (= lt!112387 e!143791)))

(declare-fun c!36774 () Bool)

(declare-datatypes ((tuple2!4370 0))(
  ( (tuple2!4371 (_1!2195 (_ BitVec 64)) (_2!2195 V!7393)) )
))
(declare-datatypes ((List!3297 0))(
  ( (Nil!3294) (Cons!3293 (h!3941 tuple2!4370) (t!8264 List!3297)) )
))
(declare-datatypes ((ListLongMap!3297 0))(
  ( (ListLongMap!3298 (toList!1664 List!3297)) )
))
(declare-fun contains!1501 (ListLongMap!3297 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1187 (array!10862 array!10860 (_ BitVec 32) (_ BitVec 32) V!7393 V!7393 (_ BitVec 32) Int) ListLongMap!3297)

(assert (=> b!221206 (= c!36774 (contains!1501 (getCurrentListMap!1187 (_keys!6224 thiss!1504) (_values!4153 thiss!1504) (mask!9980 thiss!1504) (extraKeys!3907 thiss!1504) (zeroValue!4011 thiss!1504) (minValue!4011 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4170 thiss!1504)) key!932))))

(declare-fun mapNonEmpty!9883 () Bool)

(declare-fun tp!20983 () Bool)

(declare-fun e!143797 () Bool)

(assert (=> mapNonEmpty!9883 (= mapRes!9883 (and tp!20983 e!143797))))

(declare-fun mapKey!9883 () (_ BitVec 32))

(declare-fun mapValue!9883 () ValueCell!2561)

(declare-fun mapRest!9883 () (Array (_ BitVec 32) ValueCell!2561))

(assert (=> mapNonEmpty!9883 (= (arr!5149 (_values!4153 thiss!1504)) (store mapRest!9883 mapKey!9883 mapValue!9883))))

(declare-fun bm!20670 () Bool)

(declare-fun call!20674 () Bool)

(declare-fun arrayContainsKey!0 (array!10862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20670 (= call!20674 (arrayContainsKey!0 (_keys!6224 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221207 () Bool)

(declare-fun tp_is_empty!5809 () Bool)

(assert (=> b!221207 (= e!143797 tp_is_empty!5809)))

(declare-fun b!221208 () Bool)

(declare-fun res!108528 () Bool)

(assert (=> b!221208 (=> (not res!108528) (not e!143794))))

(assert (=> b!221208 (= res!108528 (and (= (size!5482 (_values!4153 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9980 thiss!1504))) (= (size!5483 (_keys!6224 thiss!1504)) (size!5482 (_values!4153 thiss!1504))) (bvsge (mask!9980 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3907 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3907 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!221209 () Bool)

(declare-fun c!36775 () Bool)

(declare-datatypes ((SeekEntryResult!832 0))(
  ( (MissingZero!832 (index!5498 (_ BitVec 32))) (Found!832 (index!5499 (_ BitVec 32))) (Intermediate!832 (undefined!1644 Bool) (index!5500 (_ BitVec 32)) (x!23012 (_ BitVec 32))) (Undefined!832) (MissingVacant!832 (index!5501 (_ BitVec 32))) )
))
(declare-fun lt!112385 () SeekEntryResult!832)

(assert (=> b!221209 (= c!36775 (is-MissingVacant!832 lt!112385))))

(declare-fun e!143789 () Bool)

(declare-fun e!143795 () Bool)

(assert (=> b!221209 (= e!143789 e!143795)))

(declare-fun b!221210 () Bool)

(declare-fun res!108525 () Bool)

(assert (=> b!221210 (= res!108525 (= (select (arr!5150 (_keys!6224 thiss!1504)) (index!5501 lt!112385)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143796 () Bool)

(assert (=> b!221210 (=> (not res!108525) (not e!143796))))

(declare-fun bm!20671 () Bool)

(declare-fun call!20673 () Bool)

(declare-fun c!36776 () Bool)

(assert (=> bm!20671 (= call!20673 (inRange!0 (ite c!36776 (index!5498 lt!112385) (index!5501 lt!112385)) (mask!9980 thiss!1504)))))

(declare-fun b!221212 () Bool)

(assert (=> b!221212 (= e!143795 (is-Undefined!832 lt!112385))))

(declare-fun b!221213 () Bool)

(assert (=> b!221213 (= e!143795 e!143796)))

(declare-fun res!108535 () Bool)

(assert (=> b!221213 (= res!108535 call!20673)))

(assert (=> b!221213 (=> (not res!108535) (not e!143796))))

(declare-fun e!143788 () Bool)

(declare-fun e!143786 () Bool)

(declare-fun array_inv!3399 (array!10862) Bool)

(declare-fun array_inv!3400 (array!10860) Bool)

(assert (=> b!221214 (= e!143786 (and tp!20982 tp_is_empty!5809 (array_inv!3399 (_keys!6224 thiss!1504)) (array_inv!3400 (_values!4153 thiss!1504)) e!143788))))

(declare-fun b!221215 () Bool)

(declare-fun lt!112389 () Unit!6605)

(assert (=> b!221215 (= e!143791 lt!112389)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!222 (array!10862 array!10860 (_ BitVec 32) (_ BitVec 32) V!7393 V!7393 (_ BitVec 64) Int) Unit!6605)

(assert (=> b!221215 (= lt!112389 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!222 (_keys!6224 thiss!1504) (_values!4153 thiss!1504) (mask!9980 thiss!1504) (extraKeys!3907 thiss!1504) (zeroValue!4011 thiss!1504) (minValue!4011 thiss!1504) key!932 (defaultEntry!4170 thiss!1504)))))

(assert (=> b!221215 (= c!36776 (is-MissingZero!832 lt!112385))))

(assert (=> b!221215 e!143789))

(declare-fun b!221216 () Bool)

(declare-fun res!108529 () Bool)

(declare-fun e!143785 () Bool)

(assert (=> b!221216 (=> (not res!108529) (not e!143785))))

(assert (=> b!221216 (= res!108529 call!20673)))

(assert (=> b!221216 (= e!143789 e!143785)))

(declare-fun b!221217 () Bool)

(declare-fun res!108524 () Bool)

(declare-fun e!143793 () Bool)

(assert (=> b!221217 (=> (not res!108524) (not e!143793))))

(assert (=> b!221217 (= res!108524 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221218 () Bool)

(declare-fun e!143790 () Bool)

(assert (=> b!221218 (= e!143788 (and e!143790 mapRes!9883))))

(declare-fun condMapEmpty!9883 () Bool)

(declare-fun mapDefault!9883 () ValueCell!2561)

