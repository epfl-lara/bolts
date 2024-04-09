; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19234 () Bool)

(assert start!19234)

(declare-fun b!189059 () Bool)

(declare-fun b_free!4639 () Bool)

(declare-fun b_next!4639 () Bool)

(assert (=> b!189059 (= b_free!4639 (not b_next!4639))))

(declare-fun tp!16747 () Bool)

(declare-fun b_and!11293 () Bool)

(assert (=> b!189059 (= tp!16747 b_and!11293)))

(declare-fun b!189054 () Bool)

(declare-fun e!124432 () Bool)

(declare-fun e!124427 () Bool)

(assert (=> b!189054 (= e!124432 e!124427)))

(declare-fun res!89394 () Bool)

(assert (=> b!189054 (=> (not res!89394) (not e!124427))))

(declare-datatypes ((SeekEntryResult!669 0))(
  ( (MissingZero!669 (index!4846 (_ BitVec 32))) (Found!669 (index!4847 (_ BitVec 32))) (Intermediate!669 (undefined!1481 Bool) (index!4848 (_ BitVec 32)) (x!20409 (_ BitVec 32))) (Undefined!669) (MissingVacant!669 (index!4849 (_ BitVec 32))) )
))
(declare-fun lt!93627 () SeekEntryResult!669)

