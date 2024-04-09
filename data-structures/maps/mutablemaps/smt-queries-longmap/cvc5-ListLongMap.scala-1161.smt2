; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24478 () Bool)

(assert start!24478)

(declare-fun b!256197 () Bool)

(declare-fun b_free!6715 () Bool)

(declare-fun b_next!6715 () Bool)

(assert (=> b!256197 (= b_free!6715 (not b_next!6715))))

(declare-fun tp!23444 () Bool)

(declare-fun b_and!13791 () Bool)

(assert (=> b!256197 (= tp!23444 b_and!13791)))

(declare-fun b!256186 () Bool)

(declare-fun e!166083 () Bool)

(declare-fun e!166081 () Bool)

(assert (=> b!256186 (= e!166083 e!166081)))

(declare-fun res!125363 () Bool)

(assert (=> b!256186 (=> (not res!125363) (not e!166081))))

(declare-datatypes ((SeekEntryResult!1171 0))(
  ( (MissingZero!1171 (index!6854 (_ BitVec 32))) (Found!1171 (index!6855 (_ BitVec 32))) (Intermediate!1171 (undefined!1983 Bool) (index!6856 (_ BitVec 32)) (x!24967 (_ BitVec 32))) (Undefined!1171) (MissingVacant!1171 (index!6857 (_ BitVec 32))) )
))
(declare-fun lt!128666 () SeekEntryResult!1171)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!256186 (= res!125363 (or (= lt!128666 (MissingZero!1171 index!297)) (= lt!128666 (MissingVacant!1171 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!8417 0))(
  ( (V!8418 (val!3333 Int)) )
))
(declare-datatypes ((ValueCell!2945 0))(
  ( (ValueCellFull!2945 (v!5415 V!8417)) (EmptyCell!2945) )
))
(declare-datatypes ((array!12492 0))(
  ( (array!12493 (arr!5917 (Array (_ BitVec 32) ValueCell!2945)) (size!6264 (_ BitVec 32))) )
))
(declare-datatypes ((array!12494 0))(
  ( (array!12495 (arr!5918 (Array (_ BitVec 32) (_ BitVec 64))) (size!6265 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3790 0))(
  ( (LongMapFixedSize!3791 (defaultEntry!4728 Int) (mask!11000 (_ BitVec 32)) (extraKeys!4465 (_ BitVec 32)) (zeroValue!4569 V!8417) (minValue!4569 V!8417) (_size!1944 (_ BitVec 32)) (_keys!6890 array!12494) (_values!4711 array!12492) (_vacant!1944 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3790)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12494 (_ BitVec 32)) SeekEntryResult!1171)

(assert (=> b!256186 (= lt!128666 (seekEntryOrOpen!0 key!932 (_keys!6890 thiss!1504) (mask!11000 thiss!1504)))))

(declare-fun call!24264 () Bool)

(declare-fun bm!24261 () Bool)

(declare-fun c!43286 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24261 (= call!24264 (inRange!0 (ite c!43286 (index!6854 lt!128666) (index!6857 lt!128666)) (mask!11000 thiss!1504)))))

(declare-fun b!256187 () Bool)

(declare-fun c!43287 () Bool)

(assert (=> b!256187 (= c!43287 (is-MissingVacant!1171 lt!128666))))

(declare-fun e!166071 () Bool)

(declare-fun e!166078 () Bool)

(assert (=> b!256187 (= e!166071 e!166078)))

(declare-fun b!256188 () Bool)

(declare-fun e!166082 () Bool)

(declare-fun call!24265 () Bool)

(assert (=> b!256188 (= e!166082 (not call!24265))))

(declare-fun mapNonEmpty!11193 () Bool)

(declare-fun mapRes!11193 () Bool)

(declare-fun tp!23445 () Bool)

(declare-fun e!166072 () Bool)

(assert (=> mapNonEmpty!11193 (= mapRes!11193 (and tp!23445 e!166072))))

(declare-fun mapKey!11193 () (_ BitVec 32))

(declare-fun mapRest!11193 () (Array (_ BitVec 32) ValueCell!2945))

(declare-fun mapValue!11193 () ValueCell!2945)

(assert (=> mapNonEmpty!11193 (= (arr!5917 (_values!4711 thiss!1504)) (store mapRest!11193 mapKey!11193 mapValue!11193))))

(declare-fun b!256189 () Bool)

(declare-datatypes ((Unit!7946 0))(
  ( (Unit!7947) )
))
(declare-fun e!166079 () Unit!7946)

(declare-fun Unit!7948 () Unit!7946)

(assert (=> b!256189 (= e!166079 Unit!7948)))

(declare-fun lt!128659 () Unit!7946)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!427 (array!12494 array!12492 (_ BitVec 32) (_ BitVec 32) V!8417 V!8417 (_ BitVec 64) Int) Unit!7946)

(assert (=> b!256189 (= lt!128659 (lemmaInListMapThenSeekEntryOrOpenFindsIt!427 (_keys!6890 thiss!1504) (_values!4711 thiss!1504) (mask!11000 thiss!1504) (extraKeys!4465 thiss!1504) (zeroValue!4569 thiss!1504) (minValue!4569 thiss!1504) key!932 (defaultEntry!4728 thiss!1504)))))

(assert (=> b!256189 false))

(declare-fun res!125360 () Bool)

(assert (=> start!24478 (=> (not res!125360) (not e!166083))))

(declare-fun valid!1473 (LongMapFixedSize!3790) Bool)

(assert (=> start!24478 (= res!125360 (valid!1473 thiss!1504))))

(assert (=> start!24478 e!166083))

(declare-fun e!166077 () Bool)

(assert (=> start!24478 e!166077))

(assert (=> start!24478 true))

(declare-fun tp_is_empty!6577 () Bool)

(assert (=> start!24478 tp_is_empty!6577))

(declare-fun b!256190 () Bool)

(declare-fun e!166074 () Bool)

(declare-fun e!166075 () Bool)

(assert (=> b!256190 (= e!166074 (and e!166075 mapRes!11193))))

(declare-fun condMapEmpty!11193 () Bool)

(declare-fun mapDefault!11193 () ValueCell!2945)

