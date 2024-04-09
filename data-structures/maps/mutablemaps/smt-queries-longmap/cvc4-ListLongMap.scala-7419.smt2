; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94390 () Bool)

(assert start!94390)

(declare-fun b_free!21695 () Bool)

(declare-fun b_next!21695 () Bool)

(assert (=> start!94390 (= b_free!21695 (not b_next!21695))))

(declare-fun tp!76529 () Bool)

(declare-fun b_and!34497 () Bool)

(assert (=> start!94390 (= tp!76529 b_and!34497)))

(declare-fun res!712123 () Bool)

(declare-fun e!608497 () Bool)

(assert (=> start!94390 (=> (not res!712123) (not e!608497))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94390 (= res!712123 (validMask!0 mask!1515))))

(assert (=> start!94390 e!608497))

(assert (=> start!94390 true))

(declare-fun tp_is_empty!25505 () Bool)

(assert (=> start!94390 tp_is_empty!25505))

(declare-datatypes ((V!39141 0))(
  ( (V!39142 (val!12803 Int)) )
))
(declare-datatypes ((ValueCell!12049 0))(
  ( (ValueCellFull!12049 (v!15418 V!39141)) (EmptyCell!12049) )
))
(declare-datatypes ((array!67970 0))(
  ( (array!67971 (arr!32682 (Array (_ BitVec 32) ValueCell!12049)) (size!33219 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67970)

(declare-fun e!608494 () Bool)

(declare-fun array_inv!25140 (array!67970) Bool)

(assert (=> start!94390 (and (array_inv!25140 _values!955) e!608494)))

(assert (=> start!94390 tp!76529))

(declare-datatypes ((array!67972 0))(
  ( (array!67973 (arr!32683 (Array (_ BitVec 32) (_ BitVec 64))) (size!33220 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67972)

(declare-fun array_inv!25141 (array!67972) Bool)

(assert (=> start!94390 (array_inv!25141 _keys!1163)))

(declare-fun b!1066903 () Bool)

(declare-fun res!712122 () Bool)

(assert (=> b!1066903 (=> (not res!712122) (not e!608497))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066903 (= res!712122 (and (= (size!33219 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33220 _keys!1163) (size!33219 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39949 () Bool)

(declare-fun mapRes!39949 () Bool)

(declare-fun tp!76530 () Bool)

(declare-fun e!608496 () Bool)

(assert (=> mapNonEmpty!39949 (= mapRes!39949 (and tp!76530 e!608496))))

(declare-fun mapKey!39949 () (_ BitVec 32))

(declare-fun mapValue!39949 () ValueCell!12049)

(declare-fun mapRest!39949 () (Array (_ BitVec 32) ValueCell!12049))

(assert (=> mapNonEmpty!39949 (= (arr!32682 _values!955) (store mapRest!39949 mapKey!39949 mapValue!39949))))

(declare-fun mapIsEmpty!39949 () Bool)

(assert (=> mapIsEmpty!39949 mapRes!39949))

(declare-fun b!1066904 () Bool)

(declare-fun res!712120 () Bool)

(assert (=> b!1066904 (=> (not res!712120) (not e!608497))))

(declare-datatypes ((List!22923 0))(
  ( (Nil!22920) (Cons!22919 (h!24128 (_ BitVec 64)) (t!32253 List!22923)) )
))
(declare-fun arrayNoDuplicates!0 (array!67972 (_ BitVec 32) List!22923) Bool)

(assert (=> b!1066904 (= res!712120 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22920))))

(declare-fun b!1066905 () Bool)

(assert (=> b!1066905 (= e!608496 tp_is_empty!25505)))

(declare-fun b!1066906 () Bool)

(declare-fun e!608498 () Bool)

(assert (=> b!1066906 (= e!608498 tp_is_empty!25505)))

(declare-fun b!1066907 () Bool)

(assert (=> b!1066907 (= e!608494 (and e!608498 mapRes!39949))))

(declare-fun condMapEmpty!39949 () Bool)

(declare-fun mapDefault!39949 () ValueCell!12049)

