; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97718 () Bool)

(assert start!97718)

(declare-fun b!1116511 () Bool)

(declare-fun e!636166 () Bool)

(declare-fun e!636165 () Bool)

(assert (=> b!1116511 (= e!636166 e!636165)))

(declare-fun res!745579 () Bool)

(assert (=> b!1116511 (=> (not res!745579) (not e!636165))))

(declare-datatypes ((array!72664 0))(
  ( (array!72665 (arr!34981 (Array (_ BitVec 32) (_ BitVec 64))) (size!35518 (_ BitVec 32))) )
))
(declare-fun lt!497127 () array!72664)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72664 (_ BitVec 32)) Bool)

(assert (=> b!1116511 (= res!745579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497127 mask!1564))))

(declare-fun _keys!1208 () array!72664)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116511 (= lt!497127 (array!72665 (store (arr!34981 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35518 _keys!1208)))))

(declare-fun b!1116512 () Bool)

(declare-fun res!745572 () Bool)

(assert (=> b!1116512 (=> (not res!745572) (not e!636166))))

(declare-datatypes ((List!24476 0))(
  ( (Nil!24473) (Cons!24472 (h!25681 (_ BitVec 64)) (t!34964 List!24476)) )
))
(declare-fun arrayNoDuplicates!0 (array!72664 (_ BitVec 32) List!24476) Bool)

(assert (=> b!1116512 (= res!745572 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24473))))

(declare-fun b!1116513 () Bool)

(declare-fun res!745574 () Bool)

(assert (=> b!1116513 (=> (not res!745574) (not e!636166))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42345 0))(
  ( (V!42346 (val!14013 Int)) )
))
(declare-datatypes ((ValueCell!13247 0))(
  ( (ValueCellFull!13247 (v!16647 V!42345)) (EmptyCell!13247) )
))
(declare-datatypes ((array!72666 0))(
  ( (array!72667 (arr!34982 (Array (_ BitVec 32) ValueCell!13247)) (size!35519 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72666)

(assert (=> b!1116513 (= res!745574 (and (= (size!35519 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35518 _keys!1208) (size!35519 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116514 () Bool)

(declare-fun e!636167 () Bool)

(declare-fun tp_is_empty!27913 () Bool)

(assert (=> b!1116514 (= e!636167 tp_is_empty!27913)))

(declare-fun b!1116515 () Bool)

(declare-fun res!745576 () Bool)

(assert (=> b!1116515 (=> (not res!745576) (not e!636166))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1116515 (= res!745576 (= (select (arr!34981 _keys!1208) i!673) k!934))))

(declare-fun b!1116516 () Bool)

(declare-fun e!636162 () Bool)

(assert (=> b!1116516 (= e!636162 tp_is_empty!27913)))

(declare-fun mapNonEmpty!43687 () Bool)

(declare-fun mapRes!43687 () Bool)

(declare-fun tp!82932 () Bool)

(assert (=> mapNonEmpty!43687 (= mapRes!43687 (and tp!82932 e!636162))))

(declare-fun mapValue!43687 () ValueCell!13247)

(declare-fun mapKey!43687 () (_ BitVec 32))

(declare-fun mapRest!43687 () (Array (_ BitVec 32) ValueCell!13247))

(assert (=> mapNonEmpty!43687 (= (arr!34982 _values!996) (store mapRest!43687 mapKey!43687 mapValue!43687))))

(declare-fun b!1116517 () Bool)

(assert (=> b!1116517 (= e!636165 (not true))))

(declare-fun arrayContainsKey!0 (array!72664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116517 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36547 0))(
  ( (Unit!36548) )
))
(declare-fun lt!497126 () Unit!36547)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72664 (_ BitVec 64) (_ BitVec 32)) Unit!36547)

(assert (=> b!1116517 (= lt!497126 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1116518 () Bool)

(declare-fun res!745578 () Bool)

(assert (=> b!1116518 (=> (not res!745578) (not e!636166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116518 (= res!745578 (validMask!0 mask!1564))))

(declare-fun res!745580 () Bool)

(assert (=> start!97718 (=> (not res!745580) (not e!636166))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97718 (= res!745580 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35518 _keys!1208))))))

(assert (=> start!97718 e!636166))

(declare-fun array_inv!26744 (array!72664) Bool)

(assert (=> start!97718 (array_inv!26744 _keys!1208)))

(assert (=> start!97718 true))

(declare-fun e!636163 () Bool)

(declare-fun array_inv!26745 (array!72666) Bool)

(assert (=> start!97718 (and (array_inv!26745 _values!996) e!636163)))

(declare-fun b!1116519 () Bool)

(declare-fun res!745575 () Bool)

(assert (=> b!1116519 (=> (not res!745575) (not e!636166))))

(assert (=> b!1116519 (= res!745575 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35518 _keys!1208))))))

(declare-fun b!1116520 () Bool)

(declare-fun res!745573 () Bool)

(assert (=> b!1116520 (=> (not res!745573) (not e!636166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116520 (= res!745573 (validKeyInArray!0 k!934))))

(declare-fun b!1116521 () Bool)

(declare-fun res!745577 () Bool)

(assert (=> b!1116521 (=> (not res!745577) (not e!636165))))

(assert (=> b!1116521 (= res!745577 (arrayNoDuplicates!0 lt!497127 #b00000000000000000000000000000000 Nil!24473))))

(declare-fun b!1116522 () Bool)

(declare-fun res!745581 () Bool)

(assert (=> b!1116522 (=> (not res!745581) (not e!636166))))

(assert (=> b!1116522 (= res!745581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116523 () Bool)

(assert (=> b!1116523 (= e!636163 (and e!636167 mapRes!43687))))

(declare-fun condMapEmpty!43687 () Bool)

(declare-fun mapDefault!43687 () ValueCell!13247)

