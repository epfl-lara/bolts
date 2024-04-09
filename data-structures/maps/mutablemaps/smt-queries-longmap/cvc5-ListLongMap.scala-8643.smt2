; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105212 () Bool)

(assert start!105212)

(declare-fun b_free!26893 () Bool)

(declare-fun b_next!26893 () Bool)

(assert (=> start!105212 (= b_free!26893 (not b_next!26893))))

(declare-fun tp!94184 () Bool)

(declare-fun b_and!44717 () Bool)

(assert (=> start!105212 (= tp!94184 b_and!44717)))

(declare-fun b!1253243 () Bool)

(declare-fun e!711980 () Bool)

(declare-fun e!711976 () Bool)

(assert (=> b!1253243 (= e!711980 (not e!711976))))

(declare-fun res!835786 () Bool)

(assert (=> b!1253243 (=> res!835786 e!711976)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253243 (= res!835786 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47759 0))(
  ( (V!47760 (val!15960 Int)) )
))
(declare-datatypes ((tuple2!20740 0))(
  ( (tuple2!20741 (_1!10380 (_ BitVec 64)) (_2!10380 V!47759)) )
))
(declare-datatypes ((List!27988 0))(
  ( (Nil!27985) (Cons!27984 (h!29193 tuple2!20740) (t!41476 List!27988)) )
))
(declare-datatypes ((ListLongMap!18625 0))(
  ( (ListLongMap!18626 (toList!9328 List!27988)) )
))
(declare-fun lt!565810 () ListLongMap!18625)

(declare-fun lt!565814 () ListLongMap!18625)

(assert (=> b!1253243 (= lt!565810 lt!565814)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41626 0))(
  ( (Unit!41627) )
))
(declare-fun lt!565807 () Unit!41626)

(declare-fun minValueAfter!43 () V!47759)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47759)

(declare-datatypes ((array!81231 0))(
  ( (array!81232 (arr!39173 (Array (_ BitVec 32) (_ BitVec 64))) (size!39710 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81231)

(declare-datatypes ((ValueCell!15134 0))(
  ( (ValueCellFull!15134 (v!18658 V!47759)) (EmptyCell!15134) )
))
(declare-datatypes ((array!81233 0))(
  ( (array!81234 (arr!39174 (Array (_ BitVec 32) ValueCell!15134)) (size!39711 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81233)

(declare-fun minValueBefore!43 () V!47759)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1015 (array!81231 array!81233 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47759 V!47759 V!47759 V!47759 (_ BitVec 32) Int) Unit!41626)

(assert (=> b!1253243 (= lt!565807 (lemmaNoChangeToArrayThenSameMapNoExtras!1015 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5697 (array!81231 array!81233 (_ BitVec 32) (_ BitVec 32) V!47759 V!47759 (_ BitVec 32) Int) ListLongMap!18625)

(assert (=> b!1253243 (= lt!565814 (getCurrentListMapNoExtraKeys!5697 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253243 (= lt!565810 (getCurrentListMapNoExtraKeys!5697 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253244 () Bool)

(declare-fun e!711977 () Bool)

(declare-fun tp_is_empty!31795 () Bool)

(assert (=> b!1253244 (= e!711977 tp_is_empty!31795)))

(declare-fun mapNonEmpty!49468 () Bool)

(declare-fun mapRes!49468 () Bool)

(declare-fun tp!94185 () Bool)

(declare-fun e!711975 () Bool)

(assert (=> mapNonEmpty!49468 (= mapRes!49468 (and tp!94185 e!711975))))

(declare-fun mapValue!49468 () ValueCell!15134)

(declare-fun mapRest!49468 () (Array (_ BitVec 32) ValueCell!15134))

(declare-fun mapKey!49468 () (_ BitVec 32))

(assert (=> mapNonEmpty!49468 (= (arr!39174 _values!914) (store mapRest!49468 mapKey!49468 mapValue!49468))))

(declare-fun res!835787 () Bool)

(assert (=> start!105212 (=> (not res!835787) (not e!711980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105212 (= res!835787 (validMask!0 mask!1466))))

(assert (=> start!105212 e!711980))

(assert (=> start!105212 true))

(assert (=> start!105212 tp!94184))

(assert (=> start!105212 tp_is_empty!31795))

(declare-fun array_inv!29805 (array!81231) Bool)

(assert (=> start!105212 (array_inv!29805 _keys!1118)))

(declare-fun e!711978 () Bool)

(declare-fun array_inv!29806 (array!81233) Bool)

(assert (=> start!105212 (and (array_inv!29806 _values!914) e!711978)))

(declare-fun b!1253245 () Bool)

(declare-fun res!835788 () Bool)

(assert (=> b!1253245 (=> (not res!835788) (not e!711980))))

(declare-datatypes ((List!27989 0))(
  ( (Nil!27986) (Cons!27985 (h!29194 (_ BitVec 64)) (t!41477 List!27989)) )
))
(declare-fun arrayNoDuplicates!0 (array!81231 (_ BitVec 32) List!27989) Bool)

(assert (=> b!1253245 (= res!835788 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27986))))

(declare-fun b!1253246 () Bool)

(assert (=> b!1253246 (= e!711978 (and e!711977 mapRes!49468))))

(declare-fun condMapEmpty!49468 () Bool)

(declare-fun mapDefault!49468 () ValueCell!15134)

