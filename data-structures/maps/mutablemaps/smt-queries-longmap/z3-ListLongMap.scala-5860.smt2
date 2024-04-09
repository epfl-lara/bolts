; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75720 () Bool)

(assert start!75720)

(declare-fun b!889813 () Bool)

(declare-fun b_free!15663 () Bool)

(declare-fun b_next!15663 () Bool)

(assert (=> b!889813 (= b_free!15663 (not b_next!15663))))

(declare-fun tp!54959 () Bool)

(declare-fun b_and!25921 () Bool)

(assert (=> b!889813 (= tp!54959 b_and!25921)))

(declare-fun b!889807 () Bool)

(declare-fun e!496137 () Bool)

(declare-fun e!496139 () Bool)

(declare-fun mapRes!28541 () Bool)

(assert (=> b!889807 (= e!496137 (and e!496139 mapRes!28541))))

(declare-fun condMapEmpty!28541 () Bool)

(declare-datatypes ((array!51948 0))(
  ( (array!51949 (arr!24976 (Array (_ BitVec 32) (_ BitVec 64))) (size!25421 (_ BitVec 32))) )
))
(declare-datatypes ((V!28953 0))(
  ( (V!28954 (val!9046 Int)) )
))
(declare-datatypes ((ValueCell!8514 0))(
  ( (ValueCellFull!8514 (v!11518 V!28953)) (EmptyCell!8514) )
))
(declare-datatypes ((array!51950 0))(
  ( (array!51951 (arr!24977 (Array (_ BitVec 32) ValueCell!8514)) (size!25422 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4044 0))(
  ( (LongMapFixedSize!4045 (defaultEntry!5219 Int) (mask!25673 (_ BitVec 32)) (extraKeys!4913 (_ BitVec 32)) (zeroValue!5017 V!28953) (minValue!5017 V!28953) (_size!2077 (_ BitVec 32)) (_keys!9898 array!51948) (_values!5204 array!51950) (_vacant!2077 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4044)

(declare-fun mapDefault!28541 () ValueCell!8514)

(assert (=> b!889807 (= condMapEmpty!28541 (= (arr!24977 (_values!5204 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8514)) mapDefault!28541)))))

(declare-fun b!889808 () Bool)

(declare-fun res!603085 () Bool)

(declare-fun e!496141 () Bool)

(assert (=> b!889808 (=> (not res!603085) (not e!496141))))

(assert (=> b!889808 (= res!603085 (and (= (size!25422 (_values!5204 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25673 thiss!1181))) (= (size!25421 (_keys!9898 thiss!1181)) (size!25422 (_values!5204 thiss!1181))) (bvsge (mask!25673 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4913 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4913 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889809 () Bool)

(assert (=> b!889809 (= e!496141 false)))

(declare-fun lt!402092 () Bool)

(declare-datatypes ((List!17798 0))(
  ( (Nil!17795) (Cons!17794 (h!18925 (_ BitVec 64)) (t!25105 List!17798)) )
))
(declare-fun arrayNoDuplicates!0 (array!51948 (_ BitVec 32) List!17798) Bool)

(assert (=> b!889809 (= lt!402092 (arrayNoDuplicates!0 (_keys!9898 thiss!1181) #b00000000000000000000000000000000 Nil!17795))))

(declare-fun mapNonEmpty!28541 () Bool)

(declare-fun tp!54958 () Bool)

(declare-fun e!496136 () Bool)

(assert (=> mapNonEmpty!28541 (= mapRes!28541 (and tp!54958 e!496136))))

(declare-fun mapKey!28541 () (_ BitVec 32))

(declare-fun mapValue!28541 () ValueCell!8514)

(declare-fun mapRest!28541 () (Array (_ BitVec 32) ValueCell!8514))

(assert (=> mapNonEmpty!28541 (= (arr!24977 (_values!5204 thiss!1181)) (store mapRest!28541 mapKey!28541 mapValue!28541))))

(declare-fun b!889810 () Bool)

(declare-fun res!603086 () Bool)

(assert (=> b!889810 (=> (not res!603086) (not e!496141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51948 (_ BitVec 32)) Bool)

(assert (=> b!889810 (= res!603086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9898 thiss!1181) (mask!25673 thiss!1181)))))

(declare-fun b!889811 () Bool)

(declare-fun tp_is_empty!17991 () Bool)

(assert (=> b!889811 (= e!496136 tp_is_empty!17991)))

(declare-fun res!603083 () Bool)

(declare-fun e!496138 () Bool)

(assert (=> start!75720 (=> (not res!603083) (not e!496138))))

(declare-fun valid!1562 (LongMapFixedSize!4044) Bool)

(assert (=> start!75720 (= res!603083 (valid!1562 thiss!1181))))

(assert (=> start!75720 e!496138))

(declare-fun e!496140 () Bool)

(assert (=> start!75720 e!496140))

(assert (=> start!75720 true))

(declare-fun b!889812 () Bool)

(assert (=> b!889812 (= e!496139 tp_is_empty!17991)))

(declare-fun array_inv!19612 (array!51948) Bool)

(declare-fun array_inv!19613 (array!51950) Bool)

(assert (=> b!889813 (= e!496140 (and tp!54959 tp_is_empty!17991 (array_inv!19612 (_keys!9898 thiss!1181)) (array_inv!19613 (_values!5204 thiss!1181)) e!496137))))

(declare-fun mapIsEmpty!28541 () Bool)

(assert (=> mapIsEmpty!28541 mapRes!28541))

(declare-fun b!889814 () Bool)

(declare-fun res!603084 () Bool)

(assert (=> b!889814 (=> (not res!603084) (not e!496138))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889814 (= res!603084 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889815 () Bool)

(assert (=> b!889815 (= e!496138 e!496141)))

(declare-fun res!603087 () Bool)

(assert (=> b!889815 (=> (not res!603087) (not e!496141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889815 (= res!603087 (validMask!0 (mask!25673 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8777 0))(
  ( (MissingZero!8777 (index!37478 (_ BitVec 32))) (Found!8777 (index!37479 (_ BitVec 32))) (Intermediate!8777 (undefined!9589 Bool) (index!37480 (_ BitVec 32)) (x!75562 (_ BitVec 32))) (Undefined!8777) (MissingVacant!8777 (index!37481 (_ BitVec 32))) )
))
(declare-fun lt!402093 () SeekEntryResult!8777)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51948 (_ BitVec 32)) SeekEntryResult!8777)

(assert (=> b!889815 (= lt!402093 (seekEntry!0 key!785 (_keys!9898 thiss!1181) (mask!25673 thiss!1181)))))

(assert (= (and start!75720 res!603083) b!889814))

(assert (= (and b!889814 res!603084) b!889815))

(assert (= (and b!889815 res!603087) b!889808))

(assert (= (and b!889808 res!603085) b!889810))

(assert (= (and b!889810 res!603086) b!889809))

(assert (= (and b!889807 condMapEmpty!28541) mapIsEmpty!28541))

(assert (= (and b!889807 (not condMapEmpty!28541)) mapNonEmpty!28541))

(get-info :version)

(assert (= (and mapNonEmpty!28541 ((_ is ValueCellFull!8514) mapValue!28541)) b!889811))

(assert (= (and b!889807 ((_ is ValueCellFull!8514) mapDefault!28541)) b!889812))

(assert (= b!889813 b!889807))

(assert (= start!75720 b!889813))

(declare-fun m!828617 () Bool)

(assert (=> b!889813 m!828617))

(declare-fun m!828619 () Bool)

(assert (=> b!889813 m!828619))

(declare-fun m!828621 () Bool)

(assert (=> mapNonEmpty!28541 m!828621))

(declare-fun m!828623 () Bool)

(assert (=> start!75720 m!828623))

(declare-fun m!828625 () Bool)

(assert (=> b!889809 m!828625))

(declare-fun m!828627 () Bool)

(assert (=> b!889815 m!828627))

(declare-fun m!828629 () Bool)

(assert (=> b!889815 m!828629))

(declare-fun m!828631 () Bool)

(assert (=> b!889810 m!828631))

(check-sat (not b!889810) (not b!889815) (not mapNonEmpty!28541) (not b_next!15663) b_and!25921 tp_is_empty!17991 (not b!889809) (not start!75720) (not b!889813))
(check-sat b_and!25921 (not b_next!15663))
