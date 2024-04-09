; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19516 () Bool)

(assert start!19516)

(declare-fun b!191464 () Bool)

(declare-fun b_free!4681 () Bool)

(declare-fun b_next!4681 () Bool)

(assert (=> b!191464 (= b_free!4681 (not b_next!4681))))

(declare-fun tp!16892 () Bool)

(declare-fun b_and!11373 () Bool)

(assert (=> b!191464 (= tp!16892 b_and!11373)))

(declare-fun b!191461 () Bool)

(declare-fun e!126011 () Bool)

(declare-datatypes ((V!5585 0))(
  ( (V!5586 (val!2271 Int)) )
))
(declare-datatypes ((ValueCell!1883 0))(
  ( (ValueCellFull!1883 (v!4207 V!5585)) (EmptyCell!1883) )
))
(declare-datatypes ((array!8144 0))(
  ( (array!8145 (arr!3836 (Array (_ BitVec 32) (_ BitVec 64))) (size!4158 (_ BitVec 32))) )
))
(declare-datatypes ((array!8146 0))(
  ( (array!8147 (arr!3837 (Array (_ BitVec 32) ValueCell!1883)) (size!4159 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2674 0))(
  ( (LongMapFixedSize!2675 (defaultEntry!3909 Int) (mask!9130 (_ BitVec 32)) (extraKeys!3646 (_ BitVec 32)) (zeroValue!3750 V!5585) (minValue!3750 V!5585) (_size!1386 (_ BitVec 32)) (_keys!5887 array!8144) (_values!3892 array!8146) (_vacant!1386 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2674)

(assert (=> b!191461 (= e!126011 (or (not (= (size!4159 (_values!3892 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9130 thiss!1248)))) (not (= (size!4158 (_keys!5887 thiss!1248)) (size!4159 (_values!3892 thiss!1248)))) (bvslt (mask!9130 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3646 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!191462 () Bool)

(declare-fun e!126009 () Bool)

(assert (=> b!191462 (= e!126009 (not e!126011))))

(declare-fun res!90505 () Bool)

(assert (=> b!191462 (=> res!90505 e!126011)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!191462 (= res!90505 (not (validMask!0 (mask!9130 thiss!1248))))))

(declare-datatypes ((tuple2!3526 0))(
  ( (tuple2!3527 (_1!1773 (_ BitVec 64)) (_2!1773 V!5585)) )
))
(declare-datatypes ((List!2444 0))(
  ( (Nil!2441) (Cons!2440 (h!3079 tuple2!3526) (t!7366 List!2444)) )
))
(declare-datatypes ((ListLongMap!2457 0))(
  ( (ListLongMap!2458 (toList!1244 List!2444)) )
))
(declare-fun lt!95112 () ListLongMap!2457)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!5585)

(declare-datatypes ((SeekEntryResult!688 0))(
  ( (MissingZero!688 (index!4922 (_ BitVec 32))) (Found!688 (index!4923 (_ BitVec 32))) (Intermediate!688 (undefined!1500 Bool) (index!4924 (_ BitVec 32)) (x!20560 (_ BitVec 32))) (Undefined!688) (MissingVacant!688 (index!4925 (_ BitVec 32))) )
))
(declare-fun lt!95110 () SeekEntryResult!688)

(declare-fun +!302 (ListLongMap!2457 tuple2!3526) ListLongMap!2457)

(declare-fun getCurrentListMap!887 (array!8144 array!8146 (_ BitVec 32) (_ BitVec 32) V!5585 V!5585 (_ BitVec 32) Int) ListLongMap!2457)

(assert (=> b!191462 (= (+!302 lt!95112 (tuple2!3527 key!828 v!309)) (getCurrentListMap!887 (_keys!5887 thiss!1248) (array!8147 (store (arr!3837 (_values!3892 thiss!1248)) (index!4923 lt!95110) (ValueCellFull!1883 v!309)) (size!4159 (_values!3892 thiss!1248))) (mask!9130 thiss!1248) (extraKeys!3646 thiss!1248) (zeroValue!3750 thiss!1248) (minValue!3750 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3909 thiss!1248)))))

(declare-datatypes ((Unit!5787 0))(
  ( (Unit!5788) )
))
(declare-fun lt!95115 () Unit!5787)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!108 (array!8144 array!8146 (_ BitVec 32) (_ BitVec 32) V!5585 V!5585 (_ BitVec 32) (_ BitVec 64) V!5585 Int) Unit!5787)

(assert (=> b!191462 (= lt!95115 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!108 (_keys!5887 thiss!1248) (_values!3892 thiss!1248) (mask!9130 thiss!1248) (extraKeys!3646 thiss!1248) (zeroValue!3750 thiss!1248) (minValue!3750 thiss!1248) (index!4923 lt!95110) key!828 v!309 (defaultEntry!3909 thiss!1248)))))

(declare-fun lt!95113 () Unit!5787)

(declare-fun e!126004 () Unit!5787)

(assert (=> b!191462 (= lt!95113 e!126004)))

(declare-fun c!34459 () Bool)

(declare-fun contains!1352 (ListLongMap!2457 (_ BitVec 64)) Bool)

(assert (=> b!191462 (= c!34459 (contains!1352 lt!95112 key!828))))

(assert (=> b!191462 (= lt!95112 (getCurrentListMap!887 (_keys!5887 thiss!1248) (_values!3892 thiss!1248) (mask!9130 thiss!1248) (extraKeys!3646 thiss!1248) (zeroValue!3750 thiss!1248) (minValue!3750 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3909 thiss!1248)))))

(declare-fun b!191463 () Bool)

(declare-fun e!126002 () Bool)

(assert (=> b!191463 (= e!126002 (= (select (arr!3836 (_keys!5887 thiss!1248)) (index!4923 lt!95110)) key!828))))

(declare-fun e!126008 () Bool)

(declare-fun tp_is_empty!4453 () Bool)

(declare-fun e!126003 () Bool)

(declare-fun array_inv!2477 (array!8144) Bool)

(declare-fun array_inv!2478 (array!8146) Bool)

(assert (=> b!191464 (= e!126008 (and tp!16892 tp_is_empty!4453 (array_inv!2477 (_keys!5887 thiss!1248)) (array_inv!2478 (_values!3892 thiss!1248)) e!126003))))

(declare-fun mapNonEmpty!7692 () Bool)

(declare-fun mapRes!7692 () Bool)

(declare-fun tp!16893 () Bool)

(declare-fun e!126005 () Bool)

(assert (=> mapNonEmpty!7692 (= mapRes!7692 (and tp!16893 e!126005))))

(declare-fun mapRest!7692 () (Array (_ BitVec 32) ValueCell!1883))

(declare-fun mapKey!7692 () (_ BitVec 32))

(declare-fun mapValue!7692 () ValueCell!1883)

(assert (=> mapNonEmpty!7692 (= (arr!3837 (_values!3892 thiss!1248)) (store mapRest!7692 mapKey!7692 mapValue!7692))))

(declare-fun b!191465 () Bool)

(declare-fun lt!95114 () Unit!5787)

(assert (=> b!191465 (= e!126004 lt!95114)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!174 (array!8144 array!8146 (_ BitVec 32) (_ BitVec 32) V!5585 V!5585 (_ BitVec 64) Int) Unit!5787)

(assert (=> b!191465 (= lt!95114 (lemmaInListMapThenSeekEntryOrOpenFindsIt!174 (_keys!5887 thiss!1248) (_values!3892 thiss!1248) (mask!9130 thiss!1248) (extraKeys!3646 thiss!1248) (zeroValue!3750 thiss!1248) (minValue!3750 thiss!1248) key!828 (defaultEntry!3909 thiss!1248)))))

(declare-fun res!90503 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!191465 (= res!90503 (inRange!0 (index!4923 lt!95110) (mask!9130 thiss!1248)))))

(assert (=> b!191465 (=> (not res!90503) (not e!126002))))

(assert (=> b!191465 e!126002))

(declare-fun b!191466 () Bool)

(assert (=> b!191466 (= e!126005 tp_is_empty!4453)))

(declare-fun b!191467 () Bool)

(declare-fun Unit!5789 () Unit!5787)

(assert (=> b!191467 (= e!126004 Unit!5789)))

(declare-fun lt!95111 () Unit!5787)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!178 (array!8144 array!8146 (_ BitVec 32) (_ BitVec 32) V!5585 V!5585 (_ BitVec 64) Int) Unit!5787)

(assert (=> b!191467 (= lt!95111 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!178 (_keys!5887 thiss!1248) (_values!3892 thiss!1248) (mask!9130 thiss!1248) (extraKeys!3646 thiss!1248) (zeroValue!3750 thiss!1248) (minValue!3750 thiss!1248) key!828 (defaultEntry!3909 thiss!1248)))))

(assert (=> b!191467 false))

(declare-fun mapIsEmpty!7692 () Bool)

(assert (=> mapIsEmpty!7692 mapRes!7692))

(declare-fun b!191468 () Bool)

(declare-fun res!90501 () Bool)

(declare-fun e!126007 () Bool)

(assert (=> b!191468 (=> (not res!90501) (not e!126007))))

(assert (=> b!191468 (= res!90501 (not (= key!828 (bvneg key!828))))))

(declare-fun b!191469 () Bool)

(declare-fun e!126010 () Bool)

(assert (=> b!191469 (= e!126010 tp_is_empty!4453)))

(declare-fun b!191470 () Bool)

(assert (=> b!191470 (= e!126007 e!126009)))

(declare-fun res!90504 () Bool)

(assert (=> b!191470 (=> (not res!90504) (not e!126009))))

(assert (=> b!191470 (= res!90504 (and (not (is-Undefined!688 lt!95110)) (not (is-MissingVacant!688 lt!95110)) (not (is-MissingZero!688 lt!95110)) (is-Found!688 lt!95110)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8144 (_ BitVec 32)) SeekEntryResult!688)

(assert (=> b!191470 (= lt!95110 (seekEntryOrOpen!0 key!828 (_keys!5887 thiss!1248) (mask!9130 thiss!1248)))))

(declare-fun b!191471 () Bool)

(assert (=> b!191471 (= e!126003 (and e!126010 mapRes!7692))))

(declare-fun condMapEmpty!7692 () Bool)

(declare-fun mapDefault!7692 () ValueCell!1883)

