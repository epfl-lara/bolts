; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94176 () Bool)

(assert start!94176)

(declare-fun b_free!21541 () Bool)

(declare-fun b_next!21541 () Bool)

(assert (=> start!94176 (= b_free!21541 (not b_next!21541))))

(declare-fun tp!76059 () Bool)

(declare-fun b_and!34309 () Bool)

(assert (=> start!94176 (= tp!76059 b_and!34309)))

(declare-fun res!710744 () Bool)

(declare-fun e!606779 () Bool)

(assert (=> start!94176 (=> (not res!710744) (not e!606779))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94176 (= res!710744 (validMask!0 mask!1515))))

(assert (=> start!94176 e!606779))

(assert (=> start!94176 true))

(declare-fun tp_is_empty!25351 () Bool)

(assert (=> start!94176 tp_is_empty!25351))

(declare-datatypes ((V!38937 0))(
  ( (V!38938 (val!12726 Int)) )
))
(declare-datatypes ((ValueCell!11972 0))(
  ( (ValueCellFull!11972 (v!15339 V!38937)) (EmptyCell!11972) )
))
(declare-datatypes ((array!67666 0))(
  ( (array!67667 (arr!32533 (Array (_ BitVec 32) ValueCell!11972)) (size!33070 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67666)

(declare-fun e!606777 () Bool)

(declare-fun array_inv!25028 (array!67666) Bool)

(assert (=> start!94176 (and (array_inv!25028 _values!955) e!606777)))

(assert (=> start!94176 tp!76059))

(declare-datatypes ((array!67668 0))(
  ( (array!67669 (arr!32534 (Array (_ BitVec 32) (_ BitVec 64))) (size!33071 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67668)

(declare-fun array_inv!25029 (array!67668) Bool)

(assert (=> start!94176 (array_inv!25029 _keys!1163)))

(declare-fun b!1064538 () Bool)

(declare-fun res!710745 () Bool)

(assert (=> b!1064538 (=> (not res!710745) (not e!606779))))

(declare-datatypes ((List!22804 0))(
  ( (Nil!22801) (Cons!22800 (h!24009 (_ BitVec 64)) (t!32128 List!22804)) )
))
(declare-fun arrayNoDuplicates!0 (array!67668 (_ BitVec 32) List!22804) Bool)

(assert (=> b!1064538 (= res!710745 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22801))))

(declare-fun b!1064539 () Bool)

(declare-fun e!606776 () Bool)

(declare-fun mapRes!39709 () Bool)

(assert (=> b!1064539 (= e!606777 (and e!606776 mapRes!39709))))

(declare-fun condMapEmpty!39709 () Bool)

(declare-fun mapDefault!39709 () ValueCell!11972)

