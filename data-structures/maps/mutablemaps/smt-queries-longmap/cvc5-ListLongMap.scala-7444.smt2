; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94572 () Bool)

(assert start!94572)

(declare-fun b_free!21841 () Bool)

(declare-fun b_next!21841 () Bool)

(assert (=> start!94572 (= b_free!21841 (not b_next!21841))))

(declare-fun tp!76973 () Bool)

(declare-fun b_and!34661 () Bool)

(assert (=> start!94572 (= tp!76973 b_and!34661)))

(declare-fun mapNonEmpty!40174 () Bool)

(declare-fun mapRes!40174 () Bool)

(declare-fun tp!76974 () Bool)

(declare-fun e!610029 () Bool)

(assert (=> mapNonEmpty!40174 (= mapRes!40174 (and tp!76974 e!610029))))

(declare-datatypes ((V!39337 0))(
  ( (V!39338 (val!12876 Int)) )
))
(declare-datatypes ((ValueCell!12122 0))(
  ( (ValueCellFull!12122 (v!15492 V!39337)) (EmptyCell!12122) )
))
(declare-fun mapValue!40174 () ValueCell!12122)

(declare-fun mapRest!40174 () (Array (_ BitVec 32) ValueCell!12122))

(declare-fun mapKey!40174 () (_ BitVec 32))

(declare-datatypes ((array!68252 0))(
  ( (array!68253 (arr!32821 (Array (_ BitVec 32) ValueCell!12122)) (size!33358 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68252)

(assert (=> mapNonEmpty!40174 (= (arr!32821 _values!955) (store mapRest!40174 mapKey!40174 mapValue!40174))))

(declare-fun b!1068961 () Bool)

(declare-fun e!610027 () Bool)

(declare-fun e!610028 () Bool)

(assert (=> b!1068961 (= e!610027 e!610028)))

(declare-fun res!713373 () Bool)

(assert (=> b!1068961 (=> res!713373 e!610028)))

(declare-datatypes ((tuple2!16434 0))(
  ( (tuple2!16435 (_1!8227 (_ BitVec 64)) (_2!8227 V!39337)) )
))
(declare-datatypes ((List!23021 0))(
  ( (Nil!23018) (Cons!23017 (h!24226 tuple2!16434) (t!32355 List!23021)) )
))
(declare-datatypes ((ListLongMap!14415 0))(
  ( (ListLongMap!14416 (toList!7223 List!23021)) )
))
(declare-fun lt!472320 () ListLongMap!14415)

(declare-fun contains!6321 (ListLongMap!14415 (_ BitVec 64)) Bool)

(assert (=> b!1068961 (= res!713373 (contains!6321 lt!472320 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39337)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39337)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68254 0))(
  ( (array!68255 (arr!32822 (Array (_ BitVec 32) (_ BitVec 64))) (size!33359 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68254)

(declare-fun getCurrentListMap!4110 (array!68254 array!68252 (_ BitVec 32) (_ BitVec 32) V!39337 V!39337 (_ BitVec 32) Int) ListLongMap!14415)

(assert (=> b!1068961 (= lt!472320 (getCurrentListMap!4110 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068962 () Bool)

(declare-fun e!610032 () Bool)

(assert (=> b!1068962 (= e!610032 (not e!610027))))

(declare-fun res!713372 () Bool)

(assert (=> b!1068962 (=> res!713372 e!610027)))

(assert (=> b!1068962 (= res!713372 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472322 () ListLongMap!14415)

(declare-fun lt!472323 () ListLongMap!14415)

(assert (=> b!1068962 (= lt!472322 lt!472323)))

(declare-datatypes ((Unit!35110 0))(
  ( (Unit!35111) )
))
(declare-fun lt!472321 () Unit!35110)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39337)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!800 (array!68254 array!68252 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39337 V!39337 V!39337 V!39337 (_ BitVec 32) Int) Unit!35110)

(assert (=> b!1068962 (= lt!472321 (lemmaNoChangeToArrayThenSameMapNoExtras!800 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3761 (array!68254 array!68252 (_ BitVec 32) (_ BitVec 32) V!39337 V!39337 (_ BitVec 32) Int) ListLongMap!14415)

(assert (=> b!1068962 (= lt!472323 (getCurrentListMapNoExtraKeys!3761 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068962 (= lt!472322 (getCurrentListMapNoExtraKeys!3761 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068963 () Bool)

(declare-fun tp_is_empty!25651 () Bool)

(assert (=> b!1068963 (= e!610029 tp_is_empty!25651)))

(declare-fun b!1068964 () Bool)

(assert (=> b!1068964 (= e!610028 true)))

(declare-fun -!657 (ListLongMap!14415 (_ BitVec 64)) ListLongMap!14415)

(assert (=> b!1068964 (= (-!657 lt!472320 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472320)))

(declare-fun lt!472319 () Unit!35110)

(declare-fun removeNotPresentStillSame!66 (ListLongMap!14415 (_ BitVec 64)) Unit!35110)

(assert (=> b!1068964 (= lt!472319 (removeNotPresentStillSame!66 lt!472320 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!713374 () Bool)

(assert (=> start!94572 (=> (not res!713374) (not e!610032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94572 (= res!713374 (validMask!0 mask!1515))))

(assert (=> start!94572 e!610032))

(assert (=> start!94572 true))

(assert (=> start!94572 tp_is_empty!25651))

(declare-fun e!610030 () Bool)

(declare-fun array_inv!25244 (array!68252) Bool)

(assert (=> start!94572 (and (array_inv!25244 _values!955) e!610030)))

(assert (=> start!94572 tp!76973))

(declare-fun array_inv!25245 (array!68254) Bool)

(assert (=> start!94572 (array_inv!25245 _keys!1163)))

(declare-fun mapIsEmpty!40174 () Bool)

(assert (=> mapIsEmpty!40174 mapRes!40174))

(declare-fun b!1068965 () Bool)

(declare-fun res!713375 () Bool)

(assert (=> b!1068965 (=> (not res!713375) (not e!610032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68254 (_ BitVec 32)) Bool)

(assert (=> b!1068965 (= res!713375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1068966 () Bool)

(declare-fun res!713376 () Bool)

(assert (=> b!1068966 (=> (not res!713376) (not e!610032))))

(assert (=> b!1068966 (= res!713376 (and (= (size!33358 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33359 _keys!1163) (size!33358 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1068967 () Bool)

(declare-fun e!610033 () Bool)

(assert (=> b!1068967 (= e!610033 tp_is_empty!25651)))

(declare-fun b!1068968 () Bool)

(declare-fun res!713371 () Bool)

(assert (=> b!1068968 (=> (not res!713371) (not e!610032))))

(declare-datatypes ((List!23022 0))(
  ( (Nil!23019) (Cons!23018 (h!24227 (_ BitVec 64)) (t!32356 List!23022)) )
))
(declare-fun arrayNoDuplicates!0 (array!68254 (_ BitVec 32) List!23022) Bool)

(assert (=> b!1068968 (= res!713371 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23019))))

(declare-fun b!1068969 () Bool)

(assert (=> b!1068969 (= e!610030 (and e!610033 mapRes!40174))))

(declare-fun condMapEmpty!40174 () Bool)

(declare-fun mapDefault!40174 () ValueCell!12122)

