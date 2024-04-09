; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94552 () Bool)

(assert start!94552)

(declare-fun b_free!21821 () Bool)

(declare-fun b_next!21821 () Bool)

(assert (=> start!94552 (= b_free!21821 (not b_next!21821))))

(declare-fun tp!76914 () Bool)

(declare-fun b_and!34641 () Bool)

(assert (=> start!94552 (= tp!76914 b_and!34641)))

(declare-fun b!1068692 () Bool)

(declare-fun e!609821 () Bool)

(assert (=> b!1068692 (= e!609821 true)))

(declare-datatypes ((V!39309 0))(
  ( (V!39310 (val!12866 Int)) )
))
(declare-datatypes ((tuple2!16418 0))(
  ( (tuple2!16419 (_1!8219 (_ BitVec 64)) (_2!8219 V!39309)) )
))
(declare-datatypes ((List!23007 0))(
  ( (Nil!23004) (Cons!23003 (h!24212 tuple2!16418) (t!32341 List!23007)) )
))
(declare-datatypes ((ListLongMap!14399 0))(
  ( (ListLongMap!14400 (toList!7215 List!23007)) )
))
(declare-fun lt!472170 () ListLongMap!14399)

(declare-fun -!651 (ListLongMap!14399 (_ BitVec 64)) ListLongMap!14399)

(assert (=> b!1068692 (= (-!651 lt!472170 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472170)))

(declare-datatypes ((Unit!35094 0))(
  ( (Unit!35095) )
))
(declare-fun lt!472173 () Unit!35094)

(declare-fun removeNotPresentStillSame!60 (ListLongMap!14399 (_ BitVec 64)) Unit!35094)

(assert (=> b!1068692 (= lt!472173 (removeNotPresentStillSame!60 lt!472170 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068693 () Bool)

(declare-fun res!713193 () Bool)

(declare-fun e!609822 () Bool)

(assert (=> b!1068693 (=> (not res!713193) (not e!609822))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12112 0))(
  ( (ValueCellFull!12112 (v!15482 V!39309)) (EmptyCell!12112) )
))
(declare-datatypes ((array!68212 0))(
  ( (array!68213 (arr!32801 (Array (_ BitVec 32) ValueCell!12112)) (size!33338 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68212)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68214 0))(
  ( (array!68215 (arr!32802 (Array (_ BitVec 32) (_ BitVec 64))) (size!33339 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68214)

(assert (=> b!1068693 (= res!713193 (and (= (size!33338 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33339 _keys!1163) (size!33338 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1068694 () Bool)

(declare-fun e!609818 () Bool)

(assert (=> b!1068694 (= e!609822 (not e!609818))))

(declare-fun res!713196 () Bool)

(assert (=> b!1068694 (=> res!713196 e!609818)))

(assert (=> b!1068694 (= res!713196 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472171 () ListLongMap!14399)

(declare-fun lt!472172 () ListLongMap!14399)

(assert (=> b!1068694 (= lt!472171 lt!472172)))

(declare-fun zeroValueBefore!47 () V!39309)

(declare-fun lt!472169 () Unit!35094)

(declare-fun minValue!907 () V!39309)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39309)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!794 (array!68214 array!68212 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39309 V!39309 V!39309 V!39309 (_ BitVec 32) Int) Unit!35094)

(assert (=> b!1068694 (= lt!472169 (lemmaNoChangeToArrayThenSameMapNoExtras!794 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3755 (array!68214 array!68212 (_ BitVec 32) (_ BitVec 32) V!39309 V!39309 (_ BitVec 32) Int) ListLongMap!14399)

(assert (=> b!1068694 (= lt!472172 (getCurrentListMapNoExtraKeys!3755 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068694 (= lt!472171 (getCurrentListMapNoExtraKeys!3755 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40144 () Bool)

(declare-fun mapRes!40144 () Bool)

(assert (=> mapIsEmpty!40144 mapRes!40144))

(declare-fun b!1068695 () Bool)

(declare-fun e!609817 () Bool)

(declare-fun tp_is_empty!25631 () Bool)

(assert (=> b!1068695 (= e!609817 tp_is_empty!25631)))

(declare-fun b!1068696 () Bool)

(declare-fun res!713195 () Bool)

(assert (=> b!1068696 (=> (not res!713195) (not e!609822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68214 (_ BitVec 32)) Bool)

(assert (=> b!1068696 (= res!713195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40144 () Bool)

(declare-fun tp!76913 () Bool)

(assert (=> mapNonEmpty!40144 (= mapRes!40144 (and tp!76913 e!609817))))

(declare-fun mapValue!40144 () ValueCell!12112)

(declare-fun mapRest!40144 () (Array (_ BitVec 32) ValueCell!12112))

(declare-fun mapKey!40144 () (_ BitVec 32))

(assert (=> mapNonEmpty!40144 (= (arr!32801 _values!955) (store mapRest!40144 mapKey!40144 mapValue!40144))))

(declare-fun b!1068697 () Bool)

(declare-fun res!713194 () Bool)

(assert (=> b!1068697 (=> (not res!713194) (not e!609822))))

(declare-datatypes ((List!23008 0))(
  ( (Nil!23005) (Cons!23004 (h!24213 (_ BitVec 64)) (t!32342 List!23008)) )
))
(declare-fun arrayNoDuplicates!0 (array!68214 (_ BitVec 32) List!23008) Bool)

(assert (=> b!1068697 (= res!713194 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23005))))

(declare-fun b!1068691 () Bool)

(declare-fun e!609820 () Bool)

(declare-fun e!609819 () Bool)

(assert (=> b!1068691 (= e!609820 (and e!609819 mapRes!40144))))

(declare-fun condMapEmpty!40144 () Bool)

(declare-fun mapDefault!40144 () ValueCell!12112)