(assert (=> b!189054 (= res!89394 (and (not (is-Undefined!669 lt!93627)) (not (is-MissingVacant!669 lt!93627)) (not (is-MissingZero!669 lt!93627)) (is-Found!669 lt!93627)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5529 0))(
  ( (V!5530 (val!2250 Int)) )
))
(declare-datatypes ((ValueCell!1862 0))(
  ( (ValueCellFull!1862 (v!4166 V!5529)) (EmptyCell!1862) )
))
(declare-datatypes ((array!8048 0))(
  ( (array!8049 (arr!3794 (Array (_ BitVec 32) (_ BitVec 64))) (size!4114 (_ BitVec 32))) )
))
(declare-datatypes ((array!8050 0))(
  ( (array!8051 (arr!3795 (Array (_ BitVec 32) ValueCell!1862)) (size!4115 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2632 0))(
  ( (LongMapFixedSize!2633 (defaultEntry!3857 Int) (mask!9038 (_ BitVec 32)) (extraKeys!3594 (_ BitVec 32)) (zeroValue!3698 V!5529) (minValue!3698 V!5529) (_size!1365 (_ BitVec 32)) (_keys!5822 array!8048) (_values!3840 array!8050) (_vacant!1365 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2632)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8048 (_ BitVec 32)) SeekEntryResult!669)

(assert (=> b!189054 (= lt!93627 (seekEntryOrOpen!0 key!828 (_keys!5822 thiss!1248) (mask!9038 thiss!1248)))))

(declare-fun b!189055 () Bool)

(declare-datatypes ((Unit!5698 0))(
  ( (Unit!5699) )
))
(declare-fun e!124426 () Unit!5698)

(declare-fun lt!93625 () Unit!5698)

(assert (=> b!189055 (= e!124426 lt!93625)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!161 (array!8048 array!8050 (_ BitVec 32) (_ BitVec 32) V!5529 V!5529 (_ BitVec 64) Int) Unit!5698)

(assert (=> b!189055 (= lt!93625 (lemmaInListMapThenSeekEntryOrOpenFindsIt!161 (_keys!5822 thiss!1248) (_values!3840 thiss!1248) (mask!9038 thiss!1248) (extraKeys!3594 thiss!1248) (zeroValue!3698 thiss!1248) (minValue!3698 thiss!1248) key!828 (defaultEntry!3857 thiss!1248)))))

(declare-fun res!89398 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!189055 (= res!89398 (inRange!0 (index!4847 lt!93627) (mask!9038 thiss!1248)))))

(declare-fun e!124428 () Bool)

(assert (=> b!189055 (=> (not res!89398) (not e!124428))))

(assert (=> b!189055 e!124428))

(declare-fun b!189056 () Bool)

(declare-fun e!124425 () Bool)

(assert (=> b!189056 (= e!124427 e!124425)))

(declare-fun res!89395 () Bool)

(assert (=> b!189056 (=> (not res!89395) (not e!124425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!189056 (= res!89395 (validMask!0 (mask!9038 thiss!1248)))))

(declare-fun lt!93624 () Unit!5698)

(assert (=> b!189056 (= lt!93624 e!124426)))

(declare-fun c!33970 () Bool)

(declare-datatypes ((tuple2!3498 0))(
  ( (tuple2!3499 (_1!1759 (_ BitVec 64)) (_2!1759 V!5529)) )
))
(declare-datatypes ((List!2421 0))(
  ( (Nil!2418) (Cons!2417 (h!3054 tuple2!3498) (t!7331 List!2421)) )
))
(declare-datatypes ((ListLongMap!2429 0))(
  ( (ListLongMap!2430 (toList!1230 List!2421)) )
))
(declare-fun contains!1330 (ListLongMap!2429 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!873 (array!8048 array!8050 (_ BitVec 32) (_ BitVec 32) V!5529 V!5529 (_ BitVec 32) Int) ListLongMap!2429)

(assert (=> b!189056 (= c!33970 (contains!1330 (getCurrentListMap!873 (_keys!5822 thiss!1248) (_values!3840 thiss!1248) (mask!9038 thiss!1248) (extraKeys!3594 thiss!1248) (zeroValue!3698 thiss!1248) (minValue!3698 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3857 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!7609 () Bool)

(declare-fun mapRes!7609 () Bool)

(declare-fun tp!16746 () Bool)

(declare-fun e!124431 () Bool)

(assert (=> mapNonEmpty!7609 (= mapRes!7609 (and tp!16746 e!124431))))

(declare-fun mapValue!7609 () ValueCell!1862)

(declare-fun mapKey!7609 () (_ BitVec 32))

(declare-fun mapRest!7609 () (Array (_ BitVec 32) ValueCell!1862))

(assert (=> mapNonEmpty!7609 (= (arr!3795 (_values!3840 thiss!1248)) (store mapRest!7609 mapKey!7609 mapValue!7609))))

(declare-fun b!189057 () Bool)

(assert (=> b!189057 (= e!124428 (= (select (arr!3794 (_keys!5822 thiss!1248)) (index!4847 lt!93627)) key!828))))

(declare-fun b!189058 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!189058 (= e!124425 (not (validKeyInArray!0 key!828)))))

(declare-fun tp_is_empty!4411 () Bool)

(declare-fun e!124429 () Bool)

(declare-fun e!124433 () Bool)

(declare-fun array_inv!2449 (array!8048) Bool)

(declare-fun array_inv!2450 (array!8050) Bool)

(assert (=> b!189059 (= e!124429 (and tp!16747 tp_is_empty!4411 (array_inv!2449 (_keys!5822 thiss!1248)) (array_inv!2450 (_values!3840 thiss!1248)) e!124433))))

(declare-fun b!189060 () Bool)

(declare-fun res!89390 () Bool)

(assert (=> b!189060 (=> (not res!89390) (not e!124425))))

(assert (=> b!189060 (= res!89390 (and (bvsge (index!4847 lt!93627) #b00000000000000000000000000000000) (bvslt (index!4847 lt!93627) (size!4114 (_keys!5822 thiss!1248)))))))

(declare-fun b!189061 () Bool)

(assert (=> b!189061 (= e!124431 tp_is_empty!4411)))

(declare-fun b!189063 () Bool)

(declare-fun e!124424 () Bool)

(assert (=> b!189063 (= e!124424 tp_is_empty!4411)))

(declare-fun b!189064 () Bool)

(declare-fun res!89393 () Bool)

(assert (=> b!189064 (=> (not res!89393) (not e!124425))))

(declare-datatypes ((List!2422 0))(
  ( (Nil!2419) (Cons!2418 (h!3055 (_ BitVec 64)) (t!7332 List!2422)) )
))
(declare-fun arrayNoDuplicates!0 (array!8048 (_ BitVec 32) List!2422) Bool)

(assert (=> b!189064 (= res!89393 (arrayNoDuplicates!0 (_keys!5822 thiss!1248) #b00000000000000000000000000000000 Nil!2419))))

(declare-fun b!189065 () Bool)

(declare-fun res!89392 () Bool)

(assert (=> b!189065 (=> (not res!89392) (not e!124432))))

(assert (=> b!189065 (= res!89392 (not (= key!828 (bvneg key!828))))))

(declare-fun b!189066 () Bool)

(declare-fun res!89391 () Bool)

(assert (=> b!189066 (=> (not res!89391) (not e!124425))))

(assert (=> b!189066 (= res!89391 (and (= (size!4115 (_values!3840 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9038 thiss!1248))) (= (size!4114 (_keys!5822 thiss!1248)) (size!4115 (_values!3840 thiss!1248))) (bvsge (mask!9038 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3594 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3594 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!7609 () Bool)

(assert (=> mapIsEmpty!7609 mapRes!7609))

(declare-fun b!189062 () Bool)

(declare-fun res!89397 () Bool)

(assert (=> b!189062 (=> (not res!89397) (not e!124425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8048 (_ BitVec 32)) Bool)

(assert (=> b!189062 (= res!89397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5822 thiss!1248) (mask!9038 thiss!1248)))))

(declare-fun res!89396 () Bool)

(assert (=> start!19234 (=> (not res!89396) (not e!124432))))

(declare-fun valid!1074 (LongMapFixedSize!2632) Bool)

(assert (=> start!19234 (= res!89396 (valid!1074 thiss!1248))))

(assert (=> start!19234 e!124432))

(assert (=> start!19234 e!124429))

(assert (=> start!19234 true))

(declare-fun b!189067 () Bool)

(assert (=> b!189067 (= e!124433 (and e!124424 mapRes!7609))))

(declare-fun condMapEmpty!7609 () Bool)

(declare-fun mapDefault!7609 () ValueCell!1862)

