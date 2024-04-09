; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80284 () Bool)

(assert start!80284)

(declare-fun b!942492 () Bool)

(declare-fun b_free!17955 () Bool)

(declare-fun b_next!17955 () Bool)

(assert (=> b!942492 (= b_free!17955 (not b_next!17955))))

(declare-fun tp!62372 () Bool)

(declare-fun b_and!29385 () Bool)

(assert (=> b!942492 (= tp!62372 b_and!29385)))

(declare-fun res!633431 () Bool)

(declare-fun e!529956 () Bool)

(assert (=> start!80284 (=> (not res!633431) (not e!529956))))

(declare-datatypes ((V!32249 0))(
  ( (V!32250 (val!10282 Int)) )
))
(declare-datatypes ((ValueCell!9750 0))(
  ( (ValueCellFull!9750 (v!12813 V!32249)) (EmptyCell!9750) )
))
(declare-datatypes ((array!56914 0))(
  ( (array!56915 (arr!27379 (Array (_ BitVec 32) ValueCell!9750)) (size!27845 (_ BitVec 32))) )
))
(declare-datatypes ((array!56916 0))(
  ( (array!56917 (arr!27380 (Array (_ BitVec 32) (_ BitVec 64))) (size!27846 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4650 0))(
  ( (LongMapFixedSize!4651 (defaultEntry!5616 Int) (mask!27221 (_ BitVec 32)) (extraKeys!5348 (_ BitVec 32)) (zeroValue!5452 V!32249) (minValue!5452 V!32249) (_size!2380 (_ BitVec 32)) (_keys!10486 array!56916) (_values!5639 array!56914) (_vacant!2380 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4650)

(declare-fun valid!1762 (LongMapFixedSize!4650) Bool)

(assert (=> start!80284 (= res!633431 (valid!1762 thiss!1141))))

(assert (=> start!80284 e!529956))

(declare-fun e!529955 () Bool)

(assert (=> start!80284 e!529955))

(assert (=> start!80284 true))

(declare-fun b!942490 () Bool)

(declare-fun res!633434 () Bool)

(assert (=> b!942490 (=> (not res!633434) (not e!529956))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9027 0))(
  ( (MissingZero!9027 (index!38478 (_ BitVec 32))) (Found!9027 (index!38479 (_ BitVec 32))) (Intermediate!9027 (undefined!9839 Bool) (index!38480 (_ BitVec 32)) (x!80925 (_ BitVec 32))) (Undefined!9027) (MissingVacant!9027 (index!38481 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56916 (_ BitVec 32)) SeekEntryResult!9027)

(assert (=> b!942490 (= res!633434 (not ((_ is Found!9027) (seekEntry!0 key!756 (_keys!10486 thiss!1141) (mask!27221 thiss!1141)))))))

(declare-fun b!942491 () Bool)

(declare-fun e!529957 () Bool)

(declare-fun e!529958 () Bool)

(declare-fun mapRes!32516 () Bool)

(assert (=> b!942491 (= e!529957 (and e!529958 mapRes!32516))))

(declare-fun condMapEmpty!32516 () Bool)

(declare-fun mapDefault!32516 () ValueCell!9750)

(assert (=> b!942491 (= condMapEmpty!32516 (= (arr!27379 (_values!5639 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9750)) mapDefault!32516)))))

(declare-fun mapIsEmpty!32516 () Bool)

(assert (=> mapIsEmpty!32516 mapRes!32516))

(declare-fun mapNonEmpty!32516 () Bool)

(declare-fun tp!62371 () Bool)

(declare-fun e!529953 () Bool)

(assert (=> mapNonEmpty!32516 (= mapRes!32516 (and tp!62371 e!529953))))

(declare-fun mapValue!32516 () ValueCell!9750)

(declare-fun mapKey!32516 () (_ BitVec 32))

(declare-fun mapRest!32516 () (Array (_ BitVec 32) ValueCell!9750))

(assert (=> mapNonEmpty!32516 (= (arr!27379 (_values!5639 thiss!1141)) (store mapRest!32516 mapKey!32516 mapValue!32516))))

(declare-fun tp_is_empty!20463 () Bool)

(declare-fun array_inv!21228 (array!56916) Bool)

(declare-fun array_inv!21229 (array!56914) Bool)

(assert (=> b!942492 (= e!529955 (and tp!62372 tp_is_empty!20463 (array_inv!21228 (_keys!10486 thiss!1141)) (array_inv!21229 (_values!5639 thiss!1141)) e!529957))))

(declare-fun b!942493 () Bool)

(assert (=> b!942493 (= e!529956 false)))

(declare-fun lt!425127 () Bool)

(declare-datatypes ((List!19351 0))(
  ( (Nil!19348) (Cons!19347 (h!20497 (_ BitVec 64)) (t!27674 List!19351)) )
))
(declare-fun arrayNoDuplicates!0 (array!56916 (_ BitVec 32) List!19351) Bool)

(assert (=> b!942493 (= lt!425127 (arrayNoDuplicates!0 (_keys!10486 thiss!1141) #b00000000000000000000000000000000 Nil!19348))))

(declare-fun b!942494 () Bool)

(declare-fun res!633432 () Bool)

(assert (=> b!942494 (=> (not res!633432) (not e!529956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56916 (_ BitVec 32)) Bool)

(assert (=> b!942494 (= res!633432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10486 thiss!1141) (mask!27221 thiss!1141)))))

(declare-fun b!942495 () Bool)

(assert (=> b!942495 (= e!529953 tp_is_empty!20463)))

(declare-fun b!942496 () Bool)

(declare-fun res!633429 () Bool)

(assert (=> b!942496 (=> (not res!633429) (not e!529956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942496 (= res!633429 (validMask!0 (mask!27221 thiss!1141)))))

(declare-fun b!942497 () Bool)

(declare-fun res!633435 () Bool)

(assert (=> b!942497 (=> (not res!633435) (not e!529956))))

(assert (=> b!942497 (= res!633435 (and (= (size!27845 (_values!5639 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27221 thiss!1141))) (= (size!27846 (_keys!10486 thiss!1141)) (size!27845 (_values!5639 thiss!1141))) (bvsge (mask!27221 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5348 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5348 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942498 () Bool)

(assert (=> b!942498 (= e!529958 tp_is_empty!20463)))

(declare-fun b!942499 () Bool)

(declare-fun res!633430 () Bool)

(assert (=> b!942499 (=> (not res!633430) (not e!529956))))

(declare-datatypes ((tuple2!13512 0))(
  ( (tuple2!13513 (_1!6766 (_ BitVec 64)) (_2!6766 V!32249)) )
))
(declare-datatypes ((List!19352 0))(
  ( (Nil!19349) (Cons!19348 (h!20498 tuple2!13512) (t!27675 List!19352)) )
))
(declare-datatypes ((ListLongMap!12223 0))(
  ( (ListLongMap!12224 (toList!6127 List!19352)) )
))
(declare-fun contains!5148 (ListLongMap!12223 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3315 (array!56916 array!56914 (_ BitVec 32) (_ BitVec 32) V!32249 V!32249 (_ BitVec 32) Int) ListLongMap!12223)

(assert (=> b!942499 (= res!633430 (contains!5148 (getCurrentListMap!3315 (_keys!10486 thiss!1141) (_values!5639 thiss!1141) (mask!27221 thiss!1141) (extraKeys!5348 thiss!1141) (zeroValue!5452 thiss!1141) (minValue!5452 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5616 thiss!1141)) key!756))))

(declare-fun b!942500 () Bool)

(declare-fun res!633433 () Bool)

(assert (=> b!942500 (=> (not res!633433) (not e!529956))))

(assert (=> b!942500 (= res!633433 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!80284 res!633431) b!942500))

(assert (= (and b!942500 res!633433) b!942490))

(assert (= (and b!942490 res!633434) b!942499))

(assert (= (and b!942499 res!633430) b!942496))

(assert (= (and b!942496 res!633429) b!942497))

(assert (= (and b!942497 res!633435) b!942494))

(assert (= (and b!942494 res!633432) b!942493))

(assert (= (and b!942491 condMapEmpty!32516) mapIsEmpty!32516))

(assert (= (and b!942491 (not condMapEmpty!32516)) mapNonEmpty!32516))

(assert (= (and mapNonEmpty!32516 ((_ is ValueCellFull!9750) mapValue!32516)) b!942495))

(assert (= (and b!942491 ((_ is ValueCellFull!9750) mapDefault!32516)) b!942498))

(assert (= b!942492 b!942491))

(assert (= start!80284 b!942492))

(declare-fun m!877075 () Bool)

(assert (=> b!942499 m!877075))

(assert (=> b!942499 m!877075))

(declare-fun m!877077 () Bool)

(assert (=> b!942499 m!877077))

(declare-fun m!877079 () Bool)

(assert (=> b!942490 m!877079))

(declare-fun m!877081 () Bool)

(assert (=> b!942494 m!877081))

(declare-fun m!877083 () Bool)

(assert (=> b!942493 m!877083))

(declare-fun m!877085 () Bool)

(assert (=> mapNonEmpty!32516 m!877085))

(declare-fun m!877087 () Bool)

(assert (=> b!942496 m!877087))

(declare-fun m!877089 () Bool)

(assert (=> start!80284 m!877089))

(declare-fun m!877091 () Bool)

(assert (=> b!942492 m!877091))

(declare-fun m!877093 () Bool)

(assert (=> b!942492 m!877093))

(check-sat b_and!29385 (not b_next!17955) (not b!942492) (not b!942493) (not b!942496) (not b!942490) (not start!80284) (not mapNonEmpty!32516) (not b!942494) (not b!942499) tp_is_empty!20463)
(check-sat b_and!29385 (not b_next!17955))
