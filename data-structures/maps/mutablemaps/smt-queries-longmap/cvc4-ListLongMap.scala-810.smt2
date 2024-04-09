; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19708 () Bool)

(assert start!19708)

(declare-fun b!193020 () Bool)

(declare-fun b_free!4703 () Bool)

(declare-fun b_next!4703 () Bool)

(assert (=> b!193020 (= b_free!4703 (not b_next!4703))))

(declare-fun tp!16970 () Bool)

(declare-fun b_and!11423 () Bool)

(assert (=> b!193020 (= tp!16970 b_and!11423)))

(declare-fun res!91222 () Bool)

(declare-fun e!127020 () Bool)

(assert (=> start!19708 (=> (not res!91222) (not e!127020))))

(declare-datatypes ((V!5613 0))(
  ( (V!5614 (val!2282 Int)) )
))
(declare-datatypes ((ValueCell!1894 0))(
  ( (ValueCellFull!1894 (v!4231 V!5613)) (EmptyCell!1894) )
))
(declare-datatypes ((array!8194 0))(
  ( (array!8195 (arr!3858 (Array (_ BitVec 32) (_ BitVec 64))) (size!4182 (_ BitVec 32))) )
))
(declare-datatypes ((array!8196 0))(
  ( (array!8197 (arr!3859 (Array (_ BitVec 32) ValueCell!1894)) (size!4183 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2696 0))(
  ( (LongMapFixedSize!2697 (defaultEntry!3940 Int) (mask!9185 (_ BitVec 32)) (extraKeys!3677 (_ BitVec 32)) (zeroValue!3781 V!5613) (minValue!3781 V!5613) (_size!1397 (_ BitVec 32)) (_keys!5928 array!8194) (_values!3923 array!8196) (_vacant!1397 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2696)

(declare-fun valid!1098 (LongMapFixedSize!2696) Bool)

(assert (=> start!19708 (= res!91222 (valid!1098 thiss!1248))))

(assert (=> start!19708 e!127020))

(declare-fun e!127014 () Bool)

(assert (=> start!19708 e!127014))

(assert (=> start!19708 true))

(declare-fun tp_is_empty!4475 () Bool)

(assert (=> start!19708 tp_is_empty!4475))

(declare-fun mapNonEmpty!7736 () Bool)

(declare-fun mapRes!7736 () Bool)

(declare-fun tp!16969 () Bool)

(declare-fun e!127022 () Bool)

(assert (=> mapNonEmpty!7736 (= mapRes!7736 (and tp!16969 e!127022))))

(declare-fun mapValue!7736 () ValueCell!1894)

(declare-fun mapRest!7736 () (Array (_ BitVec 32) ValueCell!1894))

(declare-fun mapKey!7736 () (_ BitVec 32))

(assert (=> mapNonEmpty!7736 (= (arr!3859 (_values!3923 thiss!1248)) (store mapRest!7736 mapKey!7736 mapValue!7736))))

(declare-fun b!193016 () Bool)

(assert (=> b!193016 (= e!127022 tp_is_empty!4475)))

(declare-fun b!193017 () Bool)

(declare-fun e!127016 () Bool)

(assert (=> b!193017 (= e!127016 tp_is_empty!4475)))

(declare-fun b!193018 () Bool)

(declare-fun e!127021 () Bool)

(assert (=> b!193018 (= e!127020 e!127021)))

(declare-fun res!91216 () Bool)

(assert (=> b!193018 (=> (not res!91216) (not e!127021))))

(declare-datatypes ((SeekEntryResult!696 0))(
  ( (MissingZero!696 (index!4954 (_ BitVec 32))) (Found!696 (index!4955 (_ BitVec 32))) (Intermediate!696 (undefined!1508 Bool) (index!4956 (_ BitVec 32)) (x!20638 (_ BitVec 32))) (Undefined!696) (MissingVacant!696 (index!4957 (_ BitVec 32))) )
))
(declare-fun lt!96079 () SeekEntryResult!696)

(assert (=> b!193018 (= res!91216 (and (not (is-Undefined!696 lt!96079)) (not (is-MissingVacant!696 lt!96079)) (not (is-MissingZero!696 lt!96079)) (is-Found!696 lt!96079)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8194 (_ BitVec 32)) SeekEntryResult!696)

(assert (=> b!193018 (= lt!96079 (seekEntryOrOpen!0 key!828 (_keys!5928 thiss!1248) (mask!9185 thiss!1248)))))

(declare-fun b!193019 () Bool)

(declare-fun e!127023 () Bool)

(declare-datatypes ((List!2455 0))(
  ( (Nil!2452) (Cons!2451 (h!3092 (_ BitVec 64)) (t!7383 List!2455)) )
))
(declare-fun arrayNoDuplicates!0 (array!8194 (_ BitVec 32) List!2455) Bool)

(assert (=> b!193019 (= e!127023 (arrayNoDuplicates!0 (_keys!5928 thiss!1248) #b00000000000000000000000000000000 Nil!2452))))

(declare-fun e!127015 () Bool)

(declare-fun array_inv!2493 (array!8194) Bool)

(declare-fun array_inv!2494 (array!8196) Bool)

(assert (=> b!193020 (= e!127014 (and tp!16970 tp_is_empty!4475 (array_inv!2493 (_keys!5928 thiss!1248)) (array_inv!2494 (_values!3923 thiss!1248)) e!127015))))

(declare-fun b!193021 () Bool)

(declare-fun res!91221 () Bool)

(assert (=> b!193021 (=> res!91221 e!127023)))

(assert (=> b!193021 (= res!91221 (or (not (= (size!4183 (_values!3923 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9185 thiss!1248)))) (not (= (size!4182 (_keys!5928 thiss!1248)) (size!4183 (_values!3923 thiss!1248)))) (bvslt (mask!9185 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3677 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3677 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!7736 () Bool)

(assert (=> mapIsEmpty!7736 mapRes!7736))

(declare-fun b!193022 () Bool)

(declare-datatypes ((Unit!5844 0))(
  ( (Unit!5845) )
))
(declare-fun e!127018 () Unit!5844)

(declare-fun lt!96082 () Unit!5844)

(assert (=> b!193022 (= e!127018 lt!96082)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!181 (array!8194 array!8196 (_ BitVec 32) (_ BitVec 32) V!5613 V!5613 (_ BitVec 64) Int) Unit!5844)

(assert (=> b!193022 (= lt!96082 (lemmaInListMapThenSeekEntryOrOpenFindsIt!181 (_keys!5928 thiss!1248) (_values!3923 thiss!1248) (mask!9185 thiss!1248) (extraKeys!3677 thiss!1248) (zeroValue!3781 thiss!1248) (minValue!3781 thiss!1248) key!828 (defaultEntry!3940 thiss!1248)))))

(declare-fun res!91217 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!193022 (= res!91217 (inRange!0 (index!4955 lt!96079) (mask!9185 thiss!1248)))))

(declare-fun e!127017 () Bool)

(assert (=> b!193022 (=> (not res!91217) (not e!127017))))

(assert (=> b!193022 e!127017))

(declare-fun b!193023 () Bool)

(assert (=> b!193023 (= e!127021 (not e!127023))))

(declare-fun res!91218 () Bool)

(assert (=> b!193023 (=> res!91218 e!127023)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!193023 (= res!91218 (not (validMask!0 (mask!9185 thiss!1248))))))

(declare-datatypes ((tuple2!3540 0))(
  ( (tuple2!3541 (_1!1780 (_ BitVec 64)) (_2!1780 V!5613)) )
))
(declare-datatypes ((List!2456 0))(
  ( (Nil!2453) (Cons!2452 (h!3093 tuple2!3540) (t!7384 List!2456)) )
))
(declare-datatypes ((ListLongMap!2471 0))(
  ( (ListLongMap!2472 (toList!1251 List!2456)) )
))
(declare-fun lt!96077 () ListLongMap!2471)

(declare-fun v!309 () V!5613)

(declare-fun +!309 (ListLongMap!2471 tuple2!3540) ListLongMap!2471)

(declare-fun getCurrentListMap!894 (array!8194 array!8196 (_ BitVec 32) (_ BitVec 32) V!5613 V!5613 (_ BitVec 32) Int) ListLongMap!2471)

(assert (=> b!193023 (= (+!309 lt!96077 (tuple2!3541 key!828 v!309)) (getCurrentListMap!894 (_keys!5928 thiss!1248) (array!8197 (store (arr!3859 (_values!3923 thiss!1248)) (index!4955 lt!96079) (ValueCellFull!1894 v!309)) (size!4183 (_values!3923 thiss!1248))) (mask!9185 thiss!1248) (extraKeys!3677 thiss!1248) (zeroValue!3781 thiss!1248) (minValue!3781 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3940 thiss!1248)))))

(declare-fun lt!96078 () Unit!5844)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!115 (array!8194 array!8196 (_ BitVec 32) (_ BitVec 32) V!5613 V!5613 (_ BitVec 32) (_ BitVec 64) V!5613 Int) Unit!5844)

(assert (=> b!193023 (= lt!96078 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!115 (_keys!5928 thiss!1248) (_values!3923 thiss!1248) (mask!9185 thiss!1248) (extraKeys!3677 thiss!1248) (zeroValue!3781 thiss!1248) (minValue!3781 thiss!1248) (index!4955 lt!96079) key!828 v!309 (defaultEntry!3940 thiss!1248)))))

(declare-fun lt!96080 () Unit!5844)

(assert (=> b!193023 (= lt!96080 e!127018)))

(declare-fun c!34795 () Bool)

(declare-fun contains!1364 (ListLongMap!2471 (_ BitVec 64)) Bool)

(assert (=> b!193023 (= c!34795 (contains!1364 lt!96077 key!828))))

(assert (=> b!193023 (= lt!96077 (getCurrentListMap!894 (_keys!5928 thiss!1248) (_values!3923 thiss!1248) (mask!9185 thiss!1248) (extraKeys!3677 thiss!1248) (zeroValue!3781 thiss!1248) (minValue!3781 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3940 thiss!1248)))))

(declare-fun b!193024 () Bool)

(declare-fun res!91219 () Bool)

(assert (=> b!193024 (=> res!91219 e!127023)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8194 (_ BitVec 32)) Bool)

(assert (=> b!193024 (= res!91219 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5928 thiss!1248) (mask!9185 thiss!1248))))))

(declare-fun b!193025 () Bool)

(declare-fun Unit!5846 () Unit!5844)

(assert (=> b!193025 (= e!127018 Unit!5846)))

(declare-fun lt!96081 () Unit!5844)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!188 (array!8194 array!8196 (_ BitVec 32) (_ BitVec 32) V!5613 V!5613 (_ BitVec 64) Int) Unit!5844)

(assert (=> b!193025 (= lt!96081 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!188 (_keys!5928 thiss!1248) (_values!3923 thiss!1248) (mask!9185 thiss!1248) (extraKeys!3677 thiss!1248) (zeroValue!3781 thiss!1248) (minValue!3781 thiss!1248) key!828 (defaultEntry!3940 thiss!1248)))))

(assert (=> b!193025 false))

(declare-fun b!193026 () Bool)

(declare-fun res!91220 () Bool)

(assert (=> b!193026 (=> (not res!91220) (not e!127020))))

(assert (=> b!193026 (= res!91220 (not (= key!828 (bvneg key!828))))))

(declare-fun b!193027 () Bool)

(assert (=> b!193027 (= e!127015 (and e!127016 mapRes!7736))))

(declare-fun condMapEmpty!7736 () Bool)

(declare-fun mapDefault!7736 () ValueCell!1894)

