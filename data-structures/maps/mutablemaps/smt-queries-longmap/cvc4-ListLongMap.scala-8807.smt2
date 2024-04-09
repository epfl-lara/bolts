; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107106 () Bool)

(assert start!107106)

(declare-fun b_free!27575 () Bool)

(declare-fun b_next!27575 () Bool)

(assert (=> start!107106 (= b_free!27575 (not b_next!27575))))

(declare-fun tp!96952 () Bool)

(declare-fun b_and!45617 () Bool)

(assert (=> start!107106 (= tp!96952 b_and!45617)))

(declare-fun res!844825 () Bool)

(declare-fun e!723500 () Bool)

(assert (=> start!107106 (=> (not res!844825) (not e!723500))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107106 (= res!844825 (validMask!0 mask!1730))))

(assert (=> start!107106 e!723500))

(declare-datatypes ((V!48871 0))(
  ( (V!48872 (val!16454 Int)) )
))
(declare-datatypes ((ValueCell!15526 0))(
  ( (ValueCellFull!15526 (v!19089 V!48871)) (EmptyCell!15526) )
))
(declare-datatypes ((array!82753 0))(
  ( (array!82754 (arr!39909 (Array (_ BitVec 32) ValueCell!15526)) (size!40446 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82753)

(declare-fun e!723502 () Bool)

(declare-fun array_inv!30325 (array!82753) Bool)

(assert (=> start!107106 (and (array_inv!30325 _values!1134) e!723502)))

(assert (=> start!107106 true))

(declare-datatypes ((array!82755 0))(
  ( (array!82756 (arr!39910 (Array (_ BitVec 32) (_ BitVec 64))) (size!40447 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82755)

(declare-fun array_inv!30326 (array!82755) Bool)

(assert (=> start!107106 (array_inv!30326 _keys!1364)))

(declare-fun tp_is_empty!32759 () Bool)

(assert (=> start!107106 tp_is_empty!32759))

(assert (=> start!107106 tp!96952))

(declare-fun mapNonEmpty!50719 () Bool)

(declare-fun mapRes!50719 () Bool)

(declare-fun tp!96953 () Bool)

(declare-fun e!723501 () Bool)

(assert (=> mapNonEmpty!50719 (= mapRes!50719 (and tp!96953 e!723501))))

(declare-fun mapRest!50719 () (Array (_ BitVec 32) ValueCell!15526))

(declare-fun mapValue!50719 () ValueCell!15526)

(declare-fun mapKey!50719 () (_ BitVec 32))

(assert (=> mapNonEmpty!50719 (= (arr!39909 _values!1134) (store mapRest!50719 mapKey!50719 mapValue!50719))))

(declare-fun b!1269337 () Bool)

(declare-fun e!723499 () Bool)

(assert (=> b!1269337 (= e!723502 (and e!723499 mapRes!50719))))

(declare-fun condMapEmpty!50719 () Bool)

(declare-fun mapDefault!50719 () ValueCell!15526)

