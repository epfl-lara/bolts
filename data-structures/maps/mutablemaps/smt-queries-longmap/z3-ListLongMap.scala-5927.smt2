; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77252 () Bool)

(assert start!77252)

(declare-fun b!900881 () Bool)

(declare-fun b_free!16065 () Bool)

(declare-fun b_next!16065 () Bool)

(assert (=> b!900881 (= b_free!16065 (not b_next!16065))))

(declare-fun tp!56292 () Bool)

(declare-fun b_and!26409 () Bool)

(assert (=> b!900881 (= tp!56292 b_and!26409)))

(declare-fun b!900872 () Bool)

(declare-fun e!504333 () Bool)

(declare-datatypes ((SeekEntryResult!8932 0))(
  ( (MissingZero!8932 (index!38098 (_ BitVec 32))) (Found!8932 (index!38099 (_ BitVec 32))) (Intermediate!8932 (undefined!9744 Bool) (index!38100 (_ BitVec 32)) (x!76748 (_ BitVec 32))) (Undefined!8932) (MissingVacant!8932 (index!38101 (_ BitVec 32))) )
))
(declare-fun lt!407153 () SeekEntryResult!8932)

(declare-datatypes ((array!52826 0))(
  ( (array!52827 (arr!25378 (Array (_ BitVec 32) (_ BitVec 64))) (size!25838 (_ BitVec 32))) )
))
(declare-datatypes ((V!29489 0))(
  ( (V!29490 (val!9247 Int)) )
))
(declare-datatypes ((ValueCell!8715 0))(
  ( (ValueCellFull!8715 (v!11743 V!29489)) (EmptyCell!8715) )
))
(declare-datatypes ((array!52828 0))(
  ( (array!52829 (arr!25379 (Array (_ BitVec 32) ValueCell!8715)) (size!25839 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4446 0))(
  ( (LongMapFixedSize!4447 (defaultEntry!5461 Int) (mask!26255 (_ BitVec 32)) (extraKeys!5189 (_ BitVec 32)) (zeroValue!5293 V!29489) (minValue!5293 V!29489) (_size!2278 (_ BitVec 32)) (_keys!10267 array!52826) (_values!5480 array!52828) (_vacant!2278 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4446)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!900872 (= e!504333 (inRange!0 (index!38099 lt!407153) (mask!26255 thiss!1181)))))

(declare-fun b!900873 () Bool)

(declare-fun res!608407 () Bool)

(declare-fun e!504327 () Bool)

(assert (=> b!900873 (=> (not res!608407) (not e!504327))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!900873 (= res!608407 (not (= key!785 (bvneg key!785))))))

(declare-fun b!900874 () Bool)

(declare-fun e!504328 () Bool)

(assert (=> b!900874 (= e!504327 (not e!504328))))

(declare-fun res!608410 () Bool)

(assert (=> b!900874 (=> res!608410 e!504328)))

(get-info :version)

(assert (=> b!900874 (= res!608410 (not ((_ is Found!8932) lt!407153)))))

(assert (=> b!900874 e!504333))

(declare-fun res!608414 () Bool)

(assert (=> b!900874 (=> res!608414 e!504333)))

(assert (=> b!900874 (= res!608414 (not ((_ is Found!8932) lt!407153)))))

(declare-datatypes ((Unit!30576 0))(
  ( (Unit!30577) )
))
(declare-fun lt!407150 () Unit!30576)

(declare-fun lemmaSeekEntryGivesInRangeIndex!113 (array!52826 array!52828 (_ BitVec 32) (_ BitVec 32) V!29489 V!29489 (_ BitVec 64)) Unit!30576)

(assert (=> b!900874 (= lt!407150 (lemmaSeekEntryGivesInRangeIndex!113 (_keys!10267 thiss!1181) (_values!5480 thiss!1181) (mask!26255 thiss!1181) (extraKeys!5189 thiss!1181) (zeroValue!5293 thiss!1181) (minValue!5293 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52826 (_ BitVec 32)) SeekEntryResult!8932)

(assert (=> b!900874 (= lt!407153 (seekEntry!0 key!785 (_keys!10267 thiss!1181) (mask!26255 thiss!1181)))))

(declare-fun mapIsEmpty!29272 () Bool)

(declare-fun mapRes!29272 () Bool)

(assert (=> mapIsEmpty!29272 mapRes!29272))

(declare-fun b!900875 () Bool)

(declare-fun res!608411 () Bool)

(declare-fun e!504329 () Bool)

(assert (=> b!900875 (=> res!608411 e!504329)))

(declare-datatypes ((tuple2!12082 0))(
  ( (tuple2!12083 (_1!6051 (_ BitVec 64)) (_2!6051 V!29489)) )
))
(declare-datatypes ((List!17942 0))(
  ( (Nil!17939) (Cons!17938 (h!19084 tuple2!12082) (t!25307 List!17942)) )
))
(declare-datatypes ((ListLongMap!10793 0))(
  ( (ListLongMap!10794 (toList!5412 List!17942)) )
))
(declare-fun lt!407154 () ListLongMap!10793)

(declare-fun contains!4421 (ListLongMap!10793 (_ BitVec 64)) Bool)

(assert (=> b!900875 (= res!608411 (not (contains!4421 lt!407154 key!785)))))

(declare-fun mapNonEmpty!29272 () Bool)

(declare-fun tp!56293 () Bool)

(declare-fun e!504334 () Bool)

(assert (=> mapNonEmpty!29272 (= mapRes!29272 (and tp!56293 e!504334))))

(declare-fun mapKey!29272 () (_ BitVec 32))

(declare-fun mapValue!29272 () ValueCell!8715)

(declare-fun mapRest!29272 () (Array (_ BitVec 32) ValueCell!8715))

(assert (=> mapNonEmpty!29272 (= (arr!25379 (_values!5480 thiss!1181)) (store mapRest!29272 mapKey!29272 mapValue!29272))))

(declare-fun b!900876 () Bool)

(declare-fun res!608415 () Bool)

(assert (=> b!900876 (=> res!608415 e!504329)))

(assert (=> b!900876 (= res!608415 (or (not (= (size!25839 (_values!5480 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26255 thiss!1181)))) (not (= (size!25838 (_keys!10267 thiss!1181)) (size!25839 (_values!5480 thiss!1181)))) (bvslt (mask!26255 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5189 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5189 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!900877 () Bool)

(assert (=> b!900877 (= e!504329 (inRange!0 (index!38099 lt!407153) (mask!26255 thiss!1181)))))

(declare-fun b!900878 () Bool)

(assert (=> b!900878 (= e!504328 e!504329)))

(declare-fun res!608412 () Bool)

(assert (=> b!900878 (=> res!608412 e!504329)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!900878 (= res!608412 (not (validMask!0 (mask!26255 thiss!1181))))))

(assert (=> b!900878 (contains!4421 lt!407154 (select (arr!25378 (_keys!10267 thiss!1181)) (index!38099 lt!407153)))))

(declare-fun getCurrentListMap!2655 (array!52826 array!52828 (_ BitVec 32) (_ BitVec 32) V!29489 V!29489 (_ BitVec 32) Int) ListLongMap!10793)

(assert (=> b!900878 (= lt!407154 (getCurrentListMap!2655 (_keys!10267 thiss!1181) (_values!5480 thiss!1181) (mask!26255 thiss!1181) (extraKeys!5189 thiss!1181) (zeroValue!5293 thiss!1181) (minValue!5293 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5461 thiss!1181)))))

(declare-fun lt!407152 () Unit!30576)

(declare-fun lemmaValidKeyInArrayIsInListMap!248 (array!52826 array!52828 (_ BitVec 32) (_ BitVec 32) V!29489 V!29489 (_ BitVec 32) Int) Unit!30576)

(assert (=> b!900878 (= lt!407152 (lemmaValidKeyInArrayIsInListMap!248 (_keys!10267 thiss!1181) (_values!5480 thiss!1181) (mask!26255 thiss!1181) (extraKeys!5189 thiss!1181) (zeroValue!5293 thiss!1181) (minValue!5293 thiss!1181) (index!38099 lt!407153) (defaultEntry!5461 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!900878 (arrayContainsKey!0 (_keys!10267 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!407151 () Unit!30576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52826 (_ BitVec 64) (_ BitVec 32)) Unit!30576)

(assert (=> b!900878 (= lt!407151 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10267 thiss!1181) key!785 (index!38099 lt!407153)))))

(declare-fun b!900879 () Bool)

(declare-fun res!608413 () Bool)

(assert (=> b!900879 (=> res!608413 e!504329)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52826 (_ BitVec 32)) Bool)

(assert (=> b!900879 (= res!608413 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10267 thiss!1181) (mask!26255 thiss!1181))))))

(declare-fun b!900880 () Bool)

(declare-fun e!504331 () Bool)

(declare-fun e!504330 () Bool)

(assert (=> b!900880 (= e!504331 (and e!504330 mapRes!29272))))

(declare-fun condMapEmpty!29272 () Bool)

(declare-fun mapDefault!29272 () ValueCell!8715)

(assert (=> b!900880 (= condMapEmpty!29272 (= (arr!25379 (_values!5480 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8715)) mapDefault!29272)))))

(declare-fun res!608408 () Bool)

(assert (=> start!77252 (=> (not res!608408) (not e!504327))))

(declare-fun valid!1691 (LongMapFixedSize!4446) Bool)

(assert (=> start!77252 (= res!608408 (valid!1691 thiss!1181))))

(assert (=> start!77252 e!504327))

(declare-fun e!504332 () Bool)

(assert (=> start!77252 e!504332))

(assert (=> start!77252 true))

(declare-fun tp_is_empty!18393 () Bool)

(declare-fun array_inv!19886 (array!52826) Bool)

(declare-fun array_inv!19887 (array!52828) Bool)

(assert (=> b!900881 (= e!504332 (and tp!56292 tp_is_empty!18393 (array_inv!19886 (_keys!10267 thiss!1181)) (array_inv!19887 (_values!5480 thiss!1181)) e!504331))))

(declare-fun b!900882 () Bool)

(assert (=> b!900882 (= e!504334 tp_is_empty!18393)))

(declare-fun b!900883 () Bool)

(assert (=> b!900883 (= e!504330 tp_is_empty!18393)))

(declare-fun b!900884 () Bool)

(declare-fun res!608409 () Bool)

(assert (=> b!900884 (=> res!608409 e!504329)))

(declare-datatypes ((List!17943 0))(
  ( (Nil!17940) (Cons!17939 (h!19085 (_ BitVec 64)) (t!25308 List!17943)) )
))
(declare-fun arrayNoDuplicates!0 (array!52826 (_ BitVec 32) List!17943) Bool)

(assert (=> b!900884 (= res!608409 (not (arrayNoDuplicates!0 (_keys!10267 thiss!1181) #b00000000000000000000000000000000 Nil!17940)))))

(assert (= (and start!77252 res!608408) b!900873))

(assert (= (and b!900873 res!608407) b!900874))

(assert (= (and b!900874 (not res!608414)) b!900872))

(assert (= (and b!900874 (not res!608410)) b!900878))

(assert (= (and b!900878 (not res!608412)) b!900876))

(assert (= (and b!900876 (not res!608415)) b!900879))

(assert (= (and b!900879 (not res!608413)) b!900884))

(assert (= (and b!900884 (not res!608409)) b!900875))

(assert (= (and b!900875 (not res!608411)) b!900877))

(assert (= (and b!900880 condMapEmpty!29272) mapIsEmpty!29272))

(assert (= (and b!900880 (not condMapEmpty!29272)) mapNonEmpty!29272))

(assert (= (and mapNonEmpty!29272 ((_ is ValueCellFull!8715) mapValue!29272)) b!900882))

(assert (= (and b!900880 ((_ is ValueCellFull!8715) mapDefault!29272)) b!900883))

(assert (= b!900881 b!900880))

(assert (= start!77252 b!900881))

(declare-fun m!837323 () Bool)

(assert (=> b!900877 m!837323))

(assert (=> b!900872 m!837323))

(declare-fun m!837325 () Bool)

(assert (=> b!900881 m!837325))

(declare-fun m!837327 () Bool)

(assert (=> b!900881 m!837327))

(declare-fun m!837329 () Bool)

(assert (=> start!77252 m!837329))

(declare-fun m!837331 () Bool)

(assert (=> b!900884 m!837331))

(declare-fun m!837333 () Bool)

(assert (=> b!900874 m!837333))

(declare-fun m!837335 () Bool)

(assert (=> b!900874 m!837335))

(declare-fun m!837337 () Bool)

(assert (=> b!900879 m!837337))

(declare-fun m!837339 () Bool)

(assert (=> b!900878 m!837339))

(declare-fun m!837341 () Bool)

(assert (=> b!900878 m!837341))

(assert (=> b!900878 m!837339))

(declare-fun m!837343 () Bool)

(assert (=> b!900878 m!837343))

(declare-fun m!837345 () Bool)

(assert (=> b!900878 m!837345))

(declare-fun m!837347 () Bool)

(assert (=> b!900878 m!837347))

(declare-fun m!837349 () Bool)

(assert (=> b!900878 m!837349))

(declare-fun m!837351 () Bool)

(assert (=> b!900878 m!837351))

(declare-fun m!837353 () Bool)

(assert (=> mapNonEmpty!29272 m!837353))

(declare-fun m!837355 () Bool)

(assert (=> b!900875 m!837355))

(check-sat (not b!900879) tp_is_empty!18393 (not b!900875) (not b!900878) (not start!77252) (not b!900881) (not b!900874) (not b!900877) (not mapNonEmpty!29272) b_and!26409 (not b!900872) (not b!900884) (not b_next!16065))
(check-sat b_and!26409 (not b_next!16065))
