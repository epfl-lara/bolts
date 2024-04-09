; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94168 () Bool)

(assert start!94168)

(declare-fun b_free!21533 () Bool)

(declare-fun b_next!21533 () Bool)

(assert (=> start!94168 (= b_free!21533 (not b_next!21533))))

(declare-fun tp!76034 () Bool)

(declare-fun b_and!34301 () Bool)

(assert (=> start!94168 (= tp!76034 b_and!34301)))

(declare-fun res!710683 () Bool)

(declare-fun e!606705 () Bool)

(assert (=> start!94168 (=> (not res!710683) (not e!606705))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94168 (= res!710683 (validMask!0 mask!1515))))

(assert (=> start!94168 e!606705))

(assert (=> start!94168 true))

(declare-fun tp_is_empty!25343 () Bool)

(assert (=> start!94168 tp_is_empty!25343))

(declare-datatypes ((V!38925 0))(
  ( (V!38926 (val!12722 Int)) )
))
(declare-datatypes ((ValueCell!11968 0))(
  ( (ValueCellFull!11968 (v!15335 V!38925)) (EmptyCell!11968) )
))
(declare-datatypes ((array!67650 0))(
  ( (array!67651 (arr!32525 (Array (_ BitVec 32) ValueCell!11968)) (size!33062 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67650)

(declare-fun e!606706 () Bool)

(declare-fun array_inv!25024 (array!67650) Bool)

(assert (=> start!94168 (and (array_inv!25024 _values!955) e!606706)))

(assert (=> start!94168 tp!76034))

(declare-datatypes ((array!67652 0))(
  ( (array!67653 (arr!32526 (Array (_ BitVec 32) (_ BitVec 64))) (size!33063 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67652)

(declare-fun array_inv!25025 (array!67652) Bool)

(assert (=> start!94168 (array_inv!25025 _keys!1163)))

(declare-fun b!1064442 () Bool)

(declare-fun res!710684 () Bool)

(assert (=> b!1064442 (=> (not res!710684) (not e!606705))))

(declare-datatypes ((List!22798 0))(
  ( (Nil!22795) (Cons!22794 (h!24003 (_ BitVec 64)) (t!32122 List!22798)) )
))
(declare-fun arrayNoDuplicates!0 (array!67652 (_ BitVec 32) List!22798) Bool)

(assert (=> b!1064442 (= res!710684 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22795))))

(declare-fun mapIsEmpty!39697 () Bool)

(declare-fun mapRes!39697 () Bool)

(assert (=> mapIsEmpty!39697 mapRes!39697))

(declare-fun mapNonEmpty!39697 () Bool)

(declare-fun tp!76035 () Bool)

(declare-fun e!606708 () Bool)

(assert (=> mapNonEmpty!39697 (= mapRes!39697 (and tp!76035 e!606708))))

(declare-fun mapRest!39697 () (Array (_ BitVec 32) ValueCell!11968))

(declare-fun mapKey!39697 () (_ BitVec 32))

(declare-fun mapValue!39697 () ValueCell!11968)

(assert (=> mapNonEmpty!39697 (= (arr!32525 _values!955) (store mapRest!39697 mapKey!39697 mapValue!39697))))

(declare-fun b!1064443 () Bool)

(declare-fun e!606704 () Bool)

(assert (=> b!1064443 (= e!606705 (not e!606704))))

(declare-fun res!710686 () Bool)

(assert (=> b!1064443 (=> res!710686 e!606704)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064443 (= res!710686 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16196 0))(
  ( (tuple2!16197 (_1!8108 (_ BitVec 64)) (_2!8108 V!38925)) )
))
(declare-datatypes ((List!22799 0))(
  ( (Nil!22796) (Cons!22795 (h!24004 tuple2!16196) (t!32123 List!22799)) )
))
(declare-datatypes ((ListLongMap!14177 0))(
  ( (ListLongMap!14178 (toList!7104 List!22799)) )
))
(declare-fun lt!469203 () ListLongMap!14177)

(declare-fun lt!469206 () ListLongMap!14177)

(assert (=> b!1064443 (= lt!469203 lt!469206)))

(declare-fun zeroValueBefore!47 () V!38925)

(declare-datatypes ((Unit!34875 0))(
  ( (Unit!34876) )
))
(declare-fun lt!469204 () Unit!34875)

(declare-fun minValue!907 () V!38925)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38925)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!697 (array!67652 array!67650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38925 V!38925 V!38925 V!38925 (_ BitVec 32) Int) Unit!34875)

(assert (=> b!1064443 (= lt!469204 (lemmaNoChangeToArrayThenSameMapNoExtras!697 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3658 (array!67652 array!67650 (_ BitVec 32) (_ BitVec 32) V!38925 V!38925 (_ BitVec 32) Int) ListLongMap!14177)

(assert (=> b!1064443 (= lt!469206 (getCurrentListMapNoExtraKeys!3658 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064443 (= lt!469203 (getCurrentListMapNoExtraKeys!3658 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064444 () Bool)

(assert (=> b!1064444 (= e!606708 tp_is_empty!25343)))

(declare-fun b!1064445 () Bool)

(declare-fun e!606703 () Bool)

(assert (=> b!1064445 (= e!606706 (and e!606703 mapRes!39697))))

(declare-fun condMapEmpty!39697 () Bool)

(declare-fun mapDefault!39697 () ValueCell!11968)

