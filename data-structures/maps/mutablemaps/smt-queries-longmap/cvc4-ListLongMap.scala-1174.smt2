; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25252 () Bool)

(assert start!25252)

(declare-fun b!262956 () Bool)

(declare-fun b_free!6797 () Bool)

(declare-fun b_next!6797 () Bool)

(assert (=> b!262956 (= b_free!6797 (not b_next!6797))))

(declare-fun tp!23727 () Bool)

(declare-fun b_and!13957 () Bool)

(assert (=> b!262956 (= tp!23727 b_and!13957)))

(declare-datatypes ((V!8525 0))(
  ( (V!8526 (val!3374 Int)) )
))
(declare-datatypes ((tuple2!4976 0))(
  ( (tuple2!4977 (_1!2498 (_ BitVec 64)) (_2!2498 V!8525)) )
))
(declare-fun lt!133105 () tuple2!4976)

(declare-fun b!262939 () Bool)

(declare-fun e!170418 () Bool)

(declare-datatypes ((List!3874 0))(
  ( (Nil!3871) (Cons!3870 (h!4536 tuple2!4976) (t!8959 List!3874)) )
))
(declare-datatypes ((ListLongMap!3903 0))(
  ( (ListLongMap!3904 (toList!1967 List!3874)) )
))
(declare-fun lt!133101 () ListLongMap!3903)

(declare-datatypes ((ValueCell!2986 0))(
  ( (ValueCellFull!2986 (v!5501 V!8525)) (EmptyCell!2986) )
))
(declare-datatypes ((array!12678 0))(
  ( (array!12679 (arr!5999 (Array (_ BitVec 32) ValueCell!2986)) (size!6350 (_ BitVec 32))) )
))
(declare-datatypes ((array!12680 0))(
  ( (array!12681 (arr!6000 (Array (_ BitVec 32) (_ BitVec 64))) (size!6351 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3872 0))(
  ( (LongMapFixedSize!3873 (defaultEntry!4844 Int) (mask!11210 (_ BitVec 32)) (extraKeys!4581 (_ BitVec 32)) (zeroValue!4685 V!8525) (minValue!4685 V!8525) (_size!1985 (_ BitVec 32)) (_keys!7036 array!12680) (_values!4827 array!12678) (_vacant!1985 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3872)

(declare-fun +!706 (ListLongMap!3903 tuple2!4976) ListLongMap!3903)

(declare-fun map!2758 (LongMapFixedSize!3872) ListLongMap!3903)

(assert (=> b!262939 (= e!170418 (= lt!133101 (+!706 (map!2758 thiss!1504) lt!133105)))))

(declare-fun b!262941 () Bool)

(declare-fun e!170421 () Bool)

(declare-fun tp_is_empty!6659 () Bool)

(assert (=> b!262941 (= e!170421 tp_is_empty!6659)))

(declare-fun b!262942 () Bool)

(declare-fun e!170420 () Bool)

(declare-fun e!170426 () Bool)

(assert (=> b!262942 (= e!170420 e!170426)))

(declare-fun res!128443 () Bool)

(assert (=> b!262942 (=> (not res!128443) (not e!170426))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!262942 (= res!128443 (inRange!0 index!297 (mask!11210 thiss!1504)))))

(declare-datatypes ((Unit!8192 0))(
  ( (Unit!8193) )
))
(declare-fun lt!133109 () Unit!8192)

(declare-fun e!170425 () Unit!8192)

(assert (=> b!262942 (= lt!133109 e!170425)))

(declare-fun c!44817 () Bool)

(declare-fun lt!133091 () ListLongMap!3903)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1912 (ListLongMap!3903 (_ BitVec 64)) Bool)

(assert (=> b!262942 (= c!44817 (contains!1912 lt!133091 key!932))))

(declare-fun getCurrentListMap!1490 (array!12680 array!12678 (_ BitVec 32) (_ BitVec 32) V!8525 V!8525 (_ BitVec 32) Int) ListLongMap!3903)

(assert (=> b!262942 (= lt!133091 (getCurrentListMap!1490 (_keys!7036 thiss!1504) (_values!4827 thiss!1504) (mask!11210 thiss!1504) (extraKeys!4581 thiss!1504) (zeroValue!4685 thiss!1504) (minValue!4685 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4844 thiss!1504)))))

(declare-fun b!262943 () Bool)

(declare-fun e!170416 () Bool)

(declare-datatypes ((SeekEntryResult!1211 0))(
  ( (MissingZero!1211 (index!7014 (_ BitVec 32))) (Found!1211 (index!7015 (_ BitVec 32))) (Intermediate!1211 (undefined!2023 Bool) (index!7016 (_ BitVec 32)) (x!25253 (_ BitVec 32))) (Undefined!1211) (MissingVacant!1211 (index!7017 (_ BitVec 32))) )
))
(declare-fun lt!133093 () SeekEntryResult!1211)

(assert (=> b!262943 (= e!170416 (is-Undefined!1211 lt!133093))))

(declare-fun b!262944 () Bool)

(declare-fun e!170422 () Unit!8192)

(declare-fun Unit!8194 () Unit!8192)

(assert (=> b!262944 (= e!170422 Unit!8194)))

(declare-fun b!262945 () Bool)

(declare-fun res!128442 () Bool)

(declare-fun e!170419 () Bool)

(assert (=> b!262945 (=> (not res!128442) (not e!170419))))

(assert (=> b!262945 (= res!128442 (= (select (arr!6000 (_keys!7036 thiss!1504)) (index!7014 lt!133093)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262946 () Bool)

(declare-fun Unit!8195 () Unit!8192)

(assert (=> b!262946 (= e!170425 Unit!8195)))

(declare-fun lt!133096 () Unit!8192)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!457 (array!12680 array!12678 (_ BitVec 32) (_ BitVec 32) V!8525 V!8525 (_ BitVec 64) Int) Unit!8192)

(assert (=> b!262946 (= lt!133096 (lemmaInListMapThenSeekEntryOrOpenFindsIt!457 (_keys!7036 thiss!1504) (_values!4827 thiss!1504) (mask!11210 thiss!1504) (extraKeys!4581 thiss!1504) (zeroValue!4685 thiss!1504) (minValue!4685 thiss!1504) key!932 (defaultEntry!4844 thiss!1504)))))

(assert (=> b!262946 false))

(declare-fun b!262947 () Bool)

(declare-fun e!170417 () Bool)

(declare-fun mapRes!11353 () Bool)

(assert (=> b!262947 (= e!170417 (and e!170421 mapRes!11353))))

(declare-fun condMapEmpty!11353 () Bool)

(declare-fun mapDefault!11353 () ValueCell!2986)

