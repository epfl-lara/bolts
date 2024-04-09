; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93868 () Bool)

(assert start!93868)

(declare-fun b_free!21305 () Bool)

(declare-fun b_next!21305 () Bool)

(assert (=> start!93868 (= b_free!21305 (not b_next!21305))))

(declare-fun tp!75339 () Bool)

(declare-fun b_and!34037 () Bool)

(assert (=> start!93868 (= tp!75339 b_and!34037)))

(declare-fun mapNonEmpty!39343 () Bool)

(declare-fun mapRes!39343 () Bool)

(declare-fun tp!75338 () Bool)

(declare-fun e!604336 () Bool)

(assert (=> mapNonEmpty!39343 (= mapRes!39343 (and tp!75338 e!604336))))

(declare-datatypes ((V!38621 0))(
  ( (V!38622 (val!12608 Int)) )
))
(declare-datatypes ((ValueCell!11854 0))(
  ( (ValueCellFull!11854 (v!15219 V!38621)) (EmptyCell!11854) )
))
(declare-fun mapValue!39343 () ValueCell!11854)

(declare-fun mapRest!39343 () (Array (_ BitVec 32) ValueCell!11854))

(declare-datatypes ((array!67216 0))(
  ( (array!67217 (arr!32312 (Array (_ BitVec 32) ValueCell!11854)) (size!32849 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67216)

(declare-fun mapKey!39343 () (_ BitVec 32))

(assert (=> mapNonEmpty!39343 (= (arr!32312 _values!955) (store mapRest!39343 mapKey!39343 mapValue!39343))))

(declare-fun res!708781 () Bool)

(declare-fun e!604335 () Bool)

(assert (=> start!93868 (=> (not res!708781) (not e!604335))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93868 (= res!708781 (validMask!0 mask!1515))))

(assert (=> start!93868 e!604335))

(assert (=> start!93868 true))

(declare-fun tp_is_empty!25115 () Bool)

(assert (=> start!93868 tp_is_empty!25115))

(declare-fun e!604333 () Bool)

(declare-fun array_inv!24880 (array!67216) Bool)

(assert (=> start!93868 (and (array_inv!24880 _values!955) e!604333)))

(assert (=> start!93868 tp!75339))

(declare-datatypes ((array!67218 0))(
  ( (array!67219 (arr!32313 (Array (_ BitVec 32) (_ BitVec 64))) (size!32850 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67218)

(declare-fun array_inv!24881 (array!67218) Bool)

(assert (=> start!93868 (array_inv!24881 _keys!1163)))

(declare-fun mapIsEmpty!39343 () Bool)

(assert (=> mapIsEmpty!39343 mapRes!39343))

(declare-fun b!1061214 () Bool)

(declare-fun e!604334 () Bool)

(assert (=> b!1061214 (= e!604334 tp_is_empty!25115)))

(declare-fun b!1061215 () Bool)

(declare-fun res!708783 () Bool)

(assert (=> b!1061215 (=> (not res!708783) (not e!604335))))

(declare-datatypes ((List!22643 0))(
  ( (Nil!22640) (Cons!22639 (h!23848 (_ BitVec 64)) (t!31959 List!22643)) )
))
(declare-fun arrayNoDuplicates!0 (array!67218 (_ BitVec 32) List!22643) Bool)

(assert (=> b!1061215 (= res!708783 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22640))))

(declare-fun b!1061216 () Bool)

(assert (=> b!1061216 (= e!604335 (not true))))

(declare-datatypes ((tuple2!16030 0))(
  ( (tuple2!16031 (_1!8025 (_ BitVec 64)) (_2!8025 V!38621)) )
))
(declare-datatypes ((List!22644 0))(
  ( (Nil!22641) (Cons!22640 (h!23849 tuple2!16030) (t!31960 List!22644)) )
))
(declare-datatypes ((ListLongMap!14011 0))(
  ( (ListLongMap!14012 (toList!7021 List!22644)) )
))
(declare-fun lt!467500 () ListLongMap!14011)

(declare-fun lt!467499 () ListLongMap!14011)

(assert (=> b!1061216 (= lt!467500 lt!467499)))

(declare-fun zeroValueBefore!47 () V!38621)

(declare-datatypes ((Unit!34717 0))(
  ( (Unit!34718) )
))
(declare-fun lt!467501 () Unit!34717)

(declare-fun minValue!907 () V!38621)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38621)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!624 (array!67218 array!67216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38621 V!38621 V!38621 V!38621 (_ BitVec 32) Int) Unit!34717)

(assert (=> b!1061216 (= lt!467501 (lemmaNoChangeToArrayThenSameMapNoExtras!624 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3585 (array!67218 array!67216 (_ BitVec 32) (_ BitVec 32) V!38621 V!38621 (_ BitVec 32) Int) ListLongMap!14011)

(assert (=> b!1061216 (= lt!467499 (getCurrentListMapNoExtraKeys!3585 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061216 (= lt!467500 (getCurrentListMapNoExtraKeys!3585 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061217 () Bool)

(assert (=> b!1061217 (= e!604336 tp_is_empty!25115)))

(declare-fun b!1061218 () Bool)

(declare-fun res!708782 () Bool)

(assert (=> b!1061218 (=> (not res!708782) (not e!604335))))

(assert (=> b!1061218 (= res!708782 (and (= (size!32849 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32850 _keys!1163) (size!32849 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061219 () Bool)

(assert (=> b!1061219 (= e!604333 (and e!604334 mapRes!39343))))

(declare-fun condMapEmpty!39343 () Bool)

(declare-fun mapDefault!39343 () ValueCell!11854)

