; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94206 () Bool)

(assert start!94206)

(declare-fun b_free!21571 () Bool)

(declare-fun b_next!21571 () Bool)

(assert (=> start!94206 (= b_free!21571 (not b_next!21571))))

(declare-fun tp!76149 () Bool)

(declare-fun b_and!34339 () Bool)

(assert (=> start!94206 (= tp!76149 b_and!34339)))

(declare-fun b!1064898 () Bool)

(declare-fun e!607048 () Bool)

(declare-datatypes ((array!67722 0))(
  ( (array!67723 (arr!32561 (Array (_ BitVec 32) (_ BitVec 64))) (size!33098 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67722)

(assert (=> b!1064898 (= e!607048 (bvsle #b00000000000000000000000000000000 (size!33098 _keys!1163)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38977 0))(
  ( (V!38978 (val!12741 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38977)

(declare-datatypes ((tuple2!16226 0))(
  ( (tuple2!16227 (_1!8123 (_ BitVec 64)) (_2!8123 V!38977)) )
))
(declare-datatypes ((List!22826 0))(
  ( (Nil!22823) (Cons!22822 (h!24031 tuple2!16226) (t!32150 List!22826)) )
))
(declare-datatypes ((ListLongMap!14207 0))(
  ( (ListLongMap!14208 (toList!7119 List!22826)) )
))
(declare-fun lt!469431 () ListLongMap!14207)

(declare-datatypes ((ValueCell!11987 0))(
  ( (ValueCellFull!11987 (v!15354 V!38977)) (EmptyCell!11987) )
))
(declare-datatypes ((array!67724 0))(
  ( (array!67725 (arr!32562 (Array (_ BitVec 32) ValueCell!11987)) (size!33099 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67724)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38977)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4042 (array!67722 array!67724 (_ BitVec 32) (_ BitVec 32) V!38977 V!38977 (_ BitVec 32) Int) ListLongMap!14207)

(assert (=> b!1064898 (= lt!469431 (getCurrentListMap!4042 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!710969 () Bool)

(declare-fun e!607050 () Bool)

(assert (=> start!94206 (=> (not res!710969) (not e!607050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94206 (= res!710969 (validMask!0 mask!1515))))

(assert (=> start!94206 e!607050))

(assert (=> start!94206 true))

(declare-fun tp_is_empty!25381 () Bool)

(assert (=> start!94206 tp_is_empty!25381))

(declare-fun e!607047 () Bool)

(declare-fun array_inv!25050 (array!67724) Bool)

(assert (=> start!94206 (and (array_inv!25050 _values!955) e!607047)))

(assert (=> start!94206 tp!76149))

(declare-fun array_inv!25051 (array!67722) Bool)

(assert (=> start!94206 (array_inv!25051 _keys!1163)))

(declare-fun b!1064899 () Bool)

(declare-fun e!607045 () Bool)

(assert (=> b!1064899 (= e!607045 tp_is_empty!25381)))

(declare-fun b!1064900 () Bool)

(declare-fun e!607049 () Bool)

(assert (=> b!1064900 (= e!607049 tp_is_empty!25381)))

(declare-fun b!1064901 () Bool)

(declare-fun res!710967 () Bool)

(assert (=> b!1064901 (=> (not res!710967) (not e!607050))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1064901 (= res!710967 (and (= (size!33099 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33098 _keys!1163) (size!33099 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064902 () Bool)

(assert (=> b!1064902 (= e!607050 (not e!607048))))

(declare-fun res!710971 () Bool)

(assert (=> b!1064902 (=> res!710971 e!607048)))

(assert (=> b!1064902 (= res!710971 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!469434 () ListLongMap!14207)

(declare-fun lt!469432 () ListLongMap!14207)

(assert (=> b!1064902 (= lt!469434 lt!469432)))

(declare-datatypes ((Unit!34899 0))(
  ( (Unit!34900) )
))
(declare-fun lt!469433 () Unit!34899)

(declare-fun zeroValueAfter!47 () V!38977)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!709 (array!67722 array!67724 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38977 V!38977 V!38977 V!38977 (_ BitVec 32) Int) Unit!34899)

(assert (=> b!1064902 (= lt!469433 (lemmaNoChangeToArrayThenSameMapNoExtras!709 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3670 (array!67722 array!67724 (_ BitVec 32) (_ BitVec 32) V!38977 V!38977 (_ BitVec 32) Int) ListLongMap!14207)

(assert (=> b!1064902 (= lt!469432 (getCurrentListMapNoExtraKeys!3670 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064902 (= lt!469434 (getCurrentListMapNoExtraKeys!3670 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064903 () Bool)

(declare-fun mapRes!39754 () Bool)

(assert (=> b!1064903 (= e!607047 (and e!607049 mapRes!39754))))

(declare-fun condMapEmpty!39754 () Bool)

(declare-fun mapDefault!39754 () ValueCell!11987)

