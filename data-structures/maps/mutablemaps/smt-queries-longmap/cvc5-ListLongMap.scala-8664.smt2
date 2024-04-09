; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105382 () Bool)

(assert start!105382)

(declare-fun b_free!27019 () Bool)

(declare-fun b_next!27019 () Bool)

(assert (=> start!105382 (= b_free!27019 (not b_next!27019))))

(declare-fun tp!94568 () Bool)

(declare-fun b_and!44867 () Bool)

(assert (=> start!105382 (= tp!94568 b_and!44867)))

(declare-fun b!1255085 () Bool)

(declare-fun e!713312 () Bool)

(declare-fun tp_is_empty!31921 () Bool)

(assert (=> b!1255085 (= e!713312 tp_is_empty!31921)))

(declare-fun b!1255086 () Bool)

(declare-fun res!836859 () Bool)

(declare-fun e!713311 () Bool)

(assert (=> b!1255086 (=> (not res!836859) (not e!713311))))

(declare-datatypes ((array!81477 0))(
  ( (array!81478 (arr!39294 (Array (_ BitVec 32) (_ BitVec 64))) (size!39831 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81477)

(declare-datatypes ((List!28072 0))(
  ( (Nil!28069) (Cons!28068 (h!29277 (_ BitVec 64)) (t!41564 List!28072)) )
))
(declare-fun arrayNoDuplicates!0 (array!81477 (_ BitVec 32) List!28072) Bool)

(assert (=> b!1255086 (= res!836859 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28069))))

(declare-fun res!836858 () Bool)

(assert (=> start!105382 (=> (not res!836858) (not e!713311))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105382 (= res!836858 (validMask!0 mask!1466))))

(assert (=> start!105382 e!713311))

(assert (=> start!105382 true))

(assert (=> start!105382 tp!94568))

(assert (=> start!105382 tp_is_empty!31921))

(declare-fun array_inv!29887 (array!81477) Bool)

(assert (=> start!105382 (array_inv!29887 _keys!1118)))

(declare-datatypes ((V!47927 0))(
  ( (V!47928 (val!16023 Int)) )
))
(declare-datatypes ((ValueCell!15197 0))(
  ( (ValueCellFull!15197 (v!18723 V!47927)) (EmptyCell!15197) )
))
(declare-datatypes ((array!81479 0))(
  ( (array!81480 (arr!39295 (Array (_ BitVec 32) ValueCell!15197)) (size!39832 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81479)

(declare-fun e!713309 () Bool)

(declare-fun array_inv!29888 (array!81479) Bool)

(assert (=> start!105382 (and (array_inv!29888 _values!914) e!713309)))

(declare-fun mapNonEmpty!49663 () Bool)

(declare-fun mapRes!49663 () Bool)

(declare-fun tp!94569 () Bool)

(declare-fun e!713310 () Bool)

(assert (=> mapNonEmpty!49663 (= mapRes!49663 (and tp!94569 e!713310))))

(declare-fun mapKey!49663 () (_ BitVec 32))

(declare-fun mapRest!49663 () (Array (_ BitVec 32) ValueCell!15197))

(declare-fun mapValue!49663 () ValueCell!15197)

(assert (=> mapNonEmpty!49663 (= (arr!39295 _values!914) (store mapRest!49663 mapKey!49663 mapValue!49663))))

(declare-fun b!1255087 () Bool)

(assert (=> b!1255087 (= e!713310 tp_is_empty!31921)))

(declare-fun b!1255088 () Bool)

(declare-fun res!836857 () Bool)

(assert (=> b!1255088 (=> (not res!836857) (not e!713311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81477 (_ BitVec 32)) Bool)

(assert (=> b!1255088 (= res!836857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255089 () Bool)

(assert (=> b!1255089 (= e!713311 (not true))))

(declare-datatypes ((tuple2!20832 0))(
  ( (tuple2!20833 (_1!10426 (_ BitVec 64)) (_2!10426 V!47927)) )
))
(declare-datatypes ((List!28073 0))(
  ( (Nil!28070) (Cons!28069 (h!29278 tuple2!20832) (t!41565 List!28073)) )
))
(declare-datatypes ((ListLongMap!18717 0))(
  ( (ListLongMap!18718 (toList!9374 List!28073)) )
))
(declare-fun lt!567407 () ListLongMap!18717)

(declare-fun lt!567405 () ListLongMap!18717)

(assert (=> b!1255089 (= lt!567407 lt!567405)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41722 0))(
  ( (Unit!41723) )
))
(declare-fun lt!567406 () Unit!41722)

(declare-fun minValueAfter!43 () V!47927)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47927)

(declare-fun minValueBefore!43 () V!47927)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1053 (array!81477 array!81479 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47927 V!47927 V!47927 V!47927 (_ BitVec 32) Int) Unit!41722)

(assert (=> b!1255089 (= lt!567406 (lemmaNoChangeToArrayThenSameMapNoExtras!1053 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5735 (array!81477 array!81479 (_ BitVec 32) (_ BitVec 32) V!47927 V!47927 (_ BitVec 32) Int) ListLongMap!18717)

(assert (=> b!1255089 (= lt!567405 (getCurrentListMapNoExtraKeys!5735 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255089 (= lt!567407 (getCurrentListMapNoExtraKeys!5735 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49663 () Bool)

(assert (=> mapIsEmpty!49663 mapRes!49663))

(declare-fun b!1255090 () Bool)

(declare-fun res!836860 () Bool)

(assert (=> b!1255090 (=> (not res!836860) (not e!713311))))

(assert (=> b!1255090 (= res!836860 (and (= (size!39832 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39831 _keys!1118) (size!39832 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255091 () Bool)

(assert (=> b!1255091 (= e!713309 (and e!713312 mapRes!49663))))

(declare-fun condMapEmpty!49663 () Bool)

(declare-fun mapDefault!49663 () ValueCell!15197)

