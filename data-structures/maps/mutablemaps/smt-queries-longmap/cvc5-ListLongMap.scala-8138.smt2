; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99730 () Bool)

(assert start!99730)

(declare-fun b_free!25273 () Bool)

(declare-fun b_next!25273 () Bool)

(assert (=> start!99730 (= b_free!25273 (not b_next!25273))))

(declare-fun tp!88533 () Bool)

(declare-fun b_and!41427 () Bool)

(assert (=> start!99730 (= tp!88533 b_and!41427)))

(declare-fun b!1182685 () Bool)

(declare-fun res!786092 () Bool)

(declare-fun e!672457 () Bool)

(assert (=> b!1182685 (=> (not res!786092) (not e!672457))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182685 (= res!786092 (validKeyInArray!0 k!934))))

(declare-fun b!1182686 () Bool)

(declare-fun res!786098 () Bool)

(assert (=> b!1182686 (=> (not res!786098) (not e!672457))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76374 0))(
  ( (array!76375 (arr!36833 (Array (_ BitVec 32) (_ BitVec 64))) (size!37370 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76374)

(assert (=> b!1182686 (= res!786098 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37370 _keys!1208))))))

(declare-fun b!1182687 () Bool)

(declare-fun res!786100 () Bool)

(assert (=> b!1182687 (=> (not res!786100) (not e!672457))))

(declare-datatypes ((List!26053 0))(
  ( (Nil!26050) (Cons!26049 (h!27258 (_ BitVec 64)) (t!38325 List!26053)) )
))
(declare-fun arrayNoDuplicates!0 (array!76374 (_ BitVec 32) List!26053) Bool)

(assert (=> b!1182687 (= res!786100 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26050))))

(declare-fun b!1182688 () Bool)

(declare-fun e!672455 () Bool)

(declare-fun e!672456 () Bool)

(declare-fun mapRes!46532 () Bool)

(assert (=> b!1182688 (= e!672455 (and e!672456 mapRes!46532))))

(declare-fun condMapEmpty!46532 () Bool)

(declare-datatypes ((V!44865 0))(
  ( (V!44866 (val!14958 Int)) )
))
(declare-datatypes ((ValueCell!14192 0))(
  ( (ValueCellFull!14192 (v!17597 V!44865)) (EmptyCell!14192) )
))
(declare-datatypes ((array!76376 0))(
  ( (array!76377 (arr!36834 (Array (_ BitVec 32) ValueCell!14192)) (size!37371 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76376)

(declare-fun mapDefault!46532 () ValueCell!14192)

