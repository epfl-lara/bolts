; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75738 () Bool)

(assert start!75738)

(declare-fun b!890004 () Bool)

(declare-fun b_free!15681 () Bool)

(declare-fun b_next!15681 () Bool)

(assert (=> b!890004 (= b_free!15681 (not b_next!15681))))

(declare-fun tp!55012 () Bool)

(declare-fun b_and!25939 () Bool)

(assert (=> b!890004 (= tp!55012 b_and!25939)))

(declare-fun tp_is_empty!18009 () Bool)

(declare-fun e!496329 () Bool)

(declare-fun e!496327 () Bool)

(declare-datatypes ((array!51984 0))(
  ( (array!51985 (arr!24994 (Array (_ BitVec 32) (_ BitVec 64))) (size!25439 (_ BitVec 32))) )
))
(declare-datatypes ((V!28977 0))(
  ( (V!28978 (val!9055 Int)) )
))
(declare-datatypes ((ValueCell!8523 0))(
  ( (ValueCellFull!8523 (v!11527 V!28977)) (EmptyCell!8523) )
))
(declare-datatypes ((array!51986 0))(
  ( (array!51987 (arr!24995 (Array (_ BitVec 32) ValueCell!8523)) (size!25440 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4062 0))(
  ( (LongMapFixedSize!4063 (defaultEntry!5228 Int) (mask!25688 (_ BitVec 32)) (extraKeys!4922 (_ BitVec 32)) (zeroValue!5026 V!28977) (minValue!5026 V!28977) (_size!2086 (_ BitVec 32)) (_keys!9907 array!51984) (_values!5213 array!51986) (_vacant!2086 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4062)

(declare-fun array_inv!19626 (array!51984) Bool)

(declare-fun array_inv!19627 (array!51986) Bool)

(assert (=> b!890004 (= e!496327 (and tp!55012 tp_is_empty!18009 (array_inv!19626 (_keys!9907 thiss!1181)) (array_inv!19627 (_values!5213 thiss!1181)) e!496329))))

(declare-fun b!890005 () Bool)

(declare-fun e!496326 () Bool)

(declare-datatypes ((SeekEntryResult!8784 0))(
  ( (MissingZero!8784 (index!37506 (_ BitVec 32))) (Found!8784 (index!37507 (_ BitVec 32))) (Intermediate!8784 (undefined!9596 Bool) (index!37508 (_ BitVec 32)) (x!75593 (_ BitVec 32))) (Undefined!8784) (MissingVacant!8784 (index!37509 (_ BitVec 32))) )
))
(declare-fun lt!402147 () SeekEntryResult!8784)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890005 (= e!496326 (inRange!0 (index!37507 lt!402147) (mask!25688 thiss!1181)))))

(declare-fun b!890006 () Bool)

(declare-fun e!496325 () Bool)

(assert (=> b!890006 (= e!496325 (not true))))

(assert (=> b!890006 e!496326))

(declare-fun res!603172 () Bool)

(assert (=> b!890006 (=> res!603172 e!496326)))

(get-info :version)

(assert (=> b!890006 (= res!603172 (not ((_ is Found!8784) lt!402147)))))

(declare-datatypes ((Unit!30257 0))(
  ( (Unit!30258) )
))
(declare-fun lt!402146 () Unit!30257)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!8 (array!51984 array!51986 (_ BitVec 32) (_ BitVec 32) V!28977 V!28977 (_ BitVec 64)) Unit!30257)

(assert (=> b!890006 (= lt!402146 (lemmaSeekEntryGivesInRangeIndex!8 (_keys!9907 thiss!1181) (_values!5213 thiss!1181) (mask!25688 thiss!1181) (extraKeys!4922 thiss!1181) (zeroValue!5026 thiss!1181) (minValue!5026 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51984 (_ BitVec 32)) SeekEntryResult!8784)

(assert (=> b!890006 (= lt!402147 (seekEntry!0 key!785 (_keys!9907 thiss!1181) (mask!25688 thiss!1181)))))

(declare-fun b!890007 () Bool)

(declare-fun res!603174 () Bool)

(assert (=> b!890007 (=> (not res!603174) (not e!496325))))

(assert (=> b!890007 (= res!603174 (not (= key!785 (bvneg key!785))))))

(declare-fun res!603173 () Bool)

(assert (=> start!75738 (=> (not res!603173) (not e!496325))))

(declare-fun valid!1567 (LongMapFixedSize!4062) Bool)

(assert (=> start!75738 (= res!603173 (valid!1567 thiss!1181))))

(assert (=> start!75738 e!496325))

(assert (=> start!75738 e!496327))

(assert (=> start!75738 true))

(declare-fun b!890008 () Bool)

(declare-fun e!496331 () Bool)

(declare-fun mapRes!28568 () Bool)

(assert (=> b!890008 (= e!496329 (and e!496331 mapRes!28568))))

(declare-fun condMapEmpty!28568 () Bool)

(declare-fun mapDefault!28568 () ValueCell!8523)

(assert (=> b!890008 (= condMapEmpty!28568 (= (arr!24995 (_values!5213 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8523)) mapDefault!28568)))))

(declare-fun b!890009 () Bool)

(assert (=> b!890009 (= e!496331 tp_is_empty!18009)))

(declare-fun b!890010 () Bool)

(declare-fun e!496328 () Bool)

(assert (=> b!890010 (= e!496328 tp_is_empty!18009)))

(declare-fun mapIsEmpty!28568 () Bool)

(assert (=> mapIsEmpty!28568 mapRes!28568))

(declare-fun mapNonEmpty!28568 () Bool)

(declare-fun tp!55013 () Bool)

(assert (=> mapNonEmpty!28568 (= mapRes!28568 (and tp!55013 e!496328))))

(declare-fun mapKey!28568 () (_ BitVec 32))

(declare-fun mapValue!28568 () ValueCell!8523)

(declare-fun mapRest!28568 () (Array (_ BitVec 32) ValueCell!8523))

(assert (=> mapNonEmpty!28568 (= (arr!24995 (_values!5213 thiss!1181)) (store mapRest!28568 mapKey!28568 mapValue!28568))))

(assert (= (and start!75738 res!603173) b!890007))

(assert (= (and b!890007 res!603174) b!890006))

(assert (= (and b!890006 (not res!603172)) b!890005))

(assert (= (and b!890008 condMapEmpty!28568) mapIsEmpty!28568))

(assert (= (and b!890008 (not condMapEmpty!28568)) mapNonEmpty!28568))

(assert (= (and mapNonEmpty!28568 ((_ is ValueCellFull!8523) mapValue!28568)) b!890010))

(assert (= (and b!890008 ((_ is ValueCellFull!8523) mapDefault!28568)) b!890009))

(assert (= b!890004 b!890008))

(assert (= start!75738 b!890004))

(declare-fun m!828747 () Bool)

(assert (=> mapNonEmpty!28568 m!828747))

(declare-fun m!828749 () Bool)

(assert (=> start!75738 m!828749))

(declare-fun m!828751 () Bool)

(assert (=> b!890005 m!828751))

(declare-fun m!828753 () Bool)

(assert (=> b!890004 m!828753))

(declare-fun m!828755 () Bool)

(assert (=> b!890004 m!828755))

(declare-fun m!828757 () Bool)

(assert (=> b!890006 m!828757))

(declare-fun m!828759 () Bool)

(assert (=> b!890006 m!828759))

(check-sat (not b_next!15681) b_and!25939 (not start!75738) (not b!890006) (not mapNonEmpty!28568) (not b!890004) (not b!890005) tp_is_empty!18009)
(check-sat b_and!25939 (not b_next!15681))
