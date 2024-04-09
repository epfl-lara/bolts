; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99218 () Bool)

(assert start!99218)

(declare-fun b_free!24787 () Bool)

(declare-fun b_next!24787 () Bool)

(assert (=> start!99218 (= b_free!24787 (not b_next!24787))))

(declare-fun tp!87072 () Bool)

(declare-fun b_and!40437 () Bool)

(assert (=> start!99218 (= tp!87072 b_and!40437)))

(declare-fun b!1167484 () Bool)

(declare-fun res!774587 () Bool)

(declare-fun e!663609 () Bool)

(assert (=> b!1167484 (=> (not res!774587) (not e!663609))))

(declare-datatypes ((array!75412 0))(
  ( (array!75413 (arr!36353 (Array (_ BitVec 32) (_ BitVec 64))) (size!36890 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75412)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44217 0))(
  ( (V!44218 (val!14715 Int)) )
))
(declare-datatypes ((ValueCell!13949 0))(
  ( (ValueCellFull!13949 (v!17353 V!44217)) (EmptyCell!13949) )
))
(declare-datatypes ((array!75414 0))(
  ( (array!75415 (arr!36354 (Array (_ BitVec 32) ValueCell!13949)) (size!36891 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75414)

(assert (=> b!1167484 (= res!774587 (and (= (size!36891 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36890 _keys!1208) (size!36891 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167485 () Bool)

(declare-fun res!774585 () Bool)

(assert (=> b!1167485 (=> (not res!774585) (not e!663609))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1167485 (= res!774585 (= (select (arr!36353 _keys!1208) i!673) k!934))))

(declare-fun b!1167486 () Bool)

(declare-fun res!774593 () Bool)

(declare-fun e!663611 () Bool)

(assert (=> b!1167486 (=> (not res!774593) (not e!663611))))

(declare-fun lt!525625 () array!75412)

(declare-datatypes ((List!25631 0))(
  ( (Nil!25628) (Cons!25627 (h!26836 (_ BitVec 64)) (t!37417 List!25631)) )
))
(declare-fun arrayNoDuplicates!0 (array!75412 (_ BitVec 32) List!25631) Bool)

(assert (=> b!1167486 (= res!774593 (arrayNoDuplicates!0 lt!525625 #b00000000000000000000000000000000 Nil!25628))))

(declare-fun b!1167487 () Bool)

(declare-fun res!774592 () Bool)

(assert (=> b!1167487 (=> (not res!774592) (not e!663609))))

(assert (=> b!1167487 (= res!774592 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25628))))

(declare-fun res!774596 () Bool)

(assert (=> start!99218 (=> (not res!774596) (not e!663609))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99218 (= res!774596 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36890 _keys!1208))))))

(assert (=> start!99218 e!663609))

(declare-fun tp_is_empty!29317 () Bool)

(assert (=> start!99218 tp_is_empty!29317))

(declare-fun array_inv!27670 (array!75412) Bool)

(assert (=> start!99218 (array_inv!27670 _keys!1208)))

(assert (=> start!99218 true))

(assert (=> start!99218 tp!87072))

(declare-fun e!663612 () Bool)

(declare-fun array_inv!27671 (array!75414) Bool)

(assert (=> start!99218 (and (array_inv!27671 _values!996) e!663612)))

(declare-fun b!1167488 () Bool)

(declare-fun res!774589 () Bool)

(assert (=> b!1167488 (=> (not res!774589) (not e!663609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167488 (= res!774589 (validMask!0 mask!1564))))

(declare-fun b!1167489 () Bool)

(declare-fun e!663606 () Bool)

(assert (=> b!1167489 (= e!663606 true)))

(declare-fun zeroValue!944 () V!44217)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44217)

(declare-fun lt!525624 () array!75414)

(declare-datatypes ((tuple2!18854 0))(
  ( (tuple2!18855 (_1!9437 (_ BitVec 64)) (_2!9437 V!44217)) )
))
(declare-datatypes ((List!25632 0))(
  ( (Nil!25629) (Cons!25628 (h!26837 tuple2!18854) (t!37418 List!25632)) )
))
(declare-datatypes ((ListLongMap!16835 0))(
  ( (ListLongMap!16836 (toList!8433 List!25632)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4866 (array!75412 array!75414 (_ BitVec 32) (_ BitVec 32) V!44217 V!44217 (_ BitVec 32) Int) ListLongMap!16835)

(declare-fun -!1467 (ListLongMap!16835 (_ BitVec 64)) ListLongMap!16835)

(assert (=> b!1167489 (= (getCurrentListMapNoExtraKeys!4866 lt!525625 lt!525624 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1467 (getCurrentListMapNoExtraKeys!4866 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!38422 0))(
  ( (Unit!38423) )
))
(declare-fun lt!525627 () Unit!38422)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!691 (array!75412 array!75414 (_ BitVec 32) (_ BitVec 32) V!44217 V!44217 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38422)

(assert (=> b!1167489 (= lt!525627 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!691 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1167490 () Bool)

(declare-fun e!663610 () Bool)

(assert (=> b!1167490 (= e!663611 (not e!663610))))

(declare-fun res!774594 () Bool)

(assert (=> b!1167490 (=> res!774594 e!663610)))

(assert (=> b!1167490 (= res!774594 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167490 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!525626 () Unit!38422)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75412 (_ BitVec 64) (_ BitVec 32)) Unit!38422)

(assert (=> b!1167490 (= lt!525626 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1167491 () Bool)

(assert (=> b!1167491 (= e!663610 e!663606)))

(declare-fun res!774590 () Bool)

(assert (=> b!1167491 (=> res!774590 e!663606)))

(assert (=> b!1167491 (= res!774590 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525623 () ListLongMap!16835)

(assert (=> b!1167491 (= lt!525623 (getCurrentListMapNoExtraKeys!4866 lt!525625 lt!525624 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2858 (Int (_ BitVec 64)) V!44217)

(assert (=> b!1167491 (= lt!525624 (array!75415 (store (arr!36354 _values!996) i!673 (ValueCellFull!13949 (dynLambda!2858 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36891 _values!996)))))

(declare-fun lt!525622 () ListLongMap!16835)

(assert (=> b!1167491 (= lt!525622 (getCurrentListMapNoExtraKeys!4866 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167492 () Bool)

(declare-fun e!663607 () Bool)

(assert (=> b!1167492 (= e!663607 tp_is_empty!29317)))

(declare-fun mapIsEmpty!45800 () Bool)

(declare-fun mapRes!45800 () Bool)

(assert (=> mapIsEmpty!45800 mapRes!45800))

(declare-fun mapNonEmpty!45800 () Bool)

(declare-fun tp!87073 () Bool)

(assert (=> mapNonEmpty!45800 (= mapRes!45800 (and tp!87073 e!663607))))

(declare-fun mapRest!45800 () (Array (_ BitVec 32) ValueCell!13949))

(declare-fun mapKey!45800 () (_ BitVec 32))

(declare-fun mapValue!45800 () ValueCell!13949)

(assert (=> mapNonEmpty!45800 (= (arr!36354 _values!996) (store mapRest!45800 mapKey!45800 mapValue!45800))))

(declare-fun b!1167493 () Bool)

(declare-fun res!774586 () Bool)

(assert (=> b!1167493 (=> (not res!774586) (not e!663609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75412 (_ BitVec 32)) Bool)

(assert (=> b!1167493 (= res!774586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1167494 () Bool)

(assert (=> b!1167494 (= e!663609 e!663611)))

(declare-fun res!774588 () Bool)

(assert (=> b!1167494 (=> (not res!774588) (not e!663611))))

(assert (=> b!1167494 (= res!774588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525625 mask!1564))))

(assert (=> b!1167494 (= lt!525625 (array!75413 (store (arr!36353 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36890 _keys!1208)))))

(declare-fun b!1167495 () Bool)

(declare-fun res!774591 () Bool)

(assert (=> b!1167495 (=> (not res!774591) (not e!663609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167495 (= res!774591 (validKeyInArray!0 k!934))))

(declare-fun b!1167496 () Bool)

(declare-fun e!663605 () Bool)

(assert (=> b!1167496 (= e!663605 tp_is_empty!29317)))

(declare-fun b!1167497 () Bool)

(declare-fun res!774595 () Bool)

(assert (=> b!1167497 (=> (not res!774595) (not e!663609))))

(assert (=> b!1167497 (= res!774595 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36890 _keys!1208))))))

(declare-fun b!1167498 () Bool)

(assert (=> b!1167498 (= e!663612 (and e!663605 mapRes!45800))))

(declare-fun condMapEmpty!45800 () Bool)

(declare-fun mapDefault!45800 () ValueCell!13949)

