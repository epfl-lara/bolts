; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42600 () Bool)

(assert start!42600)

(declare-fun b_free!12027 () Bool)

(declare-fun b_next!12027 () Bool)

(assert (=> start!42600 (= b_free!12027 (not b_next!12027))))

(declare-fun tp!42120 () Bool)

(declare-fun b_and!20525 () Bool)

(assert (=> start!42600 (= tp!42120 b_and!20525)))

(declare-fun mapNonEmpty!21901 () Bool)

(declare-fun mapRes!21901 () Bool)

(declare-fun tp!42121 () Bool)

(declare-fun e!278881 () Bool)

(assert (=> mapNonEmpty!21901 (= mapRes!21901 (and tp!42121 e!278881))))

(declare-fun mapKey!21901 () (_ BitVec 32))

(declare-datatypes ((V!19045 0))(
  ( (V!19046 (val!6772 Int)) )
))
(declare-datatypes ((ValueCell!6384 0))(
  ( (ValueCellFull!6384 (v!9061 V!19045)) (EmptyCell!6384) )
))
(declare-datatypes ((array!30621 0))(
  ( (array!30622 (arr!14725 (Array (_ BitVec 32) ValueCell!6384)) (size!15077 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30621)

(declare-fun mapRest!21901 () (Array (_ BitVec 32) ValueCell!6384))

(declare-fun mapValue!21901 () ValueCell!6384)

(assert (=> mapNonEmpty!21901 (= (arr!14725 _values!833) (store mapRest!21901 mapKey!21901 mapValue!21901))))

(declare-fun b!474977 () Bool)

(declare-fun e!278879 () Bool)

(assert (=> b!474977 (= e!278879 false)))

(declare-fun zeroValue!794 () V!19045)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8928 0))(
  ( (tuple2!8929 (_1!4474 (_ BitVec 64)) (_2!4474 V!19045)) )
))
(declare-datatypes ((List!9039 0))(
  ( (Nil!9036) (Cons!9035 (h!9891 tuple2!8928) (t!15021 List!9039)) )
))
(declare-datatypes ((ListLongMap!7855 0))(
  ( (ListLongMap!7856 (toList!3943 List!9039)) )
))
(declare-fun lt!216363 () ListLongMap!7855)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30623 0))(
  ( (array!30624 (arr!14726 (Array (_ BitVec 32) (_ BitVec 64))) (size!15078 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30623)

(declare-fun minValueAfter!38 () V!19045)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2097 (array!30623 array!30621 (_ BitVec 32) (_ BitVec 32) V!19045 V!19045 (_ BitVec 32) Int) ListLongMap!7855)

(assert (=> b!474977 (= lt!216363 (getCurrentListMapNoExtraKeys!2097 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!19045)

(declare-fun lt!216362 () ListLongMap!7855)

(assert (=> b!474977 (= lt!216362 (getCurrentListMapNoExtraKeys!2097 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474978 () Bool)

(declare-fun res!283735 () Bool)

(assert (=> b!474978 (=> (not res!283735) (not e!278879))))

(declare-datatypes ((List!9040 0))(
  ( (Nil!9037) (Cons!9036 (h!9892 (_ BitVec 64)) (t!15022 List!9040)) )
))
(declare-fun arrayNoDuplicates!0 (array!30623 (_ BitVec 32) List!9040) Bool)

(assert (=> b!474978 (= res!283735 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9037))))

(declare-fun b!474979 () Bool)

(declare-fun e!278878 () Bool)

(declare-fun e!278877 () Bool)

(assert (=> b!474979 (= e!278878 (and e!278877 mapRes!21901))))

(declare-fun condMapEmpty!21901 () Bool)

(declare-fun mapDefault!21901 () ValueCell!6384)

(assert (=> b!474979 (= condMapEmpty!21901 (= (arr!14725 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6384)) mapDefault!21901)))))

(declare-fun b!474980 () Bool)

(declare-fun res!283734 () Bool)

(assert (=> b!474980 (=> (not res!283734) (not e!278879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30623 (_ BitVec 32)) Bool)

(assert (=> b!474980 (= res!283734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!283736 () Bool)

(assert (=> start!42600 (=> (not res!283736) (not e!278879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42600 (= res!283736 (validMask!0 mask!1365))))

(assert (=> start!42600 e!278879))

(declare-fun tp_is_empty!13455 () Bool)

(assert (=> start!42600 tp_is_empty!13455))

(assert (=> start!42600 tp!42120))

(assert (=> start!42600 true))

(declare-fun array_inv!10612 (array!30623) Bool)

(assert (=> start!42600 (array_inv!10612 _keys!1025)))

(declare-fun array_inv!10613 (array!30621) Bool)

(assert (=> start!42600 (and (array_inv!10613 _values!833) e!278878)))

(declare-fun b!474981 () Bool)

(assert (=> b!474981 (= e!278881 tp_is_empty!13455)))

(declare-fun mapIsEmpty!21901 () Bool)

(assert (=> mapIsEmpty!21901 mapRes!21901))

(declare-fun b!474982 () Bool)

(assert (=> b!474982 (= e!278877 tp_is_empty!13455)))

(declare-fun b!474983 () Bool)

(declare-fun res!283737 () Bool)

(assert (=> b!474983 (=> (not res!283737) (not e!278879))))

(assert (=> b!474983 (= res!283737 (and (= (size!15077 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15078 _keys!1025) (size!15077 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!42600 res!283736) b!474983))

(assert (= (and b!474983 res!283737) b!474980))

(assert (= (and b!474980 res!283734) b!474978))

(assert (= (and b!474978 res!283735) b!474977))

(assert (= (and b!474979 condMapEmpty!21901) mapIsEmpty!21901))

(assert (= (and b!474979 (not condMapEmpty!21901)) mapNonEmpty!21901))

(get-info :version)

(assert (= (and mapNonEmpty!21901 ((_ is ValueCellFull!6384) mapValue!21901)) b!474981))

(assert (= (and b!474979 ((_ is ValueCellFull!6384) mapDefault!21901)) b!474982))

(assert (= start!42600 b!474979))

(declare-fun m!457255 () Bool)

(assert (=> b!474978 m!457255))

(declare-fun m!457257 () Bool)

(assert (=> b!474980 m!457257))

(declare-fun m!457259 () Bool)

(assert (=> b!474977 m!457259))

(declare-fun m!457261 () Bool)

(assert (=> b!474977 m!457261))

(declare-fun m!457263 () Bool)

(assert (=> start!42600 m!457263))

(declare-fun m!457265 () Bool)

(assert (=> start!42600 m!457265))

(declare-fun m!457267 () Bool)

(assert (=> start!42600 m!457267))

(declare-fun m!457269 () Bool)

(assert (=> mapNonEmpty!21901 m!457269))

(check-sat b_and!20525 (not b!474978) (not start!42600) tp_is_empty!13455 (not b_next!12027) (not b!474977) (not b!474980) (not mapNonEmpty!21901))
(check-sat b_and!20525 (not b_next!12027))
