; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94392 () Bool)

(assert start!94392)

(declare-fun b_free!21697 () Bool)

(declare-fun b_next!21697 () Bool)

(assert (=> start!94392 (= b_free!21697 (not b_next!21697))))

(declare-fun tp!76536 () Bool)

(declare-fun b_and!34499 () Bool)

(assert (=> start!94392 (= tp!76536 b_and!34499)))

(declare-fun mapIsEmpty!39952 () Bool)

(declare-fun mapRes!39952 () Bool)

(assert (=> mapIsEmpty!39952 mapRes!39952))

(declare-fun mapNonEmpty!39952 () Bool)

(declare-fun tp!76535 () Bool)

(declare-fun e!608510 () Bool)

(assert (=> mapNonEmpty!39952 (= mapRes!39952 (and tp!76535 e!608510))))

(declare-datatypes ((V!39145 0))(
  ( (V!39146 (val!12804 Int)) )
))
(declare-datatypes ((ValueCell!12050 0))(
  ( (ValueCellFull!12050 (v!15419 V!39145)) (EmptyCell!12050) )
))
(declare-fun mapRest!39952 () (Array (_ BitVec 32) ValueCell!12050))

(declare-datatypes ((array!67974 0))(
  ( (array!67975 (arr!32684 (Array (_ BitVec 32) ValueCell!12050)) (size!33221 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67974)

(declare-fun mapKey!39952 () (_ BitVec 32))

(declare-fun mapValue!39952 () ValueCell!12050)

(assert (=> mapNonEmpty!39952 (= (arr!32684 _values!955) (store mapRest!39952 mapKey!39952 mapValue!39952))))

(declare-fun b!1066924 () Bool)

(declare-fun res!712135 () Bool)

(declare-fun e!608512 () Bool)

(assert (=> b!1066924 (=> (not res!712135) (not e!608512))))

(declare-datatypes ((array!67976 0))(
  ( (array!67977 (arr!32685 (Array (_ BitVec 32) (_ BitVec 64))) (size!33222 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67976)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67976 (_ BitVec 32)) Bool)

(assert (=> b!1066924 (= res!712135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!712133 () Bool)

(assert (=> start!94392 (=> (not res!712133) (not e!608512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94392 (= res!712133 (validMask!0 mask!1515))))

(assert (=> start!94392 e!608512))

(assert (=> start!94392 true))

(declare-fun tp_is_empty!25507 () Bool)

(assert (=> start!94392 tp_is_empty!25507))

(declare-fun e!608513 () Bool)

(declare-fun array_inv!25142 (array!67974) Bool)

(assert (=> start!94392 (and (array_inv!25142 _values!955) e!608513)))

(assert (=> start!94392 tp!76536))

(declare-fun array_inv!25143 (array!67976) Bool)

(assert (=> start!94392 (array_inv!25143 _keys!1163)))

(declare-fun b!1066925 () Bool)

(declare-fun e!608509 () Bool)

(assert (=> b!1066925 (= e!608509 tp_is_empty!25507)))

(declare-fun b!1066926 () Bool)

(declare-fun res!712132 () Bool)

(assert (=> b!1066926 (=> (not res!712132) (not e!608512))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066926 (= res!712132 (and (= (size!33221 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33222 _keys!1163) (size!33221 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066927 () Bool)

(assert (=> b!1066927 (= e!608512 (not true))))

(declare-datatypes ((tuple2!16332 0))(
  ( (tuple2!16333 (_1!8176 (_ BitVec 64)) (_2!8176 V!39145)) )
))
(declare-datatypes ((List!22924 0))(
  ( (Nil!22921) (Cons!22920 (h!24129 tuple2!16332) (t!32254 List!22924)) )
))
(declare-datatypes ((ListLongMap!14313 0))(
  ( (ListLongMap!14314 (toList!7172 List!22924)) )
))
(declare-fun lt!471226 () ListLongMap!14313)

(declare-fun lt!471225 () ListLongMap!14313)

(assert (=> b!1066927 (= lt!471226 lt!471225)))

(declare-fun zeroValueBefore!47 () V!39145)

(declare-datatypes ((Unit!35010 0))(
  ( (Unit!35011) )
))
(declare-fun lt!471224 () Unit!35010)

(declare-fun minValue!907 () V!39145)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39145)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!756 (array!67976 array!67974 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39145 V!39145 V!39145 V!39145 (_ BitVec 32) Int) Unit!35010)

(assert (=> b!1066927 (= lt!471224 (lemmaNoChangeToArrayThenSameMapNoExtras!756 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3717 (array!67976 array!67974 (_ BitVec 32) (_ BitVec 32) V!39145 V!39145 (_ BitVec 32) Int) ListLongMap!14313)

(assert (=> b!1066927 (= lt!471225 (getCurrentListMapNoExtraKeys!3717 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066927 (= lt!471226 (getCurrentListMapNoExtraKeys!3717 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066928 () Bool)

(assert (=> b!1066928 (= e!608513 (and e!608509 mapRes!39952))))

(declare-fun condMapEmpty!39952 () Bool)

(declare-fun mapDefault!39952 () ValueCell!12050)

