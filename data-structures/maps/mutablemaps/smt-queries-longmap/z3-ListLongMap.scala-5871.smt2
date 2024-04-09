; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75786 () Bool)

(assert start!75786)

(declare-fun b!890752 () Bool)

(declare-fun b_free!15729 () Bool)

(declare-fun b_next!15729 () Bool)

(assert (=> b!890752 (= b_free!15729 (not b_next!15729))))

(declare-fun tp!55157 () Bool)

(declare-fun b_and!25987 () Bool)

(assert (=> b!890752 (= tp!55157 b_and!25987)))

(declare-fun b!890744 () Bool)

(declare-fun res!603625 () Bool)

(declare-fun e!496953 () Bool)

(assert (=> b!890744 (=> res!603625 e!496953)))

(declare-datatypes ((array!52080 0))(
  ( (array!52081 (arr!25042 (Array (_ BitVec 32) (_ BitVec 64))) (size!25487 (_ BitVec 32))) )
))
(declare-datatypes ((V!29041 0))(
  ( (V!29042 (val!9079 Int)) )
))
(declare-datatypes ((ValueCell!8547 0))(
  ( (ValueCellFull!8547 (v!11551 V!29041)) (EmptyCell!8547) )
))
(declare-datatypes ((array!52082 0))(
  ( (array!52083 (arr!25043 (Array (_ BitVec 32) ValueCell!8547)) (size!25488 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4110 0))(
  ( (LongMapFixedSize!4111 (defaultEntry!5252 Int) (mask!25728 (_ BitVec 32)) (extraKeys!4946 (_ BitVec 32)) (zeroValue!5050 V!29041) (minValue!5050 V!29041) (_size!2110 (_ BitVec 32)) (_keys!9931 array!52080) (_values!5237 array!52082) (_vacant!2110 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4110)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52080 (_ BitVec 32)) Bool)

(assert (=> b!890744 (= res!603625 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9931 thiss!1181) (mask!25728 thiss!1181))))))

(declare-fun b!890745 () Bool)

(declare-fun res!603628 () Bool)

(declare-fun e!496947 () Bool)

(assert (=> b!890745 (=> (not res!603628) (not e!496947))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890745 (= res!603628 (not (= key!785 (bvneg key!785))))))

(declare-fun b!890746 () Bool)

(declare-fun e!496952 () Bool)

(declare-datatypes ((SeekEntryResult!8805 0))(
  ( (MissingZero!8805 (index!37590 (_ BitVec 32))) (Found!8805 (index!37591 (_ BitVec 32))) (Intermediate!8805 (undefined!9617 Bool) (index!37592 (_ BitVec 32)) (x!75678 (_ BitVec 32))) (Undefined!8805) (MissingVacant!8805 (index!37593 (_ BitVec 32))) )
))
(declare-fun lt!402411 () SeekEntryResult!8805)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890746 (= e!496952 (inRange!0 (index!37591 lt!402411) (mask!25728 thiss!1181)))))

(declare-fun b!890748 () Bool)

(assert (=> b!890748 (= e!496953 true)))

(declare-fun lt!402410 () Bool)

(declare-datatypes ((List!17812 0))(
  ( (Nil!17809) (Cons!17808 (h!18939 (_ BitVec 64)) (t!25119 List!17812)) )
))
(declare-fun arrayNoDuplicates!0 (array!52080 (_ BitVec 32) List!17812) Bool)

