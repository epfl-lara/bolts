; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94090 () Bool)

(assert start!94090)

(declare-fun b_free!21469 () Bool)

(declare-fun b_next!21469 () Bool)

(assert (=> start!94090 (= b_free!21469 (not b_next!21469))))

(declare-fun tp!75839 () Bool)

(declare-fun b_and!34229 () Bool)

(assert (=> start!94090 (= tp!75839 b_and!34229)))

(declare-fun b!1063668 () Bool)

(declare-fun e!606155 () Bool)

(assert (=> b!1063668 (= e!606155 (not true))))

(declare-datatypes ((V!38841 0))(
  ( (V!38842 (val!12690 Int)) )
))
(declare-datatypes ((tuple2!16158 0))(
  ( (tuple2!16159 (_1!8089 (_ BitVec 64)) (_2!8089 V!38841)) )
))
(declare-datatypes ((List!22762 0))(
  ( (Nil!22759) (Cons!22758 (h!23967 tuple2!16158) (t!32084 List!22762)) )
))
(declare-datatypes ((ListLongMap!14139 0))(
  ( (ListLongMap!14140 (toList!7085 List!22762)) )
))
(declare-fun lt!468860 () ListLongMap!14139)

(declare-fun lt!468859 () ListLongMap!14139)

(assert (=> b!1063668 (= lt!468860 lt!468859)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38841)

(declare-datatypes ((Unit!34837 0))(
  ( (Unit!34838) )
))
(declare-fun lt!468858 () Unit!34837)

(declare-datatypes ((ValueCell!11936 0))(
  ( (ValueCellFull!11936 (v!15303 V!38841)) (EmptyCell!11936) )
))
(declare-datatypes ((array!67532 0))(
  ( (array!67533 (arr!32467 (Array (_ BitVec 32) ValueCell!11936)) (size!33004 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67532)

(declare-fun minValue!907 () V!38841)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38841)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67534 0))(
  ( (array!67535 (arr!32468 (Array (_ BitVec 32) (_ BitVec 64))) (size!33005 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67534)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!678 (array!67534 array!67532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38841 V!38841 V!38841 V!38841 (_ BitVec 32) Int) Unit!34837)

(assert (=> b!1063668 (= lt!468858 (lemmaNoChangeToArrayThenSameMapNoExtras!678 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3639 (array!67534 array!67532 (_ BitVec 32) (_ BitVec 32) V!38841 V!38841 (_ BitVec 32) Int) ListLongMap!14139)

(assert (=> b!1063668 (= lt!468859 (getCurrentListMapNoExtraKeys!3639 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063668 (= lt!468860 (getCurrentListMapNoExtraKeys!3639 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063669 () Bool)

(declare-fun e!606153 () Bool)

(declare-fun tp_is_empty!25279 () Bool)

(assert (=> b!1063669 (= e!606153 tp_is_empty!25279)))

(declare-fun res!710251 () Bool)

(assert (=> start!94090 (=> (not res!710251) (not e!606155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94090 (= res!710251 (validMask!0 mask!1515))))

(assert (=> start!94090 e!606155))

(assert (=> start!94090 true))

(assert (=> start!94090 tp_is_empty!25279))

(declare-fun e!606151 () Bool)

(declare-fun array_inv!24984 (array!67532) Bool)

(assert (=> start!94090 (and (array_inv!24984 _values!955) e!606151)))

(assert (=> start!94090 tp!75839))

(declare-fun array_inv!24985 (array!67534) Bool)

(assert (=> start!94090 (array_inv!24985 _keys!1163)))

(declare-fun mapNonEmpty!39598 () Bool)

(declare-fun mapRes!39598 () Bool)

(declare-fun tp!75840 () Bool)

(assert (=> mapNonEmpty!39598 (= mapRes!39598 (and tp!75840 e!606153))))

(declare-fun mapValue!39598 () ValueCell!11936)

(declare-fun mapRest!39598 () (Array (_ BitVec 32) ValueCell!11936))

(declare-fun mapKey!39598 () (_ BitVec 32))

(assert (=> mapNonEmpty!39598 (= (arr!32467 _values!955) (store mapRest!39598 mapKey!39598 mapValue!39598))))

(declare-fun b!1063670 () Bool)

(declare-fun res!710252 () Bool)

(assert (=> b!1063670 (=> (not res!710252) (not e!606155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67534 (_ BitVec 32)) Bool)

(assert (=> b!1063670 (= res!710252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39598 () Bool)

(assert (=> mapIsEmpty!39598 mapRes!39598))

(declare-fun b!1063671 () Bool)

(declare-fun e!606154 () Bool)

(assert (=> b!1063671 (= e!606151 (and e!606154 mapRes!39598))))

(declare-fun condMapEmpty!39598 () Bool)

(declare-fun mapDefault!39598 () ValueCell!11936)

