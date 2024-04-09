; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105092 () Bool)

(assert start!105092)

(declare-fun b_free!26803 () Bool)

(declare-fun b_next!26803 () Bool)

(assert (=> start!105092 (= b_free!26803 (not b_next!26803))))

(declare-fun tp!93909 () Bool)

(declare-fun b_and!44609 () Bool)

(assert (=> start!105092 (= tp!93909 b_and!44609)))

(declare-fun b!1251955 () Bool)

(declare-fun res!835047 () Bool)

(declare-fun e!711041 () Bool)

(assert (=> b!1251955 (=> (not res!835047) (not e!711041))))

(declare-datatypes ((array!81053 0))(
  ( (array!81054 (arr!39086 (Array (_ BitVec 32) (_ BitVec 64))) (size!39623 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81053)

(declare-datatypes ((List!27918 0))(
  ( (Nil!27915) (Cons!27914 (h!29123 (_ BitVec 64)) (t!41402 List!27918)) )
))
(declare-fun arrayNoDuplicates!0 (array!81053 (_ BitVec 32) List!27918) Bool)

(assert (=> b!1251955 (= res!835047 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27915))))

(declare-fun b!1251956 () Bool)

(declare-fun e!711045 () Bool)

(declare-fun tp_is_empty!31705 () Bool)

(assert (=> b!1251956 (= e!711045 tp_is_empty!31705)))

(declare-fun mapNonEmpty!49327 () Bool)

(declare-fun mapRes!49327 () Bool)

(declare-fun tp!93908 () Bool)

(declare-fun e!711043 () Bool)

(assert (=> mapNonEmpty!49327 (= mapRes!49327 (and tp!93908 e!711043))))

(declare-datatypes ((V!47639 0))(
  ( (V!47640 (val!15915 Int)) )
))
(declare-datatypes ((ValueCell!15089 0))(
  ( (ValueCellFull!15089 (v!18613 V!47639)) (EmptyCell!15089) )
))
(declare-fun mapValue!49327 () ValueCell!15089)

(declare-datatypes ((array!81055 0))(
  ( (array!81056 (arr!39087 (Array (_ BitVec 32) ValueCell!15089)) (size!39624 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81055)

(declare-fun mapKey!49327 () (_ BitVec 32))

(declare-fun mapRest!49327 () (Array (_ BitVec 32) ValueCell!15089))

(assert (=> mapNonEmpty!49327 (= (arr!39087 _values!914) (store mapRest!49327 mapKey!49327 mapValue!49327))))

(declare-fun b!1251957 () Bool)

(assert (=> b!1251957 (= e!711043 tp_is_empty!31705)))

(declare-fun b!1251958 () Bool)

(declare-fun res!835048 () Bool)

(assert (=> b!1251958 (=> (not res!835048) (not e!711041))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1251958 (= res!835048 (and (= (size!39624 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39623 _keys!1118) (size!39624 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251959 () Bool)

(declare-fun res!835049 () Bool)

(assert (=> b!1251959 (=> (not res!835049) (not e!711041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81053 (_ BitVec 32)) Bool)

(assert (=> b!1251959 (= res!835049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49327 () Bool)

(assert (=> mapIsEmpty!49327 mapRes!49327))

(declare-fun res!835050 () Bool)

(assert (=> start!105092 (=> (not res!835050) (not e!711041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105092 (= res!835050 (validMask!0 mask!1466))))

(assert (=> start!105092 e!711041))

(assert (=> start!105092 true))

(assert (=> start!105092 tp!93909))

(assert (=> start!105092 tp_is_empty!31705))

(declare-fun array_inv!29741 (array!81053) Bool)

(assert (=> start!105092 (array_inv!29741 _keys!1118)))

(declare-fun e!711042 () Bool)

(declare-fun array_inv!29742 (array!81055) Bool)

(assert (=> start!105092 (and (array_inv!29742 _values!914) e!711042)))

(declare-fun b!1251960 () Bool)

(assert (=> b!1251960 (= e!711041 (not true))))

(declare-datatypes ((tuple2!20668 0))(
  ( (tuple2!20669 (_1!10344 (_ BitVec 64)) (_2!10344 V!47639)) )
))
(declare-datatypes ((List!27919 0))(
  ( (Nil!27916) (Cons!27915 (h!29124 tuple2!20668) (t!41403 List!27919)) )
))
(declare-datatypes ((ListLongMap!18553 0))(
  ( (ListLongMap!18554 (toList!9292 List!27919)) )
))
(declare-fun lt!565093 () ListLongMap!18553)

(declare-fun lt!565095 () ListLongMap!18553)

(assert (=> b!1251960 (= lt!565093 lt!565095)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41561 0))(
  ( (Unit!41562) )
))
(declare-fun lt!565094 () Unit!41561)

(declare-fun minValueAfter!43 () V!47639)

(declare-fun zeroValue!871 () V!47639)

(declare-fun minValueBefore!43 () V!47639)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!983 (array!81053 array!81055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47639 V!47639 V!47639 V!47639 (_ BitVec 32) Int) Unit!41561)

(assert (=> b!1251960 (= lt!565094 (lemmaNoChangeToArrayThenSameMapNoExtras!983 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5665 (array!81053 array!81055 (_ BitVec 32) (_ BitVec 32) V!47639 V!47639 (_ BitVec 32) Int) ListLongMap!18553)

(assert (=> b!1251960 (= lt!565095 (getCurrentListMapNoExtraKeys!5665 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251960 (= lt!565093 (getCurrentListMapNoExtraKeys!5665 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251961 () Bool)

(assert (=> b!1251961 (= e!711042 (and e!711045 mapRes!49327))))

(declare-fun condMapEmpty!49327 () Bool)

(declare-fun mapDefault!49327 () ValueCell!15089)

