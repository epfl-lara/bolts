; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107282 () Bool)

(assert start!107282)

(declare-fun mapIsEmpty!50983 () Bool)

(declare-fun mapRes!50983 () Bool)

(assert (=> mapIsEmpty!50983 mapRes!50983))

(declare-fun b!1271139 () Bool)

(declare-fun res!845832 () Bool)

(declare-fun e!724821 () Bool)

(assert (=> b!1271139 (=> (not res!845832) (not e!724821))))

(declare-datatypes ((V!49107 0))(
  ( (V!49108 (val!16542 Int)) )
))
(declare-datatypes ((ValueCell!15614 0))(
  ( (ValueCellFull!15614 (v!19177 V!49107)) (EmptyCell!15614) )
))
(declare-datatypes ((array!83083 0))(
  ( (array!83084 (arr!40074 (Array (_ BitVec 32) ValueCell!15614)) (size!40611 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83083)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83085 0))(
  ( (array!83086 (arr!40075 (Array (_ BitVec 32) (_ BitVec 64))) (size!40612 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83085)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271139 (= res!845832 (and (= (size!40611 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40612 _keys!1364) (size!40611 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50983 () Bool)

(declare-fun tp!97325 () Bool)

(declare-fun e!724819 () Bool)

(assert (=> mapNonEmpty!50983 (= mapRes!50983 (and tp!97325 e!724819))))

(declare-fun mapValue!50983 () ValueCell!15614)

(declare-fun mapRest!50983 () (Array (_ BitVec 32) ValueCell!15614))

(declare-fun mapKey!50983 () (_ BitVec 32))

(assert (=> mapNonEmpty!50983 (= (arr!40074 _values!1134) (store mapRest!50983 mapKey!50983 mapValue!50983))))

(declare-fun b!1271141 () Bool)

(declare-fun e!724823 () Bool)

(declare-fun e!724822 () Bool)

(assert (=> b!1271141 (= e!724823 (and e!724822 mapRes!50983))))

(declare-fun condMapEmpty!50983 () Bool)

(declare-fun mapDefault!50983 () ValueCell!15614)

