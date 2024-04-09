; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99216 () Bool)

(assert start!99216)

(declare-fun b_free!24785 () Bool)

(declare-fun b_next!24785 () Bool)

(assert (=> start!99216 (= b_free!24785 (not b_next!24785))))

(declare-fun tp!87066 () Bool)

(declare-fun b_and!40433 () Bool)

(assert (=> start!99216 (= tp!87066 b_and!40433)))

(declare-fun res!774556 () Bool)

(declare-fun e!663586 () Bool)

(assert (=> start!99216 (=> (not res!774556) (not e!663586))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75408 0))(
  ( (array!75409 (arr!36351 (Array (_ BitVec 32) (_ BitVec 64))) (size!36888 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75408)

(assert (=> start!99216 (= res!774556 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36888 _keys!1208))))))

(assert (=> start!99216 e!663586))

(declare-fun tp_is_empty!29315 () Bool)

(assert (=> start!99216 tp_is_empty!29315))

(declare-fun array_inv!27668 (array!75408) Bool)

(assert (=> start!99216 (array_inv!27668 _keys!1208)))

(assert (=> start!99216 true))

(assert (=> start!99216 tp!87066))

(declare-datatypes ((V!44213 0))(
  ( (V!44214 (val!14714 Int)) )
))
(declare-datatypes ((ValueCell!13948 0))(
  ( (ValueCellFull!13948 (v!17352 V!44213)) (EmptyCell!13948) )
))
(declare-datatypes ((array!75410 0))(
  ( (array!75411 (arr!36352 (Array (_ BitVec 32) ValueCell!13948)) (size!36889 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75410)

(declare-fun e!663585 () Bool)

(declare-fun array_inv!27669 (array!75410) Bool)

(assert (=> start!99216 (and (array_inv!27669 _values!996) e!663585)))

(declare-fun b!1167437 () Bool)

(declare-fun res!774549 () Bool)

(assert (=> b!1167437 (=> (not res!774549) (not e!663586))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75408 (_ BitVec 32)) Bool)

(assert (=> b!1167437 (= res!774549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1167438 () Bool)

(declare-fun res!774560 () Bool)

(assert (=> b!1167438 (=> (not res!774560) (not e!663586))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167438 (= res!774560 (validKeyInArray!0 k!934))))

(declare-fun b!1167439 () Bool)

(declare-fun e!663582 () Bool)

(assert (=> b!1167439 (= e!663582 true)))

(declare-fun zeroValue!944 () V!44213)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525609 () array!75408)

(declare-fun lt!525604 () array!75410)

(declare-fun minValue!944 () V!44213)

(declare-datatypes ((tuple2!18852 0))(
  ( (tuple2!18853 (_1!9436 (_ BitVec 64)) (_2!9436 V!44213)) )
))
(declare-datatypes ((List!25629 0))(
  ( (Nil!25626) (Cons!25625 (h!26834 tuple2!18852) (t!37413 List!25629)) )
))
(declare-datatypes ((ListLongMap!16833 0))(
  ( (ListLongMap!16834 (toList!8432 List!25629)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4865 (array!75408 array!75410 (_ BitVec 32) (_ BitVec 32) V!44213 V!44213 (_ BitVec 32) Int) ListLongMap!16833)

(declare-fun -!1466 (ListLongMap!16833 (_ BitVec 64)) ListLongMap!16833)

(assert (=> b!1167439 (= (getCurrentListMapNoExtraKeys!4865 lt!525609 lt!525604 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1466 (getCurrentListMapNoExtraKeys!4865 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!38420 0))(
  ( (Unit!38421) )
))
(declare-fun lt!525607 () Unit!38420)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!690 (array!75408 array!75410 (_ BitVec 32) (_ BitVec 32) V!44213 V!44213 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38420)

(assert (=> b!1167439 (= lt!525607 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!690 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1167440 () Bool)

(declare-fun res!774553 () Bool)

(declare-fun e!663583 () Bool)

(assert (=> b!1167440 (=> (not res!774553) (not e!663583))))

(declare-datatypes ((List!25630 0))(
  ( (Nil!25627) (Cons!25626 (h!26835 (_ BitVec 64)) (t!37414 List!25630)) )
))
(declare-fun arrayNoDuplicates!0 (array!75408 (_ BitVec 32) List!25630) Bool)

(assert (=> b!1167440 (= res!774553 (arrayNoDuplicates!0 lt!525609 #b00000000000000000000000000000000 Nil!25627))))

(declare-fun b!1167441 () Bool)

(declare-fun res!774555 () Bool)

(assert (=> b!1167441 (=> (not res!774555) (not e!663586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167441 (= res!774555 (validMask!0 mask!1564))))

(declare-fun b!1167442 () Bool)

(declare-fun e!663587 () Bool)

(declare-fun mapRes!45797 () Bool)

(assert (=> b!1167442 (= e!663585 (and e!663587 mapRes!45797))))

(declare-fun condMapEmpty!45797 () Bool)

(declare-fun mapDefault!45797 () ValueCell!13948)

