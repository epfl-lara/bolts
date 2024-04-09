; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94180 () Bool)

(assert start!94180)

(declare-fun b_free!21545 () Bool)

(declare-fun b_next!21545 () Bool)

(assert (=> start!94180 (= b_free!21545 (not b_next!21545))))

(declare-fun tp!76070 () Bool)

(declare-fun b_and!34313 () Bool)

(assert (=> start!94180 (= tp!76070 b_and!34313)))

(declare-fun mapIsEmpty!39715 () Bool)

(declare-fun mapRes!39715 () Bool)

(assert (=> mapIsEmpty!39715 mapRes!39715))

(declare-fun b!1064586 () Bool)

(declare-fun e!606814 () Bool)

(assert (=> b!1064586 (= e!606814 true)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38941 0))(
  ( (V!38942 (val!12728 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38941)

(declare-datatypes ((ValueCell!11974 0))(
  ( (ValueCellFull!11974 (v!15341 V!38941)) (EmptyCell!11974) )
))
(declare-datatypes ((array!67674 0))(
  ( (array!67675 (arr!32537 (Array (_ BitVec 32) ValueCell!11974)) (size!33074 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67674)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38941)

(declare-datatypes ((tuple2!16206 0))(
  ( (tuple2!16207 (_1!8113 (_ BitVec 64)) (_2!8113 V!38941)) )
))
(declare-datatypes ((List!22807 0))(
  ( (Nil!22804) (Cons!22803 (h!24012 tuple2!16206) (t!32131 List!22807)) )
))
(declare-datatypes ((ListLongMap!14187 0))(
  ( (ListLongMap!14188 (toList!7109 List!22807)) )
))
(declare-fun lt!469276 () ListLongMap!14187)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67676 0))(
  ( (array!67677 (arr!32538 (Array (_ BitVec 32) (_ BitVec 64))) (size!33075 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67676)

(declare-fun getCurrentListMap!4033 (array!67676 array!67674 (_ BitVec 32) (_ BitVec 32) V!38941 V!38941 (_ BitVec 32) Int) ListLongMap!14187)

(assert (=> b!1064586 (= lt!469276 (getCurrentListMap!4033 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064587 () Bool)

(declare-fun res!710772 () Bool)

(declare-fun e!606812 () Bool)

(assert (=> b!1064587 (=> (not res!710772) (not e!606812))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1064587 (= res!710772 (and (= (size!33074 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33075 _keys!1163) (size!33074 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064588 () Bool)

(declare-fun res!710775 () Bool)

(assert (=> b!1064588 (=> (not res!710775) (not e!606812))))

(declare-datatypes ((List!22808 0))(
  ( (Nil!22805) (Cons!22804 (h!24013 (_ BitVec 64)) (t!32132 List!22808)) )
))
(declare-fun arrayNoDuplicates!0 (array!67676 (_ BitVec 32) List!22808) Bool)

(assert (=> b!1064588 (= res!710775 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22805))))

(declare-fun b!1064589 () Bool)

(declare-fun e!606816 () Bool)

(declare-fun tp_is_empty!25355 () Bool)

(assert (=> b!1064589 (= e!606816 tp_is_empty!25355)))

(declare-fun b!1064590 () Bool)

(declare-fun e!606815 () Bool)

(assert (=> b!1064590 (= e!606815 (and e!606816 mapRes!39715))))

(declare-fun condMapEmpty!39715 () Bool)

(declare-fun mapDefault!39715 () ValueCell!11974)

