; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75766 () Bool)

(assert start!75766)

(declare-fun b!890424 () Bool)

(declare-fun b_free!15709 () Bool)

(declare-fun b_next!15709 () Bool)

(assert (=> b!890424 (= b_free!15709 (not b_next!15709))))

(declare-fun tp!55096 () Bool)

(declare-fun b_and!25967 () Bool)

(assert (=> b!890424 (= tp!55096 b_and!25967)))

(declare-fun b!890414 () Bool)

(declare-fun e!496685 () Bool)

(declare-fun tp_is_empty!18037 () Bool)

(assert (=> b!890414 (= e!496685 tp_is_empty!18037)))

(declare-fun b!890415 () Bool)

(declare-fun e!496684 () Bool)

(declare-datatypes ((SeekEntryResult!8796 0))(
  ( (MissingZero!8796 (index!37554 (_ BitVec 32))) (Found!8796 (index!37555 (_ BitVec 32))) (Intermediate!8796 (undefined!9608 Bool) (index!37556 (_ BitVec 32)) (x!75645 (_ BitVec 32))) (Undefined!8796) (MissingVacant!8796 (index!37557 (_ BitVec 32))) )
))
(declare-fun lt!402291 () SeekEntryResult!8796)

(declare-datatypes ((array!52040 0))(
  ( (array!52041 (arr!25022 (Array (_ BitVec 32) (_ BitVec 64))) (size!25467 (_ BitVec 32))) )
))
(declare-datatypes ((V!29015 0))(
  ( (V!29016 (val!9069 Int)) )
))
(declare-datatypes ((ValueCell!8537 0))(
  ( (ValueCellFull!8537 (v!11541 V!29015)) (EmptyCell!8537) )
))
(declare-datatypes ((array!52042 0))(
  ( (array!52043 (arr!25023 (Array (_ BitVec 32) ValueCell!8537)) (size!25468 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4090 0))(
  ( (LongMapFixedSize!4091 (defaultEntry!5242 Int) (mask!25712 (_ BitVec 32)) (extraKeys!4936 (_ BitVec 32)) (zeroValue!5040 V!29015) (minValue!5040 V!29015) (_size!2100 (_ BitVec 32)) (_keys!9921 array!52040) (_values!5227 array!52042) (_vacant!2100 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4090)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890415 (= e!496684 (inRange!0 (index!37555 lt!402291) (mask!25712 thiss!1181)))))

(declare-fun mapIsEmpty!28610 () Bool)

(declare-fun mapRes!28610 () Bool)

(assert (=> mapIsEmpty!28610 mapRes!28610))

(declare-fun b!890416 () Bool)

(declare-fun e!496681 () Bool)

(assert (=> b!890416 (= e!496681 true)))

(declare-fun lt!402288 () Bool)

(declare-datatypes ((List!17805 0))(
  ( (Nil!17802) (Cons!17801 (h!18932 (_ BitVec 64)) (t!25112 List!17805)) )
))
(declare-fun arrayNoDuplicates!0 (array!52040 (_ BitVec 32) List!17805) Bool)

(assert (=> b!890416 (= lt!402288 (arrayNoDuplicates!0 (_keys!9921 thiss!1181) #b00000000000000000000000000000000 Nil!17802))))

(declare-fun b!890417 () Bool)

(declare-fun e!496679 () Bool)

(assert (=> b!890417 (= e!496679 e!496681)))

(declare-fun res!603416 () Bool)

(assert (=> b!890417 (=> res!603416 e!496681)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890417 (= res!603416 (not (validMask!0 (mask!25712 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890417 (arrayContainsKey!0 (_keys!9921 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30277 0))(
  ( (Unit!30278) )
))
(declare-fun lt!402289 () Unit!30277)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52040 (_ BitVec 64) (_ BitVec 32)) Unit!30277)

(assert (=> b!890417 (= lt!402289 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9921 thiss!1181) key!785 (index!37555 lt!402291)))))

(declare-fun res!603418 () Bool)

(declare-fun e!496680 () Bool)

(assert (=> start!75766 (=> (not res!603418) (not e!496680))))

(declare-fun valid!1577 (LongMapFixedSize!4090) Bool)

(assert (=> start!75766 (= res!603418 (valid!1577 thiss!1181))))

(assert (=> start!75766 e!496680))

(declare-fun e!496683 () Bool)

(assert (=> start!75766 e!496683))

(assert (=> start!75766 true))

(declare-fun b!890418 () Bool)

(declare-fun res!603417 () Bool)

(assert (=> b!890418 (=> (not res!603417) (not e!496680))))

(assert (=> b!890418 (= res!603417 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890419 () Bool)

(assert (=> b!890419 (= e!496680 (not e!496679))))

(declare-fun res!603415 () Bool)

(assert (=> b!890419 (=> res!603415 e!496679)))

(assert (=> b!890419 (= res!603415 (not (is-Found!8796 lt!402291)))))

(assert (=> b!890419 e!496684))

(declare-fun res!603419 () Bool)

(assert (=> b!890419 (=> res!603419 e!496684)))

(assert (=> b!890419 (= res!603419 (not (is-Found!8796 lt!402291)))))

(declare-fun lt!402290 () Unit!30277)

(declare-fun lemmaSeekEntryGivesInRangeIndex!18 (array!52040 array!52042 (_ BitVec 32) (_ BitVec 32) V!29015 V!29015 (_ BitVec 64)) Unit!30277)

(assert (=> b!890419 (= lt!402290 (lemmaSeekEntryGivesInRangeIndex!18 (_keys!9921 thiss!1181) (_values!5227 thiss!1181) (mask!25712 thiss!1181) (extraKeys!4936 thiss!1181) (zeroValue!5040 thiss!1181) (minValue!5040 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52040 (_ BitVec 32)) SeekEntryResult!8796)

(assert (=> b!890419 (= lt!402291 (seekEntry!0 key!785 (_keys!9921 thiss!1181) (mask!25712 thiss!1181)))))

(declare-fun b!890420 () Bool)

(declare-fun e!496678 () Bool)

(assert (=> b!890420 (= e!496678 (and e!496685 mapRes!28610))))

(declare-fun condMapEmpty!28610 () Bool)

(declare-fun mapDefault!28610 () ValueCell!8537)

