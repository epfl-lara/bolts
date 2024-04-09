; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104830 () Bool)

(assert start!104830)

(declare-fun b_free!26599 () Bool)

(declare-fun b_next!26599 () Bool)

(assert (=> start!104830 (= b_free!26599 (not b_next!26599))))

(declare-fun tp!93287 () Bool)

(declare-fun b_and!44377 () Bool)

(assert (=> start!104830 (= tp!93287 b_and!44377)))

(declare-fun b!1249081 () Bool)

(declare-fun res!833338 () Bool)

(declare-fun e!708924 () Bool)

(assert (=> b!1249081 (=> (not res!833338) (not e!708924))))

(declare-datatypes ((array!80663 0))(
  ( (array!80664 (arr!38894 (Array (_ BitVec 32) (_ BitVec 64))) (size!39431 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80663)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80663 (_ BitVec 32)) Bool)

(assert (=> b!1249081 (= res!833338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249082 () Bool)

(declare-fun res!833337 () Bool)

(assert (=> b!1249082 (=> (not res!833337) (not e!708924))))

(declare-datatypes ((List!27776 0))(
  ( (Nil!27773) (Cons!27772 (h!28981 (_ BitVec 64)) (t!41254 List!27776)) )
))
(declare-fun arrayNoDuplicates!0 (array!80663 (_ BitVec 32) List!27776) Bool)

(assert (=> b!1249082 (= res!833337 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27773))))

(declare-fun mapIsEmpty!49012 () Bool)

(declare-fun mapRes!49012 () Bool)

(assert (=> mapIsEmpty!49012 mapRes!49012))

(declare-fun b!1249083 () Bool)

(declare-fun res!833339 () Bool)

(assert (=> b!1249083 (=> (not res!833339) (not e!708924))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47367 0))(
  ( (V!47368 (val!15813 Int)) )
))
(declare-datatypes ((ValueCell!14987 0))(
  ( (ValueCellFull!14987 (v!18509 V!47367)) (EmptyCell!14987) )
))
(declare-datatypes ((array!80665 0))(
  ( (array!80666 (arr!38895 (Array (_ BitVec 32) ValueCell!14987)) (size!39432 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80665)

(assert (=> b!1249083 (= res!833339 (and (= (size!39432 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39431 _keys!1118) (size!39432 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249084 () Bool)

(declare-fun e!708925 () Bool)

(declare-fun tp_is_empty!31501 () Bool)

(assert (=> b!1249084 (= e!708925 tp_is_empty!31501)))

(declare-fun res!833340 () Bool)

(assert (=> start!104830 (=> (not res!833340) (not e!708924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104830 (= res!833340 (validMask!0 mask!1466))))

(assert (=> start!104830 e!708924))

(assert (=> start!104830 true))

(assert (=> start!104830 tp!93287))

(assert (=> start!104830 tp_is_empty!31501))

(declare-fun array_inv!29613 (array!80663) Bool)

(assert (=> start!104830 (array_inv!29613 _keys!1118)))

(declare-fun e!708926 () Bool)

(declare-fun array_inv!29614 (array!80665) Bool)

(assert (=> start!104830 (and (array_inv!29614 _values!914) e!708926)))

(declare-fun b!1249085 () Bool)

(assert (=> b!1249085 (= e!708924 false)))

(declare-datatypes ((tuple2!20516 0))(
  ( (tuple2!20517 (_1!10268 (_ BitVec 64)) (_2!10268 V!47367)) )
))
(declare-datatypes ((List!27777 0))(
  ( (Nil!27774) (Cons!27773 (h!28982 tuple2!20516) (t!41255 List!27777)) )
))
(declare-datatypes ((ListLongMap!18401 0))(
  ( (ListLongMap!18402 (toList!9216 List!27777)) )
))
(declare-fun lt!563561 () ListLongMap!18401)

(declare-fun minValueAfter!43 () V!47367)

(declare-fun zeroValue!871 () V!47367)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5599 (array!80663 array!80665 (_ BitVec 32) (_ BitVec 32) V!47367 V!47367 (_ BitVec 32) Int) ListLongMap!18401)

(assert (=> b!1249085 (= lt!563561 (getCurrentListMapNoExtraKeys!5599 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563562 () ListLongMap!18401)

(declare-fun minValueBefore!43 () V!47367)

(assert (=> b!1249085 (= lt!563562 (getCurrentListMapNoExtraKeys!5599 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49012 () Bool)

(declare-fun tp!93288 () Bool)

(declare-fun e!708927 () Bool)

(assert (=> mapNonEmpty!49012 (= mapRes!49012 (and tp!93288 e!708927))))

(declare-fun mapRest!49012 () (Array (_ BitVec 32) ValueCell!14987))

(declare-fun mapKey!49012 () (_ BitVec 32))

(declare-fun mapValue!49012 () ValueCell!14987)

(assert (=> mapNonEmpty!49012 (= (arr!38895 _values!914) (store mapRest!49012 mapKey!49012 mapValue!49012))))

(declare-fun b!1249086 () Bool)

(assert (=> b!1249086 (= e!708926 (and e!708925 mapRes!49012))))

(declare-fun condMapEmpty!49012 () Bool)

(declare-fun mapDefault!49012 () ValueCell!14987)