(assert (=> b!890748 (= lt!402410 (arrayNoDuplicates!0 (_keys!9931 thiss!1181) #b00000000000000000000000000000000 Nil!17809))))

(declare-fun b!890749 () Bool)

(declare-fun res!603624 () Bool)

(assert (=> b!890749 (=> res!603624 e!496953)))

(assert (=> b!890749 (= res!603624 (or (not (= (size!25488 (_values!5237 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25728 thiss!1181)))) (not (= (size!25487 (_keys!9931 thiss!1181)) (size!25488 (_values!5237 thiss!1181)))) (bvslt (mask!25728 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4946 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4946 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!890750 () Bool)

(declare-fun e!496950 () Bool)

(declare-fun e!496955 () Bool)

(declare-fun mapRes!28640 () Bool)

(assert (=> b!890750 (= e!496950 (and e!496955 mapRes!28640))))

(declare-fun condMapEmpty!28640 () Bool)

(declare-fun mapDefault!28640 () ValueCell!8547)

(assert (=> b!890750 (= condMapEmpty!28640 (= (arr!25043 (_values!5237 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8547)) mapDefault!28640)))))

(declare-fun b!890751 () Bool)

(declare-fun e!496949 () Bool)

(assert (=> b!890751 (= e!496947 (not e!496949))))

(declare-fun res!603626 () Bool)

(assert (=> b!890751 (=> res!603626 e!496949)))

(get-info :version)

(assert (=> b!890751 (= res!603626 (not ((_ is Found!8805) lt!402411)))))

(assert (=> b!890751 e!496952))

(declare-fun res!603629 () Bool)

(assert (=> b!890751 (=> res!603629 e!496952)))

(assert (=> b!890751 (= res!603629 (not ((_ is Found!8805) lt!402411)))))

(declare-datatypes ((Unit!30295 0))(
  ( (Unit!30296) )
))
(declare-fun lt!402409 () Unit!30295)

(declare-fun lemmaSeekEntryGivesInRangeIndex!27 (array!52080 array!52082 (_ BitVec 32) (_ BitVec 32) V!29041 V!29041 (_ BitVec 64)) Unit!30295)

(assert (=> b!890751 (= lt!402409 (lemmaSeekEntryGivesInRangeIndex!27 (_keys!9931 thiss!1181) (_values!5237 thiss!1181) (mask!25728 thiss!1181) (extraKeys!4946 thiss!1181) (zeroValue!5050 thiss!1181) (minValue!5050 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52080 (_ BitVec 32)) SeekEntryResult!8805)

(assert (=> b!890751 (= lt!402411 (seekEntry!0 key!785 (_keys!9931 thiss!1181) (mask!25728 thiss!1181)))))

(declare-fun tp_is_empty!18057 () Bool)

(declare-fun e!496951 () Bool)

(declare-fun array_inv!19658 (array!52080) Bool)

(declare-fun array_inv!19659 (array!52082) Bool)

(assert (=> b!890752 (= e!496951 (and tp!55157 tp_is_empty!18057 (array_inv!19658 (_keys!9931 thiss!1181)) (array_inv!19659 (_values!5237 thiss!1181)) e!496950))))

(declare-fun mapNonEmpty!28640 () Bool)

(declare-fun tp!55156 () Bool)

(declare-fun e!496954 () Bool)

(assert (=> mapNonEmpty!28640 (= mapRes!28640 (and tp!55156 e!496954))))

(declare-fun mapValue!28640 () ValueCell!8547)

(declare-fun mapRest!28640 () (Array (_ BitVec 32) ValueCell!8547))

(declare-fun mapKey!28640 () (_ BitVec 32))

(assert (=> mapNonEmpty!28640 (= (arr!25043 (_values!5237 thiss!1181)) (store mapRest!28640 mapKey!28640 mapValue!28640))))

(declare-fun b!890753 () Bool)

(assert (=> b!890753 (= e!496949 e!496953)))

(declare-fun res!603627 () Bool)

(assert (=> b!890753 (=> res!603627 e!496953)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890753 (= res!603627 (not (validMask!0 (mask!25728 thiss!1181))))))

(declare-fun arrayContainsKey!0 (array!52080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890753 (arrayContainsKey!0 (_keys!9931 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402408 () Unit!30295)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52080 (_ BitVec 64) (_ BitVec 32)) Unit!30295)

(assert (=> b!890753 (= lt!402408 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9931 thiss!1181) key!785 (index!37591 lt!402411)))))

(declare-fun b!890754 () Bool)

(assert (=> b!890754 (= e!496955 tp_is_empty!18057)))

(declare-fun mapIsEmpty!28640 () Bool)

(assert (=> mapIsEmpty!28640 mapRes!28640))

(declare-fun b!890747 () Bool)

(assert (=> b!890747 (= e!496954 tp_is_empty!18057)))

(declare-fun res!603630 () Bool)

(assert (=> start!75786 (=> (not res!603630) (not e!496947))))

(declare-fun valid!1585 (LongMapFixedSize!4110) Bool)

(assert (=> start!75786 (= res!603630 (valid!1585 thiss!1181))))

(assert (=> start!75786 e!496947))

(assert (=> start!75786 e!496951))

(assert (=> start!75786 true))

(assert (= (and start!75786 res!603630) b!890745))

(assert (= (and b!890745 res!603628) b!890751))

(assert (= (and b!890751 (not res!603629)) b!890746))

(assert (= (and b!890751 (not res!603626)) b!890753))

(assert (= (and b!890753 (not res!603627)) b!890749))

(assert (= (and b!890749 (not res!603624)) b!890744))

(assert (= (and b!890744 (not res!603625)) b!890748))

(assert (= (and b!890750 condMapEmpty!28640) mapIsEmpty!28640))

(assert (= (and b!890750 (not condMapEmpty!28640)) mapNonEmpty!28640))

(assert (= (and mapNonEmpty!28640 ((_ is ValueCellFull!8547) mapValue!28640)) b!890747))

(assert (= (and b!890750 ((_ is ValueCellFull!8547) mapDefault!28640)) b!890754))

(assert (= b!890752 b!890750))

(assert (= start!75786 b!890752))

(declare-fun m!829273 () Bool)

(assert (=> start!75786 m!829273))

(declare-fun m!829275 () Bool)

(assert (=> b!890744 m!829275))

(declare-fun m!829277 () Bool)

(assert (=> b!890748 m!829277))

(declare-fun m!829279 () Bool)

(assert (=> mapNonEmpty!28640 m!829279))

(declare-fun m!829281 () Bool)

(assert (=> b!890753 m!829281))

(declare-fun m!829283 () Bool)

(assert (=> b!890753 m!829283))

(declare-fun m!829285 () Bool)

(assert (=> b!890753 m!829285))

(declare-fun m!829287 () Bool)

(assert (=> b!890746 m!829287))

(declare-fun m!829289 () Bool)

(assert (=> b!890751 m!829289))

(declare-fun m!829291 () Bool)

(assert (=> b!890751 m!829291))

(declare-fun m!829293 () Bool)

(assert (=> b!890752 m!829293))

(declare-fun m!829295 () Bool)

(assert (=> b!890752 m!829295))

(check-sat (not b!890752) b_and!25987 tp_is_empty!18057 (not b!890746) (not b!890751) (not b_next!15729) (not mapNonEmpty!28640) (not b!890744) (not b!890748) (not b!890753) (not start!75786))
(check-sat b_and!25987 (not b_next!15729))
