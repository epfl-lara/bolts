; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75810 () Bool)

(assert start!75810)

(declare-fun b!891145 () Bool)

(declare-fun b_free!15753 () Bool)

(declare-fun b_next!15753 () Bool)

(assert (=> b!891145 (= b_free!15753 (not b_next!15753))))

(declare-fun tp!55228 () Bool)

(declare-fun b_and!26011 () Bool)

(assert (=> b!891145 (= tp!55228 b_and!26011)))

(declare-fun e!497275 () Bool)

(declare-datatypes ((array!52128 0))(
  ( (array!52129 (arr!25066 (Array (_ BitVec 32) (_ BitVec 64))) (size!25511 (_ BitVec 32))) )
))
(declare-datatypes ((V!29073 0))(
  ( (V!29074 (val!9091 Int)) )
))
(declare-datatypes ((ValueCell!8559 0))(
  ( (ValueCellFull!8559 (v!11563 V!29073)) (EmptyCell!8559) )
))
(declare-datatypes ((array!52130 0))(
  ( (array!52131 (arr!25067 (Array (_ BitVec 32) ValueCell!8559)) (size!25512 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4134 0))(
  ( (LongMapFixedSize!4135 (defaultEntry!5264 Int) (mask!25748 (_ BitVec 32)) (extraKeys!4958 (_ BitVec 32)) (zeroValue!5062 V!29073) (minValue!5062 V!29073) (_size!2122 (_ BitVec 32)) (_keys!9943 array!52128) (_values!5249 array!52130) (_vacant!2122 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4134)

(declare-fun e!497272 () Bool)

(declare-fun tp_is_empty!18081 () Bool)

(declare-fun array_inv!19670 (array!52128) Bool)

(declare-fun array_inv!19671 (array!52130) Bool)

(assert (=> b!891145 (= e!497275 (and tp!55228 tp_is_empty!18081 (array_inv!19670 (_keys!9943 thiss!1181)) (array_inv!19671 (_values!5249 thiss!1181)) e!497272))))

(declare-fun b!891146 () Bool)

(declare-fun e!497274 () Bool)

(declare-fun mapRes!28676 () Bool)

(assert (=> b!891146 (= e!497272 (and e!497274 mapRes!28676))))

(declare-fun condMapEmpty!28676 () Bool)

(declare-fun mapDefault!28676 () ValueCell!8559)

(assert (=> b!891146 (= condMapEmpty!28676 (= (arr!25067 (_values!5249 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8559)) mapDefault!28676)))))

(declare-fun b!891147 () Bool)

(declare-fun res!603881 () Bool)

(declare-fun e!497273 () Bool)

(assert (=> b!891147 (=> res!603881 e!497273)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52128 (_ BitVec 32)) Bool)

(assert (=> b!891147 (= res!603881 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9943 thiss!1181) (mask!25748 thiss!1181))))))

(declare-fun b!891148 () Bool)

(declare-fun e!497271 () Bool)

(declare-fun e!497278 () Bool)

(assert (=> b!891148 (= e!497271 (not e!497278))))

(declare-fun res!603882 () Bool)

(assert (=> b!891148 (=> res!603882 e!497278)))

(declare-datatypes ((SeekEntryResult!8815 0))(
  ( (MissingZero!8815 (index!37630 (_ BitVec 32))) (Found!8815 (index!37631 (_ BitVec 32))) (Intermediate!8815 (undefined!9627 Bool) (index!37632 (_ BitVec 32)) (x!75720 (_ BitVec 32))) (Undefined!8815) (MissingVacant!8815 (index!37633 (_ BitVec 32))) )
))
(declare-fun lt!402564 () SeekEntryResult!8815)

(get-info :version)

(assert (=> b!891148 (= res!603882 (not ((_ is Found!8815) lt!402564)))))

(declare-fun e!497277 () Bool)

(assert (=> b!891148 e!497277))

(declare-fun res!603883 () Bool)

(assert (=> b!891148 (=> res!603883 e!497277)))

(assert (=> b!891148 (= res!603883 (not ((_ is Found!8815) lt!402564)))))

(declare-datatypes ((Unit!30313 0))(
  ( (Unit!30314) )
))
(declare-fun lt!402562 () Unit!30313)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!35 (array!52128 array!52130 (_ BitVec 32) (_ BitVec 32) V!29073 V!29073 (_ BitVec 64)) Unit!30313)

(assert (=> b!891148 (= lt!402562 (lemmaSeekEntryGivesInRangeIndex!35 (_keys!9943 thiss!1181) (_values!5249 thiss!1181) (mask!25748 thiss!1181) (extraKeys!4958 thiss!1181) (zeroValue!5062 thiss!1181) (minValue!5062 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52128 (_ BitVec 32)) SeekEntryResult!8815)

(assert (=> b!891148 (= lt!402564 (seekEntry!0 key!785 (_keys!9943 thiss!1181) (mask!25748 thiss!1181)))))

(declare-fun b!891149 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891149 (= e!497277 (inRange!0 (index!37631 lt!402564) (mask!25748 thiss!1181)))))

(declare-fun b!891150 () Bool)

(assert (=> b!891150 (= e!497273 true)))

(declare-fun lt!402565 () Bool)

(declare-datatypes ((tuple2!11964 0))(
  ( (tuple2!11965 (_1!5992 (_ BitVec 64)) (_2!5992 V!29073)) )
))
(declare-datatypes ((List!17818 0))(
  ( (Nil!17815) (Cons!17814 (h!18945 tuple2!11964) (t!25125 List!17818)) )
))
(declare-datatypes ((ListLongMap!10675 0))(
  ( (ListLongMap!10676 (toList!5353 List!17818)) )
))
(declare-fun lt!402563 () ListLongMap!10675)

(declare-fun contains!4330 (ListLongMap!10675 (_ BitVec 64)) Bool)

(assert (=> b!891150 (= lt!402565 (contains!4330 lt!402563 key!785))))

(declare-fun b!891151 () Bool)

(declare-fun res!603886 () Bool)

(assert (=> b!891151 (=> res!603886 e!497273)))

(assert (=> b!891151 (= res!603886 (or (not (= (size!25512 (_values!5249 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25748 thiss!1181)))) (not (= (size!25511 (_keys!9943 thiss!1181)) (size!25512 (_values!5249 thiss!1181)))) (bvslt (mask!25748 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4958 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4958 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891152 () Bool)

(declare-fun res!603887 () Bool)

(assert (=> b!891152 (=> res!603887 e!497273)))

(declare-datatypes ((List!17819 0))(
  ( (Nil!17816) (Cons!17815 (h!18946 (_ BitVec 64)) (t!25126 List!17819)) )
))
(declare-fun arrayNoDuplicates!0 (array!52128 (_ BitVec 32) List!17819) Bool)

(assert (=> b!891152 (= res!603887 (not (arrayNoDuplicates!0 (_keys!9943 thiss!1181) #b00000000000000000000000000000000 Nil!17816)))))

(declare-fun b!891153 () Bool)

(assert (=> b!891153 (= e!497274 tp_is_empty!18081)))

(declare-fun b!891154 () Bool)

(declare-fun e!497279 () Bool)

(assert (=> b!891154 (= e!497279 tp_is_empty!18081)))

(declare-fun res!603888 () Bool)

(assert (=> start!75810 (=> (not res!603888) (not e!497271))))

(declare-fun valid!1591 (LongMapFixedSize!4134) Bool)

(assert (=> start!75810 (= res!603888 (valid!1591 thiss!1181))))

(assert (=> start!75810 e!497271))

(assert (=> start!75810 e!497275))

(assert (=> start!75810 true))

(declare-fun mapIsEmpty!28676 () Bool)

(assert (=> mapIsEmpty!28676 mapRes!28676))

(declare-fun b!891155 () Bool)

(assert (=> b!891155 (= e!497278 e!497273)))

(declare-fun res!603885 () Bool)

(assert (=> b!891155 (=> res!603885 e!497273)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891155 (= res!603885 (not (validMask!0 (mask!25748 thiss!1181))))))

(assert (=> b!891155 (contains!4330 lt!402563 (select (arr!25066 (_keys!9943 thiss!1181)) (index!37631 lt!402564)))))

(declare-fun getCurrentListMap!2607 (array!52128 array!52130 (_ BitVec 32) (_ BitVec 32) V!29073 V!29073 (_ BitVec 32) Int) ListLongMap!10675)

(assert (=> b!891155 (= lt!402563 (getCurrentListMap!2607 (_keys!9943 thiss!1181) (_values!5249 thiss!1181) (mask!25748 thiss!1181) (extraKeys!4958 thiss!1181) (zeroValue!5062 thiss!1181) (minValue!5062 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5264 thiss!1181)))))

(declare-fun lt!402567 () Unit!30313)

(declare-fun lemmaValidKeyInArrayIsInListMap!200 (array!52128 array!52130 (_ BitVec 32) (_ BitVec 32) V!29073 V!29073 (_ BitVec 32) Int) Unit!30313)

(assert (=> b!891155 (= lt!402567 (lemmaValidKeyInArrayIsInListMap!200 (_keys!9943 thiss!1181) (_values!5249 thiss!1181) (mask!25748 thiss!1181) (extraKeys!4958 thiss!1181) (zeroValue!5062 thiss!1181) (minValue!5062 thiss!1181) (index!37631 lt!402564) (defaultEntry!5264 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891155 (arrayContainsKey!0 (_keys!9943 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402566 () Unit!30313)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52128 (_ BitVec 64) (_ BitVec 32)) Unit!30313)

(assert (=> b!891155 (= lt!402566 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9943 thiss!1181) key!785 (index!37631 lt!402564)))))

(declare-fun b!891156 () Bool)

(declare-fun res!603884 () Bool)

(assert (=> b!891156 (=> (not res!603884) (not e!497271))))

(assert (=> b!891156 (= res!603884 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28676 () Bool)

(declare-fun tp!55229 () Bool)

(assert (=> mapNonEmpty!28676 (= mapRes!28676 (and tp!55229 e!497279))))

(declare-fun mapKey!28676 () (_ BitVec 32))

(declare-fun mapValue!28676 () ValueCell!8559)

(declare-fun mapRest!28676 () (Array (_ BitVec 32) ValueCell!8559))

(assert (=> mapNonEmpty!28676 (= (arr!25067 (_values!5249 thiss!1181)) (store mapRest!28676 mapKey!28676 mapValue!28676))))

(assert (= (and start!75810 res!603888) b!891156))

(assert (= (and b!891156 res!603884) b!891148))

(assert (= (and b!891148 (not res!603883)) b!891149))

(assert (= (and b!891148 (not res!603882)) b!891155))

(assert (= (and b!891155 (not res!603885)) b!891151))

(assert (= (and b!891151 (not res!603886)) b!891147))

(assert (= (and b!891147 (not res!603881)) b!891152))

(assert (= (and b!891152 (not res!603887)) b!891150))

(assert (= (and b!891146 condMapEmpty!28676) mapIsEmpty!28676))

(assert (= (and b!891146 (not condMapEmpty!28676)) mapNonEmpty!28676))

(assert (= (and mapNonEmpty!28676 ((_ is ValueCellFull!8559) mapValue!28676)) b!891154))

(assert (= (and b!891146 ((_ is ValueCellFull!8559) mapDefault!28676)) b!891153))

(assert (= b!891145 b!891146))

(assert (= start!75810 b!891145))

(declare-fun m!829571 () Bool)

(assert (=> b!891152 m!829571))

(declare-fun m!829573 () Bool)

(assert (=> mapNonEmpty!28676 m!829573))

(declare-fun m!829575 () Bool)

(assert (=> b!891149 m!829575))

(declare-fun m!829577 () Bool)

(assert (=> b!891155 m!829577))

(declare-fun m!829579 () Bool)

(assert (=> b!891155 m!829579))

(declare-fun m!829581 () Bool)

(assert (=> b!891155 m!829581))

(declare-fun m!829583 () Bool)

(assert (=> b!891155 m!829583))

(declare-fun m!829585 () Bool)

(assert (=> b!891155 m!829585))

(declare-fun m!829587 () Bool)

(assert (=> b!891155 m!829587))

(declare-fun m!829589 () Bool)

(assert (=> b!891155 m!829589))

(assert (=> b!891155 m!829577))

(declare-fun m!829591 () Bool)

(assert (=> b!891150 m!829591))

(declare-fun m!829593 () Bool)

(assert (=> b!891147 m!829593))

(declare-fun m!829595 () Bool)

(assert (=> b!891148 m!829595))

(declare-fun m!829597 () Bool)

(assert (=> b!891148 m!829597))

(declare-fun m!829599 () Bool)

(assert (=> b!891145 m!829599))

(declare-fun m!829601 () Bool)

(assert (=> b!891145 m!829601))

(declare-fun m!829603 () Bool)

(assert (=> start!75810 m!829603))

(check-sat (not b!891148) (not b!891155) (not b!891149) (not mapNonEmpty!28676) (not start!75810) (not b!891147) tp_is_empty!18081 (not b!891150) (not b!891145) b_and!26011 (not b!891152) (not b_next!15753))
(check-sat b_and!26011 (not b_next!15753))
