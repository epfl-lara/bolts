; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97268 () Bool)

(assert start!97268)

(declare-fun b!1106488 () Bool)

(declare-fun e!631439 () Bool)

(declare-fun e!631438 () Bool)

(assert (=> b!1106488 (= e!631439 e!631438)))

(declare-fun res!738498 () Bool)

(assert (=> b!1106488 (=> (not res!738498) (not e!631438))))

(declare-datatypes ((array!71796 0))(
  ( (array!71797 (arr!34547 (Array (_ BitVec 32) (_ BitVec 64))) (size!35084 (_ BitVec 32))) )
))
(declare-fun lt!495453 () array!71796)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71796 (_ BitVec 32)) Bool)

(assert (=> b!1106488 (= res!738498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495453 mask!1564))))

(declare-fun _keys!1208 () array!71796)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106488 (= lt!495453 (array!71797 (store (arr!34547 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35084 _keys!1208)))))

(declare-fun b!1106489 () Bool)

(assert (=> b!1106489 (= e!631438 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106489 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36251 0))(
  ( (Unit!36252) )
))
(declare-fun lt!495452 () Unit!36251)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71796 (_ BitVec 64) (_ BitVec 32)) Unit!36251)

(assert (=> b!1106489 (= lt!495452 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!738501 () Bool)

(assert (=> start!97268 (=> (not res!738501) (not e!631439))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97268 (= res!738501 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35084 _keys!1208))))))

(assert (=> start!97268 e!631439))

(declare-fun array_inv!26448 (array!71796) Bool)

(assert (=> start!97268 (array_inv!26448 _keys!1208)))

(assert (=> start!97268 true))

(declare-datatypes ((V!41745 0))(
  ( (V!41746 (val!13788 Int)) )
))
(declare-datatypes ((ValueCell!13022 0))(
  ( (ValueCellFull!13022 (v!16422 V!41745)) (EmptyCell!13022) )
))
(declare-datatypes ((array!71798 0))(
  ( (array!71799 (arr!34548 (Array (_ BitVec 32) ValueCell!13022)) (size!35085 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71798)

(declare-fun e!631435 () Bool)

(declare-fun array_inv!26449 (array!71798) Bool)

(assert (=> start!97268 (and (array_inv!26449 _values!996) e!631435)))

(declare-fun b!1106490 () Bool)

(declare-fun res!738500 () Bool)

(assert (=> b!1106490 (=> (not res!738500) (not e!631439))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1106490 (= res!738500 (and (= (size!35085 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35084 _keys!1208) (size!35085 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106491 () Bool)

(declare-fun res!738503 () Bool)

(assert (=> b!1106491 (=> (not res!738503) (not e!631439))))

(assert (=> b!1106491 (= res!738503 (= (select (arr!34547 _keys!1208) i!673) k!934))))

(declare-fun b!1106492 () Bool)

(declare-fun res!738507 () Bool)

(assert (=> b!1106492 (=> (not res!738507) (not e!631439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106492 (= res!738507 (validMask!0 mask!1564))))

(declare-fun b!1106493 () Bool)

(declare-fun res!738502 () Bool)

(assert (=> b!1106493 (=> (not res!738502) (not e!631439))))

(assert (=> b!1106493 (= res!738502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106494 () Bool)

(declare-fun e!631434 () Bool)

(declare-fun tp_is_empty!27463 () Bool)

(assert (=> b!1106494 (= e!631434 tp_is_empty!27463)))

(declare-fun b!1106495 () Bool)

(declare-fun res!738499 () Bool)

(assert (=> b!1106495 (=> (not res!738499) (not e!631439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106495 (= res!738499 (validKeyInArray!0 k!934))))

(declare-fun b!1106496 () Bool)

(declare-fun res!738506 () Bool)

(assert (=> b!1106496 (=> (not res!738506) (not e!631438))))

(declare-datatypes ((List!24218 0))(
  ( (Nil!24215) (Cons!24214 (h!25423 (_ BitVec 64)) (t!34490 List!24218)) )
))
(declare-fun arrayNoDuplicates!0 (array!71796 (_ BitVec 32) List!24218) Bool)

(assert (=> b!1106496 (= res!738506 (arrayNoDuplicates!0 lt!495453 #b00000000000000000000000000000000 Nil!24215))))

(declare-fun mapNonEmpty!43012 () Bool)

(declare-fun mapRes!43012 () Bool)

(declare-fun tp!81933 () Bool)

(declare-fun e!631436 () Bool)

(assert (=> mapNonEmpty!43012 (= mapRes!43012 (and tp!81933 e!631436))))

(declare-fun mapKey!43012 () (_ BitVec 32))

(declare-fun mapValue!43012 () ValueCell!13022)

(declare-fun mapRest!43012 () (Array (_ BitVec 32) ValueCell!13022))

(assert (=> mapNonEmpty!43012 (= (arr!34548 _values!996) (store mapRest!43012 mapKey!43012 mapValue!43012))))

(declare-fun b!1106497 () Bool)

(assert (=> b!1106497 (= e!631435 (and e!631434 mapRes!43012))))

(declare-fun condMapEmpty!43012 () Bool)

(declare-fun mapDefault!43012 () ValueCell!13022)

