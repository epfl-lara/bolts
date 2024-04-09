; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105206 () Bool)

(assert start!105206)

(declare-fun b_free!26887 () Bool)

(declare-fun b_next!26887 () Bool)

(assert (=> start!105206 (= b_free!26887 (not b_next!26887))))

(declare-fun tp!94167 () Bool)

(declare-fun b_and!44711 () Bool)

(assert (=> start!105206 (= tp!94167 b_and!44711)))

(declare-fun b!1253171 () Bool)

(declare-fun res!835745 () Bool)

(declare-fun e!711925 () Bool)

(assert (=> b!1253171 (=> (not res!835745) (not e!711925))))

(declare-datatypes ((array!81219 0))(
  ( (array!81220 (arr!39167 (Array (_ BitVec 32) (_ BitVec 64))) (size!39704 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81219)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81219 (_ BitVec 32)) Bool)

(assert (=> b!1253171 (= res!835745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253172 () Bool)

(declare-fun e!711924 () Bool)

(declare-fun tp_is_empty!31789 () Bool)

(assert (=> b!1253172 (= e!711924 tp_is_empty!31789)))

(declare-fun b!1253173 () Bool)

(declare-fun res!835741 () Bool)

(assert (=> b!1253173 (=> (not res!835741) (not e!711925))))

(declare-datatypes ((List!27983 0))(
  ( (Nil!27980) (Cons!27979 (h!29188 (_ BitVec 64)) (t!41471 List!27983)) )
))
(declare-fun arrayNoDuplicates!0 (array!81219 (_ BitVec 32) List!27983) Bool)

(assert (=> b!1253173 (= res!835741 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27980))))

(declare-fun mapIsEmpty!49459 () Bool)

(declare-fun mapRes!49459 () Bool)

(assert (=> mapIsEmpty!49459 mapRes!49459))

(declare-fun b!1253174 () Bool)

(declare-fun e!711923 () Bool)

(assert (=> b!1253174 (= e!711923 true)))

(declare-datatypes ((V!47751 0))(
  ( (V!47752 (val!15957 Int)) )
))
(declare-datatypes ((tuple2!20736 0))(
  ( (tuple2!20737 (_1!10378 (_ BitVec 64)) (_2!10378 V!47751)) )
))
(declare-datatypes ((List!27984 0))(
  ( (Nil!27981) (Cons!27980 (h!29189 tuple2!20736) (t!41472 List!27984)) )
))
(declare-datatypes ((ListLongMap!18621 0))(
  ( (ListLongMap!18622 (toList!9326 List!27984)) )
))
(declare-fun lt!565735 () ListLongMap!18621)

(declare-fun lt!565738 () ListLongMap!18621)

(declare-fun -!2040 (ListLongMap!18621 (_ BitVec 64)) ListLongMap!18621)

(assert (=> b!1253174 (= lt!565735 (-!2040 lt!565738 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565739 () ListLongMap!18621)

(declare-fun lt!565736 () ListLongMap!18621)

(assert (=> b!1253174 (= (-!2040 lt!565739 #b1000000000000000000000000000000000000000000000000000000000000000) lt!565736)))

(declare-datatypes ((Unit!41622 0))(
  ( (Unit!41623) )
))
(declare-fun lt!565742 () Unit!41622)

(declare-fun minValueBefore!43 () V!47751)

(declare-fun addThenRemoveForNewKeyIsSame!300 (ListLongMap!18621 (_ BitVec 64) V!47751) Unit!41622)

(assert (=> b!1253174 (= lt!565742 (addThenRemoveForNewKeyIsSame!300 lt!565736 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!565740 () ListLongMap!18621)

(declare-fun lt!565737 () ListLongMap!18621)

(assert (=> b!1253174 (and (= lt!565738 lt!565739) (= lt!565740 lt!565737))))

(declare-fun +!4131 (ListLongMap!18621 tuple2!20736) ListLongMap!18621)

(assert (=> b!1253174 (= lt!565739 (+!4131 lt!565736 (tuple2!20737 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47751)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47751)

(declare-datatypes ((ValueCell!15131 0))(
  ( (ValueCellFull!15131 (v!18655 V!47751)) (EmptyCell!15131) )
))
(declare-datatypes ((array!81221 0))(
  ( (array!81222 (arr!39168 (Array (_ BitVec 32) ValueCell!15131)) (size!39705 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81221)

(declare-fun getCurrentListMap!4518 (array!81219 array!81221 (_ BitVec 32) (_ BitVec 32) V!47751 V!47751 (_ BitVec 32) Int) ListLongMap!18621)

(assert (=> b!1253174 (= lt!565740 (getCurrentListMap!4518 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253174 (= lt!565738 (getCurrentListMap!4518 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253175 () Bool)

(assert (=> b!1253175 (= e!711925 (not e!711923))))

(declare-fun res!835743 () Bool)

(assert (=> b!1253175 (=> res!835743 e!711923)))

(assert (=> b!1253175 (= res!835743 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1253175 (= lt!565736 lt!565737)))

(declare-fun lt!565741 () Unit!41622)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1013 (array!81219 array!81221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47751 V!47751 V!47751 V!47751 (_ BitVec 32) Int) Unit!41622)

(assert (=> b!1253175 (= lt!565741 (lemmaNoChangeToArrayThenSameMapNoExtras!1013 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5695 (array!81219 array!81221 (_ BitVec 32) (_ BitVec 32) V!47751 V!47751 (_ BitVec 32) Int) ListLongMap!18621)

(assert (=> b!1253175 (= lt!565737 (getCurrentListMapNoExtraKeys!5695 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253175 (= lt!565736 (getCurrentListMapNoExtraKeys!5695 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253176 () Bool)

(declare-fun e!711921 () Bool)

(declare-fun e!711926 () Bool)

(assert (=> b!1253176 (= e!711921 (and e!711926 mapRes!49459))))

(declare-fun condMapEmpty!49459 () Bool)

(declare-fun mapDefault!49459 () ValueCell!15131)

