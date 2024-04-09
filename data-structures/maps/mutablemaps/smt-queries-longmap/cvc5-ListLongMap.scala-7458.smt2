; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94692 () Bool)

(assert start!94692)

(declare-fun b_free!21925 () Bool)

(declare-fun b_next!21925 () Bool)

(assert (=> start!94692 (= b_free!21925 (not b_next!21925))))

(declare-fun tp!77232 () Bool)

(declare-fun b_and!34763 () Bool)

(assert (=> start!94692 (= tp!77232 b_and!34763)))

(declare-fun b!1070155 () Bool)

(declare-fun e!610885 () Bool)

(declare-fun tp_is_empty!25735 () Bool)

(assert (=> b!1070155 (= e!610885 tp_is_empty!25735)))

(declare-fun b!1070156 () Bool)

(declare-fun e!610884 () Bool)

(assert (=> b!1070156 (= e!610884 true)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39449 0))(
  ( (V!39450 (val!12918 Int)) )
))
(declare-datatypes ((tuple2!16496 0))(
  ( (tuple2!16497 (_1!8258 (_ BitVec 64)) (_2!8258 V!39449)) )
))
(declare-datatypes ((List!23082 0))(
  ( (Nil!23079) (Cons!23078 (h!24287 tuple2!16496) (t!32420 List!23082)) )
))
(declare-datatypes ((ListLongMap!14477 0))(
  ( (ListLongMap!14478 (toList!7254 List!23082)) )
))
(declare-fun lt!472933 () ListLongMap!14477)

(declare-fun zeroValueBefore!47 () V!39449)

(declare-datatypes ((ValueCell!12164 0))(
  ( (ValueCellFull!12164 (v!15535 V!39449)) (EmptyCell!12164) )
))
(declare-datatypes ((array!68416 0))(
  ( (array!68417 (arr!32901 (Array (_ BitVec 32) ValueCell!12164)) (size!33438 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68416)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39449)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68418 0))(
  ( (array!68419 (arr!32902 (Array (_ BitVec 32) (_ BitVec 64))) (size!33439 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68418)

(declare-fun getCurrentListMap!4120 (array!68418 array!68416 (_ BitVec 32) (_ BitVec 32) V!39449 V!39449 (_ BitVec 32) Int) ListLongMap!14477)

(assert (=> b!1070156 (= lt!472933 (getCurrentListMap!4120 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!714039 () Bool)

(declare-fun e!610883 () Bool)

(assert (=> start!94692 (=> (not res!714039) (not e!610883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94692 (= res!714039 (validMask!0 mask!1515))))

(assert (=> start!94692 e!610883))

(assert (=> start!94692 true))

(assert (=> start!94692 tp_is_empty!25735))

(declare-fun e!610882 () Bool)

(declare-fun array_inv!25298 (array!68416) Bool)

(assert (=> start!94692 (and (array_inv!25298 _values!955) e!610882)))

(assert (=> start!94692 tp!77232))

(declare-fun array_inv!25299 (array!68418) Bool)

(assert (=> start!94692 (array_inv!25299 _keys!1163)))

(declare-fun b!1070157 () Bool)

(assert (=> b!1070157 (= e!610883 (not e!610884))))

(declare-fun res!714041 () Bool)

(assert (=> b!1070157 (=> res!714041 e!610884)))

(assert (=> b!1070157 (= res!714041 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!472931 () ListLongMap!14477)

(declare-fun lt!472932 () ListLongMap!14477)

(assert (=> b!1070157 (= lt!472931 lt!472932)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39449)

(declare-datatypes ((Unit!35172 0))(
  ( (Unit!35173) )
))
(declare-fun lt!472934 () Unit!35172)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!829 (array!68418 array!68416 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39449 V!39449 V!39449 V!39449 (_ BitVec 32) Int) Unit!35172)

(assert (=> b!1070157 (= lt!472934 (lemmaNoChangeToArrayThenSameMapNoExtras!829 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3790 (array!68418 array!68416 (_ BitVec 32) (_ BitVec 32) V!39449 V!39449 (_ BitVec 32) Int) ListLongMap!14477)

(assert (=> b!1070157 (= lt!472932 (getCurrentListMapNoExtraKeys!3790 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070157 (= lt!472931 (getCurrentListMapNoExtraKeys!3790 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070158 () Bool)

(declare-fun res!714040 () Bool)

(assert (=> b!1070158 (=> (not res!714040) (not e!610883))))

(assert (=> b!1070158 (= res!714040 (and (= (size!33438 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33439 _keys!1163) (size!33438 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40306 () Bool)

(declare-fun mapRes!40306 () Bool)

(assert (=> mapIsEmpty!40306 mapRes!40306))

(declare-fun mapNonEmpty!40306 () Bool)

(declare-fun tp!77231 () Bool)

(declare-fun e!610887 () Bool)

(assert (=> mapNonEmpty!40306 (= mapRes!40306 (and tp!77231 e!610887))))

(declare-fun mapRest!40306 () (Array (_ BitVec 32) ValueCell!12164))

(declare-fun mapKey!40306 () (_ BitVec 32))

(declare-fun mapValue!40306 () ValueCell!12164)

(assert (=> mapNonEmpty!40306 (= (arr!32901 _values!955) (store mapRest!40306 mapKey!40306 mapValue!40306))))

(declare-fun b!1070159 () Bool)

(declare-fun res!714038 () Bool)

(assert (=> b!1070159 (=> (not res!714038) (not e!610883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68418 (_ BitVec 32)) Bool)

(assert (=> b!1070159 (= res!714038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070160 () Bool)

(assert (=> b!1070160 (= e!610882 (and e!610885 mapRes!40306))))

(declare-fun condMapEmpty!40306 () Bool)

(declare-fun mapDefault!40306 () ValueCell!12164)

