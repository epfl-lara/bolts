; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107238 () Bool)

(assert start!107238)

(declare-fun b!1270743 () Bool)

(declare-fun e!724490 () Bool)

(declare-fun tp_is_empty!32891 () Bool)

(assert (=> b!1270743 (= e!724490 tp_is_empty!32891)))

(declare-fun b!1270744 () Bool)

(declare-fun res!845635 () Bool)

(declare-fun e!724489 () Bool)

(assert (=> b!1270744 (=> (not res!845635) (not e!724489))))

(declare-datatypes ((V!49047 0))(
  ( (V!49048 (val!16520 Int)) )
))
(declare-datatypes ((ValueCell!15592 0))(
  ( (ValueCellFull!15592 (v!19155 V!49047)) (EmptyCell!15592) )
))
(declare-datatypes ((array!83003 0))(
  ( (array!83004 (arr!40034 (Array (_ BitVec 32) ValueCell!15592)) (size!40571 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83003)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83005 0))(
  ( (array!83006 (arr!40035 (Array (_ BitVec 32) (_ BitVec 64))) (size!40572 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83005)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270744 (= res!845635 (and (= (size!40571 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40572 _keys!1364) (size!40571 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270745 () Bool)

(assert (=> b!1270745 (= e!724489 false)))

(declare-fun lt!574709 () Bool)

(declare-datatypes ((List!28665 0))(
  ( (Nil!28662) (Cons!28661 (h!29870 (_ BitVec 64)) (t!42201 List!28665)) )
))
(declare-fun arrayNoDuplicates!0 (array!83005 (_ BitVec 32) List!28665) Bool)

(assert (=> b!1270745 (= lt!574709 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28662))))

(declare-fun b!1270747 () Bool)

(declare-fun e!724492 () Bool)

(declare-fun mapRes!50917 () Bool)

(assert (=> b!1270747 (= e!724492 (and e!724490 mapRes!50917))))

(declare-fun condMapEmpty!50917 () Bool)

(declare-fun mapDefault!50917 () ValueCell!15592)

