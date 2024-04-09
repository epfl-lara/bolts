; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25134 () Bool)

(assert start!25134)

(declare-fun b!261571 () Bool)

(declare-fun b_free!6769 () Bool)

(declare-fun b_next!6769 () Bool)

(assert (=> b!261571 (= b_free!6769 (not b_next!6769))))

(declare-fun tp!23638 () Bool)

(declare-fun b_and!13921 () Bool)

(assert (=> b!261571 (= tp!23638 b_and!13921)))

(declare-fun b!261560 () Bool)

(declare-fun e!169495 () Bool)

(declare-fun tp_is_empty!6631 () Bool)

(assert (=> b!261560 (= e!169495 tp_is_empty!6631)))

(declare-fun b!261561 () Bool)

(declare-fun res!127818 () Bool)

(declare-datatypes ((V!8489 0))(
  ( (V!8490 (val!3360 Int)) )
))
(declare-datatypes ((ValueCell!2972 0))(
  ( (ValueCellFull!2972 (v!5481 V!8489)) (EmptyCell!2972) )
))
(declare-datatypes ((array!12618 0))(
  ( (array!12619 (arr!5971 (Array (_ BitVec 32) ValueCell!2972)) (size!6322 (_ BitVec 32))) )
))
(declare-datatypes ((array!12620 0))(
  ( (array!12621 (arr!5972 (Array (_ BitVec 32) (_ BitVec 64))) (size!6323 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3844 0))(
  ( (LongMapFixedSize!3845 (defaultEntry!4820 Int) (mask!11168 (_ BitVec 32)) (extraKeys!4557 (_ BitVec 32)) (zeroValue!4661 V!8489) (minValue!4661 V!8489) (_size!1971 (_ BitVec 32)) (_keys!7008 array!12620) (_values!4803 array!12618) (_vacant!1971 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3844)

(declare-datatypes ((SeekEntryResult!1197 0))(
  ( (MissingZero!1197 (index!6958 (_ BitVec 32))) (Found!1197 (index!6959 (_ BitVec 32))) (Intermediate!1197 (undefined!2009 Bool) (index!6960 (_ BitVec 32)) (x!25187 (_ BitVec 32))) (Undefined!1197) (MissingVacant!1197 (index!6961 (_ BitVec 32))) )
))
(declare-fun lt!132118 () SeekEntryResult!1197)

(assert (=> b!261561 (= res!127818 (= (select (arr!5972 (_keys!7008 thiss!1504)) (index!6961 lt!132118)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169501 () Bool)

(assert (=> b!261561 (=> (not res!127818) (not e!169501))))

(declare-fun b!261562 () Bool)

(declare-fun e!169498 () Bool)

(assert (=> b!261562 (= e!169498 tp_is_empty!6631)))

(declare-fun b!261563 () Bool)

(declare-datatypes ((Unit!8127 0))(
  ( (Unit!8128) )
))
(declare-fun e!169492 () Unit!8127)

(declare-fun Unit!8129 () Unit!8127)

(assert (=> b!261563 (= e!169492 Unit!8129)))

(declare-fun lt!132113 () Unit!8127)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!253 (array!12620 array!12618 (_ BitVec 32) (_ BitVec 32) V!8489 V!8489 (_ BitVec 64) (_ BitVec 32) Int) Unit!8127)

(assert (=> b!261563 (= lt!132113 (lemmaArrayContainsKeyThenInListMap!253 (_keys!7008 thiss!1504) (_values!4803 thiss!1504) (mask!11168 thiss!1504) (extraKeys!4557 thiss!1504) (zeroValue!4661 thiss!1504) (minValue!4661 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4820 thiss!1504)))))

(assert (=> b!261563 false))

(declare-fun res!127817 () Bool)

(declare-fun e!169502 () Bool)

(assert (=> start!25134 (=> (not res!127817) (not e!169502))))

(declare-fun valid!1491 (LongMapFixedSize!3844) Bool)

(assert (=> start!25134 (= res!127817 (valid!1491 thiss!1504))))

(assert (=> start!25134 e!169502))

(declare-fun e!169491 () Bool)

(assert (=> start!25134 e!169491))

(assert (=> start!25134 true))

(assert (=> start!25134 tp_is_empty!6631))

(declare-fun b!261564 () Bool)

(declare-fun e!169489 () Bool)

(assert (=> b!261564 (= e!169489 (is-Undefined!1197 lt!132118))))

(declare-fun c!44531 () Bool)

(declare-fun bm!24974 () Bool)

(declare-fun call!24977 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24974 (= call!24977 (inRange!0 (ite c!44531 (index!6958 lt!132118) (index!6961 lt!132118)) (mask!11168 thiss!1504)))))

(declare-fun b!261565 () Bool)

(declare-fun res!127819 () Bool)

(assert (=> b!261565 (=> (not res!127819) (not e!169502))))

(assert (=> b!261565 (= res!127819 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!261566 () Bool)

(declare-fun res!127816 () Bool)

(declare-fun e!169497 () Bool)

(assert (=> b!261566 (=> (not res!127816) (not e!169497))))

(assert (=> b!261566 (= res!127816 call!24977)))

(declare-fun e!169490 () Bool)

(assert (=> b!261566 (= e!169490 e!169497)))

(declare-fun b!261567 () Bool)

(declare-fun res!127814 () Bool)

(assert (=> b!261567 (=> (not res!127814) (not e!169497))))

(assert (=> b!261567 (= res!127814 (= (select (arr!5972 (_keys!7008 thiss!1504)) (index!6958 lt!132118)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261568 () Bool)

(declare-fun e!169493 () Unit!8127)

(declare-fun Unit!8130 () Unit!8127)

(assert (=> b!261568 (= e!169493 Unit!8130)))

(declare-fun lt!132123 () Unit!8127)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!446 (array!12620 array!12618 (_ BitVec 32) (_ BitVec 32) V!8489 V!8489 (_ BitVec 64) Int) Unit!8127)

(assert (=> b!261568 (= lt!132123 (lemmaInListMapThenSeekEntryOrOpenFindsIt!446 (_keys!7008 thiss!1504) (_values!4803 thiss!1504) (mask!11168 thiss!1504) (extraKeys!4557 thiss!1504) (zeroValue!4661 thiss!1504) (minValue!4661 thiss!1504) key!932 (defaultEntry!4820 thiss!1504)))))

(assert (=> b!261568 false))

(declare-fun b!261569 () Bool)

(declare-fun call!24978 () Bool)

(assert (=> b!261569 (= e!169501 (not call!24978))))

(declare-fun b!261570 () Bool)

(declare-fun e!169499 () Bool)

(assert (=> b!261570 (= e!169502 e!169499)))

(declare-fun res!127812 () Bool)

(assert (=> b!261570 (=> (not res!127812) (not e!169499))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!261570 (= res!127812 (or (= lt!132118 (MissingZero!1197 index!297)) (= lt!132118 (MissingVacant!1197 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12620 (_ BitVec 32)) SeekEntryResult!1197)

(assert (=> b!261570 (= lt!132118 (seekEntryOrOpen!0 key!932 (_keys!7008 thiss!1504) (mask!11168 thiss!1504)))))

(declare-fun e!169496 () Bool)

(declare-fun array_inv!3935 (array!12620) Bool)

(declare-fun array_inv!3936 (array!12618) Bool)

(assert (=> b!261571 (= e!169491 (and tp!23638 tp_is_empty!6631 (array_inv!3935 (_keys!7008 thiss!1504)) (array_inv!3936 (_values!4803 thiss!1504)) e!169496))))

(declare-fun b!261572 () Bool)

(declare-fun e!169500 () Bool)

(assert (=> b!261572 (= e!169499 e!169500)))

(declare-fun res!127813 () Bool)

(assert (=> b!261572 (=> (not res!127813) (not e!169500))))

(assert (=> b!261572 (= res!127813 (inRange!0 index!297 (mask!11168 thiss!1504)))))

(declare-fun lt!132119 () Unit!8127)

(assert (=> b!261572 (= lt!132119 e!169493)))

(declare-fun c!44530 () Bool)

(declare-datatypes ((tuple2!4952 0))(
  ( (tuple2!4953 (_1!2486 (_ BitVec 64)) (_2!2486 V!8489)) )
))
(declare-datatypes ((List!3853 0))(
  ( (Nil!3850) (Cons!3849 (h!4515 tuple2!4952) (t!8934 List!3853)) )
))
(declare-datatypes ((ListLongMap!3879 0))(
  ( (ListLongMap!3880 (toList!1955 List!3853)) )
))
(declare-fun lt!132114 () ListLongMap!3879)

(declare-fun contains!1897 (ListLongMap!3879 (_ BitVec 64)) Bool)

(assert (=> b!261572 (= c!44530 (contains!1897 lt!132114 key!932))))

(declare-fun getCurrentListMap!1478 (array!12620 array!12618 (_ BitVec 32) (_ BitVec 32) V!8489 V!8489 (_ BitVec 32) Int) ListLongMap!3879)

(assert (=> b!261572 (= lt!132114 (getCurrentListMap!1478 (_keys!7008 thiss!1504) (_values!4803 thiss!1504) (mask!11168 thiss!1504) (extraKeys!4557 thiss!1504) (zeroValue!4661 thiss!1504) (minValue!4661 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4820 thiss!1504)))))

(declare-fun b!261573 () Bool)

(declare-fun mapRes!11305 () Bool)

(assert (=> b!261573 (= e!169496 (and e!169498 mapRes!11305))))

(declare-fun condMapEmpty!11305 () Bool)

(declare-fun mapDefault!11305 () ValueCell!2972)

