; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104838 () Bool)

(assert start!104838)

(declare-fun b_free!26607 () Bool)

(declare-fun b_next!26607 () Bool)

(assert (=> start!104838 (= b_free!26607 (not b_next!26607))))

(declare-fun tp!93311 () Bool)

(declare-fun b_and!44385 () Bool)

(assert (=> start!104838 (= tp!93311 b_and!44385)))

(declare-fun b!1249165 () Bool)

(declare-fun res!833386 () Bool)

(declare-fun e!708986 () Bool)

(assert (=> b!1249165 (=> (not res!833386) (not e!708986))))

(declare-datatypes ((array!80677 0))(
  ( (array!80678 (arr!38901 (Array (_ BitVec 32) (_ BitVec 64))) (size!39438 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80677)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80677 (_ BitVec 32)) Bool)

(assert (=> b!1249165 (= res!833386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249166 () Bool)

(assert (=> b!1249166 (= e!708986 (not true))))

(declare-datatypes ((V!47377 0))(
  ( (V!47378 (val!15817 Int)) )
))
(declare-datatypes ((tuple2!20520 0))(
  ( (tuple2!20521 (_1!10270 (_ BitVec 64)) (_2!10270 V!47377)) )
))
(declare-datatypes ((List!27780 0))(
  ( (Nil!27777) (Cons!27776 (h!28985 tuple2!20520) (t!41258 List!27780)) )
))
(declare-datatypes ((ListLongMap!18405 0))(
  ( (ListLongMap!18406 (toList!9218 List!27780)) )
))
(declare-fun lt!563592 () ListLongMap!18405)

(declare-fun lt!563590 () ListLongMap!18405)

(assert (=> b!1249166 (= lt!563592 lt!563590)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47377)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47377)

(declare-datatypes ((ValueCell!14991 0))(
  ( (ValueCellFull!14991 (v!18513 V!47377)) (EmptyCell!14991) )
))
(declare-datatypes ((array!80679 0))(
  ( (array!80680 (arr!38902 (Array (_ BitVec 32) ValueCell!14991)) (size!39439 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80679)

(declare-fun minValueBefore!43 () V!47377)

(declare-datatypes ((Unit!41419 0))(
  ( (Unit!41420) )
))
(declare-fun lt!563591 () Unit!41419)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!919 (array!80677 array!80679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47377 V!47377 V!47377 V!47377 (_ BitVec 32) Int) Unit!41419)

(assert (=> b!1249166 (= lt!563591 (lemmaNoChangeToArrayThenSameMapNoExtras!919 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5601 (array!80677 array!80679 (_ BitVec 32) (_ BitVec 32) V!47377 V!47377 (_ BitVec 32) Int) ListLongMap!18405)

(assert (=> b!1249166 (= lt!563590 (getCurrentListMapNoExtraKeys!5601 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249166 (= lt!563592 (getCurrentListMapNoExtraKeys!5601 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49024 () Bool)

(declare-fun mapRes!49024 () Bool)

(declare-fun tp!93312 () Bool)

(declare-fun e!708984 () Bool)

(assert (=> mapNonEmpty!49024 (= mapRes!49024 (and tp!93312 e!708984))))

(declare-fun mapKey!49024 () (_ BitVec 32))

(declare-fun mapValue!49024 () ValueCell!14991)

(declare-fun mapRest!49024 () (Array (_ BitVec 32) ValueCell!14991))

(assert (=> mapNonEmpty!49024 (= (arr!38902 _values!914) (store mapRest!49024 mapKey!49024 mapValue!49024))))

(declare-fun res!833385 () Bool)

(assert (=> start!104838 (=> (not res!833385) (not e!708986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104838 (= res!833385 (validMask!0 mask!1466))))

(assert (=> start!104838 e!708986))

(assert (=> start!104838 true))

(assert (=> start!104838 tp!93311))

(declare-fun tp_is_empty!31509 () Bool)

(assert (=> start!104838 tp_is_empty!31509))

(declare-fun array_inv!29617 (array!80677) Bool)

(assert (=> start!104838 (array_inv!29617 _keys!1118)))

(declare-fun e!708987 () Bool)

(declare-fun array_inv!29618 (array!80679) Bool)

(assert (=> start!104838 (and (array_inv!29618 _values!914) e!708987)))

(declare-fun b!1249167 () Bool)

(declare-fun res!833388 () Bool)

(assert (=> b!1249167 (=> (not res!833388) (not e!708986))))

(assert (=> b!1249167 (= res!833388 (and (= (size!39439 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39438 _keys!1118) (size!39439 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249168 () Bool)

(declare-fun res!833387 () Bool)

(assert (=> b!1249168 (=> (not res!833387) (not e!708986))))

(declare-datatypes ((List!27781 0))(
  ( (Nil!27778) (Cons!27777 (h!28986 (_ BitVec 64)) (t!41259 List!27781)) )
))
(declare-fun arrayNoDuplicates!0 (array!80677 (_ BitVec 32) List!27781) Bool)

(assert (=> b!1249168 (= res!833387 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27778))))

(declare-fun mapIsEmpty!49024 () Bool)

(assert (=> mapIsEmpty!49024 mapRes!49024))

(declare-fun b!1249169 () Bool)

(assert (=> b!1249169 (= e!708984 tp_is_empty!31509)))

(declare-fun b!1249170 () Bool)

(declare-fun e!708983 () Bool)

(assert (=> b!1249170 (= e!708983 tp_is_empty!31509)))

(declare-fun b!1249171 () Bool)

(assert (=> b!1249171 (= e!708987 (and e!708983 mapRes!49024))))

(declare-fun condMapEmpty!49024 () Bool)

(declare-fun mapDefault!49024 () ValueCell!14991)

(assert (=> b!1249171 (= condMapEmpty!49024 (= (arr!38902 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14991)) mapDefault!49024)))))

(assert (= (and start!104838 res!833385) b!1249167))

(assert (= (and b!1249167 res!833388) b!1249165))

(assert (= (and b!1249165 res!833386) b!1249168))

(assert (= (and b!1249168 res!833387) b!1249166))

(assert (= (and b!1249171 condMapEmpty!49024) mapIsEmpty!49024))

(assert (= (and b!1249171 (not condMapEmpty!49024)) mapNonEmpty!49024))

(get-info :version)

(assert (= (and mapNonEmpty!49024 ((_ is ValueCellFull!14991) mapValue!49024)) b!1249169))

(assert (= (and b!1249171 ((_ is ValueCellFull!14991) mapDefault!49024)) b!1249170))

(assert (= start!104838 b!1249171))

(declare-fun m!1150163 () Bool)

(assert (=> start!104838 m!1150163))

(declare-fun m!1150165 () Bool)

(assert (=> start!104838 m!1150165))

(declare-fun m!1150167 () Bool)

(assert (=> start!104838 m!1150167))

(declare-fun m!1150169 () Bool)

(assert (=> mapNonEmpty!49024 m!1150169))

(declare-fun m!1150171 () Bool)

(assert (=> b!1249168 m!1150171))

(declare-fun m!1150173 () Bool)

(assert (=> b!1249166 m!1150173))

(declare-fun m!1150175 () Bool)

(assert (=> b!1249166 m!1150175))

(declare-fun m!1150177 () Bool)

(assert (=> b!1249166 m!1150177))

(declare-fun m!1150179 () Bool)

(assert (=> b!1249165 m!1150179))

(check-sat (not b!1249165) (not mapNonEmpty!49024) tp_is_empty!31509 (not b_next!26607) b_and!44385 (not start!104838) (not b!1249168) (not b!1249166))
(check-sat b_and!44385 (not b_next!26607))
