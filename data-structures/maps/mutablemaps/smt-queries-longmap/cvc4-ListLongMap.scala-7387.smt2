; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94124 () Bool)

(assert start!94124)

(declare-fun b_free!21503 () Bool)

(declare-fun b_next!21503 () Bool)

(assert (=> start!94124 (= b_free!21503 (not b_next!21503))))

(declare-fun tp!75941 () Bool)

(declare-fun b_and!34263 () Bool)

(assert (=> start!94124 (= tp!75941 b_and!34263)))

(declare-fun b!1064025 () Bool)

(declare-fun res!710456 () Bool)

(declare-fun e!606409 () Bool)

(assert (=> b!1064025 (=> (not res!710456) (not e!606409))))

(declare-datatypes ((array!67594 0))(
  ( (array!67595 (arr!32498 (Array (_ BitVec 32) (_ BitVec 64))) (size!33035 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67594)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67594 (_ BitVec 32)) Bool)

(assert (=> b!1064025 (= res!710456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064026 () Bool)

(declare-fun res!710455 () Bool)

(assert (=> b!1064026 (=> (not res!710455) (not e!606409))))

(declare-datatypes ((V!38885 0))(
  ( (V!38886 (val!12707 Int)) )
))
(declare-datatypes ((ValueCell!11953 0))(
  ( (ValueCellFull!11953 (v!15320 V!38885)) (EmptyCell!11953) )
))
(declare-datatypes ((array!67596 0))(
  ( (array!67597 (arr!32499 (Array (_ BitVec 32) ValueCell!11953)) (size!33036 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67596)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064026 (= res!710455 (and (= (size!33036 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33035 _keys!1163) (size!33036 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!710454 () Bool)

(assert (=> start!94124 (=> (not res!710454) (not e!606409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94124 (= res!710454 (validMask!0 mask!1515))))

(assert (=> start!94124 e!606409))

(assert (=> start!94124 true))

(declare-fun tp_is_empty!25313 () Bool)

(assert (=> start!94124 tp_is_empty!25313))

(declare-fun e!606407 () Bool)

(declare-fun array_inv!25002 (array!67596) Bool)

(assert (=> start!94124 (and (array_inv!25002 _values!955) e!606407)))

(assert (=> start!94124 tp!75941))

(declare-fun array_inv!25003 (array!67594) Bool)

(assert (=> start!94124 (array_inv!25003 _keys!1163)))

(declare-fun b!1064027 () Bool)

(assert (=> b!1064027 (= e!606409 (not true))))

(declare-datatypes ((tuple2!16178 0))(
  ( (tuple2!16179 (_1!8099 (_ BitVec 64)) (_2!8099 V!38885)) )
))
(declare-datatypes ((List!22780 0))(
  ( (Nil!22777) (Cons!22776 (h!23985 tuple2!16178) (t!32102 List!22780)) )
))
(declare-datatypes ((ListLongMap!14159 0))(
  ( (ListLongMap!14160 (toList!7095 List!22780)) )
))
(declare-fun lt!469013 () ListLongMap!14159)

(declare-fun lt!469012 () ListLongMap!14159)

(assert (=> b!1064027 (= lt!469013 lt!469012)))

(declare-fun zeroValueBefore!47 () V!38885)

(declare-datatypes ((Unit!34857 0))(
  ( (Unit!34858) )
))
(declare-fun lt!469011 () Unit!34857)

(declare-fun minValue!907 () V!38885)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38885)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!688 (array!67594 array!67596 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38885 V!38885 V!38885 V!38885 (_ BitVec 32) Int) Unit!34857)

(assert (=> b!1064027 (= lt!469011 (lemmaNoChangeToArrayThenSameMapNoExtras!688 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3649 (array!67594 array!67596 (_ BitVec 32) (_ BitVec 32) V!38885 V!38885 (_ BitVec 32) Int) ListLongMap!14159)

(assert (=> b!1064027 (= lt!469012 (getCurrentListMapNoExtraKeys!3649 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064027 (= lt!469013 (getCurrentListMapNoExtraKeys!3649 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064028 () Bool)

(declare-fun res!710457 () Bool)

(assert (=> b!1064028 (=> (not res!710457) (not e!606409))))

(declare-datatypes ((List!22781 0))(
  ( (Nil!22778) (Cons!22777 (h!23986 (_ BitVec 64)) (t!32103 List!22781)) )
))
(declare-fun arrayNoDuplicates!0 (array!67594 (_ BitVec 32) List!22781) Bool)

(assert (=> b!1064028 (= res!710457 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22778))))

(declare-fun b!1064029 () Bool)

(declare-fun e!606408 () Bool)

(assert (=> b!1064029 (= e!606408 tp_is_empty!25313)))

(declare-fun mapNonEmpty!39649 () Bool)

(declare-fun mapRes!39649 () Bool)

(declare-fun tp!75942 () Bool)

(assert (=> mapNonEmpty!39649 (= mapRes!39649 (and tp!75942 e!606408))))

(declare-fun mapRest!39649 () (Array (_ BitVec 32) ValueCell!11953))

(declare-fun mapKey!39649 () (_ BitVec 32))

(declare-fun mapValue!39649 () ValueCell!11953)

(assert (=> mapNonEmpty!39649 (= (arr!32499 _values!955) (store mapRest!39649 mapKey!39649 mapValue!39649))))

(declare-fun b!1064030 () Bool)

(declare-fun e!606410 () Bool)

(assert (=> b!1064030 (= e!606407 (and e!606410 mapRes!39649))))

(declare-fun condMapEmpty!39649 () Bool)

(declare-fun mapDefault!39649 () ValueCell!11953)

