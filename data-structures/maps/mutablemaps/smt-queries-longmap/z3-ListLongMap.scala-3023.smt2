; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42502 () Bool)

(assert start!42502)

(declare-fun b_free!11949 () Bool)

(declare-fun b_next!11949 () Bool)

(assert (=> start!42502 (= b_free!11949 (not b_next!11949))))

(declare-fun tp!41884 () Bool)

(declare-fun b_and!20435 () Bool)

(assert (=> start!42502 (= tp!41884 b_and!20435)))

(declare-fun mapNonEmpty!21781 () Bool)

(declare-fun mapRes!21781 () Bool)

(declare-fun tp!41883 () Bool)

(declare-fun e!278150 () Bool)

(assert (=> mapNonEmpty!21781 (= mapRes!21781 (and tp!41883 e!278150))))

(declare-datatypes ((V!18941 0))(
  ( (V!18942 (val!6733 Int)) )
))
(declare-datatypes ((ValueCell!6345 0))(
  ( (ValueCellFull!6345 (v!9021 V!18941)) (EmptyCell!6345) )
))
(declare-fun mapRest!21781 () (Array (_ BitVec 32) ValueCell!6345))

(declare-fun mapValue!21781 () ValueCell!6345)

(declare-fun mapKey!21781 () (_ BitVec 32))

