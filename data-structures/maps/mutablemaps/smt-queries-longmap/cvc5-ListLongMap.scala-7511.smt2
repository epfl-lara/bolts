; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95278 () Bool)

(assert start!95278)

(declare-fun b_free!22243 () Bool)

(declare-fun b_next!22243 () Bool)

(assert (=> start!95278 (= b_free!22243 (not b_next!22243))))

(declare-fun tp!78227 () Bool)

(declare-fun b_and!35239 () Bool)

(assert (=> start!95278 (= tp!78227 b_and!35239)))

(declare-fun b!1076502 () Bool)

(declare-fun e!615410 () Bool)

(declare-fun e!615408 () Bool)

(assert (=> b!1076502 (= e!615410 (not e!615408))))

(declare-fun res!717576 () Bool)

(assert (=> b!1076502 (=> res!717576 e!615408)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076502 (= res!717576 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39873 0))(
  ( (V!39874 (val!13077 Int)) )
))
(declare-datatypes ((tuple2!16738 0))(
  ( (tuple2!16739 (_1!8379 (_ BitVec 64)) (_2!8379 V!39873)) )
))
(declare-datatypes ((List!23310 0))(
  ( (Nil!23307) (Cons!23306 (h!24515 tuple2!16738) (t!32676 List!23310)) )
))
(declare-datatypes ((ListLongMap!14719 0))(
  ( (ListLongMap!14720 (toList!7375 List!23310)) )
))
(declare-fun lt!478270 () ListLongMap!14719)

(declare-fun lt!478268 () ListLongMap!14719)

(assert (=> b!1076502 (= lt!478270 lt!478268)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39873)

(declare-datatypes ((Unit!35389 0))(
  ( (Unit!35390) )
))
(declare-fun lt!478271 () Unit!35389)

(declare-datatypes ((ValueCell!12323 0))(
  ( (ValueCellFull!12323 (v!15706 V!39873)) (EmptyCell!12323) )
))
(declare-datatypes ((array!69044 0))(
  ( (array!69045 (arr!33201 (Array (_ BitVec 32) ValueCell!12323)) (size!33738 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69044)

(declare-fun minValue!907 () V!39873)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39873)

(declare-datatypes ((array!69046 0))(
  ( (array!69047 (arr!33202 (Array (_ BitVec 32) (_ BitVec 64))) (size!33739 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69046)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!917 (array!69046 array!69044 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39873 V!39873 V!39873 V!39873 (_ BitVec 32) Int) Unit!35389)

(assert (=> b!1076502 (= lt!478271 (lemmaNoChangeToArrayThenSameMapNoExtras!917 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3898 (array!69046 array!69044 (_ BitVec 32) (_ BitVec 32) V!39873 V!39873 (_ BitVec 32) Int) ListLongMap!14719)

(assert (=> b!1076502 (= lt!478268 (getCurrentListMapNoExtraKeys!3898 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076502 (= lt!478270 (getCurrentListMapNoExtraKeys!3898 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!717578 () Bool)

(assert (=> start!95278 (=> (not res!717578) (not e!615410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95278 (= res!717578 (validMask!0 mask!1515))))

(assert (=> start!95278 e!615410))

(assert (=> start!95278 true))

(declare-fun tp_is_empty!26053 () Bool)

(assert (=> start!95278 tp_is_empty!26053))

(declare-fun e!615413 () Bool)

(declare-fun array_inv!25512 (array!69044) Bool)

(assert (=> start!95278 (and (array_inv!25512 _values!955) e!615413)))

(assert (=> start!95278 tp!78227))

(declare-fun array_inv!25513 (array!69046) Bool)

(assert (=> start!95278 (array_inv!25513 _keys!1163)))

(declare-fun mapNonEmpty!40825 () Bool)

(declare-fun mapRes!40825 () Bool)

(declare-fun tp!78228 () Bool)

(declare-fun e!615407 () Bool)

(assert (=> mapNonEmpty!40825 (= mapRes!40825 (and tp!78228 e!615407))))

(declare-fun mapValue!40825 () ValueCell!12323)

(declare-fun mapRest!40825 () (Array (_ BitVec 32) ValueCell!12323))

(declare-fun mapKey!40825 () (_ BitVec 32))

(assert (=> mapNonEmpty!40825 (= (arr!33201 _values!955) (store mapRest!40825 mapKey!40825 mapValue!40825))))

(declare-fun mapIsEmpty!40825 () Bool)

(assert (=> mapIsEmpty!40825 mapRes!40825))

(declare-fun b!1076503 () Bool)

(declare-fun res!717573 () Bool)

(assert (=> b!1076503 (=> (not res!717573) (not e!615410))))

(assert (=> b!1076503 (= res!717573 (and (= (size!33738 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33739 _keys!1163) (size!33738 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1076504 () Bool)

(declare-fun res!717574 () Bool)

(assert (=> b!1076504 (=> (not res!717574) (not e!615410))))

(declare-datatypes ((List!23311 0))(
  ( (Nil!23308) (Cons!23307 (h!24516 (_ BitVec 64)) (t!32677 List!23311)) )
))
(declare-fun arrayNoDuplicates!0 (array!69046 (_ BitVec 32) List!23311) Bool)

(assert (=> b!1076504 (= res!717574 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23308))))

(declare-fun b!1076505 () Bool)

(declare-fun res!717577 () Bool)

(assert (=> b!1076505 (=> (not res!717577) (not e!615410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69046 (_ BitVec 32)) Bool)

(assert (=> b!1076505 (= res!717577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1076506 () Bool)

(declare-fun e!615412 () Bool)

(assert (=> b!1076506 (= e!615413 (and e!615412 mapRes!40825))))

(declare-fun condMapEmpty!40825 () Bool)

(declare-fun mapDefault!40825 () ValueCell!12323)

