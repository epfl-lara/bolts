; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107322 () Bool)

(assert start!107322)

(declare-fun b!1271499 () Bool)

(declare-fun res!846013 () Bool)

(declare-fun e!725119 () Bool)

(assert (=> b!1271499 (=> (not res!846013) (not e!725119))))

(declare-datatypes ((V!49159 0))(
  ( (V!49160 (val!16562 Int)) )
))
(declare-datatypes ((ValueCell!15634 0))(
  ( (ValueCellFull!15634 (v!19197 V!49159)) (EmptyCell!15634) )
))
(declare-datatypes ((array!83153 0))(
  ( (array!83154 (arr!40109 (Array (_ BitVec 32) ValueCell!15634)) (size!40646 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83153)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83155 0))(
  ( (array!83156 (arr!40110 (Array (_ BitVec 32) (_ BitVec 64))) (size!40647 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83155)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(assert (=> b!1271499 (= res!846013 (and (= (size!40646 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40647 _keys!1364) (size!40646 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!846014 () Bool)

(assert (=> start!107322 (=> (not res!846014) (not e!725119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107322 (= res!846014 (validMask!0 mask!1730))))

(assert (=> start!107322 e!725119))

(declare-fun e!725121 () Bool)

(declare-fun array_inv!30445 (array!83153) Bool)

(assert (=> start!107322 (and (array_inv!30445 _values!1134) e!725121)))

(assert (=> start!107322 true))

(declare-fun array_inv!30446 (array!83155) Bool)

(assert (=> start!107322 (array_inv!30446 _keys!1364)))

(declare-fun b!1271500 () Bool)

(declare-fun e!725123 () Bool)

(declare-fun mapRes!51043 () Bool)

(assert (=> b!1271500 (= e!725121 (and e!725123 mapRes!51043))))

(declare-fun condMapEmpty!51043 () Bool)

(declare-fun mapDefault!51043 () ValueCell!15634)

