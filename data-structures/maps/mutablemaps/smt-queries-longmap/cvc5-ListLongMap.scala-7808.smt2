; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97628 () Bool)

(assert start!97628)

(declare-fun res!744224 () Bool)

(declare-fun e!635356 () Bool)

(assert (=> start!97628 (=> (not res!744224) (not e!635356))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72494 0))(
  ( (array!72495 (arr!34896 (Array (_ BitVec 32) (_ BitVec 64))) (size!35433 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72494)

(assert (=> start!97628 (= res!744224 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35433 _keys!1208))))))

(assert (=> start!97628 e!635356))

(declare-fun array_inv!26696 (array!72494) Bool)

(assert (=> start!97628 (array_inv!26696 _keys!1208)))

(assert (=> start!97628 true))

(declare-datatypes ((V!42225 0))(
  ( (V!42226 (val!13968 Int)) )
))
(declare-datatypes ((ValueCell!13202 0))(
  ( (ValueCellFull!13202 (v!16602 V!42225)) (EmptyCell!13202) )
))
(declare-datatypes ((array!72496 0))(
  ( (array!72497 (arr!34897 (Array (_ BitVec 32) ValueCell!13202)) (size!35434 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72496)

(declare-fun e!635354 () Bool)

(declare-fun array_inv!26697 (array!72496) Bool)

(assert (=> start!97628 (and (array_inv!26697 _values!996) e!635354)))

(declare-fun b!1114756 () Bool)

(declare-fun e!635353 () Bool)

(declare-fun tp_is_empty!27823 () Bool)

(assert (=> b!1114756 (= e!635353 tp_is_empty!27823)))

(declare-fun b!1114757 () Bool)

(declare-fun res!744229 () Bool)

(assert (=> b!1114757 (=> (not res!744229) (not e!635356))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1114757 (= res!744229 (= (select (arr!34896 _keys!1208) i!673) k!934))))

(declare-fun b!1114758 () Bool)

(declare-fun res!744226 () Bool)

(declare-fun e!635357 () Bool)

(assert (=> b!1114758 (=> (not res!744226) (not e!635357))))

(declare-fun lt!496857 () array!72494)

(declare-datatypes ((List!24443 0))(
  ( (Nil!24440) (Cons!24439 (h!25648 (_ BitVec 64)) (t!34931 List!24443)) )
))
(declare-fun arrayNoDuplicates!0 (array!72494 (_ BitVec 32) List!24443) Bool)

(assert (=> b!1114758 (= res!744226 (arrayNoDuplicates!0 lt!496857 #b00000000000000000000000000000000 Nil!24440))))

(declare-fun mapNonEmpty!43552 () Bool)

(declare-fun mapRes!43552 () Bool)

(declare-fun tp!82797 () Bool)

(assert (=> mapNonEmpty!43552 (= mapRes!43552 (and tp!82797 e!635353))))

(declare-fun mapRest!43552 () (Array (_ BitVec 32) ValueCell!13202))

(declare-fun mapKey!43552 () (_ BitVec 32))

(declare-fun mapValue!43552 () ValueCell!13202)

(assert (=> mapNonEmpty!43552 (= (arr!34897 _values!996) (store mapRest!43552 mapKey!43552 mapValue!43552))))

(declare-fun b!1114759 () Bool)

(declare-fun e!635352 () Bool)

(assert (=> b!1114759 (= e!635352 tp_is_empty!27823)))

(declare-fun b!1114760 () Bool)

(declare-fun res!744223 () Bool)

(assert (=> b!1114760 (=> (not res!744223) (not e!635356))))

(assert (=> b!1114760 (= res!744223 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35433 _keys!1208))))))

(declare-fun b!1114761 () Bool)

(declare-fun res!744227 () Bool)

(assert (=> b!1114761 (=> (not res!744227) (not e!635356))))

(assert (=> b!1114761 (= res!744227 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24440))))

(declare-fun b!1114762 () Bool)

(declare-fun res!744222 () Bool)

(assert (=> b!1114762 (=> (not res!744222) (not e!635356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114762 (= res!744222 (validKeyInArray!0 k!934))))

(declare-fun b!1114763 () Bool)

(declare-fun res!744230 () Bool)

(assert (=> b!1114763 (=> (not res!744230) (not e!635356))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114763 (= res!744230 (and (= (size!35434 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35433 _keys!1208) (size!35434 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43552 () Bool)

(assert (=> mapIsEmpty!43552 mapRes!43552))

(declare-fun b!1114764 () Bool)

(declare-fun res!744231 () Bool)

(assert (=> b!1114764 (=> (not res!744231) (not e!635356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114764 (= res!744231 (validMask!0 mask!1564))))

(declare-fun b!1114765 () Bool)

(assert (=> b!1114765 (= e!635354 (and e!635352 mapRes!43552))))

(declare-fun condMapEmpty!43552 () Bool)

(declare-fun mapDefault!43552 () ValueCell!13202)

