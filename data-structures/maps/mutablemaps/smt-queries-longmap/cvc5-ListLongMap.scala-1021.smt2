; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21738 () Bool)

(assert start!21738)

(declare-fun b!218428 () Bool)

(declare-fun b_free!5875 () Bool)

(declare-fun b_next!5875 () Bool)

(assert (=> b!218428 (= b_free!5875 (not b_next!5875))))

(declare-fun tp!20759 () Bool)

(declare-fun b_and!12783 () Bool)

(assert (=> b!218428 (= tp!20759 b_and!12783)))

(declare-fun b!218417 () Bool)

(declare-datatypes ((Unit!6505 0))(
  ( (Unit!6506) )
))
(declare-fun e!142098 () Unit!6505)

(declare-fun lt!111558 () Unit!6505)

(assert (=> b!218417 (= e!142098 lt!111558)))

(declare-datatypes ((V!7297 0))(
  ( (V!7298 (val!2913 Int)) )
))
(declare-datatypes ((ValueCell!2525 0))(
  ( (ValueCellFull!2525 (v!4927 V!7297)) (EmptyCell!2525) )
))
(declare-datatypes ((array!10712 0))(
  ( (array!10713 (arr!5077 (Array (_ BitVec 32) ValueCell!2525)) (size!5409 (_ BitVec 32))) )
))
(declare-datatypes ((array!10714 0))(
  ( (array!10715 (arr!5078 (Array (_ BitVec 32) (_ BitVec 64))) (size!5410 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2950 0))(
  ( (LongMapFixedSize!2951 (defaultEntry!4125 Int) (mask!9902 (_ BitVec 32)) (extraKeys!3862 (_ BitVec 32)) (zeroValue!3966 V!7297) (minValue!3966 V!7297) (_size!1524 (_ BitVec 32)) (_keys!6174 array!10714) (_values!4108 array!10712) (_vacant!1524 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2950)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!196 (array!10714 array!10712 (_ BitVec 32) (_ BitVec 32) V!7297 V!7297 (_ BitVec 64) Int) Unit!6505)

(assert (=> b!218417 (= lt!111558 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!196 (_keys!6174 thiss!1504) (_values!4108 thiss!1504) (mask!9902 thiss!1504) (extraKeys!3862 thiss!1504) (zeroValue!3966 thiss!1504) (minValue!3966 thiss!1504) key!932 (defaultEntry!4125 thiss!1504)))))

(declare-fun c!36319 () Bool)

(declare-datatypes ((SeekEntryResult!798 0))(
  ( (MissingZero!798 (index!5362 (_ BitVec 32))) (Found!798 (index!5363 (_ BitVec 32))) (Intermediate!798 (undefined!1610 Bool) (index!5364 (_ BitVec 32)) (x!22854 (_ BitVec 32))) (Undefined!798) (MissingVacant!798 (index!5365 (_ BitVec 32))) )
))
(declare-fun lt!111557 () SeekEntryResult!798)

(assert (=> b!218417 (= c!36319 (is-MissingZero!798 lt!111557))))

(declare-fun e!142090 () Bool)

(assert (=> b!218417 e!142090))

(declare-fun b!218418 () Bool)

(declare-fun e!142093 () Bool)

(declare-fun tp_is_empty!5737 () Bool)

(assert (=> b!218418 (= e!142093 tp_is_empty!5737)))

(declare-fun b!218419 () Bool)

(declare-fun e!142097 () Bool)

(declare-fun call!20385 () Bool)

(assert (=> b!218419 (= e!142097 (not call!20385))))

(declare-fun b!218420 () Bool)

(declare-fun e!142096 () Bool)

(assert (=> b!218420 (= e!142096 (is-Undefined!798 lt!111557))))

(declare-fun b!218421 () Bool)

(declare-fun c!36318 () Bool)

(assert (=> b!218421 (= c!36318 (is-MissingVacant!798 lt!111557))))

(assert (=> b!218421 (= e!142090 e!142096)))

(declare-fun bm!20382 () Bool)

(declare-fun call!20386 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20382 (= call!20386 (inRange!0 (ite c!36319 (index!5362 lt!111557) (index!5365 lt!111557)) (mask!9902 thiss!1504)))))

(declare-fun b!218422 () Bool)

(declare-fun res!107112 () Bool)

(declare-fun e!142094 () Bool)

(assert (=> b!218422 (=> (not res!107112) (not e!142094))))

(assert (=> b!218422 (= res!107112 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!218423 () Bool)

(declare-fun e!142095 () Bool)

(assert (=> b!218423 (= e!142094 e!142095)))

(declare-fun res!107109 () Bool)

(assert (=> b!218423 (=> (not res!107109) (not e!142095))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218423 (= res!107109 (or (= lt!111557 (MissingZero!798 index!297)) (= lt!111557 (MissingVacant!798 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10714 (_ BitVec 32)) SeekEntryResult!798)

(assert (=> b!218423 (= lt!111557 (seekEntryOrOpen!0 key!932 (_keys!6174 thiss!1504) (mask!9902 thiss!1504)))))

(declare-fun b!218424 () Bool)

(declare-fun e!142089 () Bool)

(declare-fun e!142087 () Bool)

(declare-fun mapRes!9768 () Bool)

(assert (=> b!218424 (= e!142089 (and e!142087 mapRes!9768))))

(declare-fun condMapEmpty!9768 () Bool)

(declare-fun mapDefault!9768 () ValueCell!2525)

