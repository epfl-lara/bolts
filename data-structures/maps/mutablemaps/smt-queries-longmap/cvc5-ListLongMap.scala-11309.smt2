; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131790 () Bool)

(assert start!131790)

(declare-fun b!1542650 () Bool)

(declare-fun e!858363 () Bool)

(assert (=> b!1542650 (= e!858363 false)))

(declare-fun lt!665795 () Bool)

(declare-datatypes ((array!102687 0))(
  ( (array!102688 (arr!49541 (Array (_ BitVec 32) (_ BitVec 64))) (size!50092 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102687)

(declare-datatypes ((List!36040 0))(
  ( (Nil!36037) (Cons!36036 (h!37482 (_ BitVec 64)) (t!50741 List!36040)) )
))
(declare-fun arrayNoDuplicates!0 (array!102687 (_ BitVec 32) List!36040) Bool)

(assert (=> b!1542650 (= lt!665795 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36037))))

(declare-fun b!1542651 () Bool)

(declare-fun e!858366 () Bool)

(declare-fun tp_is_empty!37747 () Bool)

(assert (=> b!1542651 (= e!858366 tp_is_empty!37747)))

(declare-fun b!1542652 () Bool)

(declare-fun e!858364 () Bool)

(declare-fun mapRes!58324 () Bool)

(assert (=> b!1542652 (= e!858364 (and e!858366 mapRes!58324))))

(declare-fun condMapEmpty!58324 () Bool)

(declare-datatypes ((V!58773 0))(
  ( (V!58774 (val!18951 Int)) )
))
(declare-datatypes ((ValueCell!17963 0))(
  ( (ValueCellFull!17963 (v!21749 V!58773)) (EmptyCell!17963) )
))
(declare-datatypes ((array!102689 0))(
  ( (array!102690 (arr!49542 (Array (_ BitVec 32) ValueCell!17963)) (size!50093 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102689)

(declare-fun mapDefault!58324 () ValueCell!17963)

