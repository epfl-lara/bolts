; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75802 () Bool)

(assert start!75802)

(declare-fun b!891009 () Bool)

(declare-fun b_free!15745 () Bool)

(declare-fun b_next!15745 () Bool)

(assert (=> b!891009 (= b_free!15745 (not b_next!15745))))

(declare-fun tp!55204 () Bool)

(declare-fun b_and!26003 () Bool)

(assert (=> b!891009 (= tp!55204 b_and!26003)))

(declare-fun mapNonEmpty!28664 () Bool)

(declare-fun mapRes!28664 () Bool)

(declare-fun tp!55205 () Bool)

(declare-fun e!497169 () Bool)

(assert (=> mapNonEmpty!28664 (= mapRes!28664 (and tp!55205 e!497169))))

(declare-datatypes ((V!29063 0))(
  ( (V!29064 (val!9087 Int)) )
))
(declare-datatypes ((ValueCell!8555 0))(
  ( (ValueCellFull!8555 (v!11559 V!29063)) (EmptyCell!8555) )
))
(declare-fun mapRest!28664 () (Array (_ BitVec 32) ValueCell!8555))

(declare-fun mapValue!28664 () ValueCell!8555)

(declare-fun mapKey!28664 () (_ BitVec 32))

(declare-datatypes ((array!52112 0))(
  ( (array!52113 (arr!25058 (Array (_ BitVec 32) (_ BitVec 64))) (size!25503 (_ BitVec 32))) )
))
(declare-datatypes ((array!52114 0))(
  ( (array!52115 (arr!25059 (Array (_ BitVec 32) ValueCell!8555)) (size!25504 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4126 0))(
  ( (LongMapFixedSize!4127 (defaultEntry!5260 Int) (mask!25742 (_ BitVec 32)) (extraKeys!4954 (_ BitVec 32)) (zeroValue!5058 V!29063) (minValue!5058 V!29063) (_size!2118 (_ BitVec 32)) (_keys!9939 array!52112) (_values!5245 array!52114) (_vacant!2118 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4126)

(assert (=> mapNonEmpty!28664 (= (arr!25059 (_values!5245 thiss!1181)) (store mapRest!28664 mapKey!28664 mapValue!28664))))

(declare-fun b!891008 () Bool)

(declare-fun e!497163 () Bool)

(declare-fun e!497168 () Bool)

(assert (=> b!891008 (= e!497163 (not e!497168))))

(declare-fun res!603794 () Bool)

(assert (=> b!891008 (=> res!603794 e!497168)))

(declare-datatypes ((SeekEntryResult!8812 0))(
  ( (MissingZero!8812 (index!37618 (_ BitVec 32))) (Found!8812 (index!37619 (_ BitVec 32))) (Intermediate!8812 (undefined!9624 Bool) (index!37620 (_ BitVec 32)) (x!75709 (_ BitVec 32))) (Undefined!8812) (MissingVacant!8812 (index!37621 (_ BitVec 32))) )
))
(declare-fun lt!402506 () SeekEntryResult!8812)

(assert (=> b!891008 (= res!603794 (not (is-Found!8812 lt!402506)))))

(declare-fun e!497170 () Bool)

(assert (=> b!891008 e!497170))

(declare-fun res!603795 () Bool)

(assert (=> b!891008 (=> res!603795 e!497170)))

(assert (=> b!891008 (= res!603795 (not (is-Found!8812 lt!402506)))))

(declare-datatypes ((Unit!30309 0))(
  ( (Unit!30310) )
))
(declare-fun lt!402505 () Unit!30309)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!33 (array!52112 array!52114 (_ BitVec 32) (_ BitVec 32) V!29063 V!29063 (_ BitVec 64)) Unit!30309)

(assert (=> b!891008 (= lt!402505 (lemmaSeekEntryGivesInRangeIndex!33 (_keys!9939 thiss!1181) (_values!5245 thiss!1181) (mask!25742 thiss!1181) (extraKeys!4954 thiss!1181) (zeroValue!5058 thiss!1181) (minValue!5058 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52112 (_ BitVec 32)) SeekEntryResult!8812)

(assert (=> b!891008 (= lt!402506 (seekEntry!0 key!785 (_keys!9939 thiss!1181) (mask!25742 thiss!1181)))))

(declare-fun tp_is_empty!18073 () Bool)

(declare-fun e!497171 () Bool)

(declare-fun e!497167 () Bool)

(declare-fun array_inv!19666 (array!52112) Bool)

(declare-fun array_inv!19667 (array!52114) Bool)

(assert (=> b!891009 (= e!497171 (and tp!55204 tp_is_empty!18073 (array_inv!19666 (_keys!9939 thiss!1181)) (array_inv!19667 (_values!5245 thiss!1181)) e!497167))))

(declare-fun b!891010 () Bool)

(declare-fun res!603796 () Bool)

(declare-fun e!497166 () Bool)

(assert (=> b!891010 (=> res!603796 e!497166)))

(assert (=> b!891010 (= res!603796 (or (not (= (size!25504 (_values!5245 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25742 thiss!1181)))) (not (= (size!25503 (_keys!9939 thiss!1181)) (size!25504 (_values!5245 thiss!1181)))) (bvslt (mask!25742 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4954 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4954 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun res!603797 () Bool)

(assert (=> start!75802 (=> (not res!603797) (not e!497163))))

(declare-fun valid!1589 (LongMapFixedSize!4126) Bool)

(assert (=> start!75802 (= res!603797 (valid!1589 thiss!1181))))

(assert (=> start!75802 e!497163))

(assert (=> start!75802 e!497171))

(assert (=> start!75802 true))

(declare-fun b!891011 () Bool)

(declare-fun e!497165 () Bool)

(assert (=> b!891011 (= e!497167 (and e!497165 mapRes!28664))))

(declare-fun condMapEmpty!28664 () Bool)

(declare-fun mapDefault!28664 () ValueCell!8555)

