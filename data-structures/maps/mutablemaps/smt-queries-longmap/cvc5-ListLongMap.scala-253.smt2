; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4198 () Bool)

(assert start!4198)

(declare-fun b_free!1105 () Bool)

(declare-fun b_next!1105 () Bool)

(assert (=> start!4198 (= b_free!1105 (not b_next!1105))))

(declare-fun tp!4735 () Bool)

(declare-fun b_and!1917 () Bool)

(assert (=> start!4198 (= tp!4735 b_and!1917)))

(declare-fun b!31976 () Bool)

(declare-fun res!19399 () Bool)

(declare-fun e!20371 () Bool)

(assert (=> b!31976 (=> (not res!19399) (not e!20371))))

(declare-datatypes ((array!2125 0))(
  ( (array!2126 (arr!1016 (Array (_ BitVec 32) (_ BitVec 64))) (size!1117 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2125)

(declare-datatypes ((List!828 0))(
  ( (Nil!825) (Cons!824 (h!1391 (_ BitVec 64)) (t!3523 List!828)) )
))
(declare-fun arrayNoDuplicates!0 (array!2125 (_ BitVec 32) List!828) Bool)

(assert (=> b!31976 (= res!19399 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!825))))

(declare-fun b!31977 () Bool)

(declare-fun res!19397 () Bool)

(assert (=> b!31977 (=> (not res!19397) (not e!20371))))

(declare-datatypes ((V!1771 0))(
  ( (V!1772 (val!756 Int)) )
))
(declare-datatypes ((ValueCell!530 0))(
  ( (ValueCellFull!530 (v!1845 V!1771)) (EmptyCell!530) )
))
(declare-datatypes ((array!2127 0))(
  ( (array!2128 (arr!1017 (Array (_ BitVec 32) ValueCell!530)) (size!1118 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2127)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!31977 (= res!19397 (and (= (size!1118 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1117 _keys!1833) (size!1118 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31978 () Bool)

(declare-fun res!19394 () Bool)

(assert (=> b!31978 (=> (not res!19394) (not e!20371))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31978 (= res!19394 (validKeyInArray!0 k!1304))))

(declare-fun b!31979 () Bool)

(declare-fun e!20367 () Bool)

(declare-fun tp_is_empty!1459 () Bool)

(assert (=> b!31979 (= e!20367 tp_is_empty!1459)))

(declare-fun b!31980 () Bool)

(declare-fun e!20370 () Bool)

(declare-fun mapRes!1717 () Bool)

(assert (=> b!31980 (= e!20370 (and e!20367 mapRes!1717))))

(declare-fun condMapEmpty!1717 () Bool)

(declare-fun mapDefault!1717 () ValueCell!530)

