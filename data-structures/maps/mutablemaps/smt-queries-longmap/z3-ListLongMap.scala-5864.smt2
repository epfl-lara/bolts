; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75744 () Bool)

(assert start!75744)

(declare-fun b!890069 () Bool)

(declare-fun b_free!15687 () Bool)

(declare-fun b_next!15687 () Bool)

(assert (=> b!890069 (= b_free!15687 (not b_next!15687))))

(declare-fun tp!55031 () Bool)

(declare-fun b_and!25945 () Bool)

(assert (=> b!890069 (= tp!55031 b_and!25945)))

(declare-fun mapNonEmpty!28577 () Bool)

(declare-fun mapRes!28577 () Bool)

(declare-fun tp!55030 () Bool)

(declare-fun e!496390 () Bool)

(assert (=> mapNonEmpty!28577 (= mapRes!28577 (and tp!55030 e!496390))))

(declare-datatypes ((V!28985 0))(
  ( (V!28986 (val!9058 Int)) )
))
(declare-datatypes ((ValueCell!8526 0))(
  ( (ValueCellFull!8526 (v!11530 V!28985)) (EmptyCell!8526) )
))
(declare-fun mapRest!28577 () (Array (_ BitVec 32) ValueCell!8526))

(declare-fun mapValue!28577 () ValueCell!8526)

