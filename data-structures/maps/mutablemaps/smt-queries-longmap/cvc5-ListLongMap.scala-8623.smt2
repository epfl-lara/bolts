; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105062 () Bool)

(assert start!105062)

(declare-fun b_free!26773 () Bool)

(declare-fun b_next!26773 () Bool)

(assert (=> start!105062 (= b_free!26773 (not b_next!26773))))

(declare-fun tp!93819 () Bool)

(declare-fun b_and!44579 () Bool)

(assert (=> start!105062 (= tp!93819 b_and!44579)))

(declare-fun mapIsEmpty!49282 () Bool)

(declare-fun mapRes!49282 () Bool)

(assert (=> mapIsEmpty!49282 mapRes!49282))

(declare-fun mapNonEmpty!49282 () Bool)

(declare-fun tp!93818 () Bool)

(declare-fun e!710817 () Bool)

(assert (=> mapNonEmpty!49282 (= mapRes!49282 (and tp!93818 e!710817))))

(declare-datatypes ((V!47599 0))(
  ( (V!47600 (val!15900 Int)) )
))
(declare-datatypes ((ValueCell!15074 0))(
  ( (ValueCellFull!15074 (v!18598 V!47599)) (EmptyCell!15074) )
))
(declare-datatypes ((array!80995 0))(
  ( (array!80996 (arr!39057 (Array (_ BitVec 32) ValueCell!15074)) (size!39594 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80995)

(declare-fun mapRest!49282 () (Array (_ BitVec 32) ValueCell!15074))

(declare-fun mapKey!49282 () (_ BitVec 32))

(declare-fun mapValue!49282 () ValueCell!15074)

(assert (=> mapNonEmpty!49282 (= (arr!39057 _values!914) (store mapRest!49282 mapKey!49282 mapValue!49282))))

(declare-fun b!1251640 () Bool)

(declare-fun e!710818 () Bool)

(declare-fun e!710819 () Bool)

(assert (=> b!1251640 (= e!710818 (and e!710819 mapRes!49282))))

(declare-fun condMapEmpty!49282 () Bool)

(declare-fun mapDefault!49282 () ValueCell!15074)

