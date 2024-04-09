; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97122 () Bool)

(assert start!97122)

(declare-fun b!1104184 () Bool)

(declare-fun e!630329 () Bool)

(declare-fun tp_is_empty!27349 () Bool)

(assert (=> b!1104184 (= e!630329 tp_is_empty!27349)))

(declare-fun b!1104185 () Bool)

(declare-fun res!736759 () Bool)

(declare-fun e!630326 () Bool)

(assert (=> b!1104185 (=> (not res!736759) (not e!630326))))

(declare-datatypes ((array!71574 0))(
  ( (array!71575 (arr!34438 (Array (_ BitVec 32) (_ BitVec 64))) (size!34975 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71574)

(assert (=> b!1104185 (= res!736759 (and (bvsle #b00000000000000000000000000000000 (size!34975 _keys!1208)) (bvslt (size!34975 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1104186 () Bool)

(declare-fun res!736756 () Bool)

(assert (=> b!1104186 (=> (not res!736756) (not e!630326))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71574 (_ BitVec 32)) Bool)

(assert (=> b!1104186 (= res!736756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71575 (store (arr!34438 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34975 _keys!1208)) mask!1564))))

(declare-fun b!1104187 () Bool)

(declare-fun res!736757 () Bool)

(assert (=> b!1104187 (=> (not res!736757) (not e!630326))))

(declare-datatypes ((List!24174 0))(
  ( (Nil!24171) (Cons!24170 (h!25379 (_ BitVec 64)) (t!34446 List!24174)) )
))
(declare-fun noDuplicate!1603 (List!24174) Bool)

(assert (=> b!1104187 (= res!736757 (noDuplicate!1603 Nil!24171))))

(declare-fun b!1104188 () Bool)

(declare-fun res!736754 () Bool)

(assert (=> b!1104188 (=> (not res!736754) (not e!630326))))

(declare-fun arrayNoDuplicates!0 (array!71574 (_ BitVec 32) List!24174) Bool)

(assert (=> b!1104188 (= res!736754 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24171))))

(declare-fun b!1104189 () Bool)

(declare-fun e!630327 () Bool)

(declare-fun contains!6430 (List!24174 (_ BitVec 64)) Bool)

(assert (=> b!1104189 (= e!630327 (contains!6430 Nil!24171 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!736763 () Bool)

(assert (=> start!97122 (=> (not res!736763) (not e!630326))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97122 (= res!736763 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34975 _keys!1208))))))

(assert (=> start!97122 e!630326))

(declare-fun array_inv!26372 (array!71574) Bool)

(assert (=> start!97122 (array_inv!26372 _keys!1208)))

(assert (=> start!97122 true))

(declare-datatypes ((V!41593 0))(
  ( (V!41594 (val!13731 Int)) )
))
(declare-datatypes ((ValueCell!12965 0))(
  ( (ValueCellFull!12965 (v!16364 V!41593)) (EmptyCell!12965) )
))
(declare-datatypes ((array!71576 0))(
  ( (array!71577 (arr!34439 (Array (_ BitVec 32) ValueCell!12965)) (size!34976 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71576)

(declare-fun e!630328 () Bool)

(declare-fun array_inv!26373 (array!71576) Bool)

(assert (=> start!97122 (and (array_inv!26373 _values!996) e!630328)))

(declare-fun b!1104190 () Bool)

(declare-fun res!736764 () Bool)

(assert (=> b!1104190 (=> (not res!736764) (not e!630326))))

(assert (=> b!1104190 (= res!736764 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34975 _keys!1208))))))

(declare-fun b!1104191 () Bool)

(declare-fun res!736755 () Bool)

(assert (=> b!1104191 (=> (not res!736755) (not e!630326))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104191 (= res!736755 (and (= (size!34976 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34975 _keys!1208) (size!34976 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104192 () Bool)

(declare-fun res!736753 () Bool)

(assert (=> b!1104192 (=> (not res!736753) (not e!630326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104192 (= res!736753 (validMask!0 mask!1564))))

(declare-fun b!1104193 () Bool)

(declare-fun res!736762 () Bool)

(assert (=> b!1104193 (=> (not res!736762) (not e!630326))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104193 (= res!736762 (validKeyInArray!0 k!934))))

(declare-fun b!1104194 () Bool)

(declare-fun e!630324 () Bool)

(assert (=> b!1104194 (= e!630324 tp_is_empty!27349)))

(declare-fun b!1104195 () Bool)

(assert (=> b!1104195 (= e!630326 e!630327)))

(declare-fun res!736758 () Bool)

(assert (=> b!1104195 (=> res!736758 e!630327)))

(assert (=> b!1104195 (= res!736758 (contains!6430 Nil!24171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1104196 () Bool)

(declare-fun res!736760 () Bool)

(assert (=> b!1104196 (=> (not res!736760) (not e!630326))))

(assert (=> b!1104196 (= res!736760 (= (select (arr!34438 _keys!1208) i!673) k!934))))

(declare-fun b!1104197 () Bool)

(declare-fun mapRes!42835 () Bool)

(assert (=> b!1104197 (= e!630328 (and e!630329 mapRes!42835))))

(declare-fun condMapEmpty!42835 () Bool)

(declare-fun mapDefault!42835 () ValueCell!12965)

