; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133716 () Bool)

(assert start!133716)

(declare-fun b!1562885 () Bool)

(declare-fun e!871044 () Bool)

(declare-fun tp_is_empty!38767 () Bool)

(assert (=> b!1562885 (= e!871044 tp_is_empty!38767)))

(declare-fun res!1068568 () Bool)

(declare-fun e!871046 () Bool)

(assert (=> start!133716 (=> (not res!1068568) (not e!871046))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133716 (= res!1068568 (validMask!0 mask!947))))

(assert (=> start!133716 e!871046))

(assert (=> start!133716 true))

(declare-datatypes ((V!59897 0))(
  ( (V!59898 (val!19467 Int)) )
))
(declare-datatypes ((ValueCell!18353 0))(
  ( (ValueCellFull!18353 (v!22216 V!59897)) (EmptyCell!18353) )
))
(declare-datatypes ((array!104197 0))(
  ( (array!104198 (arr!50286 (Array (_ BitVec 32) ValueCell!18353)) (size!50837 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104197)

(declare-fun e!871042 () Bool)

(declare-fun array_inv!39007 (array!104197) Bool)

(assert (=> start!133716 (and (array_inv!39007 _values!487) e!871042)))

(declare-datatypes ((array!104199 0))(
  ( (array!104200 (arr!50287 (Array (_ BitVec 32) (_ BitVec 64))) (size!50838 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104199)

(declare-fun array_inv!39008 (array!104199) Bool)

(assert (=> start!133716 (array_inv!39008 _keys!637)))

(declare-fun mapIsEmpty!59526 () Bool)

(declare-fun mapRes!59526 () Bool)

(assert (=> mapIsEmpty!59526 mapRes!59526))

(declare-fun b!1562886 () Bool)

(declare-fun res!1068567 () Bool)

(assert (=> b!1562886 (=> (not res!1068567) (not e!871046))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562886 (= res!1068567 (and (= (size!50837 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50838 _keys!637) (size!50837 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562887 () Bool)

(declare-fun e!871045 () Bool)

(assert (=> b!1562887 (= e!871045 tp_is_empty!38767)))

(declare-fun b!1562888 () Bool)

(assert (=> b!1562888 (= e!871042 (and e!871045 mapRes!59526))))

(declare-fun condMapEmpty!59526 () Bool)

(declare-fun mapDefault!59526 () ValueCell!18353)

