; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75776 () Bool)

(assert start!75776)

(declare-fun b!890586 () Bool)

(declare-fun b_free!15719 () Bool)

(declare-fun b_next!15719 () Bool)

(assert (=> b!890586 (= b_free!15719 (not b_next!15719))))

(declare-fun tp!55126 () Bool)

(declare-fun b_and!25977 () Bool)

(assert (=> b!890586 (= tp!55126 b_and!25977)))

(declare-fun mapNonEmpty!28625 () Bool)

(declare-fun mapRes!28625 () Bool)

(declare-fun tp!55127 () Bool)

(declare-fun e!496814 () Bool)

(assert (=> mapNonEmpty!28625 (= mapRes!28625 (and tp!55127 e!496814))))

(declare-datatypes ((V!29027 0))(
  ( (V!29028 (val!9074 Int)) )
))
(declare-datatypes ((ValueCell!8542 0))(
  ( (ValueCellFull!8542 (v!11546 V!29027)) (EmptyCell!8542) )
))
(declare-fun mapRest!28625 () (Array (_ BitVec 32) ValueCell!8542))

(declare-fun mapValue!28625 () ValueCell!8542)

(declare-datatypes ((array!52060 0))(
  ( (array!52061 (arr!25032 (Array (_ BitVec 32) (_ BitVec 64))) (size!25477 (_ BitVec 32))) )
))
(declare-datatypes ((array!52062 0))(
  ( (array!52063 (arr!25033 (Array (_ BitVec 32) ValueCell!8542)) (size!25478 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4100 0))(
  ( (LongMapFixedSize!4101 (defaultEntry!5247 Int) (mask!25719 (_ BitVec 32)) (extraKeys!4941 (_ BitVec 32)) (zeroValue!5045 V!29027) (minValue!5045 V!29027) (_size!2105 (_ BitVec 32)) (_keys!9926 array!52060) (_values!5232 array!52062) (_vacant!2105 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4100)

(declare-fun mapKey!28625 () (_ BitVec 32))

(assert (=> mapNonEmpty!28625 (= (arr!25033 (_values!5232 thiss!1181)) (store mapRest!28625 mapKey!28625 mapValue!28625))))

(declare-fun b!890579 () Bool)

(declare-fun e!496817 () Bool)

(declare-fun tp_is_empty!18047 () Bool)

(assert (=> b!890579 (= e!496817 tp_is_empty!18047)))

(declare-fun b!890580 () Bool)

(declare-fun e!496815 () Bool)

(declare-fun e!496813 () Bool)

(assert (=> b!890580 (= e!496815 (not e!496813))))

(declare-fun res!603521 () Bool)

(assert (=> b!890580 (=> res!603521 e!496813)))

(declare-datatypes ((SeekEntryResult!8801 0))(
  ( (MissingZero!8801 (index!37574 (_ BitVec 32))) (Found!8801 (index!37575 (_ BitVec 32))) (Intermediate!8801 (undefined!9613 Bool) (index!37576 (_ BitVec 32)) (x!75658 (_ BitVec 32))) (Undefined!8801) (MissingVacant!8801 (index!37577 (_ BitVec 32))) )
))
(declare-fun lt!402349 () SeekEntryResult!8801)

(assert (=> b!890580 (= res!603521 (not (is-Found!8801 lt!402349)))))

(declare-fun e!496818 () Bool)

(assert (=> b!890580 e!496818))

(declare-fun res!603524 () Bool)

(assert (=> b!890580 (=> res!603524 e!496818)))

(assert (=> b!890580 (= res!603524 (not (is-Found!8801 lt!402349)))))

(declare-datatypes ((Unit!30287 0))(
  ( (Unit!30288) )
))
(declare-fun lt!402351 () Unit!30287)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!23 (array!52060 array!52062 (_ BitVec 32) (_ BitVec 32) V!29027 V!29027 (_ BitVec 64)) Unit!30287)

(assert (=> b!890580 (= lt!402351 (lemmaSeekEntryGivesInRangeIndex!23 (_keys!9926 thiss!1181) (_values!5232 thiss!1181) (mask!25719 thiss!1181) (extraKeys!4941 thiss!1181) (zeroValue!5045 thiss!1181) (minValue!5045 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52060 (_ BitVec 32)) SeekEntryResult!8801)

(assert (=> b!890580 (= lt!402349 (seekEntry!0 key!785 (_keys!9926 thiss!1181) (mask!25719 thiss!1181)))))

(declare-fun b!890581 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890581 (= e!496818 (inRange!0 (index!37575 lt!402349) (mask!25719 thiss!1181)))))

(declare-fun b!890582 () Bool)

(declare-fun e!496820 () Bool)

(assert (=> b!890582 (= e!496820 true)))

(declare-fun lt!402348 () Bool)

(declare-datatypes ((List!17809 0))(
  ( (Nil!17806) (Cons!17805 (h!18936 (_ BitVec 64)) (t!25116 List!17809)) )
))
(declare-fun arrayNoDuplicates!0 (array!52060 (_ BitVec 32) List!17809) Bool)

(assert (=> b!890582 (= lt!402348 (arrayNoDuplicates!0 (_keys!9926 thiss!1181) #b00000000000000000000000000000000 Nil!17806))))

(declare-fun mapIsEmpty!28625 () Bool)

(assert (=> mapIsEmpty!28625 mapRes!28625))

(declare-fun b!890584 () Bool)

(declare-fun res!603520 () Bool)

(assert (=> b!890584 (=> res!603520 e!496820)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52060 (_ BitVec 32)) Bool)

(assert (=> b!890584 (= res!603520 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9926 thiss!1181) (mask!25719 thiss!1181))))))

(declare-fun b!890585 () Bool)

(declare-fun res!603523 () Bool)

(assert (=> b!890585 (=> (not res!603523) (not e!496815))))

(assert (=> b!890585 (= res!603523 (not (= key!785 (bvneg key!785))))))

(declare-fun e!496816 () Bool)

(declare-fun e!496812 () Bool)

(declare-fun array_inv!19652 (array!52060) Bool)

(declare-fun array_inv!19653 (array!52062) Bool)

(assert (=> b!890586 (= e!496812 (and tp!55126 tp_is_empty!18047 (array_inv!19652 (_keys!9926 thiss!1181)) (array_inv!19653 (_values!5232 thiss!1181)) e!496816))))

(declare-fun b!890587 () Bool)

(assert (=> b!890587 (= e!496814 tp_is_empty!18047)))

(declare-fun b!890588 () Bool)

(assert (=> b!890588 (= e!496813 e!496820)))

(declare-fun res!603525 () Bool)

(assert (=> b!890588 (=> res!603525 e!496820)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890588 (= res!603525 (not (validMask!0 (mask!25719 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890588 (arrayContainsKey!0 (_keys!9926 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402350 () Unit!30287)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52060 (_ BitVec 64) (_ BitVec 32)) Unit!30287)

(assert (=> b!890588 (= lt!402350 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9926 thiss!1181) key!785 (index!37575 lt!402349)))))

(declare-fun b!890589 () Bool)

(declare-fun res!603519 () Bool)

(assert (=> b!890589 (=> res!603519 e!496820)))

(assert (=> b!890589 (= res!603519 (or (not (= (size!25478 (_values!5232 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25719 thiss!1181)))) (not (= (size!25477 (_keys!9926 thiss!1181)) (size!25478 (_values!5232 thiss!1181)))) (bvslt (mask!25719 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4941 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4941 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun res!603522 () Bool)

(assert (=> start!75776 (=> (not res!603522) (not e!496815))))

(declare-fun valid!1581 (LongMapFixedSize!4100) Bool)

(assert (=> start!75776 (= res!603522 (valid!1581 thiss!1181))))

(assert (=> start!75776 e!496815))

(assert (=> start!75776 e!496812))

(assert (=> start!75776 true))

(declare-fun b!890583 () Bool)

(assert (=> b!890583 (= e!496816 (and e!496817 mapRes!28625))))

(declare-fun condMapEmpty!28625 () Bool)

(declare-fun mapDefault!28625 () ValueCell!8542)

