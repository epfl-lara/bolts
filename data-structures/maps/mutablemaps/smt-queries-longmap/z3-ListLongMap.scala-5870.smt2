; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75780 () Bool)

(assert start!75780)

(declare-fun b!890654 () Bool)

(declare-fun b_free!15723 () Bool)

(declare-fun b_next!15723 () Bool)

(assert (=> b!890654 (= b_free!15723 (not b_next!15723))))

(declare-fun tp!55138 () Bool)

(declare-fun b_and!25981 () Bool)

(assert (=> b!890654 (= tp!55138 b_and!25981)))

(declare-fun b!890645 () Bool)

(declare-fun e!496871 () Bool)

(declare-fun e!496866 () Bool)

(declare-fun mapRes!28631 () Bool)

(assert (=> b!890645 (= e!496871 (and e!496866 mapRes!28631))))

(declare-fun condMapEmpty!28631 () Bool)

(declare-datatypes ((array!52068 0))(
  ( (array!52069 (arr!25036 (Array (_ BitVec 32) (_ BitVec 64))) (size!25481 (_ BitVec 32))) )
))
(declare-datatypes ((V!29033 0))(
  ( (V!29034 (val!9076 Int)) )
))
(declare-datatypes ((ValueCell!8544 0))(
  ( (ValueCellFull!8544 (v!11548 V!29033)) (EmptyCell!8544) )
))
(declare-datatypes ((array!52070 0))(
  ( (array!52071 (arr!25037 (Array (_ BitVec 32) ValueCell!8544)) (size!25482 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4104 0))(
  ( (LongMapFixedSize!4105 (defaultEntry!5249 Int) (mask!25723 (_ BitVec 32)) (extraKeys!4943 (_ BitVec 32)) (zeroValue!5047 V!29033) (minValue!5047 V!29033) (_size!2107 (_ BitVec 32)) (_keys!9928 array!52068) (_values!5234 array!52070) (_vacant!2107 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4104)

(declare-fun mapDefault!28631 () ValueCell!8544)

(assert (=> b!890645 (= condMapEmpty!28631 (= (arr!25037 (_values!5234 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8544)) mapDefault!28631)))))

(declare-fun mapNonEmpty!28631 () Bool)

(declare-fun tp!55139 () Bool)

(declare-fun e!496872 () Bool)

(assert (=> mapNonEmpty!28631 (= mapRes!28631 (and tp!55139 e!496872))))

(declare-fun mapKey!28631 () (_ BitVec 32))

(declare-fun mapValue!28631 () ValueCell!8544)

(declare-fun mapRest!28631 () (Array (_ BitVec 32) ValueCell!8544))

(assert (=> mapNonEmpty!28631 (= (arr!25037 (_values!5234 thiss!1181)) (store mapRest!28631 mapKey!28631 mapValue!28631))))

(declare-fun b!890646 () Bool)

(declare-fun res!603567 () Bool)

(declare-fun e!496874 () Bool)

(assert (=> b!890646 (=> res!603567 e!496874)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52068 (_ BitVec 32)) Bool)

(assert (=> b!890646 (= res!603567 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9928 thiss!1181) (mask!25723 thiss!1181))))))

(declare-fun mapIsEmpty!28631 () Bool)

(assert (=> mapIsEmpty!28631 mapRes!28631))

(declare-fun b!890647 () Bool)

(declare-fun res!603561 () Bool)

(declare-fun e!496873 () Bool)

(assert (=> b!890647 (=> (not res!603561) (not e!496873))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890647 (= res!603561 (not (= key!785 (bvneg key!785))))))

(declare-fun res!603564 () Bool)

(assert (=> start!75780 (=> (not res!603564) (not e!496873))))

(declare-fun valid!1583 (LongMapFixedSize!4104) Bool)

(assert (=> start!75780 (= res!603564 (valid!1583 thiss!1181))))

(assert (=> start!75780 e!496873))

(declare-fun e!496867 () Bool)

(assert (=> start!75780 e!496867))

(assert (=> start!75780 true))

(declare-fun b!890648 () Bool)

(declare-fun e!496868 () Bool)

(declare-datatypes ((SeekEntryResult!8803 0))(
  ( (MissingZero!8803 (index!37582 (_ BitVec 32))) (Found!8803 (index!37583 (_ BitVec 32))) (Intermediate!8803 (undefined!9615 Bool) (index!37584 (_ BitVec 32)) (x!75668 (_ BitVec 32))) (Undefined!8803) (MissingVacant!8803 (index!37585 (_ BitVec 32))) )
))
(declare-fun lt!402373 () SeekEntryResult!8803)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890648 (= e!496868 (inRange!0 (index!37583 lt!402373) (mask!25723 thiss!1181)))))

(declare-fun b!890649 () Bool)

(declare-fun tp_is_empty!18051 () Bool)

(assert (=> b!890649 (= e!496872 tp_is_empty!18051)))

(declare-fun b!890650 () Bool)

(declare-fun e!496870 () Bool)

(assert (=> b!890650 (= e!496873 (not e!496870))))

(declare-fun res!603562 () Bool)

(assert (=> b!890650 (=> res!603562 e!496870)))

(get-info :version)

(assert (=> b!890650 (= res!603562 (not ((_ is Found!8803) lt!402373)))))

(assert (=> b!890650 e!496868))

(declare-fun res!603563 () Bool)

(assert (=> b!890650 (=> res!603563 e!496868)))