(declare-datatypes ((array!51996 0))(
  ( (array!51997 (arr!25000 (Array (_ BitVec 32) (_ BitVec 64))) (size!25445 (_ BitVec 32))) )
))
(declare-datatypes ((array!51998 0))(
  ( (array!51999 (arr!25001 (Array (_ BitVec 32) ValueCell!8526)) (size!25446 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4068 0))(
  ( (LongMapFixedSize!4069 (defaultEntry!5231 Int) (mask!25693 (_ BitVec 32)) (extraKeys!4925 (_ BitVec 32)) (zeroValue!5029 V!28985) (minValue!5029 V!28985) (_size!2089 (_ BitVec 32)) (_keys!9910 array!51996) (_values!5216 array!51998) (_vacant!2089 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4068)

(declare-fun mapKey!28577 () (_ BitVec 32))

(assert (=> mapNonEmpty!28577 (= (arr!25001 (_values!5216 thiss!1181)) (store mapRest!28577 mapKey!28577 mapValue!28577))))

(declare-fun b!890067 () Bool)

(declare-fun tp_is_empty!18015 () Bool)

(assert (=> b!890067 (= e!496390 tp_is_empty!18015)))

(declare-fun b!890068 () Bool)

(declare-fun e!496388 () Bool)

(assert (=> b!890068 (= e!496388 (not true))))

(declare-fun e!496393 () Bool)

(assert (=> b!890068 e!496393))

(declare-fun res!603201 () Bool)

(assert (=> b!890068 (=> res!603201 e!496393)))

(declare-datatypes ((SeekEntryResult!8787 0))(
  ( (MissingZero!8787 (index!37518 (_ BitVec 32))) (Found!8787 (index!37519 (_ BitVec 32))) (Intermediate!8787 (undefined!9599 Bool) (index!37520 (_ BitVec 32)) (x!75604 (_ BitVec 32))) (Undefined!8787) (MissingVacant!8787 (index!37521 (_ BitVec 32))) )
))
(declare-fun lt!402165 () SeekEntryResult!8787)

(get-info :version)

(assert (=> b!890068 (= res!603201 (not ((_ is Found!8787) lt!402165)))))

(declare-datatypes ((Unit!30261 0))(
  ( (Unit!30262) )
))
(declare-fun lt!402164 () Unit!30261)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!10 (array!51996 array!51998 (_ BitVec 32) (_ BitVec 32) V!28985 V!28985 (_ BitVec 64)) Unit!30261)

(assert (=> b!890068 (= lt!402164 (lemmaSeekEntryGivesInRangeIndex!10 (_keys!9910 thiss!1181) (_values!5216 thiss!1181) (mask!25693 thiss!1181) (extraKeys!4925 thiss!1181) (zeroValue!5029 thiss!1181) (minValue!5029 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51996 (_ BitVec 32)) SeekEntryResult!8787)

(assert (=> b!890068 (= lt!402165 (seekEntry!0 key!785 (_keys!9910 thiss!1181) (mask!25693 thiss!1181)))))

(declare-fun e!496392 () Bool)

(declare-fun e!496394 () Bool)

(declare-fun array_inv!19632 (array!51996) Bool)

(declare-fun array_inv!19633 (array!51998) Bool)

(assert (=> b!890069 (= e!496392 (and tp!55031 tp_is_empty!18015 (array_inv!19632 (_keys!9910 thiss!1181)) (array_inv!19633 (_values!5216 thiss!1181)) e!496394))))

(declare-fun b!890070 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890070 (= e!496393 (inRange!0 (index!37519 lt!402165) (mask!25693 thiss!1181)))))

(declare-fun mapIsEmpty!28577 () Bool)

(assert (=> mapIsEmpty!28577 mapRes!28577))

(declare-fun b!890072 () Bool)

(declare-fun res!603199 () Bool)

(assert (=> b!890072 (=> (not res!603199) (not e!496388))))

(assert (=> b!890072 (= res!603199 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890073 () Bool)

(declare-fun e!496389 () Bool)

(assert (=> b!890073 (= e!496394 (and e!496389 mapRes!28577))))

(declare-fun condMapEmpty!28577 () Bool)

(declare-fun mapDefault!28577 () ValueCell!8526)

(assert (=> b!890073 (= condMapEmpty!28577 (= (arr!25001 (_values!5216 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8526)) mapDefault!28577)))))

(declare-fun b!890071 () Bool)

(assert (=> b!890071 (= e!496389 tp_is_empty!18015)))

(declare-fun res!603200 () Bool)

(assert (=> start!75744 (=> (not res!603200) (not e!496388))))

(declare-fun valid!1569 (LongMapFixedSize!4068) Bool)

(assert (=> start!75744 (= res!603200 (valid!1569 thiss!1181))))

(assert (=> start!75744 e!496388))

(assert (=> start!75744 e!496392))

(assert (=> start!75744 true))

(assert (= (and start!75744 res!603200) b!890072))

(assert (= (and b!890072 res!603199) b!890068))

(assert (= (and b!890068 (not res!603201)) b!890070))

(assert (= (and b!890073 condMapEmpty!28577) mapIsEmpty!28577))

(assert (= (and b!890073 (not condMapEmpty!28577)) mapNonEmpty!28577))

(assert (= (and mapNonEmpty!28577 ((_ is ValueCellFull!8526) mapValue!28577)) b!890067))

(assert (= (and b!890073 ((_ is ValueCellFull!8526) mapDefault!28577)) b!890071))

(assert (= b!890069 b!890073))

(assert (= start!75744 b!890069))

(declare-fun m!828789 () Bool)

(assert (=> b!890069 m!828789))

(declare-fun m!828791 () Bool)

(assert (=> b!890069 m!828791))

(declare-fun m!828793 () Bool)

(assert (=> b!890070 m!828793))

(declare-fun m!828795 () Bool)

(assert (=> start!75744 m!828795))

(declare-fun m!828797 () Bool)

(assert (=> mapNonEmpty!28577 m!828797))

(declare-fun m!828799 () Bool)

(assert (=> b!890068 m!828799))

(declare-fun m!828801 () Bool)

(assert (=> b!890068 m!828801))

(check-sat b_and!25945 (not b!890070) (not mapNonEmpty!28577) (not start!75744) (not b_next!15687) (not b!890068) (not b!890069) tp_is_empty!18015)
(check-sat b_and!25945 (not b_next!15687))
