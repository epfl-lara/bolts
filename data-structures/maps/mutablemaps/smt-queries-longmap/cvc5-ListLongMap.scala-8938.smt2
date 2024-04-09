; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108390 () Bool)

(assert start!108390)

(declare-fun b!1278759 () Bool)

(declare-fun e!730597 () Bool)

(assert (=> b!1278759 (= e!730597 false)))

(declare-fun lt!575878 () Bool)

(declare-datatypes ((array!84121 0))(
  ( (array!84122 (arr!40560 (Array (_ BitVec 32) (_ BitVec 64))) (size!41111 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84121)

(declare-datatypes ((List!28916 0))(
  ( (Nil!28913) (Cons!28912 (h!30121 (_ BitVec 64)) (t!42463 List!28916)) )
))
(declare-fun arrayNoDuplicates!0 (array!84121 (_ BitVec 32) List!28916) Bool)

(assert (=> b!1278759 (= lt!575878 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28913))))

(declare-fun b!1278760 () Bool)

(declare-fun e!730598 () Bool)

(declare-fun e!730596 () Bool)

(declare-fun mapRes!51863 () Bool)

(assert (=> b!1278760 (= e!730598 (and e!730596 mapRes!51863))))

(declare-fun condMapEmpty!51863 () Bool)

(declare-datatypes ((V!49825 0))(
  ( (V!49826 (val!16845 Int)) )
))
(declare-datatypes ((ValueCell!15872 0))(
  ( (ValueCellFull!15872 (v!19443 V!49825)) (EmptyCell!15872) )
))
(declare-datatypes ((array!84123 0))(
  ( (array!84124 (arr!40561 (Array (_ BitVec 32) ValueCell!15872)) (size!41112 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84123)

(declare-fun mapDefault!51863 () ValueCell!15872)

