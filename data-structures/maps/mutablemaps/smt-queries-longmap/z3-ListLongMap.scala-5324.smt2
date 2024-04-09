; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71230 () Bool)

(assert start!71230)

(declare-fun b_free!13353 () Bool)

(declare-fun b_next!13353 () Bool)

(assert (=> start!71230 (= b_free!13353 (not b_next!13353))))

(declare-fun tp!46821 () Bool)

(declare-fun b_and!22309 () Bool)

(assert (=> start!71230 (= tp!46821 b_and!22309)))

(declare-fun res!563824 () Bool)

(declare-fun e!460680 () Bool)

(assert (=> start!71230 (=> (not res!563824) (not e!460680))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71230 (= res!563824 (validMask!0 mask!1312))))

(assert (=> start!71230 e!460680))

(declare-fun tp_is_empty!15063 () Bool)

(assert (=> start!71230 tp_is_empty!15063))

(declare-datatypes ((array!46264 0))(
  ( (array!46265 (arr!22172 (Array (_ BitVec 32) (_ BitVec 64))) (size!22593 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46264)

(declare-fun array_inv!17655 (array!46264) Bool)

(assert (=> start!71230 (array_inv!17655 _keys!976)))

(assert (=> start!71230 true))

(declare-datatypes ((V!25085 0))(
  ( (V!25086 (val!7579 Int)) )
))
(declare-datatypes ((ValueCell!7116 0))(
  ( (ValueCellFull!7116 (v!10010 V!25085)) (EmptyCell!7116) )
))
(declare-datatypes ((array!46266 0))(
  ( (array!46267 (arr!22173 (Array (_ BitVec 32) ValueCell!7116)) (size!22594 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46266)

(declare-fun e!460681 () Bool)

(declare-fun array_inv!17656 (array!46266) Bool)

(assert (=> start!71230 (and (array_inv!17656 _values!788) e!460681)))

(assert (=> start!71230 tp!46821))

(declare-fun b!826996 () Bool)

(declare-fun e!460677 () Bool)

(assert (=> b!826996 (= e!460677 tp_is_empty!15063)))

(declare-fun mapNonEmpty!24223 () Bool)

(declare-fun mapRes!24223 () Bool)

(declare-fun tp!46822 () Bool)

(assert (=> mapNonEmpty!24223 (= mapRes!24223 (and tp!46822 e!460677))))

(declare-fun mapRest!24223 () (Array (_ BitVec 32) ValueCell!7116))

(declare-fun mapValue!24223 () ValueCell!7116)

(declare-fun mapKey!24223 () (_ BitVec 32))

(assert (=> mapNonEmpty!24223 (= (arr!22173 _values!788) (store mapRest!24223 mapKey!24223 mapValue!24223))))

(declare-fun b!826997 () Bool)

(declare-fun e!460678 () Bool)

(assert (=> b!826997 (= e!460681 (and e!460678 mapRes!24223))))

(declare-fun condMapEmpty!24223 () Bool)

(declare-fun mapDefault!24223 () ValueCell!7116)

(assert (=> b!826997 (= condMapEmpty!24223 (= (arr!22173 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7116)) mapDefault!24223)))))

(declare-fun b!826998 () Bool)

(declare-fun res!563826 () Bool)

(assert (=> b!826998 (=> (not res!563826) (not e!460680))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!826998 (= res!563826 (and (= (size!22594 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22593 _keys!976) (size!22594 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!826999 () Bool)

(declare-fun res!563825 () Bool)

(assert (=> b!826999 (=> (not res!563825) (not e!460680))))

(declare-datatypes ((List!15890 0))(
  ( (Nil!15887) (Cons!15886 (h!17015 (_ BitVec 64)) (t!22247 List!15890)) )
))
(declare-fun arrayNoDuplicates!0 (array!46264 (_ BitVec 32) List!15890) Bool)

(assert (=> b!826999 (= res!563825 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15887))))

(declare-fun b!827000 () Bool)

(assert (=> b!827000 (= e!460680 (not true))))

(declare-datatypes ((tuple2!10054 0))(
  ( (tuple2!10055 (_1!5037 (_ BitVec 64)) (_2!5037 V!25085)) )
))
(declare-datatypes ((List!15891 0))(
  ( (Nil!15888) (Cons!15887 (h!17016 tuple2!10054) (t!22248 List!15891)) )
))
(declare-datatypes ((ListLongMap!8891 0))(
  ( (ListLongMap!8892 (toList!4461 List!15891)) )
))
(declare-fun lt!374767 () ListLongMap!8891)

(declare-fun lt!374765 () ListLongMap!8891)

(assert (=> b!827000 (= lt!374767 lt!374765)))

(declare-fun zeroValueBefore!34 () V!25085)

(declare-fun zeroValueAfter!34 () V!25085)

(declare-fun minValue!754 () V!25085)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28359 0))(
  ( (Unit!28360) )
))
(declare-fun lt!374766 () Unit!28359)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!584 (array!46264 array!46266 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25085 V!25085 V!25085 V!25085 (_ BitVec 32) Int) Unit!28359)

(assert (=> b!827000 (= lt!374766 (lemmaNoChangeToArrayThenSameMapNoExtras!584 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2468 (array!46264 array!46266 (_ BitVec 32) (_ BitVec 32) V!25085 V!25085 (_ BitVec 32) Int) ListLongMap!8891)

(assert (=> b!827000 (= lt!374765 (getCurrentListMapNoExtraKeys!2468 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!827000 (= lt!374767 (getCurrentListMapNoExtraKeys!2468 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24223 () Bool)

(assert (=> mapIsEmpty!24223 mapRes!24223))

(declare-fun b!827001 () Bool)

(assert (=> b!827001 (= e!460678 tp_is_empty!15063)))

(declare-fun b!827002 () Bool)

(declare-fun res!563827 () Bool)

(assert (=> b!827002 (=> (not res!563827) (not e!460680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46264 (_ BitVec 32)) Bool)

(assert (=> b!827002 (= res!563827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!71230 res!563824) b!826998))

(assert (= (and b!826998 res!563826) b!827002))

(assert (= (and b!827002 res!563827) b!826999))

(assert (= (and b!826999 res!563825) b!827000))

(assert (= (and b!826997 condMapEmpty!24223) mapIsEmpty!24223))

(assert (= (and b!826997 (not condMapEmpty!24223)) mapNonEmpty!24223))

(get-info :version)

(assert (= (and mapNonEmpty!24223 ((_ is ValueCellFull!7116) mapValue!24223)) b!826996))

(assert (= (and b!826997 ((_ is ValueCellFull!7116) mapDefault!24223)) b!827001))

(assert (= start!71230 b!826997))

(declare-fun m!770233 () Bool)

(assert (=> b!827002 m!770233))

(declare-fun m!770235 () Bool)

(assert (=> b!827000 m!770235))

(declare-fun m!770237 () Bool)

(assert (=> b!827000 m!770237))

(declare-fun m!770239 () Bool)

(assert (=> b!827000 m!770239))

(declare-fun m!770241 () Bool)

(assert (=> b!826999 m!770241))

(declare-fun m!770243 () Bool)

(assert (=> mapNonEmpty!24223 m!770243))

(declare-fun m!770245 () Bool)

(assert (=> start!71230 m!770245))

(declare-fun m!770247 () Bool)

(assert (=> start!71230 m!770247))

(declare-fun m!770249 () Bool)

(assert (=> start!71230 m!770249))

(check-sat (not b!827002) b_and!22309 (not b_next!13353) (not start!71230) (not mapNonEmpty!24223) (not b!827000) (not b!826999) tp_is_empty!15063)
(check-sat b_and!22309 (not b_next!13353))
