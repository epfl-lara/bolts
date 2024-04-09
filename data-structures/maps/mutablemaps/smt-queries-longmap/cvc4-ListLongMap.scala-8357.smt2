; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101764 () Bool)

(assert start!101764)

(declare-fun b_free!26417 () Bool)

(declare-fun b_next!26417 () Bool)

(assert (=> start!101764 (= b_free!26417 (not b_next!26417))))

(declare-fun tp!92297 () Bool)

(declare-fun b_and!44105 () Bool)

(assert (=> start!101764 (= tp!92297 b_and!44105)))

(declare-fun b!1224293 () Bool)

(declare-fun e!695389 () Bool)

(declare-fun tp_is_empty!31121 () Bool)

(assert (=> b!1224293 (= e!695389 tp_is_empty!31121)))

(declare-fun b!1224294 () Bool)

(declare-fun e!695380 () Bool)

(declare-fun e!695379 () Bool)

(assert (=> b!1224294 (= e!695380 e!695379)))

(declare-fun res!813624 () Bool)

(assert (=> b!1224294 (=> (not res!813624) (not e!695379))))

(declare-datatypes ((array!79000 0))(
  ( (array!79001 (arr!38123 (Array (_ BitVec 32) (_ BitVec 64))) (size!38660 (_ BitVec 32))) )
))
(declare-fun lt!557415 () array!79000)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79000 (_ BitVec 32)) Bool)

(assert (=> b!1224294 (= res!813624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557415 mask!1564))))

(declare-fun _keys!1208 () array!79000)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1224294 (= lt!557415 (array!79001 (store (arr!38123 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38660 _keys!1208)))))

(declare-fun b!1224295 () Bool)

(declare-fun e!695384 () Bool)

(assert (=> b!1224295 (= e!695379 (not e!695384))))

(declare-fun res!813623 () Bool)

(assert (=> b!1224295 (=> res!813623 e!695384)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1224295 (= res!813623 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224295 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40495 0))(
  ( (Unit!40496) )
))
(declare-fun lt!557423 () Unit!40495)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79000 (_ BitVec 64) (_ BitVec 32)) Unit!40495)

(assert (=> b!1224295 (= lt!557423 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224296 () Bool)

(declare-fun res!813625 () Bool)

(assert (=> b!1224296 (=> (not res!813625) (not e!695380))))

(assert (=> b!1224296 (= res!813625 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38660 _keys!1208))))))

(declare-fun b!1224297 () Bool)

(declare-fun e!695382 () Bool)

(assert (=> b!1224297 (= e!695382 tp_is_empty!31121)))

(declare-fun b!1224298 () Bool)

(declare-fun e!695390 () Bool)

