; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105032 () Bool)

(assert start!105032)

(declare-fun b_free!26765 () Bool)

(declare-fun b_next!26765 () Bool)

(assert (=> start!105032 (= b_free!26765 (not b_next!26765))))

(declare-fun tp!93791 () Bool)

(declare-fun b_and!44561 () Bool)

(assert (=> start!105032 (= tp!93791 b_and!44561)))

(declare-fun res!834739 () Bool)

(declare-fun e!710641 () Bool)

(assert (=> start!105032 (=> (not res!834739) (not e!710641))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105032 (= res!834739 (validMask!0 mask!1466))))

(assert (=> start!105032 e!710641))

(assert (=> start!105032 true))

(assert (=> start!105032 tp!93791))

(declare-fun tp_is_empty!31667 () Bool)

(assert (=> start!105032 tp_is_empty!31667))

(declare-datatypes ((array!80979 0))(
  ( (array!80980 (arr!39050 (Array (_ BitVec 32) (_ BitVec 64))) (size!39587 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80979)

(declare-fun array_inv!29717 (array!80979) Bool)

(assert (=> start!105032 (array_inv!29717 _keys!1118)))

(declare-datatypes ((V!47587 0))(
  ( (V!47588 (val!15896 Int)) )
))
(declare-datatypes ((ValueCell!15070 0))(
  ( (ValueCellFull!15070 (v!18593 V!47587)) (EmptyCell!15070) )
))
(declare-datatypes ((array!80981 0))(
  ( (array!80982 (arr!39051 (Array (_ BitVec 32) ValueCell!15070)) (size!39588 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80981)

(declare-fun e!710636 () Bool)

(declare-fun array_inv!29718 (array!80981) Bool)

(assert (=> start!105032 (and (array_inv!29718 _values!914) e!710636)))

(declare-fun b!1251379 () Bool)

(declare-fun res!834741 () Bool)

(assert (=> b!1251379 (=> (not res!834741) (not e!710641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80979 (_ BitVec 32)) Bool)

(assert (=> b!1251379 (= res!834741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251380 () Bool)

(declare-fun e!710637 () Bool)

(assert (=> b!1251380 (= e!710637 tp_is_empty!31667)))

(declare-fun b!1251381 () Bool)

(declare-fun e!710638 () Bool)

(declare-fun e!710639 () Bool)

(assert (=> b!1251381 (= e!710638 e!710639)))

(declare-fun res!834738 () Bool)

(assert (=> b!1251381 (=> res!834738 e!710639)))

(declare-datatypes ((tuple2!20644 0))(
  ( (tuple2!20645 (_1!10332 (_ BitVec 64)) (_2!10332 V!47587)) )
))
(declare-datatypes ((List!27895 0))(
  ( (Nil!27892) (Cons!27891 (h!29100 tuple2!20644) (t!41377 List!27895)) )
))
(declare-datatypes ((ListLongMap!18529 0))(
  ( (ListLongMap!18530 (toList!9280 List!27895)) )
))
(declare-fun lt!564782 () ListLongMap!18529)

(declare-fun contains!7529 (ListLongMap!18529 (_ BitVec 64)) Bool)

(assert (=> b!1251381 (= res!834738 (contains!7529 lt!564782 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47587)

(declare-fun minValueBefore!43 () V!47587)

(declare-fun getCurrentListMap!4494 (array!80979 array!80981 (_ BitVec 32) (_ BitVec 32) V!47587 V!47587 (_ BitVec 32) Int) ListLongMap!18529)

(assert (=> b!1251381 (= lt!564782 (getCurrentListMap!4494 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49267 () Bool)

(declare-fun mapRes!49267 () Bool)

(declare-fun tp!93792 () Bool)

(declare-fun e!710640 () Bool)

(assert (=> mapNonEmpty!49267 (= mapRes!49267 (and tp!93792 e!710640))))

(declare-fun mapRest!49267 () (Array (_ BitVec 32) ValueCell!15070))

(declare-fun mapKey!49267 () (_ BitVec 32))

(declare-fun mapValue!49267 () ValueCell!15070)

(assert (=> mapNonEmpty!49267 (= (arr!39051 _values!914) (store mapRest!49267 mapKey!49267 mapValue!49267))))

(declare-fun mapIsEmpty!49267 () Bool)

(assert (=> mapIsEmpty!49267 mapRes!49267))

(declare-fun b!1251382 () Bool)

(assert (=> b!1251382 (= e!710639 true)))

(declare-fun -!2037 (ListLongMap!18529 (_ BitVec 64)) ListLongMap!18529)

(assert (=> b!1251382 (= (-!2037 lt!564782 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564782)))

(declare-datatypes ((Unit!41535 0))(
  ( (Unit!41536) )
))
(declare-fun lt!564780 () Unit!41535)

(declare-fun removeNotPresentStillSame!104 (ListLongMap!18529 (_ BitVec 64)) Unit!41535)

(assert (=> b!1251382 (= lt!564780 (removeNotPresentStillSame!104 lt!564782 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251383 () Bool)

(declare-fun res!834743 () Bool)

(assert (=> b!1251383 (=> (not res!834743) (not e!710641))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1251383 (= res!834743 (and (= (size!39588 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39587 _keys!1118) (size!39588 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251384 () Bool)

(assert (=> b!1251384 (= e!710641 (not e!710638))))

(declare-fun res!834740 () Bool)

(assert (=> b!1251384 (=> res!834740 e!710638)))

(assert (=> b!1251384 (= res!834740 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564779 () ListLongMap!18529)

(declare-fun lt!564778 () ListLongMap!18529)

(assert (=> b!1251384 (= lt!564779 lt!564778)))

(declare-fun minValueAfter!43 () V!47587)

(declare-fun lt!564781 () Unit!41535)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!971 (array!80979 array!80981 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47587 V!47587 V!47587 V!47587 (_ BitVec 32) Int) Unit!41535)

(assert (=> b!1251384 (= lt!564781 (lemmaNoChangeToArrayThenSameMapNoExtras!971 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5653 (array!80979 array!80981 (_ BitVec 32) (_ BitVec 32) V!47587 V!47587 (_ BitVec 32) Int) ListLongMap!18529)

(assert (=> b!1251384 (= lt!564778 (getCurrentListMapNoExtraKeys!5653 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251384 (= lt!564779 (getCurrentListMapNoExtraKeys!5653 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251385 () Bool)

(declare-fun res!834742 () Bool)

(assert (=> b!1251385 (=> (not res!834742) (not e!710641))))

(declare-datatypes ((List!27896 0))(
  ( (Nil!27893) (Cons!27892 (h!29101 (_ BitVec 64)) (t!41378 List!27896)) )
))
(declare-fun arrayNoDuplicates!0 (array!80979 (_ BitVec 32) List!27896) Bool)

(assert (=> b!1251385 (= res!834742 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27893))))

(declare-fun b!1251386 () Bool)

(assert (=> b!1251386 (= e!710640 tp_is_empty!31667)))

(declare-fun b!1251387 () Bool)

(assert (=> b!1251387 (= e!710636 (and e!710637 mapRes!49267))))

(declare-fun condMapEmpty!49267 () Bool)

(declare-fun mapDefault!49267 () ValueCell!15070)

