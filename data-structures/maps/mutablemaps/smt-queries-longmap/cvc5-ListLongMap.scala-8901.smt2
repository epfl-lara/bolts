; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108082 () Bool)

(assert start!108082)

(declare-fun b!1276012 () Bool)

(declare-fun res!848123 () Bool)

(declare-fun e!728620 () Bool)

(assert (=> b!1276012 (=> (not res!848123) (not e!728620))))

(declare-datatypes ((array!83687 0))(
  ( (array!83688 (arr!40351 (Array (_ BitVec 32) (_ BitVec 64))) (size!40902 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83687)

(declare-datatypes ((List!28795 0))(
  ( (Nil!28792) (Cons!28791 (h!30000 (_ BitVec 64)) (t!42338 List!28795)) )
))
(declare-fun arrayNoDuplicates!0 (array!83687 (_ BitVec 32) List!28795) Bool)

(assert (=> b!1276012 (= res!848123 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28792))))

(declare-fun res!848124 () Bool)

(assert (=> start!108082 (=> (not res!848124) (not e!728620))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108082 (= res!848124 (validMask!0 mask!1805))))

(assert (=> start!108082 e!728620))

(assert (=> start!108082 true))

(declare-datatypes ((V!49529 0))(
  ( (V!49530 (val!16734 Int)) )
))
(declare-datatypes ((ValueCell!15761 0))(
  ( (ValueCellFull!15761 (v!19329 V!49529)) (EmptyCell!15761) )
))
(declare-datatypes ((array!83689 0))(
  ( (array!83690 (arr!40352 (Array (_ BitVec 32) ValueCell!15761)) (size!40903 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83689)

(declare-fun e!728623 () Bool)

(declare-fun array_inv!30625 (array!83689) Bool)

(assert (=> start!108082 (and (array_inv!30625 _values!1187) e!728623)))

(declare-fun array_inv!30626 (array!83687) Bool)

(assert (=> start!108082 (array_inv!30626 _keys!1427)))

(declare-fun b!1276013 () Bool)

(declare-fun e!728621 () Bool)

(declare-fun tp_is_empty!33319 () Bool)

(assert (=> b!1276013 (= e!728621 tp_is_empty!33319)))

(declare-fun b!1276014 () Bool)

(declare-fun e!728624 () Bool)

(assert (=> b!1276014 (= e!728624 tp_is_empty!33319)))

(declare-fun b!1276015 () Bool)

(declare-fun mapRes!51506 () Bool)

(assert (=> b!1276015 (= e!728623 (and e!728621 mapRes!51506))))

(declare-fun condMapEmpty!51506 () Bool)

(declare-fun mapDefault!51506 () ValueCell!15761)