(declare-datatypes ((V!46621 0))(
  ( (V!46622 (val!15617 Int)) )
))
(declare-datatypes ((ValueCell!14851 0))(
  ( (ValueCellFull!14851 (v!18280 V!46621)) (EmptyCell!14851) )
))
(declare-datatypes ((array!79002 0))(
  ( (array!79003 (arr!38124 (Array (_ BitVec 32) ValueCell!14851)) (size!38661 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79002)

(assert (=> b!1224298 (= e!695390 (bvslt from!1455 (size!38661 _values!996)))))

(declare-fun e!695385 () Bool)

(assert (=> b!1224298 e!695385))

(declare-fun res!813616 () Bool)

(assert (=> b!1224298 (=> (not res!813616) (not e!695385))))

(assert (=> b!1224298 (= res!813616 (not (= (select (arr!38123 _keys!1208) from!1455) k!934)))))

(declare-fun lt!557414 () Unit!40495)

(declare-fun e!695391 () Unit!40495)

(assert (=> b!1224298 (= lt!557414 e!695391)))

(declare-fun c!120390 () Bool)

(assert (=> b!1224298 (= c!120390 (= (select (arr!38123 _keys!1208) from!1455) k!934))))

(declare-fun e!695387 () Bool)

(assert (=> b!1224298 e!695387))

(declare-fun res!813621 () Bool)

(assert (=> b!1224298 (=> (not res!813621) (not e!695387))))

(declare-datatypes ((tuple2!20272 0))(
  ( (tuple2!20273 (_1!10146 (_ BitVec 64)) (_2!10146 V!46621)) )
))
(declare-datatypes ((List!27084 0))(
  ( (Nil!27081) (Cons!27080 (h!28289 tuple2!20272) (t!40488 List!27084)) )
))
(declare-datatypes ((ListLongMap!18253 0))(
  ( (ListLongMap!18254 (toList!9142 List!27084)) )
))
(declare-fun lt!557411 () ListLongMap!18253)

(declare-fun lt!557413 () tuple2!20272)

(declare-fun lt!557420 () ListLongMap!18253)

(declare-fun +!4104 (ListLongMap!18253 tuple2!20272) ListLongMap!18253)

(assert (=> b!1224298 (= res!813621 (= lt!557411 (+!4104 lt!557420 lt!557413)))))

(declare-fun lt!557418 () V!46621)

(declare-fun get!19514 (ValueCell!14851 V!46621) V!46621)

(assert (=> b!1224298 (= lt!557413 (tuple2!20273 (select (arr!38123 _keys!1208) from!1455) (get!19514 (select (arr!38124 _values!996) from!1455) lt!557418)))))

(declare-fun b!1224299 () Bool)

(declare-fun res!813622 () Bool)

(assert (=> b!1224299 (=> (not res!813622) (not e!695380))))

(assert (=> b!1224299 (= res!813622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1224300 () Bool)

(declare-fun res!813617 () Bool)

(assert (=> b!1224300 (=> (not res!813617) (not e!695385))))

(declare-fun lt!557416 () ListLongMap!18253)

(declare-fun lt!557425 () ListLongMap!18253)

(assert (=> b!1224300 (= res!813617 (= lt!557425 (+!4104 lt!557416 lt!557413)))))

(declare-fun b!1224301 () Bool)

(declare-fun lt!557422 () ListLongMap!18253)

(assert (=> b!1224301 (= e!695385 (= lt!557420 lt!557422))))

(declare-fun mapNonEmpty!48580 () Bool)

(declare-fun mapRes!48580 () Bool)

(declare-fun tp!92298 () Bool)

(assert (=> mapNonEmpty!48580 (= mapRes!48580 (and tp!92298 e!695389))))

(declare-fun mapRest!48580 () (Array (_ BitVec 32) ValueCell!14851))

(declare-fun mapKey!48580 () (_ BitVec 32))

(declare-fun mapValue!48580 () ValueCell!14851)

(assert (=> mapNonEmpty!48580 (= (arr!38124 _values!996) (store mapRest!48580 mapKey!48580 mapValue!48580))))

(declare-fun b!1224302 () Bool)

(declare-fun e!695381 () Bool)

(assert (=> b!1224302 (= e!695387 e!695381)))

(declare-fun res!813627 () Bool)

(assert (=> b!1224302 (=> res!813627 e!695381)))

(assert (=> b!1224302 (= res!813627 (not (= (select (arr!38123 _keys!1208) from!1455) k!934)))))

(declare-fun b!1224303 () Bool)

(declare-fun res!813618 () Bool)

(assert (=> b!1224303 (=> (not res!813618) (not e!695380))))

(assert (=> b!1224303 (= res!813618 (= (select (arr!38123 _keys!1208) i!673) k!934))))

(declare-fun b!1224304 () Bool)

(declare-fun e!695383 () Bool)

(assert (=> b!1224304 (= e!695384 e!695383)))

(declare-fun res!813629 () Bool)

(assert (=> b!1224304 (=> res!813629 e!695383)))

(assert (=> b!1224304 (= res!813629 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46621)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!557412 () array!79002)

(declare-fun minValue!944 () V!46621)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5539 (array!79000 array!79002 (_ BitVec 32) (_ BitVec 32) V!46621 V!46621 (_ BitVec 32) Int) ListLongMap!18253)

(assert (=> b!1224304 (= lt!557411 (getCurrentListMapNoExtraKeys!5539 lt!557415 lt!557412 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1224304 (= lt!557412 (array!79003 (store (arr!38124 _values!996) i!673 (ValueCellFull!14851 lt!557418)) (size!38661 _values!996)))))

(declare-fun dynLambda!3434 (Int (_ BitVec 64)) V!46621)

(assert (=> b!1224304 (= lt!557418 (dynLambda!3434 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1224304 (= lt!557425 (getCurrentListMapNoExtraKeys!5539 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1224306 () Bool)

(declare-fun e!695388 () Bool)

(assert (=> b!1224306 (= e!695388 (and e!695382 mapRes!48580))))

(declare-fun condMapEmpty!48580 () Bool)

(declare-fun mapDefault!48580 () ValueCell!14851)

