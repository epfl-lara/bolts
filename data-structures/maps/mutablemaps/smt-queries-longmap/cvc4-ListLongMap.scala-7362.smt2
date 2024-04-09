; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93916 () Bool)

(assert start!93916)

(declare-fun b_free!21353 () Bool)

(declare-fun b_next!21353 () Bool)

(assert (=> start!93916 (= b_free!21353 (not b_next!21353))))

(declare-fun tp!75482 () Bool)

(declare-fun b_and!34085 () Bool)

(assert (=> start!93916 (= tp!75482 b_and!34085)))

(declare-fun b!1061718 () Bool)

(declare-fun e!604694 () Bool)

(declare-fun tp_is_empty!25163 () Bool)

(assert (=> b!1061718 (= e!604694 tp_is_empty!25163)))

(declare-fun b!1061719 () Bool)

(declare-fun e!604695 () Bool)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67306 0))(
  ( (array!67307 (arr!32357 (Array (_ BitVec 32) (_ BitVec 64))) (size!32894 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67306)

(assert (=> b!1061719 (= e!604695 (not (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!32894 _keys!1163)))))))

(declare-datatypes ((V!38685 0))(
  ( (V!38686 (val!12632 Int)) )
))
(declare-datatypes ((tuple2!16062 0))(
  ( (tuple2!16063 (_1!8041 (_ BitVec 64)) (_2!8041 V!38685)) )
))
(declare-datatypes ((List!22677 0))(
  ( (Nil!22674) (Cons!22673 (h!23882 tuple2!16062) (t!31993 List!22677)) )
))
(declare-datatypes ((ListLongMap!14043 0))(
  ( (ListLongMap!14044 (toList!7037 List!22677)) )
))
(declare-fun lt!467716 () ListLongMap!14043)

(declare-fun lt!467717 () ListLongMap!14043)

(assert (=> b!1061719 (= lt!467716 lt!467717)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38685)

(declare-datatypes ((Unit!34749 0))(
  ( (Unit!34750) )
))
(declare-fun lt!467715 () Unit!34749)

(declare-datatypes ((ValueCell!11878 0))(
  ( (ValueCellFull!11878 (v!15243 V!38685)) (EmptyCell!11878) )
))
(declare-datatypes ((array!67308 0))(
  ( (array!67309 (arr!32358 (Array (_ BitVec 32) ValueCell!11878)) (size!32895 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67308)

(declare-fun minValue!907 () V!38685)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38685)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!640 (array!67306 array!67308 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38685 V!38685 V!38685 V!38685 (_ BitVec 32) Int) Unit!34749)

(assert (=> b!1061719 (= lt!467715 (lemmaNoChangeToArrayThenSameMapNoExtras!640 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3601 (array!67306 array!67308 (_ BitVec 32) (_ BitVec 32) V!38685 V!38685 (_ BitVec 32) Int) ListLongMap!14043)

(assert (=> b!1061719 (= lt!467717 (getCurrentListMapNoExtraKeys!3601 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061719 (= lt!467716 (getCurrentListMapNoExtraKeys!3601 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061720 () Bool)

(declare-fun e!604696 () Bool)

(declare-fun mapRes!39415 () Bool)

(assert (=> b!1061720 (= e!604696 (and e!604694 mapRes!39415))))

(declare-fun condMapEmpty!39415 () Bool)

(declare-fun mapDefault!39415 () ValueCell!11878)

