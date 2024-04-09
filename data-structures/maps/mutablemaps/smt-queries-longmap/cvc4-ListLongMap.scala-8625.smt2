; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105078 () Bool)

(assert start!105078)

(declare-fun b_free!26789 () Bool)

(declare-fun b_next!26789 () Bool)

(assert (=> start!105078 (= b_free!26789 (not b_next!26789))))

(declare-fun tp!93866 () Bool)

(declare-fun b_and!44595 () Bool)

(assert (=> start!105078 (= tp!93866 b_and!44595)))

(declare-fun b!1251808 () Bool)

(declare-fun res!834965 () Bool)

(declare-fun e!710940 () Bool)

(assert (=> b!1251808 (=> (not res!834965) (not e!710940))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81025 0))(
  ( (array!81026 (arr!39072 (Array (_ BitVec 32) (_ BitVec 64))) (size!39609 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81025)

(declare-datatypes ((V!47619 0))(
  ( (V!47620 (val!15908 Int)) )
))
(declare-datatypes ((ValueCell!15082 0))(
  ( (ValueCellFull!15082 (v!18606 V!47619)) (EmptyCell!15082) )
))
(declare-datatypes ((array!81027 0))(
  ( (array!81028 (arr!39073 (Array (_ BitVec 32) ValueCell!15082)) (size!39610 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81027)

(assert (=> b!1251808 (= res!834965 (and (= (size!39610 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39609 _keys!1118) (size!39610 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!834966 () Bool)

(assert (=> start!105078 (=> (not res!834966) (not e!710940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105078 (= res!834966 (validMask!0 mask!1466))))

(assert (=> start!105078 e!710940))

(assert (=> start!105078 true))

(assert (=> start!105078 tp!93866))

(declare-fun tp_is_empty!31691 () Bool)

(assert (=> start!105078 tp_is_empty!31691))

(declare-fun array_inv!29735 (array!81025) Bool)

(assert (=> start!105078 (array_inv!29735 _keys!1118)))

(declare-fun e!710939 () Bool)

(declare-fun array_inv!29736 (array!81027) Bool)

(assert (=> start!105078 (and (array_inv!29736 _values!914) e!710939)))

(declare-fun b!1251809 () Bool)

(declare-fun res!834964 () Bool)

(assert (=> b!1251809 (=> (not res!834964) (not e!710940))))

(declare-datatypes ((List!27910 0))(
  ( (Nil!27907) (Cons!27906 (h!29115 (_ BitVec 64)) (t!41394 List!27910)) )
))
(declare-fun arrayNoDuplicates!0 (array!81025 (_ BitVec 32) List!27910) Bool)

(assert (=> b!1251809 (= res!834964 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27907))))

(declare-fun b!1251810 () Bool)

(declare-fun e!710938 () Bool)

(assert (=> b!1251810 (= e!710938 tp_is_empty!31691)))

(declare-fun b!1251811 () Bool)

(assert (=> b!1251811 (= e!710940 (not true))))

(declare-datatypes ((tuple2!20660 0))(
  ( (tuple2!20661 (_1!10340 (_ BitVec 64)) (_2!10340 V!47619)) )
))
(declare-datatypes ((List!27911 0))(
  ( (Nil!27908) (Cons!27907 (h!29116 tuple2!20660) (t!41395 List!27911)) )
))
(declare-datatypes ((ListLongMap!18545 0))(
  ( (ListLongMap!18546 (toList!9288 List!27911)) )
))
(declare-fun lt!565032 () ListLongMap!18545)

(declare-fun lt!565030 () ListLongMap!18545)

(assert (=> b!1251811 (= lt!565032 lt!565030)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47619)

(declare-fun minValueBefore!43 () V!47619)

(declare-datatypes ((Unit!41553 0))(
  ( (Unit!41554) )
))
(declare-fun lt!565031 () Unit!41553)

(declare-fun zeroValue!871 () V!47619)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!979 (array!81025 array!81027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47619 V!47619 V!47619 V!47619 (_ BitVec 32) Int) Unit!41553)

(assert (=> b!1251811 (= lt!565031 (lemmaNoChangeToArrayThenSameMapNoExtras!979 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5661 (array!81025 array!81027 (_ BitVec 32) (_ BitVec 32) V!47619 V!47619 (_ BitVec 32) Int) ListLongMap!18545)

(assert (=> b!1251811 (= lt!565030 (getCurrentListMapNoExtraKeys!5661 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251811 (= lt!565032 (getCurrentListMapNoExtraKeys!5661 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49306 () Bool)

(declare-fun mapRes!49306 () Bool)

(assert (=> mapIsEmpty!49306 mapRes!49306))

(declare-fun b!1251812 () Bool)

(declare-fun res!834963 () Bool)

(assert (=> b!1251812 (=> (not res!834963) (not e!710940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81025 (_ BitVec 32)) Bool)

(assert (=> b!1251812 (= res!834963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251813 () Bool)

(declare-fun e!710936 () Bool)

(assert (=> b!1251813 (= e!710936 tp_is_empty!31691)))

(declare-fun mapNonEmpty!49306 () Bool)

(declare-fun tp!93867 () Bool)

(assert (=> mapNonEmpty!49306 (= mapRes!49306 (and tp!93867 e!710936))))

(declare-fun mapRest!49306 () (Array (_ BitVec 32) ValueCell!15082))

(declare-fun mapValue!49306 () ValueCell!15082)

(declare-fun mapKey!49306 () (_ BitVec 32))

(assert (=> mapNonEmpty!49306 (= (arr!39073 _values!914) (store mapRest!49306 mapKey!49306 mapValue!49306))))

(declare-fun b!1251814 () Bool)

(assert (=> b!1251814 (= e!710939 (and e!710938 mapRes!49306))))

(declare-fun condMapEmpty!49306 () Bool)

(declare-fun mapDefault!49306 () ValueCell!15082)

