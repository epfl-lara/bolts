; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95026 () Bool)

(assert start!95026)

(declare-fun b_free!22165 () Bool)

(declare-fun b_next!22165 () Bool)

(assert (=> start!95026 (= b_free!22165 (not b_next!22165))))

(declare-fun tp!77966 () Bool)

(declare-fun b_and!35055 () Bool)

(assert (=> start!95026 (= tp!77966 b_and!35055)))

(declare-fun mapIsEmpty!40681 () Bool)

(declare-fun mapRes!40681 () Bool)

(assert (=> mapIsEmpty!40681 mapRes!40681))

(declare-fun b!1073883 () Bool)

(declare-fun res!716244 () Bool)

(declare-fun e!613612 () Bool)

(assert (=> b!1073883 (=> (not res!716244) (not e!613612))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39769 0))(
  ( (V!39770 (val!13038 Int)) )
))
(declare-datatypes ((ValueCell!12284 0))(
  ( (ValueCellFull!12284 (v!15658 V!39769)) (EmptyCell!12284) )
))
(declare-datatypes ((array!68876 0))(
  ( (array!68877 (arr!33126 (Array (_ BitVec 32) ValueCell!12284)) (size!33663 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68876)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68878 0))(
  ( (array!68879 (arr!33127 (Array (_ BitVec 32) (_ BitVec 64))) (size!33664 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68878)

(assert (=> b!1073883 (= res!716244 (and (= (size!33663 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33664 _keys!1163) (size!33663 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!716245 () Bool)

(assert (=> start!95026 (=> (not res!716245) (not e!613612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95026 (= res!716245 (validMask!0 mask!1515))))

(assert (=> start!95026 e!613612))

(assert (=> start!95026 true))

(declare-fun tp_is_empty!25975 () Bool)

(assert (=> start!95026 tp_is_empty!25975))

(declare-fun e!613617 () Bool)

(declare-fun array_inv!25454 (array!68876) Bool)

(assert (=> start!95026 (and (array_inv!25454 _values!955) e!613617)))

(assert (=> start!95026 tp!77966))

(declare-fun array_inv!25455 (array!68878) Bool)

(assert (=> start!95026 (array_inv!25455 _keys!1163)))

(declare-fun b!1073884 () Bool)

(declare-fun e!613611 () Bool)

(assert (=> b!1073884 (= e!613611 tp_is_empty!25975)))

(declare-fun b!1073885 () Bool)

(assert (=> b!1073885 (= e!613617 (and e!613611 mapRes!40681))))

(declare-fun condMapEmpty!40681 () Bool)

(declare-fun mapDefault!40681 () ValueCell!12284)

