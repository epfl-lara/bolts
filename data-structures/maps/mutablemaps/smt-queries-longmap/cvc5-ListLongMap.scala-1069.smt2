; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22108 () Bool)

(assert start!22108)

(declare-fun b!229509 () Bool)

(declare-fun b_free!6163 () Bool)

(declare-fun b_next!6163 () Bool)

(assert (=> b!229509 (= b_free!6163 (not b_next!6163))))

(declare-fun tp!21631 () Bool)

(declare-fun b_and!13079 () Bool)

(assert (=> b!229509 (= tp!21631 b_and!13079)))

(declare-fun b!229495 () Bool)

(declare-fun e!148911 () Bool)

(declare-fun tp_is_empty!6025 () Bool)

(assert (=> b!229495 (= e!148911 tp_is_empty!6025)))

(declare-fun bm!21318 () Bool)

(declare-fun call!21321 () Bool)

(declare-datatypes ((V!7681 0))(
  ( (V!7682 (val!3057 Int)) )
))
(declare-datatypes ((ValueCell!2669 0))(
  ( (ValueCellFull!2669 (v!5073 V!7681)) (EmptyCell!2669) )
))
(declare-datatypes ((array!11292 0))(
  ( (array!11293 (arr!5365 (Array (_ BitVec 32) ValueCell!2669)) (size!5698 (_ BitVec 32))) )
))
(declare-datatypes ((array!11294 0))(
  ( (array!11295 (arr!5366 (Array (_ BitVec 32) (_ BitVec 64))) (size!5699 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3238 0))(
  ( (LongMapFixedSize!3239 (defaultEntry!4278 Int) (mask!10160 (_ BitVec 32)) (extraKeys!4015 (_ BitVec 32)) (zeroValue!4119 V!7681) (minValue!4119 V!7681) (_size!1668 (_ BitVec 32)) (_keys!6332 array!11294) (_values!4261 array!11292) (_vacant!1668 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3238)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21318 (= call!21321 (arrayContainsKey!0 (_keys!6332 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229497 () Bool)

(declare-fun res!112963 () Bool)

(declare-fun e!148905 () Bool)

(assert (=> b!229497 (=> (not res!112963) (not e!148905))))

(declare-fun call!21322 () Bool)

(assert (=> b!229497 (= res!112963 call!21322)))

(declare-fun e!148912 () Bool)

(assert (=> b!229497 (= e!148912 e!148905)))

(declare-fun b!229498 () Bool)

(declare-fun res!112967 () Bool)

(declare-fun e!148902 () Bool)

(assert (=> b!229498 (=> res!112967 e!148902)))

(assert (=> b!229498 (= res!112967 (or (not (= (size!5698 (_values!4261 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10160 thiss!1504)))) (not (= (size!5699 (_keys!6332 thiss!1504)) (size!5698 (_values!4261 thiss!1504)))) (bvslt (mask!10160 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4015 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4015 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!229499 () Bool)

(declare-fun res!112964 () Bool)

(declare-fun e!148910 () Bool)

(assert (=> b!229499 (=> (not res!112964) (not e!148910))))

(assert (=> b!229499 (= res!112964 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10207 () Bool)

(declare-fun mapRes!10207 () Bool)

(declare-fun tp!21630 () Bool)

(declare-fun e!148903 () Bool)

(assert (=> mapNonEmpty!10207 (= mapRes!10207 (and tp!21630 e!148903))))

(declare-fun mapValue!10207 () ValueCell!2669)

(declare-fun mapRest!10207 () (Array (_ BitVec 32) ValueCell!2669))

(declare-fun mapKey!10207 () (_ BitVec 32))

(assert (=> mapNonEmpty!10207 (= (arr!5365 (_values!4261 thiss!1504)) (store mapRest!10207 mapKey!10207 mapValue!10207))))

(declare-fun b!229500 () Bool)

(declare-fun e!148914 () Bool)

(declare-datatypes ((SeekEntryResult!933 0))(
  ( (MissingZero!933 (index!5902 (_ BitVec 32))) (Found!933 (index!5903 (_ BitVec 32))) (Intermediate!933 (undefined!1745 Bool) (index!5904 (_ BitVec 32)) (x!23401 (_ BitVec 32))) (Undefined!933) (MissingVacant!933 (index!5905 (_ BitVec 32))) )
))
(declare-fun lt!115482 () SeekEntryResult!933)

(assert (=> b!229500 (= e!148914 (is-Undefined!933 lt!115482))))

(declare-fun res!112959 () Bool)

(assert (=> start!22108 (=> (not res!112959) (not e!148910))))

(declare-fun valid!1283 (LongMapFixedSize!3238) Bool)

(assert (=> start!22108 (= res!112959 (valid!1283 thiss!1504))))

(assert (=> start!22108 e!148910))

(declare-fun e!148906 () Bool)

(assert (=> start!22108 e!148906))

(assert (=> start!22108 true))

(declare-fun b!229496 () Bool)

(declare-fun res!112969 () Bool)

(assert (=> b!229496 (=> (not res!112969) (not e!148905))))

(assert (=> b!229496 (= res!112969 (= (select (arr!5366 (_keys!6332 thiss!1504)) (index!5902 lt!115482)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!229501 () Bool)

(assert (=> b!229501 (= e!148902 true)))

(declare-fun lt!115480 () Bool)

(declare-datatypes ((List!3454 0))(
  ( (Nil!3451) (Cons!3450 (h!4098 (_ BitVec 64)) (t!8421 List!3454)) )
))
(declare-fun arrayNoDuplicates!0 (array!11294 (_ BitVec 32) List!3454) Bool)

(assert (=> b!229501 (= lt!115480 (arrayNoDuplicates!0 (_keys!6332 thiss!1504) #b00000000000000000000000000000000 Nil!3451))))

(declare-fun mapIsEmpty!10207 () Bool)

(assert (=> mapIsEmpty!10207 mapRes!10207))

(declare-fun b!229502 () Bool)

(declare-fun e!148901 () Bool)

(assert (=> b!229502 (= e!148901 (and e!148911 mapRes!10207))))

(declare-fun condMapEmpty!10207 () Bool)

(declare-fun mapDefault!10207 () ValueCell!2669)

