; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23592 () Bool)

(assert start!23592)

(declare-fun b!247921 () Bool)

(declare-fun b_free!6599 () Bool)

(declare-fun b_next!6599 () Bool)

(assert (=> b!247921 (= b_free!6599 (not b_next!6599))))

(declare-fun tp!23045 () Bool)

(declare-fun b_and!13619 () Bool)

(assert (=> b!247921 (= tp!23045 b_and!13619)))

(declare-fun b!247908 () Bool)

(declare-fun e!160842 () Bool)

(declare-fun e!160840 () Bool)

(assert (=> b!247908 (= e!160842 e!160840)))

(declare-fun res!121516 () Bool)

(declare-fun call!23217 () Bool)

(assert (=> b!247908 (= res!121516 call!23217)))

(assert (=> b!247908 (=> (not res!121516) (not e!160840))))

(declare-fun b!247909 () Bool)

(declare-fun e!160838 () Bool)

(declare-datatypes ((V!8261 0))(
  ( (V!8262 (val!3275 Int)) )
))
(declare-datatypes ((ValueCell!2887 0))(
  ( (ValueCellFull!2887 (v!5329 V!8261)) (EmptyCell!2887) )
))
(declare-datatypes ((array!12228 0))(
  ( (array!12229 (arr!5801 (Array (_ BitVec 32) ValueCell!2887)) (size!6144 (_ BitVec 32))) )
))
(declare-datatypes ((array!12230 0))(
  ( (array!12231 (arr!5802 (Array (_ BitVec 32) (_ BitVec 64))) (size!6145 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3674 0))(
  ( (LongMapFixedSize!3675 (defaultEntry!4586 Int) (mask!10728 (_ BitVec 32)) (extraKeys!4323 (_ BitVec 32)) (zeroValue!4427 V!8261) (minValue!4427 V!8261) (_size!1886 (_ BitVec 32)) (_keys!6708 array!12230) (_values!4569 array!12228) (_vacant!1886 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3674)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12230 (_ BitVec 32)) Bool)

(assert (=> b!247909 (= e!160838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6708 thiss!1504) (mask!10728 thiss!1504)))))

(declare-fun b!247910 () Bool)

(declare-datatypes ((Unit!7675 0))(
  ( (Unit!7676) )
))
(declare-fun e!160841 () Unit!7675)

(declare-fun Unit!7677 () Unit!7675)

(assert (=> b!247910 (= e!160841 Unit!7677)))

(declare-fun lt!124179 () Unit!7675)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!388 (array!12230 array!12228 (_ BitVec 32) (_ BitVec 32) V!8261 V!8261 (_ BitVec 64) Int) Unit!7675)

(assert (=> b!247910 (= lt!124179 (lemmaInListMapThenSeekEntryOrOpenFindsIt!388 (_keys!6708 thiss!1504) (_values!4569 thiss!1504) (mask!10728 thiss!1504) (extraKeys!4323 thiss!1504) (zeroValue!4427 thiss!1504) (minValue!4427 thiss!1504) key!932 (defaultEntry!4586 thiss!1504)))))

(assert (=> b!247910 false))

(declare-fun b!247911 () Bool)

(declare-fun res!121517 () Bool)

(declare-fun e!160834 () Bool)

(assert (=> b!247911 (=> (not res!121517) (not e!160834))))

(assert (=> b!247911 (= res!121517 call!23217)))

(declare-fun e!160831 () Bool)

(assert (=> b!247911 (= e!160831 e!160834)))

(declare-fun b!247912 () Bool)

(declare-fun e!160836 () Bool)

(declare-fun e!160844 () Bool)

(assert (=> b!247912 (= e!160836 e!160844)))

(declare-fun res!121519 () Bool)

(assert (=> b!247912 (=> (not res!121519) (not e!160844))))

(declare-datatypes ((SeekEntryResult!1118 0))(
  ( (MissingZero!1118 (index!6642 (_ BitVec 32))) (Found!1118 (index!6643 (_ BitVec 32))) (Intermediate!1118 (undefined!1930 Bool) (index!6644 (_ BitVec 32)) (x!24562 (_ BitVec 32))) (Undefined!1118) (MissingVacant!1118 (index!6645 (_ BitVec 32))) )
))
(declare-fun lt!124174 () SeekEntryResult!1118)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!247912 (= res!121519 (or (= lt!124174 (MissingZero!1118 index!297)) (= lt!124174 (MissingVacant!1118 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12230 (_ BitVec 32)) SeekEntryResult!1118)

(assert (=> b!247912 (= lt!124174 (seekEntryOrOpen!0 key!932 (_keys!6708 thiss!1504) (mask!10728 thiss!1504)))))

(declare-fun mapNonEmpty!10967 () Bool)

(declare-fun mapRes!10967 () Bool)

(declare-fun tp!23044 () Bool)

(declare-fun e!160830 () Bool)

(assert (=> mapNonEmpty!10967 (= mapRes!10967 (and tp!23044 e!160830))))

(declare-fun mapKey!10967 () (_ BitVec 32))

(declare-fun mapValue!10967 () ValueCell!2887)

(declare-fun mapRest!10967 () (Array (_ BitVec 32) ValueCell!2887))

(assert (=> mapNonEmpty!10967 (= (arr!5801 (_values!4569 thiss!1504)) (store mapRest!10967 mapKey!10967 mapValue!10967))))

(declare-fun b!247913 () Bool)

(declare-fun res!121523 () Bool)

(assert (=> b!247913 (= res!121523 (= (select (arr!5802 (_keys!6708 thiss!1504)) (index!6645 lt!124174)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247913 (=> (not res!121523) (not e!160840))))

(declare-fun b!247914 () Bool)

(declare-fun e!160833 () Bool)

(declare-fun tp_is_empty!6461 () Bool)

(assert (=> b!247914 (= e!160833 tp_is_empty!6461)))

(declare-fun b!247915 () Bool)

(declare-fun call!23216 () Bool)

(assert (=> b!247915 (= e!160840 (not call!23216))))

(declare-fun res!121514 () Bool)

(assert (=> start!23592 (=> (not res!121514) (not e!160836))))

(declare-fun valid!1430 (LongMapFixedSize!3674) Bool)

(assert (=> start!23592 (= res!121514 (valid!1430 thiss!1504))))

(assert (=> start!23592 e!160836))

(declare-fun e!160835 () Bool)

(assert (=> start!23592 e!160835))

(assert (=> start!23592 true))

(declare-fun b!247916 () Bool)

(assert (=> b!247916 (= e!160830 tp_is_empty!6461)))

(declare-fun b!247917 () Bool)

(declare-fun e!160837 () Bool)

(assert (=> b!247917 (= e!160837 (and e!160833 mapRes!10967))))

(declare-fun condMapEmpty!10967 () Bool)

(declare-fun mapDefault!10967 () ValueCell!2887)