(assert (=> b!890650 (= res!603563 (not ((_ is Found!8803) lt!402373)))))

(declare-datatypes ((Unit!30291 0))(
  ( (Unit!30292) )
))
(declare-fun lt!402372 () Unit!30291)

(declare-fun lemmaSeekEntryGivesInRangeIndex!25 (array!52068 array!52070 (_ BitVec 32) (_ BitVec 32) V!29033 V!29033 (_ BitVec 64)) Unit!30291)

(assert (=> b!890650 (= lt!402372 (lemmaSeekEntryGivesInRangeIndex!25 (_keys!9928 thiss!1181) (_values!5234 thiss!1181) (mask!25723 thiss!1181) (extraKeys!4943 thiss!1181) (zeroValue!5047 thiss!1181) (minValue!5047 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52068 (_ BitVec 32)) SeekEntryResult!8803)

(assert (=> b!890650 (= lt!402373 (seekEntry!0 key!785 (_keys!9928 thiss!1181) (mask!25723 thiss!1181)))))

(declare-fun b!890651 () Bool)

(assert (=> b!890651 (= e!496870 e!496874)))

(declare-fun res!603565 () Bool)

(assert (=> b!890651 (=> res!603565 e!496874)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890651 (= res!603565 (not (validMask!0 (mask!25723 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890651 (arrayContainsKey!0 (_keys!9928 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402375 () Unit!30291)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52068 (_ BitVec 64) (_ BitVec 32)) Unit!30291)

(assert (=> b!890651 (= lt!402375 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9928 thiss!1181) key!785 (index!37583 lt!402373)))))

(declare-fun b!890652 () Bool)

(declare-fun res!603566 () Bool)

(assert (=> b!890652 (=> res!603566 e!496874)))

(assert (=> b!890652 (= res!603566 (or (not (= (size!25482 (_values!5234 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25723 thiss!1181)))) (not (= (size!25481 (_keys!9928 thiss!1181)) (size!25482 (_values!5234 thiss!1181)))) (bvslt (mask!25723 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4943 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4943 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890653 () Bool)

(assert (=> b!890653 (= e!496874 true)))

(declare-fun lt!402374 () Bool)

(declare-datatypes ((List!17811 0))(
  ( (Nil!17808) (Cons!17807 (h!18938 (_ BitVec 64)) (t!25118 List!17811)) )
))
(declare-fun arrayNoDuplicates!0 (array!52068 (_ BitVec 32) List!17811) Bool)

(assert (=> b!890653 (= lt!402374 (arrayNoDuplicates!0 (_keys!9928 thiss!1181) #b00000000000000000000000000000000 Nil!17808))))

(declare-fun array_inv!19656 (array!52068) Bool)

(declare-fun array_inv!19657 (array!52070) Bool)

(assert (=> b!890654 (= e!496867 (and tp!55138 tp_is_empty!18051 (array_inv!19656 (_keys!9928 thiss!1181)) (array_inv!19657 (_values!5234 thiss!1181)) e!496871))))

(declare-fun b!890655 () Bool)

(assert (=> b!890655 (= e!496866 tp_is_empty!18051)))

(assert (= (and start!75780 res!603564) b!890647))

(assert (= (and b!890647 res!603561) b!890650))

(assert (= (and b!890650 (not res!603563)) b!890648))

(assert (= (and b!890650 (not res!603562)) b!890651))

(assert (= (and b!890651 (not res!603565)) b!890652))

(assert (= (and b!890652 (not res!603566)) b!890646))

(assert (= (and b!890646 (not res!603567)) b!890653))

(assert (= (and b!890645 condMapEmpty!28631) mapIsEmpty!28631))

(assert (= (and b!890645 (not condMapEmpty!28631)) mapNonEmpty!28631))

(assert (= (and mapNonEmpty!28631 ((_ is ValueCellFull!8544) mapValue!28631)) b!890649))

(assert (= (and b!890645 ((_ is ValueCellFull!8544) mapDefault!28631)) b!890655))

(assert (= b!890654 b!890645))

(assert (= start!75780 b!890654))

(declare-fun m!829201 () Bool)

(assert (=> b!890651 m!829201))

(declare-fun m!829203 () Bool)

(assert (=> b!890651 m!829203))

(declare-fun m!829205 () Bool)

(assert (=> b!890651 m!829205))

(declare-fun m!829207 () Bool)

(assert (=> mapNonEmpty!28631 m!829207))

(declare-fun m!829209 () Bool)

(assert (=> b!890654 m!829209))

(declare-fun m!829211 () Bool)

(assert (=> b!890654 m!829211))

(declare-fun m!829213 () Bool)

(assert (=> b!890648 m!829213))

(declare-fun m!829215 () Bool)

(assert (=> start!75780 m!829215))

(declare-fun m!829217 () Bool)

(assert (=> b!890646 m!829217))

(declare-fun m!829219 () Bool)

(assert (=> b!890650 m!829219))

(declare-fun m!829221 () Bool)

(assert (=> b!890650 m!829221))

(declare-fun m!829223 () Bool)

(assert (=> b!890653 m!829223))

(check-sat (not b!890653) (not b!890651) (not b!890650) tp_is_empty!18051 (not start!75780) (not b!890654) (not b!890646) (not b!890648) (not mapNonEmpty!28631) (not b_next!15723) b_and!25981)
(check-sat b_and!25981 (not b_next!15723))
