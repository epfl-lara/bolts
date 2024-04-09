; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75770 () Bool)

(assert start!75770)

(declare-fun b!890487 () Bool)

(declare-fun b_free!15713 () Bool)

(declare-fun b_next!15713 () Bool)

(assert (=> b!890487 (= b_free!15713 (not b_next!15713))))

(declare-fun tp!55109 () Bool)

(declare-fun b_and!25971 () Bool)

(assert (=> b!890487 (= tp!55109 b_and!25971)))

(declare-fun mapIsEmpty!28616 () Bool)

(declare-fun mapRes!28616 () Bool)

(assert (=> mapIsEmpty!28616 mapRes!28616))

(declare-fun res!603460 () Bool)

(declare-fun e!496737 () Bool)

(assert (=> start!75770 (=> (not res!603460) (not e!496737))))

(declare-datatypes ((array!52048 0))(
  ( (array!52049 (arr!25026 (Array (_ BitVec 32) (_ BitVec 64))) (size!25471 (_ BitVec 32))) )
))
(declare-datatypes ((V!29019 0))(
  ( (V!29020 (val!9071 Int)) )
))
(declare-datatypes ((ValueCell!8539 0))(
  ( (ValueCellFull!8539 (v!11543 V!29019)) (EmptyCell!8539) )
))
(declare-datatypes ((array!52050 0))(
  ( (array!52051 (arr!25027 (Array (_ BitVec 32) ValueCell!8539)) (size!25472 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4094 0))(
  ( (LongMapFixedSize!4095 (defaultEntry!5244 Int) (mask!25714 (_ BitVec 32)) (extraKeys!4938 (_ BitVec 32)) (zeroValue!5042 V!29019) (minValue!5042 V!29019) (_size!2102 (_ BitVec 32)) (_keys!9923 array!52048) (_values!5229 array!52050) (_vacant!2102 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4094)

(declare-fun valid!1579 (LongMapFixedSize!4094) Bool)

(assert (=> start!75770 (= res!603460 (valid!1579 thiss!1181))))

(assert (=> start!75770 e!496737))

(declare-fun e!496731 () Bool)

(assert (=> start!75770 e!496731))

(assert (=> start!75770 true))

(declare-fun b!890480 () Bool)

(declare-fun res!603457 () Bool)

(declare-fun e!496733 () Bool)

(assert (=> b!890480 (=> res!603457 e!496733)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52048 (_ BitVec 32)) Bool)

(assert (=> b!890480 (= res!603457 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9923 thiss!1181) (mask!25714 thiss!1181))))))

(declare-fun b!890481 () Bool)

(declare-fun e!496734 () Bool)

(assert (=> b!890481 (= e!496737 (not e!496734))))

(declare-fun res!603458 () Bool)

(assert (=> b!890481 (=> res!603458 e!496734)))

(declare-datatypes ((SeekEntryResult!8798 0))(
  ( (MissingZero!8798 (index!37562 (_ BitVec 32))) (Found!8798 (index!37563 (_ BitVec 32))) (Intermediate!8798 (undefined!9610 Bool) (index!37564 (_ BitVec 32)) (x!75647 (_ BitVec 32))) (Undefined!8798) (MissingVacant!8798 (index!37565 (_ BitVec 32))) )
))
(declare-fun lt!402315 () SeekEntryResult!8798)

(assert (=> b!890481 (= res!603458 (not (is-Found!8798 lt!402315)))))

(declare-fun e!496738 () Bool)

(assert (=> b!890481 e!496738))

(declare-fun res!603461 () Bool)

(assert (=> b!890481 (=> res!603461 e!496738)))

(assert (=> b!890481 (= res!603461 (not (is-Found!8798 lt!402315)))))

(declare-datatypes ((Unit!30281 0))(
  ( (Unit!30282) )
))
(declare-fun lt!402314 () Unit!30281)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!20 (array!52048 array!52050 (_ BitVec 32) (_ BitVec 32) V!29019 V!29019 (_ BitVec 64)) Unit!30281)

(assert (=> b!890481 (= lt!402314 (lemmaSeekEntryGivesInRangeIndex!20 (_keys!9923 thiss!1181) (_values!5229 thiss!1181) (mask!25714 thiss!1181) (extraKeys!4938 thiss!1181) (zeroValue!5042 thiss!1181) (minValue!5042 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52048 (_ BitVec 32)) SeekEntryResult!8798)

(assert (=> b!890481 (= lt!402315 (seekEntry!0 key!785 (_keys!9923 thiss!1181) (mask!25714 thiss!1181)))))

(declare-fun b!890482 () Bool)

(declare-fun res!603462 () Bool)

(assert (=> b!890482 (=> (not res!603462) (not e!496737))))

(assert (=> b!890482 (= res!603462 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890483 () Bool)

(declare-fun e!496739 () Bool)

(declare-fun tp_is_empty!18041 () Bool)

(assert (=> b!890483 (= e!496739 tp_is_empty!18041)))

(declare-fun b!890484 () Bool)

(declare-fun res!603459 () Bool)

(assert (=> b!890484 (=> res!603459 e!496733)))

(assert (=> b!890484 (= res!603459 (or (not (= (size!25472 (_values!5229 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25714 thiss!1181)))) (not (= (size!25471 (_keys!9923 thiss!1181)) (size!25472 (_values!5229 thiss!1181)))) (bvslt (mask!25714 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4938 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4938 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890485 () Bool)

(assert (=> b!890485 (= e!496734 e!496733)))

(declare-fun res!603456 () Bool)

(assert (=> b!890485 (=> res!603456 e!496733)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890485 (= res!603456 (not (validMask!0 (mask!25714 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890485 (arrayContainsKey!0 (_keys!9923 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402313 () Unit!30281)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52048 (_ BitVec 64) (_ BitVec 32)) Unit!30281)

(assert (=> b!890485 (= lt!402313 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9923 thiss!1181) key!785 (index!37563 lt!402315)))))

(declare-fun mapNonEmpty!28616 () Bool)

(declare-fun tp!55108 () Bool)

(assert (=> mapNonEmpty!28616 (= mapRes!28616 (and tp!55108 e!496739))))

(declare-fun mapKey!28616 () (_ BitVec 32))

(declare-fun mapValue!28616 () ValueCell!8539)

(declare-fun mapRest!28616 () (Array (_ BitVec 32) ValueCell!8539))

(assert (=> mapNonEmpty!28616 (= (arr!25027 (_values!5229 thiss!1181)) (store mapRest!28616 mapKey!28616 mapValue!28616))))

(declare-fun b!890486 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890486 (= e!496738 (inRange!0 (index!37563 lt!402315) (mask!25714 thiss!1181)))))

(declare-fun e!496736 () Bool)

(declare-fun array_inv!19648 (array!52048) Bool)

(declare-fun array_inv!19649 (array!52050) Bool)

(assert (=> b!890487 (= e!496731 (and tp!55109 tp_is_empty!18041 (array_inv!19648 (_keys!9923 thiss!1181)) (array_inv!19649 (_values!5229 thiss!1181)) e!496736))))

(declare-fun b!890488 () Bool)

(assert (=> b!890488 (= e!496733 true)))

(declare-fun lt!402312 () Bool)

(declare-datatypes ((List!17807 0))(
  ( (Nil!17804) (Cons!17803 (h!18934 (_ BitVec 64)) (t!25114 List!17807)) )
))
(declare-fun arrayNoDuplicates!0 (array!52048 (_ BitVec 32) List!17807) Bool)

(assert (=> b!890488 (= lt!402312 (arrayNoDuplicates!0 (_keys!9923 thiss!1181) #b00000000000000000000000000000000 Nil!17804))))

(declare-fun b!890489 () Bool)

(declare-fun e!496735 () Bool)

(assert (=> b!890489 (= e!496736 (and e!496735 mapRes!28616))))

(declare-fun condMapEmpty!28616 () Bool)

(declare-fun mapDefault!28616 () ValueCell!8539)

