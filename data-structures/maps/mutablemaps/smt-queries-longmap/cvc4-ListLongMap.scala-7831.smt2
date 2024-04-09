; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97770 () Bool)

(assert start!97770)

(declare-fun b!1117525 () Bool)

(declare-fun res!746361 () Bool)

(declare-fun e!636630 () Bool)

(assert (=> b!1117525 (=> (not res!746361) (not e!636630))))

(declare-datatypes ((array!72764 0))(
  ( (array!72765 (arr!35031 (Array (_ BitVec 32) (_ BitVec 64))) (size!35568 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72764)

(declare-datatypes ((List!24495 0))(
  ( (Nil!24492) (Cons!24491 (h!25700 (_ BitVec 64)) (t!34983 List!24495)) )
))
(declare-fun arrayNoDuplicates!0 (array!72764 (_ BitVec 32) List!24495) Bool)

(assert (=> b!1117525 (= res!746361 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24492))))

(declare-fun b!1117526 () Bool)

(declare-fun e!636635 () Bool)

(declare-fun e!636632 () Bool)

(declare-fun mapRes!43765 () Bool)

(assert (=> b!1117526 (= e!636635 (and e!636632 mapRes!43765))))

(declare-fun condMapEmpty!43765 () Bool)

(declare-datatypes ((V!42413 0))(
  ( (V!42414 (val!14039 Int)) )
))
(declare-datatypes ((ValueCell!13273 0))(
  ( (ValueCellFull!13273 (v!16673 V!42413)) (EmptyCell!13273) )
))
(declare-datatypes ((array!72766 0))(
  ( (array!72767 (arr!35032 (Array (_ BitVec 32) ValueCell!13273)) (size!35569 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72766)

(declare-fun mapDefault!43765 () ValueCell!13273)

