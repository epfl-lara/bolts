; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94432 () Bool)

(assert start!94432)

(declare-fun b_free!21737 () Bool)

(declare-fun b_next!21737 () Bool)

(assert (=> start!94432 (= b_free!21737 (not b_next!21737))))

(declare-fun tp!76655 () Bool)

(declare-fun b_and!34539 () Bool)

(assert (=> start!94432 (= tp!76655 b_and!34539)))

(declare-fun b!1067344 () Bool)

(declare-fun e!608810 () Bool)

(declare-fun tp_is_empty!25547 () Bool)

(assert (=> b!1067344 (= e!608810 tp_is_empty!25547)))

(declare-fun mapNonEmpty!40012 () Bool)

(declare-fun mapRes!40012 () Bool)

(declare-fun tp!76656 () Bool)

(declare-fun e!608811 () Bool)

(assert (=> mapNonEmpty!40012 (= mapRes!40012 (and tp!76656 e!608811))))

(declare-datatypes ((V!39197 0))(
  ( (V!39198 (val!12824 Int)) )
))
(declare-datatypes ((ValueCell!12070 0))(
  ( (ValueCellFull!12070 (v!15439 V!39197)) (EmptyCell!12070) )
))
(declare-fun mapRest!40012 () (Array (_ BitVec 32) ValueCell!12070))

(declare-fun mapKey!40012 () (_ BitVec 32))

(declare-fun mapValue!40012 () ValueCell!12070)

(declare-datatypes ((array!68048 0))(
  ( (array!68049 (arr!32721 (Array (_ BitVec 32) ValueCell!12070)) (size!33258 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68048)

(assert (=> mapNonEmpty!40012 (= (arr!32721 _values!955) (store mapRest!40012 mapKey!40012 mapValue!40012))))

(declare-fun b!1067345 () Bool)

(declare-fun res!712375 () Bool)

(declare-fun e!608812 () Bool)

(assert (=> b!1067345 (=> (not res!712375) (not e!608812))))

(declare-datatypes ((array!68050 0))(
  ( (array!68051 (arr!32722 (Array (_ BitVec 32) (_ BitVec 64))) (size!33259 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68050)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68050 (_ BitVec 32)) Bool)

(assert (=> b!1067345 (= res!712375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067346 () Bool)

(declare-fun res!712374 () Bool)

(assert (=> b!1067346 (=> (not res!712374) (not e!608812))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067346 (= res!712374 (and (= (size!33258 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33259 _keys!1163) (size!33258 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!712372 () Bool)

(assert (=> start!94432 (=> (not res!712372) (not e!608812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94432 (= res!712372 (validMask!0 mask!1515))))

(assert (=> start!94432 e!608812))

(assert (=> start!94432 true))

(assert (=> start!94432 tp_is_empty!25547))

(declare-fun e!608813 () Bool)

(declare-fun array_inv!25168 (array!68048) Bool)

(assert (=> start!94432 (and (array_inv!25168 _values!955) e!608813)))

(assert (=> start!94432 tp!76655))

(declare-fun array_inv!25169 (array!68050) Bool)

(assert (=> start!94432 (array_inv!25169 _keys!1163)))

(declare-fun mapIsEmpty!40012 () Bool)

(assert (=> mapIsEmpty!40012 mapRes!40012))

(declare-fun b!1067347 () Bool)

(assert (=> b!1067347 (= e!608812 (not true))))

(declare-datatypes ((tuple2!16356 0))(
  ( (tuple2!16357 (_1!8188 (_ BitVec 64)) (_2!8188 V!39197)) )
))
(declare-datatypes ((List!22947 0))(
  ( (Nil!22944) (Cons!22943 (h!24152 tuple2!16356) (t!32277 List!22947)) )
))
(declare-datatypes ((ListLongMap!14337 0))(
  ( (ListLongMap!14338 (toList!7184 List!22947)) )
))
(declare-fun lt!471406 () ListLongMap!14337)

(declare-fun lt!471405 () ListLongMap!14337)

(assert (=> b!1067347 (= lt!471406 lt!471405)))

(declare-fun zeroValueBefore!47 () V!39197)

(declare-datatypes ((Unit!35034 0))(
  ( (Unit!35035) )
))
(declare-fun lt!471404 () Unit!35034)

(declare-fun minValue!907 () V!39197)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39197)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!768 (array!68050 array!68048 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39197 V!39197 V!39197 V!39197 (_ BitVec 32) Int) Unit!35034)

(assert (=> b!1067347 (= lt!471404 (lemmaNoChangeToArrayThenSameMapNoExtras!768 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3729 (array!68050 array!68048 (_ BitVec 32) (_ BitVec 32) V!39197 V!39197 (_ BitVec 32) Int) ListLongMap!14337)

(assert (=> b!1067347 (= lt!471405 (getCurrentListMapNoExtraKeys!3729 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067347 (= lt!471406 (getCurrentListMapNoExtraKeys!3729 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067348 () Bool)

(assert (=> b!1067348 (= e!608811 tp_is_empty!25547)))

(declare-fun b!1067349 () Bool)

(assert (=> b!1067349 (= e!608813 (and e!608810 mapRes!40012))))

(declare-fun condMapEmpty!40012 () Bool)

(declare-fun mapDefault!40012 () ValueCell!12070)

