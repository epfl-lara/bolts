; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19150 () Bool)

(assert start!19150)

(declare-fun b!188288 () Bool)

(declare-fun b_free!4625 () Bool)

(declare-fun b_next!4625 () Bool)

(assert (=> b!188288 (= b_free!4625 (not b_next!4625))))

(declare-fun tp!16695 () Bool)

(declare-fun b_and!11273 () Bool)

(assert (=> b!188288 (= tp!16695 b_and!11273)))

(declare-fun res!89026 () Bool)

(declare-fun e!123936 () Bool)

(assert (=> start!19150 (=> (not res!89026) (not e!123936))))

(declare-datatypes ((V!5509 0))(
  ( (V!5510 (val!2243 Int)) )
))
(declare-datatypes ((ValueCell!1855 0))(
  ( (ValueCellFull!1855 (v!4156 V!5509)) (EmptyCell!1855) )
))
(declare-datatypes ((array!8014 0))(
  ( (array!8015 (arr!3780 (Array (_ BitVec 32) (_ BitVec 64))) (size!4100 (_ BitVec 32))) )
))
(declare-datatypes ((array!8016 0))(
  ( (array!8017 (arr!3781 (Array (_ BitVec 32) ValueCell!1855)) (size!4101 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2618 0))(
  ( (LongMapFixedSize!2619 (defaultEntry!3841 Int) (mask!9004 (_ BitVec 32)) (extraKeys!3578 (_ BitVec 32)) (zeroValue!3682 V!5509) (minValue!3682 V!5509) (_size!1358 (_ BitVec 32)) (_keys!5800 array!8014) (_values!3824 array!8016) (_vacant!1358 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2618)

(declare-fun valid!1070 (LongMapFixedSize!2618) Bool)

(assert (=> start!19150 (= res!89026 (valid!1070 thiss!1248))))

(assert (=> start!19150 e!123936))

(declare-fun e!123938 () Bool)

(assert (=> start!19150 e!123938))

(assert (=> start!19150 true))

(declare-fun mapNonEmpty!7579 () Bool)

(declare-fun mapRes!7579 () Bool)

(declare-fun tp!16696 () Bool)

(declare-fun e!123930 () Bool)

(assert (=> mapNonEmpty!7579 (= mapRes!7579 (and tp!16696 e!123930))))

(declare-fun mapRest!7579 () (Array (_ BitVec 32) ValueCell!1855))

(declare-fun mapKey!7579 () (_ BitVec 32))

(declare-fun mapValue!7579 () ValueCell!1855)

(assert (=> mapNonEmpty!7579 (= (arr!3781 (_values!3824 thiss!1248)) (store mapRest!7579 mapKey!7579 mapValue!7579))))

(declare-fun b!188286 () Bool)

(declare-fun res!89028 () Bool)

(assert (=> b!188286 (=> (not res!89028) (not e!123936))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!188286 (= res!89028 (not (= key!828 (bvneg key!828))))))

(declare-fun b!188287 () Bool)

(declare-fun tp_is_empty!4397 () Bool)

(assert (=> b!188287 (= e!123930 tp_is_empty!4397)))

(declare-fun e!123929 () Bool)

(declare-fun array_inv!2439 (array!8014) Bool)

(declare-fun array_inv!2440 (array!8016) Bool)

(assert (=> b!188288 (= e!123938 (and tp!16695 tp_is_empty!4397 (array_inv!2439 (_keys!5800 thiss!1248)) (array_inv!2440 (_values!3824 thiss!1248)) e!123929))))

(declare-fun b!188289 () Bool)

(declare-datatypes ((Unit!5676 0))(
  ( (Unit!5677) )
))
(declare-fun e!123933 () Unit!5676)

(declare-fun lt!93217 () Unit!5676)

(assert (=> b!188289 (= e!123933 lt!93217)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!157 (array!8014 array!8016 (_ BitVec 32) (_ BitVec 32) V!5509 V!5509 (_ BitVec 64) Int) Unit!5676)

(assert (=> b!188289 (= lt!93217 (lemmaInListMapThenSeekEntryOrOpenFindsIt!157 (_keys!5800 thiss!1248) (_values!3824 thiss!1248) (mask!9004 thiss!1248) (extraKeys!3578 thiss!1248) (zeroValue!3682 thiss!1248) (minValue!3682 thiss!1248) key!828 (defaultEntry!3841 thiss!1248)))))

(declare-fun res!89025 () Bool)

(declare-datatypes ((SeekEntryResult!664 0))(
  ( (MissingZero!664 (index!4826 (_ BitVec 32))) (Found!664 (index!4827 (_ BitVec 32))) (Intermediate!664 (undefined!1476 Bool) (index!4828 (_ BitVec 32)) (x!20350 (_ BitVec 32))) (Undefined!664) (MissingVacant!664 (index!4829 (_ BitVec 32))) )
))
(declare-fun lt!93219 () SeekEntryResult!664)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!188289 (= res!89025 (inRange!0 (index!4827 lt!93219) (mask!9004 thiss!1248)))))

(declare-fun e!123934 () Bool)

(assert (=> b!188289 (=> (not res!89025) (not e!123934))))

(assert (=> b!188289 e!123934))

(declare-fun b!188290 () Bool)

(declare-fun e!123937 () Bool)

(declare-fun e!123931 () Bool)

(assert (=> b!188290 (= e!123937 e!123931)))

(declare-fun res!89024 () Bool)

(assert (=> b!188290 (=> (not res!89024) (not e!123931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!188290 (= res!89024 (validMask!0 (mask!9004 thiss!1248)))))

(declare-fun lt!93218 () Unit!5676)

(assert (=> b!188290 (= lt!93218 e!123933)))

(declare-fun c!33826 () Bool)

(declare-datatypes ((tuple2!3486 0))(
  ( (tuple2!3487 (_1!1753 (_ BitVec 64)) (_2!1753 V!5509)) )
))
(declare-datatypes ((List!2410 0))(
  ( (Nil!2407) (Cons!2406 (h!3043 tuple2!3486) (t!7314 List!2410)) )
))
(declare-datatypes ((ListLongMap!2417 0))(
  ( (ListLongMap!2418 (toList!1224 List!2410)) )
))
(declare-fun contains!1322 (ListLongMap!2417 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!867 (array!8014 array!8016 (_ BitVec 32) (_ BitVec 32) V!5509 V!5509 (_ BitVec 32) Int) ListLongMap!2417)

(assert (=> b!188290 (= c!33826 (contains!1322 (getCurrentListMap!867 (_keys!5800 thiss!1248) (_values!3824 thiss!1248) (mask!9004 thiss!1248) (extraKeys!3578 thiss!1248) (zeroValue!3682 thiss!1248) (minValue!3682 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3841 thiss!1248)) key!828))))

(declare-fun b!188291 () Bool)

(assert (=> b!188291 (= e!123934 (= (select (arr!3780 (_keys!5800 thiss!1248)) (index!4827 lt!93219)) key!828))))

(declare-fun b!188292 () Bool)

(assert (=> b!188292 (= e!123936 e!123937)))

(declare-fun res!89027 () Bool)

(assert (=> b!188292 (=> (not res!89027) (not e!123937))))

(assert (=> b!188292 (= res!89027 (and (not (is-Undefined!664 lt!93219)) (not (is-MissingVacant!664 lt!93219)) (not (is-MissingZero!664 lt!93219)) (is-Found!664 lt!93219)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8014 (_ BitVec 32)) SeekEntryResult!664)

(assert (=> b!188292 (= lt!93219 (seekEntryOrOpen!0 key!828 (_keys!5800 thiss!1248) (mask!9004 thiss!1248)))))

(declare-fun mapIsEmpty!7579 () Bool)

(assert (=> mapIsEmpty!7579 mapRes!7579))

(declare-fun b!188293 () Bool)

(declare-fun Unit!5678 () Unit!5676)

(assert (=> b!188293 (= e!123933 Unit!5678)))

(declare-fun lt!93216 () Unit!5676)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!158 (array!8014 array!8016 (_ BitVec 32) (_ BitVec 32) V!5509 V!5509 (_ BitVec 64) Int) Unit!5676)

(assert (=> b!188293 (= lt!93216 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!158 (_keys!5800 thiss!1248) (_values!3824 thiss!1248) (mask!9004 thiss!1248) (extraKeys!3578 thiss!1248) (zeroValue!3682 thiss!1248) (minValue!3682 thiss!1248) key!828 (defaultEntry!3841 thiss!1248)))))

(assert (=> b!188293 false))

(declare-fun b!188294 () Bool)

(declare-fun e!123932 () Bool)

(assert (=> b!188294 (= e!123929 (and e!123932 mapRes!7579))))

(declare-fun condMapEmpty!7579 () Bool)

(declare-fun mapDefault!7579 () ValueCell!1855)

