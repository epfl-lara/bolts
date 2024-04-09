; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94946 () Bool)

(assert start!94946)

(declare-fun b_free!22115 () Bool)

(declare-fun b_next!22115 () Bool)

(assert (=> start!94946 (= b_free!22115 (not b_next!22115))))

(declare-fun tp!77811 () Bool)

(declare-fun b_and!34987 () Bool)

(assert (=> start!94946 (= tp!77811 b_and!34987)))

(declare-fun b!1073103 () Bool)

(declare-fun e!613070 () Bool)

(declare-fun tp_is_empty!25925 () Bool)

(assert (=> b!1073103 (= e!613070 tp_is_empty!25925)))

(declare-fun b!1073104 () Bool)

(declare-fun res!715839 () Bool)

(declare-fun e!613071 () Bool)

(assert (=> b!1073104 (=> (not res!715839) (not e!613071))))

(declare-datatypes ((array!68778 0))(
  ( (array!68779 (arr!33079 (Array (_ BitVec 32) (_ BitVec 64))) (size!33616 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68778)

(declare-datatypes ((List!23217 0))(
  ( (Nil!23214) (Cons!23213 (h!24422 (_ BitVec 64)) (t!32561 List!23217)) )
))
(declare-fun arrayNoDuplicates!0 (array!68778 (_ BitVec 32) List!23217) Bool)

(assert (=> b!1073104 (= res!715839 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23214))))

(declare-fun b!1073105 () Bool)

(declare-fun res!715836 () Bool)

(assert (=> b!1073105 (=> (not res!715836) (not e!613071))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39701 0))(
  ( (V!39702 (val!13013 Int)) )
))
(declare-datatypes ((ValueCell!12259 0))(
  ( (ValueCellFull!12259 (v!15632 V!39701)) (EmptyCell!12259) )
))
(declare-datatypes ((array!68780 0))(
  ( (array!68781 (arr!33080 (Array (_ BitVec 32) ValueCell!12259)) (size!33617 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68780)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073105 (= res!715836 (and (= (size!33617 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33616 _keys!1163) (size!33617 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!715838 () Bool)

(assert (=> start!94946 (=> (not res!715838) (not e!613071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94946 (= res!715838 (validMask!0 mask!1515))))

(assert (=> start!94946 e!613071))

(assert (=> start!94946 true))

(assert (=> start!94946 tp_is_empty!25925))

(declare-fun e!613069 () Bool)

(declare-fun array_inv!25426 (array!68780) Bool)

(assert (=> start!94946 (and (array_inv!25426 _values!955) e!613069)))

(assert (=> start!94946 tp!77811))

(declare-fun array_inv!25427 (array!68778) Bool)

(assert (=> start!94946 (array_inv!25427 _keys!1163)))

(declare-fun mapIsEmpty!40600 () Bool)

(declare-fun mapRes!40600 () Bool)

(assert (=> mapIsEmpty!40600 mapRes!40600))

(declare-fun b!1073106 () Bool)

(assert (=> b!1073106 (= e!613069 (and e!613070 mapRes!40600))))

(declare-fun condMapEmpty!40600 () Bool)

(declare-fun mapDefault!40600 () ValueCell!12259)

