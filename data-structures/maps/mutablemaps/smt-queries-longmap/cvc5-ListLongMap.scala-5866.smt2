; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75754 () Bool)

(assert start!75754)

(declare-fun b!890220 () Bool)

(declare-fun b_free!15697 () Bool)

(declare-fun b_next!15697 () Bool)

(assert (=> b!890220 (= b_free!15697 (not b_next!15697))))

(declare-fun tp!55061 () Bool)

(declare-fun b_and!25955 () Bool)

(assert (=> b!890220 (= tp!55061 b_and!25955)))

(declare-fun b!890216 () Bool)

(declare-fun e!496519 () Bool)

(declare-fun tp_is_empty!18025 () Bool)

(assert (=> b!890216 (= e!496519 tp_is_empty!18025)))

(declare-fun b!890217 () Bool)

(declare-fun e!496522 () Bool)

(declare-fun e!496521 () Bool)

(assert (=> b!890217 (= e!496522 (not e!496521))))

(declare-fun res!603290 () Bool)

(assert (=> b!890217 (=> res!603290 e!496521)))

(declare-datatypes ((SeekEntryResult!8791 0))(
  ( (MissingZero!8791 (index!37534 (_ BitVec 32))) (Found!8791 (index!37535 (_ BitVec 32))) (Intermediate!8791 (undefined!9603 Bool) (index!37536 (_ BitVec 32)) (x!75624 (_ BitVec 32))) (Undefined!8791) (MissingVacant!8791 (index!37537 (_ BitVec 32))) )
))
(declare-fun lt!402216 () SeekEntryResult!8791)

(assert (=> b!890217 (= res!603290 (not (is-Found!8791 lt!402216)))))

(declare-fun e!496515 () Bool)

(assert (=> b!890217 e!496515))

(declare-fun res!603289 () Bool)

(assert (=> b!890217 (=> res!603289 e!496515)))

(assert (=> b!890217 (= res!603289 (not (is-Found!8791 lt!402216)))))

(declare-datatypes ((Unit!30267 0))(
  ( (Unit!30268) )
))
(declare-fun lt!402217 () Unit!30267)

