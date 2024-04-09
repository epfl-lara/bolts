; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97272 () Bool)

(assert start!97272)

(declare-fun b!1106566 () Bool)

(declare-fun res!738565 () Bool)

(declare-fun e!631473 () Bool)

(assert (=> b!1106566 (=> (not res!738565) (not e!631473))))

(declare-datatypes ((array!71804 0))(
  ( (array!71805 (arr!34551 (Array (_ BitVec 32) (_ BitVec 64))) (size!35088 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71804)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41749 0))(
  ( (V!41750 (val!13790 Int)) )
))
(declare-datatypes ((ValueCell!13024 0))(
  ( (ValueCellFull!13024 (v!16424 V!41749)) (EmptyCell!13024) )
))
(declare-datatypes ((array!71806 0))(
  ( (array!71807 (arr!34552 (Array (_ BitVec 32) ValueCell!13024)) (size!35089 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71806)

(assert (=> b!1106566 (= res!738565 (and (= (size!35089 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35088 _keys!1208) (size!35089 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106567 () Bool)

(declare-fun res!738561 () Bool)

(assert (=> b!1106567 (=> (not res!738561) (not e!631473))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106567 (= res!738561 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43018 () Bool)

(declare-fun mapRes!43018 () Bool)

(declare-fun tp!81939 () Bool)

(declare-fun e!631475 () Bool)

(assert (=> mapNonEmpty!43018 (= mapRes!43018 (and tp!81939 e!631475))))

(declare-fun mapRest!43018 () (Array (_ BitVec 32) ValueCell!13024))

(declare-fun mapKey!43018 () (_ BitVec 32))

(declare-fun mapValue!43018 () ValueCell!13024)

(assert (=> mapNonEmpty!43018 (= (arr!34552 _values!996) (store mapRest!43018 mapKey!43018 mapValue!43018))))

(declare-fun b!1106568 () Bool)

(declare-fun e!631471 () Bool)

(assert (=> b!1106568 (= e!631473 e!631471)))

(declare-fun res!738567 () Bool)

(assert (=> b!1106568 (=> (not res!738567) (not e!631471))))

(declare-fun lt!495465 () array!71804)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71804 (_ BitVec 32)) Bool)

(assert (=> b!1106568 (= res!738567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495465 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106568 (= lt!495465 (array!71805 (store (arr!34551 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35088 _keys!1208)))))

(declare-fun b!1106569 () Bool)

(declare-fun res!738564 () Bool)

(assert (=> b!1106569 (=> (not res!738564) (not e!631473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106569 (= res!738564 (validMask!0 mask!1564))))

(declare-fun res!738562 () Bool)

(assert (=> start!97272 (=> (not res!738562) (not e!631473))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97272 (= res!738562 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35088 _keys!1208))))))

(assert (=> start!97272 e!631473))

(declare-fun array_inv!26452 (array!71804) Bool)

(assert (=> start!97272 (array_inv!26452 _keys!1208)))

(assert (=> start!97272 true))

(declare-fun e!631470 () Bool)

(declare-fun array_inv!26453 (array!71806) Bool)

(assert (=> start!97272 (and (array_inv!26453 _values!996) e!631470)))

(declare-fun b!1106570 () Bool)

(declare-fun tp_is_empty!27467 () Bool)

(assert (=> b!1106570 (= e!631475 tp_is_empty!27467)))

(declare-fun b!1106571 () Bool)

(declare-fun res!738560 () Bool)

(assert (=> b!1106571 (=> (not res!738560) (not e!631471))))

(declare-datatypes ((List!24220 0))(
  ( (Nil!24217) (Cons!24216 (h!25425 (_ BitVec 64)) (t!34492 List!24220)) )
))
(declare-fun arrayNoDuplicates!0 (array!71804 (_ BitVec 32) List!24220) Bool)

(assert (=> b!1106571 (= res!738560 (arrayNoDuplicates!0 lt!495465 #b00000000000000000000000000000000 Nil!24217))))

(declare-fun b!1106572 () Bool)

(declare-fun res!738566 () Bool)

(assert (=> b!1106572 (=> (not res!738566) (not e!631473))))

(assert (=> b!1106572 (= res!738566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!43018 () Bool)

(assert (=> mapIsEmpty!43018 mapRes!43018))

(declare-fun b!1106573 () Bool)

(declare-fun res!738563 () Bool)

(assert (=> b!1106573 (=> (not res!738563) (not e!631473))))

(assert (=> b!1106573 (= res!738563 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35088 _keys!1208))))))

(declare-fun b!1106574 () Bool)

(declare-fun e!631472 () Bool)

(assert (=> b!1106574 (= e!631470 (and e!631472 mapRes!43018))))

(declare-fun condMapEmpty!43018 () Bool)

(declare-fun mapDefault!43018 () ValueCell!13024)

