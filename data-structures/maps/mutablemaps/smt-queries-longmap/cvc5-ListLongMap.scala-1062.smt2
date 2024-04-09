; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22066 () Bool)

(assert start!22066)

(declare-fun b!228049 () Bool)

(declare-fun b_free!6121 () Bool)

(declare-fun b_next!6121 () Bool)

(assert (=> b!228049 (= b_free!6121 (not b_next!6121))))

(declare-fun tp!21505 () Bool)

(declare-fun b_and!13037 () Bool)

(assert (=> b!228049 (= tp!21505 b_and!13037)))

(declare-fun b!228046 () Bool)

(declare-fun e!147962 () Bool)

(declare-datatypes ((SeekEntryResult!913 0))(
  ( (MissingZero!913 (index!5822 (_ BitVec 32))) (Found!913 (index!5823 (_ BitVec 32))) (Intermediate!913 (undefined!1725 Bool) (index!5824 (_ BitVec 32)) (x!23325 (_ BitVec 32))) (Undefined!913) (MissingVacant!913 (index!5825 (_ BitVec 32))) )
))
(declare-fun lt!114786 () SeekEntryResult!913)

(assert (=> b!228046 (= e!147962 (is-Undefined!913 lt!114786))))

(declare-fun b!228047 () Bool)

(declare-fun e!147965 () Bool)

(declare-fun e!147968 () Bool)

(assert (=> b!228047 (= e!147965 e!147968)))

(declare-fun res!112266 () Bool)

(assert (=> b!228047 (=> (not res!112266) (not e!147968))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!228047 (= res!112266 (or (= lt!114786 (MissingZero!913 index!297)) (= lt!114786 (MissingVacant!913 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7625 0))(
  ( (V!7626 (val!3036 Int)) )
))
(declare-datatypes ((ValueCell!2648 0))(
  ( (ValueCellFull!2648 (v!5052 V!7625)) (EmptyCell!2648) )
))
(declare-datatypes ((array!11208 0))(
  ( (array!11209 (arr!5323 (Array (_ BitVec 32) ValueCell!2648)) (size!5656 (_ BitVec 32))) )
))
(declare-datatypes ((array!11210 0))(
  ( (array!11211 (arr!5324 (Array (_ BitVec 32) (_ BitVec 64))) (size!5657 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3196 0))(
  ( (LongMapFixedSize!3197 (defaultEntry!4257 Int) (mask!10125 (_ BitVec 32)) (extraKeys!3994 (_ BitVec 32)) (zeroValue!4098 V!7625) (minValue!4098 V!7625) (_size!1647 (_ BitVec 32)) (_keys!6311 array!11210) (_values!4240 array!11208) (_vacant!1647 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3196)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11210 (_ BitVec 32)) SeekEntryResult!913)

(assert (=> b!228047 (= lt!114786 (seekEntryOrOpen!0 key!932 (_keys!6311 thiss!1504) (mask!10125 thiss!1504)))))

(declare-fun bm!21192 () Bool)

(declare-fun call!21195 () Bool)

(declare-fun arrayContainsKey!0 (array!11210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21192 (= call!21195 (arrayContainsKey!0 (_keys!6311 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10144 () Bool)

(declare-fun mapRes!10144 () Bool)

(declare-fun tp!21504 () Bool)

(declare-fun e!147967 () Bool)

(assert (=> mapNonEmpty!10144 (= mapRes!10144 (and tp!21504 e!147967))))

(declare-fun mapValue!10144 () ValueCell!2648)

(declare-fun mapKey!10144 () (_ BitVec 32))

(declare-fun mapRest!10144 () (Array (_ BitVec 32) ValueCell!2648))

(assert (=> mapNonEmpty!10144 (= (arr!5323 (_values!4240 thiss!1504)) (store mapRest!10144 mapKey!10144 mapValue!10144))))

(declare-fun b!228048 () Bool)

(declare-datatypes ((Unit!6926 0))(
  ( (Unit!6927) )
))
(declare-fun e!147961 () Unit!6926)

(declare-fun Unit!6928 () Unit!6926)

(assert (=> b!228048 (= e!147961 Unit!6928)))

(declare-fun lt!114782 () Unit!6926)

(declare-fun lemmaArrayContainsKeyThenInListMap!107 (array!11210 array!11208 (_ BitVec 32) (_ BitVec 32) V!7625 V!7625 (_ BitVec 64) (_ BitVec 32) Int) Unit!6926)

(assert (=> b!228048 (= lt!114782 (lemmaArrayContainsKeyThenInListMap!107 (_keys!6311 thiss!1504) (_values!4240 thiss!1504) (mask!10125 thiss!1504) (extraKeys!3994 thiss!1504) (zeroValue!4098 thiss!1504) (minValue!4098 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4257 thiss!1504)))))

(assert (=> b!228048 false))

(declare-fun e!147969 () Bool)

(declare-fun e!147970 () Bool)

(declare-fun tp_is_empty!5983 () Bool)

(declare-fun array_inv!3511 (array!11210) Bool)

(declare-fun array_inv!3512 (array!11208) Bool)

(assert (=> b!228049 (= e!147970 (and tp!21505 tp_is_empty!5983 (array_inv!3511 (_keys!6311 thiss!1504)) (array_inv!3512 (_values!4240 thiss!1504)) e!147969))))

(declare-fun b!228050 () Bool)

(declare-fun e!147958 () Bool)

(assert (=> b!228050 (= e!147958 (not call!21195))))

(declare-fun b!228051 () Bool)

(declare-fun e!147956 () Bool)

(assert (=> b!228051 (= e!147956 tp_is_empty!5983)))

(declare-fun b!228052 () Bool)

(assert (=> b!228052 (= e!147967 tp_is_empty!5983)))

(declare-fun b!228053 () Bool)

(declare-fun res!112276 () Bool)

(declare-fun e!147963 () Bool)

(assert (=> b!228053 (=> res!112276 e!147963)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11210 (_ BitVec 32)) Bool)

(assert (=> b!228053 (= res!112276 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6311 thiss!1504) (mask!10125 thiss!1504))))))

(declare-fun b!228054 () Bool)

(assert (=> b!228054 (= e!147969 (and e!147956 mapRes!10144))))

(declare-fun condMapEmpty!10144 () Bool)

(declare-fun mapDefault!10144 () ValueCell!2648)

