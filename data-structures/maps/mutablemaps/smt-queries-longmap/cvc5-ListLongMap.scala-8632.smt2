; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105130 () Bool)

(assert start!105130)

(declare-fun b_free!26827 () Bool)

(declare-fun b_next!26827 () Bool)

(assert (=> start!105130 (= b_free!26827 (not b_next!26827))))

(declare-fun tp!93984 () Bool)

(declare-fun b_and!44641 () Bool)

(assert (=> start!105130 (= tp!93984 b_and!44641)))

(declare-fun b!1252294 () Bool)

(declare-fun e!711281 () Bool)

(assert (=> b!1252294 (= e!711281 true)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47671 0))(
  ( (V!47672 (val!15927 Int)) )
))
(declare-datatypes ((tuple2!20684 0))(
  ( (tuple2!20685 (_1!10352 (_ BitVec 64)) (_2!10352 V!47671)) )
))
(declare-datatypes ((List!27935 0))(
  ( (Nil!27932) (Cons!27931 (h!29140 tuple2!20684) (t!41421 List!27935)) )
))
(declare-datatypes ((ListLongMap!18569 0))(
  ( (ListLongMap!18570 (toList!9300 List!27935)) )
))
(declare-fun lt!565244 () ListLongMap!18569)

(declare-fun zeroValue!871 () V!47671)

(declare-datatypes ((array!81101 0))(
  ( (array!81102 (arr!39109 (Array (_ BitVec 32) (_ BitVec 64))) (size!39646 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81101)

(declare-fun minValueBefore!43 () V!47671)

(declare-datatypes ((ValueCell!15101 0))(
  ( (ValueCellFull!15101 (v!18625 V!47671)) (EmptyCell!15101) )
))
(declare-datatypes ((array!81103 0))(
  ( (array!81104 (arr!39110 (Array (_ BitVec 32) ValueCell!15101)) (size!39647 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81103)

(declare-fun getCurrentListMap!4497 (array!81101 array!81103 (_ BitVec 32) (_ BitVec 32) V!47671 V!47671 (_ BitVec 32) Int) ListLongMap!18569)

(assert (=> b!1252294 (= lt!565244 (getCurrentListMap!4497 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252295 () Bool)

(declare-fun res!835228 () Bool)

(declare-fun e!711279 () Bool)

(assert (=> b!1252295 (=> (not res!835228) (not e!711279))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1252295 (= res!835228 (and (= (size!39647 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39646 _keys!1118) (size!39647 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252296 () Bool)

(declare-fun e!711278 () Bool)

(declare-fun tp_is_empty!31729 () Bool)

(assert (=> b!1252296 (= e!711278 tp_is_empty!31729)))

(declare-fun res!835227 () Bool)

(assert (=> start!105130 (=> (not res!835227) (not e!711279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105130 (= res!835227 (validMask!0 mask!1466))))

(assert (=> start!105130 e!711279))

(assert (=> start!105130 true))

(assert (=> start!105130 tp!93984))

(assert (=> start!105130 tp_is_empty!31729))

(declare-fun array_inv!29759 (array!81101) Bool)

(assert (=> start!105130 (array_inv!29759 _keys!1118)))

(declare-fun e!711283 () Bool)

(declare-fun array_inv!29760 (array!81103) Bool)

(assert (=> start!105130 (and (array_inv!29760 _values!914) e!711283)))

(declare-fun b!1252297 () Bool)

(assert (=> b!1252297 (= e!711279 (not e!711281))))

(declare-fun res!835224 () Bool)

(assert (=> b!1252297 (=> res!835224 e!711281)))

(assert (=> b!1252297 (= res!835224 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565245 () ListLongMap!18569)

(declare-fun lt!565243 () ListLongMap!18569)

(assert (=> b!1252297 (= lt!565245 lt!565243)))

(declare-fun minValueAfter!43 () V!47671)

(declare-datatypes ((Unit!41577 0))(
  ( (Unit!41578) )
))
(declare-fun lt!565246 () Unit!41577)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!991 (array!81101 array!81103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47671 V!47671 V!47671 V!47671 (_ BitVec 32) Int) Unit!41577)

(assert (=> b!1252297 (= lt!565246 (lemmaNoChangeToArrayThenSameMapNoExtras!991 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5673 (array!81101 array!81103 (_ BitVec 32) (_ BitVec 32) V!47671 V!47671 (_ BitVec 32) Int) ListLongMap!18569)

(assert (=> b!1252297 (= lt!565243 (getCurrentListMapNoExtraKeys!5673 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252297 (= lt!565245 (getCurrentListMapNoExtraKeys!5673 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252298 () Bool)

(declare-fun mapRes!49366 () Bool)

(assert (=> b!1252298 (= e!711283 (and e!711278 mapRes!49366))))

(declare-fun condMapEmpty!49366 () Bool)

(declare-fun mapDefault!49366 () ValueCell!15101)

