; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94972 () Bool)

(assert start!94972)

(declare-fun b_free!22141 () Bool)

(declare-fun b_next!22141 () Bool)

(assert (=> start!94972 (= b_free!22141 (not b_next!22141))))

(declare-fun tp!77888 () Bool)

(declare-fun b_and!35013 () Bool)

(assert (=> start!94972 (= tp!77888 b_and!35013)))

(declare-fun b!1073376 () Bool)

(declare-fun e!613263 () Bool)

(assert (=> b!1073376 (= e!613263 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39737 0))(
  ( (V!39738 (val!13026 Int)) )
))
(declare-datatypes ((ValueCell!12272 0))(
  ( (ValueCellFull!12272 (v!15645 V!39737)) (EmptyCell!12272) )
))
(declare-datatypes ((array!68828 0))(
  ( (array!68829 (arr!33104 (Array (_ BitVec 32) ValueCell!12272)) (size!33641 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68828)

(declare-fun minValue!907 () V!39737)

(declare-datatypes ((array!68830 0))(
  ( (array!68831 (arr!33105 (Array (_ BitVec 32) (_ BitVec 64))) (size!33642 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68830)

(declare-datatypes ((tuple2!16656 0))(
  ( (tuple2!16657 (_1!8338 (_ BitVec 64)) (_2!8338 V!39737)) )
))
(declare-datatypes ((List!23234 0))(
  ( (Nil!23231) (Cons!23230 (h!24439 tuple2!16656) (t!32578 List!23234)) )
))
(declare-datatypes ((ListLongMap!14637 0))(
  ( (ListLongMap!14638 (toList!7334 List!23234)) )
))
(declare-fun lt!476021 () ListLongMap!14637)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39737)

(declare-fun getCurrentListMapNoExtraKeys!3864 (array!68830 array!68828 (_ BitVec 32) (_ BitVec 32) V!39737 V!39737 (_ BitVec 32) Int) ListLongMap!14637)

(assert (=> b!1073376 (= lt!476021 (getCurrentListMapNoExtraKeys!3864 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39737)

(declare-fun lt!476020 () ListLongMap!14637)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073376 (= lt!476020 (getCurrentListMapNoExtraKeys!3864 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073377 () Bool)

(declare-fun res!715993 () Bool)

(assert (=> b!1073377 (=> (not res!715993) (not e!613263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68830 (_ BitVec 32)) Bool)

(assert (=> b!1073377 (= res!715993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073378 () Bool)

(declare-fun res!715992 () Bool)

(assert (=> b!1073378 (=> (not res!715992) (not e!613263))))

(assert (=> b!1073378 (= res!715992 (and (= (size!33641 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33642 _keys!1163) (size!33641 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40639 () Bool)

(declare-fun mapRes!40639 () Bool)

(declare-fun tp!77889 () Bool)

(declare-fun e!613267 () Bool)

(assert (=> mapNonEmpty!40639 (= mapRes!40639 (and tp!77889 e!613267))))

(declare-fun mapRest!40639 () (Array (_ BitVec 32) ValueCell!12272))

(declare-fun mapValue!40639 () ValueCell!12272)

(declare-fun mapKey!40639 () (_ BitVec 32))

(assert (=> mapNonEmpty!40639 (= (arr!33104 _values!955) (store mapRest!40639 mapKey!40639 mapValue!40639))))

(declare-fun b!1073379 () Bool)

(declare-fun e!613266 () Bool)

(declare-fun tp_is_empty!25951 () Bool)

(assert (=> b!1073379 (= e!613266 tp_is_empty!25951)))

(declare-fun b!1073380 () Bool)

(declare-fun e!613264 () Bool)

(assert (=> b!1073380 (= e!613264 (and e!613266 mapRes!40639))))

(declare-fun condMapEmpty!40639 () Bool)

(declare-fun mapDefault!40639 () ValueCell!12272)

