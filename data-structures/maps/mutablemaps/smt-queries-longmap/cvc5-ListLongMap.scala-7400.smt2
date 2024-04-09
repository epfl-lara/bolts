; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94228 () Bool)

(assert start!94228)

(declare-fun b_free!21577 () Bool)

(declare-fun b_next!21577 () Bool)

(assert (=> start!94228 (= b_free!21577 (not b_next!21577))))

(declare-fun tp!76169 () Bool)

(declare-fun b_and!34355 () Bool)

(assert (=> start!94228 (= tp!76169 b_and!34355)))

(declare-fun mapIsEmpty!39766 () Bool)

(declare-fun mapRes!39766 () Bool)

(assert (=> mapIsEmpty!39766 mapRes!39766))

(declare-fun b!1065120 () Bool)

(declare-fun e!607200 () Bool)

(declare-fun tp_is_empty!25387 () Bool)

(assert (=> b!1065120 (= e!607200 tp_is_empty!25387)))

(declare-fun b!1065121 () Bool)

(declare-fun res!711072 () Bool)

(declare-fun e!607201 () Bool)

(assert (=> b!1065121 (=> (not res!711072) (not e!607201))))

(declare-datatypes ((array!67734 0))(
  ( (array!67735 (arr!32566 (Array (_ BitVec 32) (_ BitVec 64))) (size!33103 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67734)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67734 (_ BitVec 32)) Bool)

(assert (=> b!1065121 (= res!711072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065122 () Bool)

(declare-fun e!607198 () Bool)

(declare-fun e!607196 () Bool)

(assert (=> b!1065122 (= e!607198 (and e!607196 mapRes!39766))))

(declare-fun condMapEmpty!39766 () Bool)

(declare-datatypes ((V!38985 0))(
  ( (V!38986 (val!12744 Int)) )
))
(declare-datatypes ((ValueCell!11990 0))(
  ( (ValueCellFull!11990 (v!15357 V!38985)) (EmptyCell!11990) )
))
(declare-datatypes ((array!67736 0))(
  ( (array!67737 (arr!32567 (Array (_ BitVec 32) ValueCell!11990)) (size!33104 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67736)

(declare-fun mapDefault!39766 () ValueCell!11990)

