; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131818 () Bool)

(assert start!131818)

(declare-fun b!1542902 () Bool)

(declare-fun e!858577 () Bool)

(assert (=> b!1542902 (= e!858577 false)))

(declare-fun lt!665837 () Bool)

(declare-datatypes ((array!102737 0))(
  ( (array!102738 (arr!49566 (Array (_ BitVec 32) (_ BitVec 64))) (size!50117 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102737)

(declare-datatypes ((List!36051 0))(
  ( (Nil!36048) (Cons!36047 (h!37493 (_ BitVec 64)) (t!50752 List!36051)) )
))
(declare-fun arrayNoDuplicates!0 (array!102737 (_ BitVec 32) List!36051) Bool)

(assert (=> b!1542902 (= lt!665837 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36048))))

(declare-fun b!1542903 () Bool)

(declare-fun e!858573 () Bool)

(declare-fun tp_is_empty!37775 () Bool)

(assert (=> b!1542903 (= e!858573 tp_is_empty!37775)))

(declare-fun res!1058800 () Bool)

(assert (=> start!131818 (=> (not res!1058800) (not e!858577))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131818 (= res!1058800 (validMask!0 mask!926))))

(assert (=> start!131818 e!858577))

(assert (=> start!131818 true))

(declare-datatypes ((V!58809 0))(
  ( (V!58810 (val!18965 Int)) )
))
(declare-datatypes ((ValueCell!17977 0))(
  ( (ValueCellFull!17977 (v!21763 V!58809)) (EmptyCell!17977) )
))
(declare-datatypes ((array!102739 0))(
  ( (array!102740 (arr!49567 (Array (_ BitVec 32) ValueCell!17977)) (size!50118 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102739)

(declare-fun e!858576 () Bool)

(declare-fun array_inv!38485 (array!102739) Bool)

(assert (=> start!131818 (and (array_inv!38485 _values!470) e!858576)))

(declare-fun array_inv!38486 (array!102737) Bool)

(assert (=> start!131818 (array_inv!38486 _keys!618)))

(declare-fun b!1542904 () Bool)

(declare-fun e!858574 () Bool)

(assert (=> b!1542904 (= e!858574 tp_is_empty!37775)))

(declare-fun b!1542905 () Bool)

(declare-fun res!1058801 () Bool)

(assert (=> b!1542905 (=> (not res!1058801) (not e!858577))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542905 (= res!1058801 (and (= (size!50118 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50117 _keys!618) (size!50118 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542906 () Bool)

(declare-fun mapRes!58366 () Bool)

(assert (=> b!1542906 (= e!858576 (and e!858574 mapRes!58366))))

(declare-fun condMapEmpty!58366 () Bool)

(declare-fun mapDefault!58366 () ValueCell!17977)