(declare-datatypes ((array!30471 0))(
  ( (array!30472 (arr!14651 (Array (_ BitVec 32) ValueCell!6345)) (size!15003 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30471)

(assert (=> mapNonEmpty!21781 (= (arr!14651 _values!833) (store mapRest!21781 mapKey!21781 mapValue!21781))))

(declare-fun b!473946 () Bool)

(declare-fun e!278149 () Bool)

(declare-fun e!278148 () Bool)

(assert (=> b!473946 (= e!278149 (not e!278148))))

(declare-fun res!283160 () Bool)

(assert (=> b!473946 (=> res!283160 e!278148)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473946 (= res!283160 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8872 0))(
  ( (tuple2!8873 (_1!4446 (_ BitVec 64)) (_2!4446 V!18941)) )
))
(declare-datatypes ((List!8980 0))(
  ( (Nil!8977) (Cons!8976 (h!9832 tuple2!8872) (t!14960 List!8980)) )
))
(declare-datatypes ((ListLongMap!7799 0))(
  ( (ListLongMap!7800 (toList!3915 List!8980)) )
))
(declare-fun lt!215778 () ListLongMap!7799)

(declare-fun lt!215782 () ListLongMap!7799)

(assert (=> b!473946 (= lt!215778 lt!215782)))

(declare-datatypes ((Unit!13953 0))(
  ( (Unit!13954) )
))
(declare-fun lt!215785 () Unit!13953)

(declare-fun minValueBefore!38 () V!18941)

(declare-fun zeroValue!794 () V!18941)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30473 0))(
  ( (array!30474 (arr!14652 (Array (_ BitVec 32) (_ BitVec 64))) (size!15004 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30473)

(declare-fun minValueAfter!38 () V!18941)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!265 (array!30473 array!30471 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18941 V!18941 V!18941 V!18941 (_ BitVec 32) Int) Unit!13953)

(assert (=> b!473946 (= lt!215785 (lemmaNoChangeToArrayThenSameMapNoExtras!265 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2070 (array!30473 array!30471 (_ BitVec 32) (_ BitVec 32) V!18941 V!18941 (_ BitVec 32) Int) ListLongMap!7799)

(assert (=> b!473946 (= lt!215782 (getCurrentListMapNoExtraKeys!2070 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473946 (= lt!215778 (getCurrentListMapNoExtraKeys!2070 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473948 () Bool)

(declare-fun res!283157 () Bool)

(assert (=> b!473948 (=> (not res!283157) (not e!278149))))

(assert (=> b!473948 (= res!283157 (and (= (size!15003 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15004 _keys!1025) (size!15003 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473949 () Bool)

(declare-fun res!283158 () Bool)

(assert (=> b!473949 (=> (not res!283158) (not e!278149))))

(declare-datatypes ((List!8981 0))(
  ( (Nil!8978) (Cons!8977 (h!9833 (_ BitVec 64)) (t!14961 List!8981)) )
))
(declare-fun arrayNoDuplicates!0 (array!30473 (_ BitVec 32) List!8981) Bool)

(assert (=> b!473949 (= res!283158 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8978))))

(declare-fun b!473950 () Bool)

(declare-fun tp_is_empty!13377 () Bool)

(assert (=> b!473950 (= e!278150 tp_is_empty!13377)))

(declare-fun b!473951 () Bool)

(assert (=> b!473951 (= e!278148 true)))

(declare-fun lt!215781 () ListLongMap!7799)

(declare-fun lt!215784 () tuple2!8872)

(declare-fun +!1721 (ListLongMap!7799 tuple2!8872) ListLongMap!7799)

(assert (=> b!473951 (= (+!1721 lt!215781 lt!215784) (+!1721 (+!1721 lt!215781 (tuple2!8873 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215784))))

(assert (=> b!473951 (= lt!215784 (tuple2!8873 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!215779 () Unit!13953)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!158 (ListLongMap!7799 (_ BitVec 64) V!18941 V!18941) Unit!13953)

(assert (=> b!473951 (= lt!215779 (addSameAsAddTwiceSameKeyDiffValues!158 lt!215781 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!473951 (= lt!215781 (+!1721 lt!215778 (tuple2!8873 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215780 () ListLongMap!7799)

(declare-fun getCurrentListMap!2258 (array!30473 array!30471 (_ BitVec 32) (_ BitVec 32) V!18941 V!18941 (_ BitVec 32) Int) ListLongMap!7799)

(assert (=> b!473951 (= lt!215780 (getCurrentListMap!2258 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215783 () ListLongMap!7799)

(assert (=> b!473951 (= lt!215783 (getCurrentListMap!2258 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!283159 () Bool)

(assert (=> start!42502 (=> (not res!283159) (not e!278149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42502 (= res!283159 (validMask!0 mask!1365))))

(assert (=> start!42502 e!278149))

(assert (=> start!42502 tp_is_empty!13377))

(assert (=> start!42502 tp!41884))

(assert (=> start!42502 true))

(declare-fun array_inv!10560 (array!30473) Bool)

(assert (=> start!42502 (array_inv!10560 _keys!1025)))

(declare-fun e!278153 () Bool)

(declare-fun array_inv!10561 (array!30471) Bool)

(assert (=> start!42502 (and (array_inv!10561 _values!833) e!278153)))

(declare-fun b!473947 () Bool)

(declare-fun e!278152 () Bool)

(assert (=> b!473947 (= e!278153 (and e!278152 mapRes!21781))))

(declare-fun condMapEmpty!21781 () Bool)

(declare-fun mapDefault!21781 () ValueCell!6345)

(assert (=> b!473947 (= condMapEmpty!21781 (= (arr!14651 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6345)) mapDefault!21781)))))

(declare-fun mapIsEmpty!21781 () Bool)

(assert (=> mapIsEmpty!21781 mapRes!21781))

(declare-fun b!473952 () Bool)

(declare-fun res!283156 () Bool)

(assert (=> b!473952 (=> (not res!283156) (not e!278149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30473 (_ BitVec 32)) Bool)

(assert (=> b!473952 (= res!283156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473953 () Bool)

(assert (=> b!473953 (= e!278152 tp_is_empty!13377)))

(assert (= (and start!42502 res!283159) b!473948))

(assert (= (and b!473948 res!283157) b!473952))

(assert (= (and b!473952 res!283156) b!473949))

(assert (= (and b!473949 res!283158) b!473946))

(assert (= (and b!473946 (not res!283160)) b!473951))

(assert (= (and b!473947 condMapEmpty!21781) mapIsEmpty!21781))

(assert (= (and b!473947 (not condMapEmpty!21781)) mapNonEmpty!21781))

(get-info :version)

(assert (= (and mapNonEmpty!21781 ((_ is ValueCellFull!6345) mapValue!21781)) b!473950))

(assert (= (and b!473947 ((_ is ValueCellFull!6345) mapDefault!21781)) b!473953))

(assert (= start!42502 b!473947))

(declare-fun m!456237 () Bool)

(assert (=> b!473946 m!456237))

(declare-fun m!456239 () Bool)

(assert (=> b!473946 m!456239))

(declare-fun m!456241 () Bool)

(assert (=> b!473946 m!456241))

(declare-fun m!456243 () Bool)

(assert (=> b!473949 m!456243))

(declare-fun m!456245 () Bool)

(assert (=> b!473952 m!456245))

(declare-fun m!456247 () Bool)

(assert (=> b!473951 m!456247))

(declare-fun m!456249 () Bool)

(assert (=> b!473951 m!456249))

(declare-fun m!456251 () Bool)

(assert (=> b!473951 m!456251))

(declare-fun m!456253 () Bool)

(assert (=> b!473951 m!456253))

(declare-fun m!456255 () Bool)

(assert (=> b!473951 m!456255))

(assert (=> b!473951 m!456247))

(declare-fun m!456257 () Bool)

(assert (=> b!473951 m!456257))

(declare-fun m!456259 () Bool)

(assert (=> b!473951 m!456259))

(declare-fun m!456261 () Bool)

(assert (=> start!42502 m!456261))

(declare-fun m!456263 () Bool)

(assert (=> start!42502 m!456263))

(declare-fun m!456265 () Bool)

(assert (=> start!42502 m!456265))

(declare-fun m!456267 () Bool)

(assert (=> mapNonEmpty!21781 m!456267))

(check-sat (not b_next!11949) b_and!20435 (not b!473946) (not start!42502) (not b!473949) (not b!473952) (not b!473951) (not mapNonEmpty!21781) tp_is_empty!13377)
(check-sat b_and!20435 (not b_next!11949))
