; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93870 () Bool)

(assert start!93870)

(declare-fun b_free!21307 () Bool)

(declare-fun b_next!21307 () Bool)

(assert (=> start!93870 (= b_free!21307 (not b_next!21307))))

(declare-fun tp!75344 () Bool)

(declare-fun b_and!34039 () Bool)

(assert (=> start!93870 (= tp!75344 b_and!34039)))

(declare-fun b!1061235 () Bool)

(declare-fun e!604350 () Bool)

(assert (=> b!1061235 (= e!604350 (not true))))

(declare-datatypes ((V!38625 0))(
  ( (V!38626 (val!12609 Int)) )
))
(declare-datatypes ((tuple2!16032 0))(
  ( (tuple2!16033 (_1!8026 (_ BitVec 64)) (_2!8026 V!38625)) )
))
(declare-datatypes ((List!22645 0))(
  ( (Nil!22642) (Cons!22641 (h!23850 tuple2!16032) (t!31961 List!22645)) )
))
(declare-datatypes ((ListLongMap!14013 0))(
  ( (ListLongMap!14014 (toList!7022 List!22645)) )
))
(declare-fun lt!467508 () ListLongMap!14013)

(declare-fun lt!467509 () ListLongMap!14013)

(assert (=> b!1061235 (= lt!467508 lt!467509)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38625)

(declare-datatypes ((ValueCell!11855 0))(
  ( (ValueCellFull!11855 (v!15220 V!38625)) (EmptyCell!11855) )
))
(declare-datatypes ((array!67220 0))(
  ( (array!67221 (arr!32314 (Array (_ BitVec 32) ValueCell!11855)) (size!32851 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67220)

(declare-fun minValue!907 () V!38625)

(declare-datatypes ((Unit!34719 0))(
  ( (Unit!34720) )
))
(declare-fun lt!467510 () Unit!34719)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38625)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67222 0))(
  ( (array!67223 (arr!32315 (Array (_ BitVec 32) (_ BitVec 64))) (size!32852 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67222)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!625 (array!67222 array!67220 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38625 V!38625 V!38625 V!38625 (_ BitVec 32) Int) Unit!34719)

(assert (=> b!1061235 (= lt!467510 (lemmaNoChangeToArrayThenSameMapNoExtras!625 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3586 (array!67222 array!67220 (_ BitVec 32) (_ BitVec 32) V!38625 V!38625 (_ BitVec 32) Int) ListLongMap!14013)

(assert (=> b!1061235 (= lt!467509 (getCurrentListMapNoExtraKeys!3586 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061235 (= lt!467508 (getCurrentListMapNoExtraKeys!3586 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061236 () Bool)

(declare-fun res!708795 () Bool)

(assert (=> b!1061236 (=> (not res!708795) (not e!604350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67222 (_ BitVec 32)) Bool)

(assert (=> b!1061236 (= res!708795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061237 () Bool)

(declare-fun e!604352 () Bool)

(declare-fun e!604348 () Bool)

(declare-fun mapRes!39346 () Bool)

(assert (=> b!1061237 (= e!604352 (and e!604348 mapRes!39346))))

(declare-fun condMapEmpty!39346 () Bool)

(declare-fun mapDefault!39346 () ValueCell!11855)

