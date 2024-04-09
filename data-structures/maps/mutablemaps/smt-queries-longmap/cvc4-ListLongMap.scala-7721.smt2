; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97040 () Bool)

(assert start!97040)

(declare-fun b!1103387 () Bool)

(declare-fun e!629900 () Bool)

(declare-datatypes ((List!24161 0))(
  ( (Nil!24158) (Cons!24157 (h!25366 (_ BitVec 64)) (t!34433 List!24161)) )
))
(declare-fun contains!6427 (List!24161 (_ BitVec 64)) Bool)

(assert (=> b!1103387 (= e!629900 (contains!6427 Nil!24158 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!736218 () Bool)

(declare-fun e!629898 () Bool)

(assert (=> start!97040 (=> (not res!736218) (not e!629898))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71486 0))(
  ( (array!71487 (arr!34397 (Array (_ BitVec 32) (_ BitVec 64))) (size!34934 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71486)

(assert (=> start!97040 (= res!736218 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34934 _keys!1208))))))

(assert (=> start!97040 e!629898))

(declare-fun array_inv!26348 (array!71486) Bool)

(assert (=> start!97040 (array_inv!26348 _keys!1208)))

(assert (=> start!97040 true))

(declare-datatypes ((V!41533 0))(
  ( (V!41534 (val!13709 Int)) )
))
(declare-datatypes ((ValueCell!12943 0))(
  ( (ValueCellFull!12943 (v!16341 V!41533)) (EmptyCell!12943) )
))
(declare-datatypes ((array!71488 0))(
  ( (array!71489 (arr!34398 (Array (_ BitVec 32) ValueCell!12943)) (size!34935 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71488)

(declare-fun e!629901 () Bool)

(declare-fun array_inv!26349 (array!71488) Bool)

(assert (=> start!97040 (and (array_inv!26349 _values!996) e!629901)))

(declare-fun b!1103388 () Bool)

(declare-fun e!629897 () Bool)

(declare-fun tp_is_empty!27305 () Bool)

(assert (=> b!1103388 (= e!629897 tp_is_empty!27305)))

(declare-fun b!1103389 () Bool)

(declare-fun res!736215 () Bool)

(assert (=> b!1103389 (=> (not res!736215) (not e!629898))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1103389 (= res!736215 (and (= (size!34935 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34934 _keys!1208) (size!34935 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103390 () Bool)

(declare-fun res!736216 () Bool)

(assert (=> b!1103390 (=> (not res!736216) (not e!629898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71486 (_ BitVec 32)) Bool)

(assert (=> b!1103390 (= res!736216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103391 () Bool)

(declare-fun e!629899 () Bool)

(declare-fun mapRes!42760 () Bool)

(assert (=> b!1103391 (= e!629901 (and e!629899 mapRes!42760))))

(declare-fun condMapEmpty!42760 () Bool)

(declare-fun mapDefault!42760 () ValueCell!12943)