(declare-datatypes ((array!52016 0))(
  ( (array!52017 (arr!25010 (Array (_ BitVec 32) (_ BitVec 64))) (size!25455 (_ BitVec 32))) )
))
(declare-datatypes ((V!28999 0))(
  ( (V!29000 (val!9063 Int)) )
))
(declare-datatypes ((ValueCell!8531 0))(
  ( (ValueCellFull!8531 (v!11535 V!28999)) (EmptyCell!8531) )
))
(declare-datatypes ((array!52018 0))(
  ( (array!52019 (arr!25011 (Array (_ BitVec 32) ValueCell!8531)) (size!25456 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4078 0))(
  ( (LongMapFixedSize!4079 (defaultEntry!5236 Int) (mask!25702 (_ BitVec 32)) (extraKeys!4930 (_ BitVec 32)) (zeroValue!5034 V!28999) (minValue!5034 V!28999) (_size!2094 (_ BitVec 32)) (_keys!9915 array!52016) (_values!5221 array!52018) (_vacant!2094 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4078)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!13 (array!52016 array!52018 (_ BitVec 32) (_ BitVec 32) V!28999 V!28999 (_ BitVec 64)) Unit!30267)

(assert (=> b!890217 (= lt!402217 (lemmaSeekEntryGivesInRangeIndex!13 (_keys!9915 thiss!1181) (_values!5221 thiss!1181) (mask!25702 thiss!1181) (extraKeys!4930 thiss!1181) (zeroValue!5034 thiss!1181) (minValue!5034 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52016 (_ BitVec 32)) SeekEntryResult!8791)

(assert (=> b!890217 (= lt!402216 (seekEntry!0 key!785 (_keys!9915 thiss!1181) (mask!25702 thiss!1181)))))

(declare-fun b!890218 () Bool)

(declare-fun e!496518 () Bool)

(assert (=> b!890218 (= e!496518 true)))

(declare-fun lt!402219 () Bool)

(declare-datatypes ((List!17802 0))(
  ( (Nil!17799) (Cons!17798 (h!18929 (_ BitVec 64)) (t!25109 List!17802)) )
))
(declare-fun arrayNoDuplicates!0 (array!52016 (_ BitVec 32) List!17802) Bool)

(assert (=> b!890218 (= lt!402219 (arrayNoDuplicates!0 (_keys!9915 thiss!1181) #b00000000000000000000000000000000 Nil!17799))))

(declare-fun b!890219 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890219 (= e!496515 (inRange!0 (index!37535 lt!402216) (mask!25702 thiss!1181)))))

(declare-fun e!496523 () Bool)

(declare-fun e!496516 () Bool)

(declare-fun array_inv!19636 (array!52016) Bool)

(declare-fun array_inv!19637 (array!52018) Bool)

(assert (=> b!890220 (= e!496523 (and tp!55061 tp_is_empty!18025 (array_inv!19636 (_keys!9915 thiss!1181)) (array_inv!19637 (_values!5221 thiss!1181)) e!496516))))

(declare-fun b!890222 () Bool)

(declare-fun res!603291 () Bool)

(assert (=> b!890222 (=> res!603291 e!496518)))

(assert (=> b!890222 (= res!603291 (or (not (= (size!25456 (_values!5221 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25702 thiss!1181)))) (not (= (size!25455 (_keys!9915 thiss!1181)) (size!25456 (_values!5221 thiss!1181)))) (bvslt (mask!25702 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4930 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4930 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890223 () Bool)

(declare-fun e!496517 () Bool)

(assert (=> b!890223 (= e!496517 tp_is_empty!18025)))

(declare-fun mapIsEmpty!28592 () Bool)

(declare-fun mapRes!28592 () Bool)

(assert (=> mapIsEmpty!28592 mapRes!28592))

(declare-fun b!890224 () Bool)

(assert (=> b!890224 (= e!496521 e!496518)))

(declare-fun res!603294 () Bool)

(assert (=> b!890224 (=> res!603294 e!496518)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890224 (= res!603294 (not (validMask!0 (mask!25702 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890224 (arrayContainsKey!0 (_keys!9915 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402218 () Unit!30267)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52016 (_ BitVec 64) (_ BitVec 32)) Unit!30267)

(assert (=> b!890224 (= lt!402218 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9915 thiss!1181) key!785 (index!37535 lt!402216)))))

(declare-fun mapNonEmpty!28592 () Bool)

(declare-fun tp!55060 () Bool)

(assert (=> mapNonEmpty!28592 (= mapRes!28592 (and tp!55060 e!496519))))

(declare-fun mapValue!28592 () ValueCell!8531)

(declare-fun mapRest!28592 () (Array (_ BitVec 32) ValueCell!8531))

(declare-fun mapKey!28592 () (_ BitVec 32))

(assert (=> mapNonEmpty!28592 (= (arr!25011 (_values!5221 thiss!1181)) (store mapRest!28592 mapKey!28592 mapValue!28592))))

(declare-fun res!603288 () Bool)

(assert (=> start!75754 (=> (not res!603288) (not e!496522))))

(declare-fun valid!1573 (LongMapFixedSize!4078) Bool)

(assert (=> start!75754 (= res!603288 (valid!1573 thiss!1181))))

(assert (=> start!75754 e!496522))

(assert (=> start!75754 e!496523))

(assert (=> start!75754 true))

(declare-fun b!890221 () Bool)

(declare-fun res!603293 () Bool)

(assert (=> b!890221 (=> (not res!603293) (not e!496522))))

(assert (=> b!890221 (= res!603293 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890225 () Bool)

(assert (=> b!890225 (= e!496516 (and e!496517 mapRes!28592))))

(declare-fun condMapEmpty!28592 () Bool)

(declare-fun mapDefault!28592 () ValueCell!8531)

