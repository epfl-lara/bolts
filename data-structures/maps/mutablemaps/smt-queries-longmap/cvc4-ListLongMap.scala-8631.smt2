; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105114 () Bool)

(assert start!105114)

(declare-fun b_free!26825 () Bool)

(declare-fun b_next!26825 () Bool)

(assert (=> start!105114 (= b_free!26825 (not b_next!26825))))

(declare-fun tp!93974 () Bool)

(declare-fun b_and!44631 () Bool)

(assert (=> start!105114 (= tp!93974 b_and!44631)))

(declare-fun b!1252186 () Bool)

(declare-fun res!835180 () Bool)

(declare-fun e!711209 () Bool)

(assert (=> b!1252186 (=> (not res!835180) (not e!711209))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81095 0))(
  ( (array!81096 (arr!39107 (Array (_ BitVec 32) (_ BitVec 64))) (size!39644 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81095)

(declare-datatypes ((V!47667 0))(
  ( (V!47668 (val!15926 Int)) )
))
(declare-datatypes ((ValueCell!15100 0))(
  ( (ValueCellFull!15100 (v!18624 V!47667)) (EmptyCell!15100) )
))
(declare-datatypes ((array!81097 0))(
  ( (array!81098 (arr!39108 (Array (_ BitVec 32) ValueCell!15100)) (size!39645 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81097)

(assert (=> b!1252186 (= res!835180 (and (= (size!39645 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39644 _keys!1118) (size!39645 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252187 () Bool)

(declare-fun res!835179 () Bool)

(assert (=> b!1252187 (=> (not res!835179) (not e!711209))))

(declare-datatypes ((List!27933 0))(
  ( (Nil!27930) (Cons!27929 (h!29138 (_ BitVec 64)) (t!41417 List!27933)) )
))
(declare-fun arrayNoDuplicates!0 (array!81095 (_ BitVec 32) List!27933) Bool)

(assert (=> b!1252187 (= res!835179 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27930))))

(declare-fun b!1252188 () Bool)

(declare-fun res!835182 () Bool)

(assert (=> b!1252188 (=> (not res!835182) (not e!711209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81095 (_ BitVec 32)) Bool)

(assert (=> b!1252188 (= res!835182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49360 () Bool)

(declare-fun mapRes!49360 () Bool)

(declare-fun tp!93975 () Bool)

(declare-fun e!711208 () Bool)

(assert (=> mapNonEmpty!49360 (= mapRes!49360 (and tp!93975 e!711208))))

(declare-fun mapRest!49360 () (Array (_ BitVec 32) ValueCell!15100))

(declare-fun mapKey!49360 () (_ BitVec 32))

(declare-fun mapValue!49360 () ValueCell!15100)

(assert (=> mapNonEmpty!49360 (= (arr!39108 _values!914) (store mapRest!49360 mapKey!49360 mapValue!49360))))

(declare-fun res!835181 () Bool)

(assert (=> start!105114 (=> (not res!835181) (not e!711209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105114 (= res!835181 (validMask!0 mask!1466))))

(assert (=> start!105114 e!711209))

(assert (=> start!105114 true))

(assert (=> start!105114 tp!93974))

(declare-fun tp_is_empty!31727 () Bool)

(assert (=> start!105114 tp_is_empty!31727))

(declare-fun array_inv!29757 (array!81095) Bool)

(assert (=> start!105114 (array_inv!29757 _keys!1118)))

(declare-fun e!711210 () Bool)

(declare-fun array_inv!29758 (array!81097) Bool)

(assert (=> start!105114 (and (array_inv!29758 _values!914) e!711210)))

(declare-fun mapIsEmpty!49360 () Bool)

(assert (=> mapIsEmpty!49360 mapRes!49360))

(declare-fun b!1252189 () Bool)

(assert (=> b!1252189 (= e!711209 (not (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!39644 _keys!1118)))))))

(declare-datatypes ((tuple2!20682 0))(
  ( (tuple2!20683 (_1!10351 (_ BitVec 64)) (_2!10351 V!47667)) )
))
(declare-datatypes ((List!27934 0))(
  ( (Nil!27931) (Cons!27930 (h!29139 tuple2!20682) (t!41418 List!27934)) )
))
(declare-datatypes ((ListLongMap!18567 0))(
  ( (ListLongMap!18568 (toList!9299 List!27934)) )
))
(declare-fun lt!565192 () ListLongMap!18567)

(declare-fun lt!565193 () ListLongMap!18567)

(assert (=> b!1252189 (= lt!565192 lt!565193)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47667)

(declare-fun zeroValue!871 () V!47667)

(declare-datatypes ((Unit!41575 0))(
  ( (Unit!41576) )
))
(declare-fun lt!565194 () Unit!41575)

(declare-fun minValueBefore!43 () V!47667)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!990 (array!81095 array!81097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47667 V!47667 V!47667 V!47667 (_ BitVec 32) Int) Unit!41575)

(assert (=> b!1252189 (= lt!565194 (lemmaNoChangeToArrayThenSameMapNoExtras!990 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5672 (array!81095 array!81097 (_ BitVec 32) (_ BitVec 32) V!47667 V!47667 (_ BitVec 32) Int) ListLongMap!18567)

(assert (=> b!1252189 (= lt!565193 (getCurrentListMapNoExtraKeys!5672 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252189 (= lt!565192 (getCurrentListMapNoExtraKeys!5672 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252190 () Bool)

(declare-fun e!711206 () Bool)

(assert (=> b!1252190 (= e!711206 tp_is_empty!31727)))

(declare-fun b!1252191 () Bool)

(assert (=> b!1252191 (= e!711210 (and e!711206 mapRes!49360))))

(declare-fun condMapEmpty!49360 () Bool)

(declare-fun mapDefault!49360 () ValueCell!15100)

