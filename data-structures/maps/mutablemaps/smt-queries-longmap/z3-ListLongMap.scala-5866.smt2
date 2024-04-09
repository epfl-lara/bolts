; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75756 () Bool)

(assert start!75756)

(declare-fun b!890251 () Bool)

(declare-fun b_free!15699 () Bool)

(declare-fun b_next!15699 () Bool)

(assert (=> b!890251 (= b_free!15699 (not b_next!15699))))

(declare-fun tp!55066 () Bool)

(declare-fun b_and!25957 () Bool)

(assert (=> b!890251 (= tp!55066 b_and!25957)))

(declare-fun b!890249 () Bool)

(declare-fun res!603313 () Bool)

(declare-fun e!496546 () Bool)

(assert (=> b!890249 (=> (not res!603313) (not e!496546))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890249 (= res!603313 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890250 () Bool)

(declare-fun e!496544 () Bool)

(assert (=> b!890250 (= e!496544 true)))

(declare-fun lt!402228 () Bool)

(declare-datatypes ((array!52020 0))(
  ( (array!52021 (arr!25012 (Array (_ BitVec 32) (_ BitVec 64))) (size!25457 (_ BitVec 32))) )
))
(declare-datatypes ((V!29001 0))(
  ( (V!29002 (val!9064 Int)) )
))
(declare-datatypes ((ValueCell!8532 0))(
  ( (ValueCellFull!8532 (v!11536 V!29001)) (EmptyCell!8532) )
))
(declare-datatypes ((array!52022 0))(
  ( (array!52023 (arr!25013 (Array (_ BitVec 32) ValueCell!8532)) (size!25458 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4080 0))(
  ( (LongMapFixedSize!4081 (defaultEntry!5237 Int) (mask!25703 (_ BitVec 32)) (extraKeys!4931 (_ BitVec 32)) (zeroValue!5035 V!29001) (minValue!5035 V!29001) (_size!2095 (_ BitVec 32)) (_keys!9916 array!52020) (_values!5222 array!52022) (_vacant!2095 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4080)

(declare-datatypes ((List!17803 0))(
  ( (Nil!17800) (Cons!17799 (h!18930 (_ BitVec 64)) (t!25110 List!17803)) )
))
(declare-fun arrayNoDuplicates!0 (array!52020 (_ BitVec 32) List!17803) Bool)

(assert (=> b!890250 (= lt!402228 (arrayNoDuplicates!0 (_keys!9916 thiss!1181) #b00000000000000000000000000000000 Nil!17800))))

(declare-fun e!496542 () Bool)

(declare-fun tp_is_empty!18027 () Bool)

(declare-fun e!496543 () Bool)

(declare-fun array_inv!19638 (array!52020) Bool)

(declare-fun array_inv!19639 (array!52022) Bool)

(assert (=> b!890251 (= e!496542 (and tp!55066 tp_is_empty!18027 (array_inv!19638 (_keys!9916 thiss!1181)) (array_inv!19639 (_values!5222 thiss!1181)) e!496543))))

(declare-fun b!890252 () Bool)

(declare-fun e!496548 () Bool)

(declare-fun mapRes!28595 () Bool)

(assert (=> b!890252 (= e!496543 (and e!496548 mapRes!28595))))

(declare-fun condMapEmpty!28595 () Bool)

(declare-fun mapDefault!28595 () ValueCell!8532)

(assert (=> b!890252 (= condMapEmpty!28595 (= (arr!25013 (_values!5222 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8532)) mapDefault!28595)))))

(declare-fun b!890253 () Bool)

(declare-fun e!496547 () Bool)

(declare-datatypes ((SeekEntryResult!8792 0))(
  ( (MissingZero!8792 (index!37538 (_ BitVec 32))) (Found!8792 (index!37539 (_ BitVec 32))) (Intermediate!8792 (undefined!9604 Bool) (index!37540 (_ BitVec 32)) (x!75625 (_ BitVec 32))) (Undefined!8792) (MissingVacant!8792 (index!37541 (_ BitVec 32))) )
))
(declare-fun lt!402229 () SeekEntryResult!8792)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890253 (= e!496547 (inRange!0 (index!37539 lt!402229) (mask!25703 thiss!1181)))))

(declare-fun b!890254 () Bool)

(declare-fun res!603311 () Bool)

(assert (=> b!890254 (=> res!603311 e!496544)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52020 (_ BitVec 32)) Bool)

(assert (=> b!890254 (= res!603311 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9916 thiss!1181) (mask!25703 thiss!1181))))))

(declare-fun res!603310 () Bool)

(assert (=> start!75756 (=> (not res!603310) (not e!496546))))

(declare-fun valid!1574 (LongMapFixedSize!4080) Bool)

(assert (=> start!75756 (= res!603310 (valid!1574 thiss!1181))))

(assert (=> start!75756 e!496546))

(assert (=> start!75756 e!496542))

(assert (=> start!75756 true))

(declare-fun b!890255 () Bool)

(declare-fun e!496545 () Bool)

(assert (=> b!890255 (= e!496545 e!496544)))

(declare-fun res!603312 () Bool)

(assert (=> b!890255 (=> res!603312 e!496544)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890255 (= res!603312 (not (validMask!0 (mask!25703 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890255 (arrayContainsKey!0 (_keys!9916 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30269 0))(
  ( (Unit!30270) )
))
(declare-fun lt!402230 () Unit!30269)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52020 (_ BitVec 64) (_ BitVec 32)) Unit!30269)

(assert (=> b!890255 (= lt!402230 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9916 thiss!1181) key!785 (index!37539 lt!402229)))))

(declare-fun mapNonEmpty!28595 () Bool)

(declare-fun tp!55067 () Bool)

(declare-fun e!496550 () Bool)

(assert (=> mapNonEmpty!28595 (= mapRes!28595 (and tp!55067 e!496550))))

(declare-fun mapValue!28595 () ValueCell!8532)

(declare-fun mapKey!28595 () (_ BitVec 32))

(declare-fun mapRest!28595 () (Array (_ BitVec 32) ValueCell!8532))

(assert (=> mapNonEmpty!28595 (= (arr!25013 (_values!5222 thiss!1181)) (store mapRest!28595 mapKey!28595 mapValue!28595))))

(declare-fun b!890256 () Bool)

(declare-fun res!603314 () Bool)

(assert (=> b!890256 (=> res!603314 e!496544)))

(assert (=> b!890256 (= res!603314 (or (not (= (size!25458 (_values!5222 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25703 thiss!1181)))) (not (= (size!25457 (_keys!9916 thiss!1181)) (size!25458 (_values!5222 thiss!1181)))) (bvslt (mask!25703 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4931 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4931 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890257 () Bool)

(assert (=> b!890257 (= e!496546 (not e!496545))))

(declare-fun res!603315 () Bool)

(assert (=> b!890257 (=> res!603315 e!496545)))

(get-info :version)

(assert (=> b!890257 (= res!603315 (not ((_ is Found!8792) lt!402229)))))

(assert (=> b!890257 e!496547))

(declare-fun res!603309 () Bool)

(assert (=> b!890257 (=> res!603309 e!496547)))

(assert (=> b!890257 (= res!603309 (not ((_ is Found!8792) lt!402229)))))

(declare-fun lt!402231 () Unit!30269)

(declare-fun lemmaSeekEntryGivesInRangeIndex!14 (array!52020 array!52022 (_ BitVec 32) (_ BitVec 32) V!29001 V!29001 (_ BitVec 64)) Unit!30269)

(assert (=> b!890257 (= lt!402231 (lemmaSeekEntryGivesInRangeIndex!14 (_keys!9916 thiss!1181) (_values!5222 thiss!1181) (mask!25703 thiss!1181) (extraKeys!4931 thiss!1181) (zeroValue!5035 thiss!1181) (minValue!5035 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52020 (_ BitVec 32)) SeekEntryResult!8792)

(assert (=> b!890257 (= lt!402229 (seekEntry!0 key!785 (_keys!9916 thiss!1181) (mask!25703 thiss!1181)))))

(declare-fun b!890258 () Bool)

(assert (=> b!890258 (= e!496548 tp_is_empty!18027)))

(declare-fun mapIsEmpty!28595 () Bool)

(assert (=> mapIsEmpty!28595 mapRes!28595))

(declare-fun b!890259 () Bool)

(assert (=> b!890259 (= e!496550 tp_is_empty!18027)))

(assert (= (and start!75756 res!603310) b!890249))

(assert (= (and b!890249 res!603313) b!890257))

(assert (= (and b!890257 (not res!603309)) b!890253))

(assert (= (and b!890257 (not res!603315)) b!890255))

(assert (= (and b!890255 (not res!603312)) b!890256))

(assert (= (and b!890256 (not res!603314)) b!890254))

(assert (= (and b!890254 (not res!603311)) b!890250))

(assert (= (and b!890252 condMapEmpty!28595) mapIsEmpty!28595))

(assert (= (and b!890252 (not condMapEmpty!28595)) mapNonEmpty!28595))

(assert (= (and mapNonEmpty!28595 ((_ is ValueCellFull!8532) mapValue!28595)) b!890259))

(assert (= (and b!890252 ((_ is ValueCellFull!8532) mapDefault!28595)) b!890258))

(assert (= b!890251 b!890252))

(assert (= start!75756 b!890251))

(declare-fun m!828913 () Bool)

(assert (=> b!890257 m!828913))

(declare-fun m!828915 () Bool)

(assert (=> b!890257 m!828915))

(declare-fun m!828917 () Bool)

(assert (=> b!890250 m!828917))

(declare-fun m!828919 () Bool)

(assert (=> b!890253 m!828919))

(declare-fun m!828921 () Bool)

(assert (=> b!890254 m!828921))

(declare-fun m!828923 () Bool)

(assert (=> mapNonEmpty!28595 m!828923))

(declare-fun m!828925 () Bool)

(assert (=> b!890255 m!828925))

(declare-fun m!828927 () Bool)

(assert (=> b!890255 m!828927))

(declare-fun m!828929 () Bool)

(assert (=> b!890255 m!828929))

(declare-fun m!828931 () Bool)

(assert (=> b!890251 m!828931))

(declare-fun m!828933 () Bool)

(assert (=> b!890251 m!828933))

(declare-fun m!828935 () Bool)

(assert (=> start!75756 m!828935))

(check-sat b_and!25957 (not b!890255) (not b!890253) (not mapNonEmpty!28595) (not start!75756) (not b!890254) (not b!890257) (not b_next!15699) tp_is_empty!18027 (not b!890250) (not b!890251))
(check-sat b_and!25957 (not b_next!15699))
