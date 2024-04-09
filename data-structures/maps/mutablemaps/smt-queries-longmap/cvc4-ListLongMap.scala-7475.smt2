; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94814 () Bool)

(assert start!94814)

(declare-fun b_free!22031 () Bool)

(declare-fun b_next!22031 () Bool)

(assert (=> start!94814 (= b_free!22031 (not b_next!22031))))

(declare-fun tp!77552 () Bool)

(declare-fun b_and!34879 () Bool)

(assert (=> start!94814 (= tp!77552 b_and!34879)))

(declare-fun b!1071681 () Bool)

(declare-fun e!612038 () Bool)

(declare-fun tp_is_empty!25841 () Bool)

(assert (=> b!1071681 (= e!612038 tp_is_empty!25841)))

(declare-fun b!1071682 () Bool)

(declare-fun res!714999 () Bool)

(declare-fun e!612040 () Bool)

(assert (=> b!1071682 (=> (not res!714999) (not e!612040))))

(declare-datatypes ((V!39589 0))(
  ( (V!39590 (val!12971 Int)) )
))
(declare-datatypes ((ValueCell!12217 0))(
  ( (ValueCellFull!12217 (v!15588 V!39589)) (EmptyCell!12217) )
))
(declare-datatypes ((array!68610 0))(
  ( (array!68611 (arr!32997 (Array (_ BitVec 32) ValueCell!12217)) (size!33534 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68610)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68612 0))(
  ( (array!68613 (arr!32998 (Array (_ BitVec 32) (_ BitVec 64))) (size!33535 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68612)

(assert (=> b!1071682 (= res!714999 (and (= (size!33534 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33535 _keys!1163) (size!33534 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071683 () Bool)

(declare-fun e!612037 () Bool)

(assert (=> b!1071683 (= e!612040 (not e!612037))))

(declare-fun res!714997 () Bool)

(assert (=> b!1071683 (=> res!714997 e!612037)))

(assert (=> b!1071683 (= res!714997 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16574 0))(
  ( (tuple2!16575 (_1!8297 (_ BitVec 64)) (_2!8297 V!39589)) )
))
(declare-datatypes ((List!23156 0))(
  ( (Nil!23153) (Cons!23152 (h!24361 tuple2!16574) (t!32496 List!23156)) )
))
(declare-datatypes ((ListLongMap!14555 0))(
  ( (ListLongMap!14556 (toList!7293 List!23156)) )
))
(declare-fun lt!474463 () ListLongMap!14555)

(declare-fun lt!474467 () ListLongMap!14555)

(assert (=> b!1071683 (= lt!474463 lt!474467)))

(declare-fun zeroValueBefore!47 () V!39589)

(declare-datatypes ((Unit!35247 0))(
  ( (Unit!35248) )
))
(declare-fun lt!474461 () Unit!35247)

(declare-fun minValue!907 () V!39589)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39589)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!864 (array!68612 array!68610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39589 V!39589 V!39589 V!39589 (_ BitVec 32) Int) Unit!35247)

(assert (=> b!1071683 (= lt!474461 (lemmaNoChangeToArrayThenSameMapNoExtras!864 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3825 (array!68612 array!68610 (_ BitVec 32) (_ BitVec 32) V!39589 V!39589 (_ BitVec 32) Int) ListLongMap!14555)

(assert (=> b!1071683 (= lt!474467 (getCurrentListMapNoExtraKeys!3825 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071683 (= lt!474463 (getCurrentListMapNoExtraKeys!3825 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071684 () Bool)

(declare-fun res!715002 () Bool)

(assert (=> b!1071684 (=> (not res!715002) (not e!612040))))

(declare-datatypes ((List!23157 0))(
  ( (Nil!23154) (Cons!23153 (h!24362 (_ BitVec 64)) (t!32497 List!23157)) )
))
(declare-fun arrayNoDuplicates!0 (array!68612 (_ BitVec 32) List!23157) Bool)

(assert (=> b!1071684 (= res!715002 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23154))))

(declare-fun mapIsEmpty!40468 () Bool)

(declare-fun mapRes!40468 () Bool)

(assert (=> mapIsEmpty!40468 mapRes!40468))

(declare-fun b!1071685 () Bool)

(declare-fun e!612042 () Bool)

(assert (=> b!1071685 (= e!612042 tp_is_empty!25841)))

(declare-fun mapNonEmpty!40468 () Bool)

(declare-fun tp!77553 () Bool)

(assert (=> mapNonEmpty!40468 (= mapRes!40468 (and tp!77553 e!612042))))

(declare-fun mapValue!40468 () ValueCell!12217)

(declare-fun mapKey!40468 () (_ BitVec 32))

(declare-fun mapRest!40468 () (Array (_ BitVec 32) ValueCell!12217))

(assert (=> mapNonEmpty!40468 (= (arr!32997 _values!955) (store mapRest!40468 mapKey!40468 mapValue!40468))))

(declare-fun b!1071686 () Bool)

(declare-fun e!612039 () Bool)

(assert (=> b!1071686 (= e!612039 (bvsle #b00000000000000000000000000000000 (size!33535 _keys!1163)))))

(declare-fun res!715001 () Bool)

(assert (=> start!94814 (=> (not res!715001) (not e!612040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94814 (= res!715001 (validMask!0 mask!1515))))

(assert (=> start!94814 e!612040))

(assert (=> start!94814 true))

(assert (=> start!94814 tp_is_empty!25841))

(declare-fun e!612036 () Bool)

(declare-fun array_inv!25368 (array!68610) Bool)

(assert (=> start!94814 (and (array_inv!25368 _values!955) e!612036)))

(assert (=> start!94814 tp!77552))

(declare-fun array_inv!25369 (array!68612) Bool)

(assert (=> start!94814 (array_inv!25369 _keys!1163)))

(declare-fun b!1071687 () Bool)

(assert (=> b!1071687 (= e!612036 (and e!612038 mapRes!40468))))

(declare-fun condMapEmpty!40468 () Bool)

(declare-fun mapDefault!40468 () ValueCell!12217)

