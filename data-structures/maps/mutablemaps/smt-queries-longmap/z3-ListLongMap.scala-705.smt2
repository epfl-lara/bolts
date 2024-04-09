; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16748 () Bool)

(assert start!16748)

(declare-fun b!168073 () Bool)

(declare-fun b_free!4041 () Bool)

(declare-fun b_next!4041 () Bool)

(assert (=> b!168073 (= b_free!4041 (not b_next!4041))))

(declare-fun tp!14723 () Bool)

(declare-fun b_and!10473 () Bool)

(assert (=> b!168073 (= tp!14723 b_and!10473)))

(declare-fun b!168067 () Bool)

(declare-fun e!110462 () Bool)

(declare-fun tp_is_empty!3843 () Bool)

(assert (=> b!168067 (= e!110462 tp_is_empty!3843)))

(declare-fun b!168068 () Bool)

(declare-fun e!110468 () Bool)

(assert (=> b!168068 (= e!110468 tp_is_empty!3843)))

(declare-fun b!168069 () Bool)

(declare-fun res!79995 () Bool)

(declare-fun e!110466 () Bool)

(assert (=> b!168069 (=> (not res!79995) (not e!110466))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!168069 (= res!79995 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168070 () Bool)

(declare-datatypes ((SeekEntryResult!503 0))(
  ( (MissingZero!503 (index!4180 (_ BitVec 32))) (Found!503 (index!4181 (_ BitVec 32))) (Intermediate!503 (undefined!1315 Bool) (index!4182 (_ BitVec 32)) (x!18595 (_ BitVec 32))) (Undefined!503) (MissingVacant!503 (index!4183 (_ BitVec 32))) )
))
(declare-fun lt!84073 () SeekEntryResult!503)

(declare-datatypes ((V!4771 0))(
  ( (V!4772 (val!1966 Int)) )
))
(declare-datatypes ((ValueCell!1578 0))(
  ( (ValueCellFull!1578 (v!3827 V!4771)) (EmptyCell!1578) )
))
(declare-datatypes ((array!6782 0))(
  ( (array!6783 (arr!3226 (Array (_ BitVec 32) (_ BitVec 64))) (size!3514 (_ BitVec 32))) )
))
(declare-datatypes ((array!6784 0))(
  ( (array!6785 (arr!3227 (Array (_ BitVec 32) ValueCell!1578)) (size!3515 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2064 0))(
  ( (LongMapFixedSize!2065 (defaultEntry!3474 Int) (mask!8233 (_ BitVec 32)) (extraKeys!3215 (_ BitVec 32)) (zeroValue!3317 V!4771) (minValue!3317 V!4771) (_size!1081 (_ BitVec 32)) (_keys!5299 array!6782) (_values!3457 array!6784) (_vacant!1081 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2064)

(declare-fun e!110464 () Bool)

(assert (=> b!168070 (= e!110464 (= (select (arr!3226 (_keys!5299 thiss!1248)) (index!4181 lt!84073)) key!828))))

(declare-fun b!168071 () Bool)

(declare-datatypes ((Unit!5160 0))(
  ( (Unit!5161) )
))
(declare-fun e!110461 () Unit!5160)

(declare-fun Unit!5162 () Unit!5160)

(assert (=> b!168071 (= e!110461 Unit!5162)))

(declare-fun lt!84075 () Unit!5160)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!116 (array!6782 array!6784 (_ BitVec 32) (_ BitVec 32) V!4771 V!4771 (_ BitVec 64) Int) Unit!5160)

(assert (=> b!168071 (= lt!84075 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!116 (_keys!5299 thiss!1248) (_values!3457 thiss!1248) (mask!8233 thiss!1248) (extraKeys!3215 thiss!1248) (zeroValue!3317 thiss!1248) (minValue!3317 thiss!1248) key!828 (defaultEntry!3474 thiss!1248)))))

(assert (=> b!168071 false))

(declare-fun b!168072 () Bool)

(declare-fun e!110463 () Bool)

(declare-fun mapRes!6483 () Bool)

(assert (=> b!168072 (= e!110463 (and e!110468 mapRes!6483))))

(declare-fun condMapEmpty!6483 () Bool)

(declare-fun mapDefault!6483 () ValueCell!1578)

(assert (=> b!168072 (= condMapEmpty!6483 (= (arr!3227 (_values!3457 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1578)) mapDefault!6483)))))

(declare-fun e!110470 () Bool)

(declare-fun array_inv!2063 (array!6782) Bool)

(declare-fun array_inv!2064 (array!6784) Bool)

(assert (=> b!168073 (= e!110470 (and tp!14723 tp_is_empty!3843 (array_inv!2063 (_keys!5299 thiss!1248)) (array_inv!2064 (_values!3457 thiss!1248)) e!110463))))

(declare-fun b!168074 () Bool)

(declare-fun res!79996 () Bool)

(declare-fun e!110467 () Bool)

(assert (=> b!168074 (=> res!79996 e!110467)))

(assert (=> b!168074 (= res!79996 (or (not (= (size!3515 (_values!3457 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8233 thiss!1248)))) (not (= (size!3514 (_keys!5299 thiss!1248)) (size!3515 (_values!3457 thiss!1248)))) (bvslt (mask!8233 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3215 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3215 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!6483 () Bool)

(declare-fun tp!14724 () Bool)

(assert (=> mapNonEmpty!6483 (= mapRes!6483 (and tp!14724 e!110462))))

(declare-fun mapValue!6483 () ValueCell!1578)

(declare-fun mapRest!6483 () (Array (_ BitVec 32) ValueCell!1578))

(declare-fun mapKey!6483 () (_ BitVec 32))

(assert (=> mapNonEmpty!6483 (= (arr!3227 (_values!3457 thiss!1248)) (store mapRest!6483 mapKey!6483 mapValue!6483))))

(declare-fun b!168075 () Bool)

(declare-fun e!110469 () Bool)

(assert (=> b!168075 (= e!110469 (not e!110467))))

(declare-fun res!80001 () Bool)

(assert (=> b!168075 (=> res!80001 e!110467)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!168075 (= res!80001 (not (validMask!0 (mask!8233 thiss!1248))))))

(declare-datatypes ((tuple2!3154 0))(
  ( (tuple2!3155 (_1!1587 (_ BitVec 64)) (_2!1587 V!4771)) )
))
(declare-datatypes ((List!2168 0))(
  ( (Nil!2165) (Cons!2164 (h!2781 tuple2!3154) (t!6978 List!2168)) )
))
(declare-datatypes ((ListLongMap!2123 0))(
  ( (ListLongMap!2124 (toList!1077 List!2168)) )
))
(declare-fun lt!84071 () ListLongMap!2123)

(declare-fun v!309 () V!4771)

(declare-fun +!219 (ListLongMap!2123 tuple2!3154) ListLongMap!2123)

(declare-fun getCurrentListMap!730 (array!6782 array!6784 (_ BitVec 32) (_ BitVec 32) V!4771 V!4771 (_ BitVec 32) Int) ListLongMap!2123)

(assert (=> b!168075 (= (+!219 lt!84071 (tuple2!3155 key!828 v!309)) (getCurrentListMap!730 (_keys!5299 thiss!1248) (array!6785 (store (arr!3227 (_values!3457 thiss!1248)) (index!4181 lt!84073) (ValueCellFull!1578 v!309)) (size!3515 (_values!3457 thiss!1248))) (mask!8233 thiss!1248) (extraKeys!3215 thiss!1248) (zeroValue!3317 thiss!1248) (minValue!3317 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3474 thiss!1248)))))

(declare-fun lt!84076 () Unit!5160)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!79 (array!6782 array!6784 (_ BitVec 32) (_ BitVec 32) V!4771 V!4771 (_ BitVec 32) (_ BitVec 64) V!4771 Int) Unit!5160)

(assert (=> b!168075 (= lt!84076 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!79 (_keys!5299 thiss!1248) (_values!3457 thiss!1248) (mask!8233 thiss!1248) (extraKeys!3215 thiss!1248) (zeroValue!3317 thiss!1248) (minValue!3317 thiss!1248) (index!4181 lt!84073) key!828 v!309 (defaultEntry!3474 thiss!1248)))))

(declare-fun lt!84077 () Unit!5160)

(assert (=> b!168075 (= lt!84077 e!110461)))

(declare-fun c!30324 () Bool)

(declare-fun contains!1113 (ListLongMap!2123 (_ BitVec 64)) Bool)

(assert (=> b!168075 (= c!30324 (contains!1113 lt!84071 key!828))))

(assert (=> b!168075 (= lt!84071 (getCurrentListMap!730 (_keys!5299 thiss!1248) (_values!3457 thiss!1248) (mask!8233 thiss!1248) (extraKeys!3215 thiss!1248) (zeroValue!3317 thiss!1248) (minValue!3317 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3474 thiss!1248)))))

(declare-fun b!168076 () Bool)

(assert (=> b!168076 (= e!110466 e!110469)))

(declare-fun res!79999 () Bool)

(assert (=> b!168076 (=> (not res!79999) (not e!110469))))

(get-info :version)

(assert (=> b!168076 (= res!79999 (and (not ((_ is Undefined!503) lt!84073)) (not ((_ is MissingVacant!503) lt!84073)) (not ((_ is MissingZero!503) lt!84073)) ((_ is Found!503) lt!84073)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6782 (_ BitVec 32)) SeekEntryResult!503)

(assert (=> b!168076 (= lt!84073 (seekEntryOrOpen!0 key!828 (_keys!5299 thiss!1248) (mask!8233 thiss!1248)))))

(declare-fun res!80000 () Bool)

(assert (=> start!16748 (=> (not res!80000) (not e!110466))))

(declare-fun valid!887 (LongMapFixedSize!2064) Bool)

(assert (=> start!16748 (= res!80000 (valid!887 thiss!1248))))

(assert (=> start!16748 e!110466))

(assert (=> start!16748 e!110470))

(assert (=> start!16748 true))

(assert (=> start!16748 tp_is_empty!3843))

(declare-fun b!168077 () Bool)

(declare-fun res!79998 () Bool)

(assert (=> b!168077 (=> res!79998 e!110467)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6782 (_ BitVec 32)) Bool)

(assert (=> b!168077 (= res!79998 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5299 thiss!1248) (mask!8233 thiss!1248))))))

(declare-fun mapIsEmpty!6483 () Bool)

(assert (=> mapIsEmpty!6483 mapRes!6483))

(declare-fun b!168078 () Bool)

(declare-fun lt!84072 () Unit!5160)

(assert (=> b!168078 (= e!110461 lt!84072)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!117 (array!6782 array!6784 (_ BitVec 32) (_ BitVec 32) V!4771 V!4771 (_ BitVec 64) Int) Unit!5160)

(assert (=> b!168078 (= lt!84072 (lemmaInListMapThenSeekEntryOrOpenFindsIt!117 (_keys!5299 thiss!1248) (_values!3457 thiss!1248) (mask!8233 thiss!1248) (extraKeys!3215 thiss!1248) (zeroValue!3317 thiss!1248) (minValue!3317 thiss!1248) key!828 (defaultEntry!3474 thiss!1248)))))

(declare-fun res!79997 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168078 (= res!79997 (inRange!0 (index!4181 lt!84073) (mask!8233 thiss!1248)))))

(assert (=> b!168078 (=> (not res!79997) (not e!110464))))

(assert (=> b!168078 e!110464))

(declare-fun b!168079 () Bool)

(assert (=> b!168079 (= e!110467 true)))

(declare-fun lt!84074 () Bool)

(declare-datatypes ((List!2169 0))(
  ( (Nil!2166) (Cons!2165 (h!2782 (_ BitVec 64)) (t!6979 List!2169)) )
))
(declare-fun arrayNoDuplicates!0 (array!6782 (_ BitVec 32) List!2169) Bool)

(assert (=> b!168079 (= lt!84074 (arrayNoDuplicates!0 (_keys!5299 thiss!1248) #b00000000000000000000000000000000 Nil!2166))))

(assert (= (and start!16748 res!80000) b!168069))

(assert (= (and b!168069 res!79995) b!168076))

(assert (= (and b!168076 res!79999) b!168075))

(assert (= (and b!168075 c!30324) b!168078))

(assert (= (and b!168075 (not c!30324)) b!168071))

(assert (= (and b!168078 res!79997) b!168070))

(assert (= (and b!168075 (not res!80001)) b!168074))

(assert (= (and b!168074 (not res!79996)) b!168077))

(assert (= (and b!168077 (not res!79998)) b!168079))

(assert (= (and b!168072 condMapEmpty!6483) mapIsEmpty!6483))

(assert (= (and b!168072 (not condMapEmpty!6483)) mapNonEmpty!6483))

(assert (= (and mapNonEmpty!6483 ((_ is ValueCellFull!1578) mapValue!6483)) b!168067))

(assert (= (and b!168072 ((_ is ValueCellFull!1578) mapDefault!6483)) b!168068))

(assert (= b!168073 b!168072))

(assert (= start!16748 b!168073))

(declare-fun m!197189 () Bool)

(assert (=> b!168073 m!197189))

(declare-fun m!197191 () Bool)

(assert (=> b!168073 m!197191))

(declare-fun m!197193 () Bool)

(assert (=> b!168078 m!197193))

(declare-fun m!197195 () Bool)

(assert (=> b!168078 m!197195))

(declare-fun m!197197 () Bool)

(assert (=> b!168077 m!197197))

(declare-fun m!197199 () Bool)

(assert (=> mapNonEmpty!6483 m!197199))

(declare-fun m!197201 () Bool)

(assert (=> start!16748 m!197201))

(declare-fun m!197203 () Bool)

(assert (=> b!168079 m!197203))

(declare-fun m!197205 () Bool)

(assert (=> b!168071 m!197205))

(declare-fun m!197207 () Bool)

(assert (=> b!168075 m!197207))

(declare-fun m!197209 () Bool)

(assert (=> b!168075 m!197209))

(declare-fun m!197211 () Bool)

(assert (=> b!168075 m!197211))

(declare-fun m!197213 () Bool)

(assert (=> b!168075 m!197213))

(declare-fun m!197215 () Bool)

(assert (=> b!168075 m!197215))

(declare-fun m!197217 () Bool)

(assert (=> b!168075 m!197217))

(declare-fun m!197219 () Bool)

(assert (=> b!168075 m!197219))

(declare-fun m!197221 () Bool)

(assert (=> b!168070 m!197221))

(declare-fun m!197223 () Bool)

(assert (=> b!168076 m!197223))

(check-sat (not b!168071) (not start!16748) (not b!168078) (not b!168073) b_and!10473 (not b!168079) (not b!168077) (not b!168076) (not b!168075) (not b_next!4041) (not mapNonEmpty!6483) tp_is_empty!3843)
(check-sat b_and!10473 (not b_next!4041))
