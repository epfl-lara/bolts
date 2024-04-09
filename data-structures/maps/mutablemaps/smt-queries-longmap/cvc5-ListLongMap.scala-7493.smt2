; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94966 () Bool)

(assert start!94966)

(declare-fun b_free!22135 () Bool)

(declare-fun b_next!22135 () Bool)

(assert (=> start!94966 (= b_free!22135 (not b_next!22135))))

(declare-fun tp!77871 () Bool)

(declare-fun b_and!35007 () Bool)

(assert (=> start!94966 (= tp!77871 b_and!35007)))

(declare-fun b!1073313 () Bool)

(declare-fun e!613220 () Bool)

(declare-fun tp_is_empty!25945 () Bool)

(assert (=> b!1073313 (= e!613220 tp_is_empty!25945)))

(declare-fun b!1073314 () Bool)

(declare-fun res!715957 () Bool)

(declare-fun e!613221 () Bool)

(assert (=> b!1073314 (=> (not res!715957) (not e!613221))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39729 0))(
  ( (V!39730 (val!13023 Int)) )
))
(declare-datatypes ((ValueCell!12269 0))(
  ( (ValueCellFull!12269 (v!15642 V!39729)) (EmptyCell!12269) )
))
(declare-datatypes ((array!68816 0))(
  ( (array!68817 (arr!33098 (Array (_ BitVec 32) ValueCell!12269)) (size!33635 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68816)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68818 0))(
  ( (array!68819 (arr!33099 (Array (_ BitVec 32) (_ BitVec 64))) (size!33636 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68818)

(assert (=> b!1073314 (= res!715957 (and (= (size!33635 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33636 _keys!1163) (size!33635 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40630 () Bool)

(declare-fun mapRes!40630 () Bool)

(assert (=> mapIsEmpty!40630 mapRes!40630))

(declare-fun res!715959 () Bool)

(assert (=> start!94966 (=> (not res!715959) (not e!613221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94966 (= res!715959 (validMask!0 mask!1515))))

(assert (=> start!94966 e!613221))

(assert (=> start!94966 true))

(assert (=> start!94966 tp_is_empty!25945))

(declare-fun e!613218 () Bool)

(declare-fun array_inv!25438 (array!68816) Bool)

(assert (=> start!94966 (and (array_inv!25438 _values!955) e!613218)))

(assert (=> start!94966 tp!77871))

(declare-fun array_inv!25439 (array!68818) Bool)

(assert (=> start!94966 (array_inv!25439 _keys!1163)))

(declare-fun b!1073315 () Bool)

(assert (=> b!1073315 (= e!613218 (and e!613220 mapRes!40630))))

(declare-fun condMapEmpty!40630 () Bool)

(declare-fun mapDefault!40630 () ValueCell!12269)

