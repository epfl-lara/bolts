; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94238 () Bool)

(assert start!94238)

(declare-fun b_free!21587 () Bool)

(declare-fun b_next!21587 () Bool)

(assert (=> start!94238 (= b_free!21587 (not b_next!21587))))

(declare-fun tp!76200 () Bool)

(declare-fun b_and!34365 () Bool)

(assert (=> start!94238 (= tp!76200 b_and!34365)))

(declare-fun b!1065247 () Bool)

(declare-fun e!607292 () Bool)

(declare-fun e!607294 () Bool)

(assert (=> b!1065247 (= e!607292 (not e!607294))))

(declare-fun res!711154 () Bool)

(assert (=> b!1065247 (=> res!711154 e!607294)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065247 (= res!711154 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!38997 0))(
  ( (V!38998 (val!12749 Int)) )
))
(declare-datatypes ((tuple2!16236 0))(
  ( (tuple2!16237 (_1!8128 (_ BitVec 64)) (_2!8128 V!38997)) )
))
(declare-datatypes ((List!22836 0))(
  ( (Nil!22833) (Cons!22832 (h!24041 tuple2!16236) (t!32162 List!22836)) )
))
(declare-datatypes ((ListLongMap!14217 0))(
  ( (ListLongMap!14218 (toList!7124 List!22836)) )
))
(declare-fun lt!469686 () ListLongMap!14217)

(declare-fun lt!469690 () ListLongMap!14217)

(assert (=> b!1065247 (= lt!469686 lt!469690)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38997)

(declare-datatypes ((ValueCell!11995 0))(
  ( (ValueCellFull!11995 (v!15362 V!38997)) (EmptyCell!11995) )
))
(declare-datatypes ((array!67754 0))(
  ( (array!67755 (arr!32576 (Array (_ BitVec 32) ValueCell!11995)) (size!33113 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67754)

(declare-fun minValue!907 () V!38997)

(declare-datatypes ((Unit!34910 0))(
  ( (Unit!34911) )
))
(declare-fun lt!469685 () Unit!34910)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38997)

(declare-datatypes ((array!67756 0))(
  ( (array!67757 (arr!32577 (Array (_ BitVec 32) (_ BitVec 64))) (size!33114 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67756)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!714 (array!67756 array!67754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38997 V!38997 V!38997 V!38997 (_ BitVec 32) Int) Unit!34910)

(assert (=> b!1065247 (= lt!469685 (lemmaNoChangeToArrayThenSameMapNoExtras!714 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3675 (array!67756 array!67754 (_ BitVec 32) (_ BitVec 32) V!38997 V!38997 (_ BitVec 32) Int) ListLongMap!14217)

(assert (=> b!1065247 (= lt!469690 (getCurrentListMapNoExtraKeys!3675 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065247 (= lt!469686 (getCurrentListMapNoExtraKeys!3675 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065248 () Bool)

(declare-fun e!607297 () Bool)

(declare-fun e!607296 () Bool)

(declare-fun mapRes!39781 () Bool)

(assert (=> b!1065248 (= e!607297 (and e!607296 mapRes!39781))))

(declare-fun condMapEmpty!39781 () Bool)

(declare-fun mapDefault!39781 () ValueCell!11995)

