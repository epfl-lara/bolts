; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16678 () Bool)

(assert start!16678)

(declare-fun b!166712 () Bool)

(declare-fun b_free!3971 () Bool)

(declare-fun b_next!3971 () Bool)

(assert (=> b!166712 (= b_free!3971 (not b_next!3971))))

(declare-fun tp!14513 () Bool)

(declare-fun b_and!10403 () Bool)

(assert (=> b!166712 (= tp!14513 b_and!10403)))

(declare-fun b!166702 () Bool)

(declare-fun res!79261 () Bool)

(declare-fun e!109416 () Bool)

(assert (=> b!166702 (=> (not res!79261) (not e!109416))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!166702 (= res!79261 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166703 () Bool)

(declare-fun e!109420 () Bool)

(assert (=> b!166703 (= e!109420 false)))

(declare-fun lt!83448 () Bool)

(declare-datatypes ((V!4677 0))(
  ( (V!4678 (val!1931 Int)) )
))
(declare-datatypes ((ValueCell!1543 0))(
  ( (ValueCellFull!1543 (v!3792 V!4677)) (EmptyCell!1543) )
))
(declare-datatypes ((array!6642 0))(
  ( (array!6643 (arr!3156 (Array (_ BitVec 32) (_ BitVec 64))) (size!3444 (_ BitVec 32))) )
))
(declare-datatypes ((array!6644 0))(
  ( (array!6645 (arr!3157 (Array (_ BitVec 32) ValueCell!1543)) (size!3445 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1994 0))(
  ( (LongMapFixedSize!1995 (defaultEntry!3439 Int) (mask!8174 (_ BitVec 32)) (extraKeys!3180 (_ BitVec 32)) (zeroValue!3282 V!4677) (minValue!3282 V!4677) (_size!1046 (_ BitVec 32)) (_keys!5264 array!6642) (_values!3422 array!6644) (_vacant!1046 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1994)

(declare-datatypes ((List!2124 0))(
  ( (Nil!2121) (Cons!2120 (h!2737 (_ BitVec 64)) (t!6934 List!2124)) )
))
(declare-fun arrayNoDuplicates!0 (array!6642 (_ BitVec 32) List!2124) Bool)

(assert (=> b!166703 (= lt!83448 (arrayNoDuplicates!0 (_keys!5264 thiss!1248) #b00000000000000000000000000000000 Nil!2121))))

(declare-fun b!166704 () Bool)

(declare-fun e!109417 () Bool)

(declare-fun tp_is_empty!3773 () Bool)

(assert (=> b!166704 (= e!109417 tp_is_empty!3773)))

(declare-fun b!166705 () Bool)

(declare-fun e!109418 () Bool)

(assert (=> b!166705 (= e!109418 tp_is_empty!3773)))

(declare-fun b!166706 () Bool)

(declare-datatypes ((Unit!5078 0))(
  ( (Unit!5079) )
))
(declare-fun e!109415 () Unit!5078)

(declare-fun Unit!5080 () Unit!5078)

(assert (=> b!166706 (= e!109415 Unit!5080)))

(declare-fun lt!83447 () Unit!5078)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!92 (array!6642 array!6644 (_ BitVec 32) (_ BitVec 32) V!4677 V!4677 (_ BitVec 64) Int) Unit!5078)

(assert (=> b!166706 (= lt!83447 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!92 (_keys!5264 thiss!1248) (_values!3422 thiss!1248) (mask!8174 thiss!1248) (extraKeys!3180 thiss!1248) (zeroValue!3282 thiss!1248) (minValue!3282 thiss!1248) key!828 (defaultEntry!3439 thiss!1248)))))

(assert (=> b!166706 false))

(declare-fun b!166708 () Bool)

(declare-fun e!109419 () Bool)

(assert (=> b!166708 (= e!109416 e!109419)))

(declare-fun res!79262 () Bool)

(assert (=> b!166708 (=> (not res!79262) (not e!109419))))

(declare-datatypes ((SeekEntryResult!473 0))(
  ( (MissingZero!473 (index!4060 (_ BitVec 32))) (Found!473 (index!4061 (_ BitVec 32))) (Intermediate!473 (undefined!1285 Bool) (index!4062 (_ BitVec 32)) (x!18469 (_ BitVec 32))) (Undefined!473) (MissingVacant!473 (index!4063 (_ BitVec 32))) )
))
(declare-fun lt!83450 () SeekEntryResult!473)

(assert (=> b!166708 (= res!79262 (and (not (is-Undefined!473 lt!83450)) (not (is-MissingVacant!473 lt!83450)) (not (is-MissingZero!473 lt!83450)) (is-Found!473 lt!83450)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6642 (_ BitVec 32)) SeekEntryResult!473)

(assert (=> b!166708 (= lt!83450 (seekEntryOrOpen!0 key!828 (_keys!5264 thiss!1248) (mask!8174 thiss!1248)))))

(declare-fun e!109414 () Bool)

(declare-fun b!166709 () Bool)

(assert (=> b!166709 (= e!109414 (= (select (arr!3156 (_keys!5264 thiss!1248)) (index!4061 lt!83450)) key!828))))

(declare-fun mapNonEmpty!6378 () Bool)

(declare-fun mapRes!6378 () Bool)

(declare-fun tp!14514 () Bool)

(assert (=> mapNonEmpty!6378 (= mapRes!6378 (and tp!14514 e!109418))))

(declare-fun mapRest!6378 () (Array (_ BitVec 32) ValueCell!1543))

(declare-fun mapValue!6378 () ValueCell!1543)

(declare-fun mapKey!6378 () (_ BitVec 32))

(assert (=> mapNonEmpty!6378 (= (arr!3157 (_values!3422 thiss!1248)) (store mapRest!6378 mapKey!6378 mapValue!6378))))

(declare-fun b!166710 () Bool)

(declare-fun e!109413 () Bool)

(assert (=> b!166710 (= e!109413 (and e!109417 mapRes!6378))))

(declare-fun condMapEmpty!6378 () Bool)

(declare-fun mapDefault!6378 () ValueCell!1543)

