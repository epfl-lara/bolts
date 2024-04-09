; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4010 () Bool)

(assert start!4010)

(declare-fun b_free!917 () Bool)

(declare-fun b_next!917 () Bool)

(assert (=> start!4010 (= b_free!917 (not b_next!917))))

(declare-fun tp!4170 () Bool)

(declare-fun b_and!1729 () Bool)

(assert (=> start!4010 (= tp!4170 b_and!1729)))

(declare-fun b!29210 () Bool)

(declare-fun res!17474 () Bool)

(declare-fun e!18870 () Bool)

(assert (=> b!29210 (=> (not res!17474) (not e!18870))))

(declare-datatypes ((array!1763 0))(
  ( (array!1764 (arr!835 (Array (_ BitVec 32) (_ BitVec 64))) (size!936 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1763)

(declare-datatypes ((List!695 0))(
  ( (Nil!692) (Cons!691 (h!1258 (_ BitVec 64)) (t!3390 List!695)) )
))
(declare-fun arrayNoDuplicates!0 (array!1763 (_ BitVec 32) List!695) Bool)

(assert (=> b!29210 (= res!17474 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!692))))

(declare-fun b!29211 () Bool)

(declare-fun e!18869 () Bool)

(declare-fun tp_is_empty!1271 () Bool)

(assert (=> b!29211 (= e!18869 tp_is_empty!1271)))

(declare-fun b!29212 () Bool)

(declare-fun e!18868 () Bool)

(declare-fun e!18871 () Bool)

(declare-fun mapRes!1435 () Bool)

(assert (=> b!29212 (= e!18868 (and e!18871 mapRes!1435))))

(declare-fun condMapEmpty!1435 () Bool)

(declare-datatypes ((V!1519 0))(
  ( (V!1520 (val!662 Int)) )
))
(declare-datatypes ((ValueCell!436 0))(
  ( (ValueCellFull!436 (v!1751 V!1519)) (EmptyCell!436) )
))
(declare-datatypes ((array!1765 0))(
  ( (array!1766 (arr!836 (Array (_ BitVec 32) ValueCell!436)) (size!937 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1765)

(declare-fun mapDefault!1435 () ValueCell!436)

