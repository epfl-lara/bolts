; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97626 () Bool)

(assert start!97626)

(declare-fun b!1114717 () Bool)

(declare-fun e!635339 () Bool)

(assert (=> b!1114717 (= e!635339 (not true))))

(declare-datatypes ((array!72490 0))(
  ( (array!72491 (arr!34894 (Array (_ BitVec 32) (_ BitVec 64))) (size!35431 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72490)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114717 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36491 0))(
  ( (Unit!36492) )
))
(declare-fun lt!496850 () Unit!36491)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72490 (_ BitVec 64) (_ BitVec 32)) Unit!36491)

(assert (=> b!1114717 (= lt!496850 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1114718 () Bool)

(declare-fun e!635334 () Bool)

(assert (=> b!1114718 (= e!635334 e!635339)))

(declare-fun res!744200 () Bool)

(assert (=> b!1114718 (=> (not res!744200) (not e!635339))))

(declare-fun lt!496851 () array!72490)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72490 (_ BitVec 32)) Bool)

(assert (=> b!1114718 (= res!744200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496851 mask!1564))))

(assert (=> b!1114718 (= lt!496851 (array!72491 (store (arr!34894 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35431 _keys!1208)))))

(declare-fun b!1114719 () Bool)

(declare-fun res!744199 () Bool)

(assert (=> b!1114719 (=> (not res!744199) (not e!635339))))

(declare-datatypes ((List!24442 0))(
  ( (Nil!24439) (Cons!24438 (h!25647 (_ BitVec 64)) (t!34930 List!24442)) )
))
(declare-fun arrayNoDuplicates!0 (array!72490 (_ BitVec 32) List!24442) Bool)

(assert (=> b!1114719 (= res!744199 (arrayNoDuplicates!0 lt!496851 #b00000000000000000000000000000000 Nil!24439))))

(declare-fun mapNonEmpty!43549 () Bool)

(declare-fun mapRes!43549 () Bool)

(declare-fun tp!82794 () Bool)

(declare-fun e!635337 () Bool)

(assert (=> mapNonEmpty!43549 (= mapRes!43549 (and tp!82794 e!635337))))

(declare-datatypes ((V!42221 0))(
  ( (V!42222 (val!13967 Int)) )
))
(declare-datatypes ((ValueCell!13201 0))(
  ( (ValueCellFull!13201 (v!16601 V!42221)) (EmptyCell!13201) )
))
(declare-fun mapRest!43549 () (Array (_ BitVec 32) ValueCell!13201))

(declare-fun mapValue!43549 () ValueCell!13201)

(declare-datatypes ((array!72492 0))(
  ( (array!72493 (arr!34895 (Array (_ BitVec 32) ValueCell!13201)) (size!35432 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72492)

(declare-fun mapKey!43549 () (_ BitVec 32))

(assert (=> mapNonEmpty!43549 (= (arr!34895 _values!996) (store mapRest!43549 mapKey!43549 mapValue!43549))))

(declare-fun b!1114720 () Bool)

(declare-fun e!635336 () Bool)

(declare-fun tp_is_empty!27821 () Bool)

(assert (=> b!1114720 (= e!635336 tp_is_empty!27821)))

(declare-fun b!1114721 () Bool)

(declare-fun res!744197 () Bool)

(assert (=> b!1114721 (=> (not res!744197) (not e!635334))))

(assert (=> b!1114721 (= res!744197 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24439))))

(declare-fun b!1114722 () Bool)

(declare-fun res!744201 () Bool)

(assert (=> b!1114722 (=> (not res!744201) (not e!635334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114722 (= res!744201 (validKeyInArray!0 k!934))))

(declare-fun b!1114723 () Bool)

(assert (=> b!1114723 (= e!635337 tp_is_empty!27821)))

(declare-fun res!744195 () Bool)

(assert (=> start!97626 (=> (not res!744195) (not e!635334))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97626 (= res!744195 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35431 _keys!1208))))))

(assert (=> start!97626 e!635334))

(declare-fun array_inv!26694 (array!72490) Bool)

(assert (=> start!97626 (array_inv!26694 _keys!1208)))

(assert (=> start!97626 true))

(declare-fun e!635335 () Bool)

(declare-fun array_inv!26695 (array!72492) Bool)

(assert (=> start!97626 (and (array_inv!26695 _values!996) e!635335)))

(declare-fun mapIsEmpty!43549 () Bool)

(assert (=> mapIsEmpty!43549 mapRes!43549))

(declare-fun b!1114724 () Bool)

(declare-fun res!744192 () Bool)

(assert (=> b!1114724 (=> (not res!744192) (not e!635334))))

(assert (=> b!1114724 (= res!744192 (= (select (arr!34894 _keys!1208) i!673) k!934))))

(declare-fun b!1114725 () Bool)

(declare-fun res!744196 () Bool)

(assert (=> b!1114725 (=> (not res!744196) (not e!635334))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114725 (= res!744196 (and (= (size!35432 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35431 _keys!1208) (size!35432 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114726 () Bool)

(declare-fun res!744194 () Bool)

(assert (=> b!1114726 (=> (not res!744194) (not e!635334))))

(assert (=> b!1114726 (= res!744194 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35431 _keys!1208))))))

(declare-fun b!1114727 () Bool)

(assert (=> b!1114727 (= e!635335 (and e!635336 mapRes!43549))))

(declare-fun condMapEmpty!43549 () Bool)

(declare-fun mapDefault!43549 () ValueCell!13201)

