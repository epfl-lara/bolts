; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94422 () Bool)

(assert start!94422)

(declare-fun b_free!21727 () Bool)

(declare-fun b_next!21727 () Bool)

(assert (=> start!94422 (= b_free!21727 (not b_next!21727))))

(declare-fun tp!76625 () Bool)

(declare-fun b_and!34529 () Bool)

(assert (=> start!94422 (= tp!76625 b_and!34529)))

(declare-fun mapNonEmpty!39997 () Bool)

(declare-fun mapRes!39997 () Bool)

(declare-fun tp!76626 () Bool)

(declare-fun e!608735 () Bool)

(assert (=> mapNonEmpty!39997 (= mapRes!39997 (and tp!76626 e!608735))))

(declare-datatypes ((V!39185 0))(
  ( (V!39186 (val!12819 Int)) )
))
(declare-datatypes ((ValueCell!12065 0))(
  ( (ValueCellFull!12065 (v!15434 V!39185)) (EmptyCell!12065) )
))
(declare-fun mapValue!39997 () ValueCell!12065)

(declare-datatypes ((array!68028 0))(
  ( (array!68029 (arr!32711 (Array (_ BitVec 32) ValueCell!12065)) (size!33248 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68028)

(declare-fun mapRest!39997 () (Array (_ BitVec 32) ValueCell!12065))

(declare-fun mapKey!39997 () (_ BitVec 32))

(assert (=> mapNonEmpty!39997 (= (arr!32711 _values!955) (store mapRest!39997 mapKey!39997 mapValue!39997))))

(declare-fun b!1067239 () Bool)

(declare-fun e!608736 () Bool)

(declare-fun tp_is_empty!25537 () Bool)

(assert (=> b!1067239 (= e!608736 tp_is_empty!25537)))

(declare-fun b!1067240 () Bool)

(declare-fun res!712314 () Bool)

(declare-fun e!608734 () Bool)

(assert (=> b!1067240 (=> (not res!712314) (not e!608734))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68030 0))(
  ( (array!68031 (arr!32712 (Array (_ BitVec 32) (_ BitVec 64))) (size!33249 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68030)

(assert (=> b!1067240 (= res!712314 (and (= (size!33248 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33249 _keys!1163) (size!33248 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067241 () Bool)

(declare-fun res!712315 () Bool)

(assert (=> b!1067241 (=> (not res!712315) (not e!608734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68030 (_ BitVec 32)) Bool)

(assert (=> b!1067241 (= res!712315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067242 () Bool)

(declare-fun res!712312 () Bool)

(assert (=> b!1067242 (=> (not res!712312) (not e!608734))))

(declare-datatypes ((List!22939 0))(
  ( (Nil!22936) (Cons!22935 (h!24144 (_ BitVec 64)) (t!32269 List!22939)) )
))
(declare-fun arrayNoDuplicates!0 (array!68030 (_ BitVec 32) List!22939) Bool)

(assert (=> b!1067242 (= res!712312 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22936))))

(declare-fun b!1067243 () Bool)

(assert (=> b!1067243 (= e!608735 tp_is_empty!25537)))

(declare-fun res!712313 () Bool)

(assert (=> start!94422 (=> (not res!712313) (not e!608734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94422 (= res!712313 (validMask!0 mask!1515))))

(assert (=> start!94422 e!608734))

(assert (=> start!94422 true))

(assert (=> start!94422 tp_is_empty!25537))

(declare-fun e!608737 () Bool)

(declare-fun array_inv!25160 (array!68028) Bool)

(assert (=> start!94422 (and (array_inv!25160 _values!955) e!608737)))

(assert (=> start!94422 tp!76625))

(declare-fun array_inv!25161 (array!68030) Bool)

(assert (=> start!94422 (array_inv!25161 _keys!1163)))

(declare-fun mapIsEmpty!39997 () Bool)

(assert (=> mapIsEmpty!39997 mapRes!39997))

(declare-fun b!1067244 () Bool)

(assert (=> b!1067244 (= e!608734 (not true))))

(declare-datatypes ((tuple2!16348 0))(
  ( (tuple2!16349 (_1!8184 (_ BitVec 64)) (_2!8184 V!39185)) )
))
(declare-datatypes ((List!22940 0))(
  ( (Nil!22937) (Cons!22936 (h!24145 tuple2!16348) (t!32270 List!22940)) )
))
(declare-datatypes ((ListLongMap!14329 0))(
  ( (ListLongMap!14330 (toList!7180 List!22940)) )
))
(declare-fun lt!471361 () ListLongMap!14329)

(declare-fun lt!471359 () ListLongMap!14329)

(assert (=> b!1067244 (= lt!471361 lt!471359)))

(declare-fun zeroValueBefore!47 () V!39185)

(declare-datatypes ((Unit!35026 0))(
  ( (Unit!35027) )
))
(declare-fun lt!471360 () Unit!35026)

(declare-fun minValue!907 () V!39185)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39185)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!764 (array!68030 array!68028 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39185 V!39185 V!39185 V!39185 (_ BitVec 32) Int) Unit!35026)

(assert (=> b!1067244 (= lt!471360 (lemmaNoChangeToArrayThenSameMapNoExtras!764 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3725 (array!68030 array!68028 (_ BitVec 32) (_ BitVec 32) V!39185 V!39185 (_ BitVec 32) Int) ListLongMap!14329)

(assert (=> b!1067244 (= lt!471359 (getCurrentListMapNoExtraKeys!3725 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067244 (= lt!471361 (getCurrentListMapNoExtraKeys!3725 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067245 () Bool)

(assert (=> b!1067245 (= e!608737 (and e!608736 mapRes!39997))))

(declare-fun condMapEmpty!39997 () Bool)

(declare-fun mapDefault!39997 () ValueCell!12065)

