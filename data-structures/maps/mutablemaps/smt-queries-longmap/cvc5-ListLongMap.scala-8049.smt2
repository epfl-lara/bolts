; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99170 () Bool)

(assert start!99170)

(declare-fun b_free!24739 () Bool)

(declare-fun b_next!24739 () Bool)

(assert (=> start!99170 (= b_free!24739 (not b_next!24739))))

(declare-fun tp!86928 () Bool)

(declare-fun b_and!40341 () Bool)

(assert (=> start!99170 (= tp!86928 b_and!40341)))

(declare-fun b!1166356 () Bool)

(declare-fun res!773730 () Bool)

(declare-fun e!663032 () Bool)

(assert (=> b!1166356 (=> (not res!773730) (not e!663032))))

(declare-datatypes ((array!75316 0))(
  ( (array!75317 (arr!36305 (Array (_ BitVec 32) (_ BitVec 64))) (size!36842 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75316)

(declare-datatypes ((List!25590 0))(
  ( (Nil!25587) (Cons!25586 (h!26795 (_ BitVec 64)) (t!37328 List!25590)) )
))
(declare-fun arrayNoDuplicates!0 (array!75316 (_ BitVec 32) List!25590) Bool)

(assert (=> b!1166356 (= res!773730 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25587))))

(declare-fun b!1166357 () Bool)

(declare-fun e!663029 () Bool)

(declare-fun tp_is_empty!29269 () Bool)

(assert (=> b!1166357 (= e!663029 tp_is_empty!29269)))

(declare-fun b!1166358 () Bool)

(declare-fun res!773729 () Bool)

(declare-fun e!663030 () Bool)

(assert (=> b!1166358 (=> (not res!773729) (not e!663030))))

(declare-fun lt!525191 () array!75316)

(assert (=> b!1166358 (= res!773729 (arrayNoDuplicates!0 lt!525191 #b00000000000000000000000000000000 Nil!25587))))

(declare-fun b!1166359 () Bool)

(declare-fun res!773723 () Bool)

(assert (=> b!1166359 (=> (not res!773723) (not e!663032))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44153 0))(
  ( (V!44154 (val!14691 Int)) )
))
(declare-datatypes ((ValueCell!13925 0))(
  ( (ValueCellFull!13925 (v!17329 V!44153)) (EmptyCell!13925) )
))
(declare-datatypes ((array!75318 0))(
  ( (array!75319 (arr!36306 (Array (_ BitVec 32) ValueCell!13925)) (size!36843 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75318)

(assert (=> b!1166359 (= res!773723 (and (= (size!36843 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36842 _keys!1208) (size!36843 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166360 () Bool)

(declare-fun e!663035 () Bool)

(assert (=> b!1166360 (= e!663035 tp_is_empty!29269)))

(declare-fun b!1166361 () Bool)

(declare-fun e!663031 () Bool)

(assert (=> b!1166361 (= e!663031 true)))

(declare-fun zeroValue!944 () V!44153)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!525193 () array!75318)

(declare-fun minValue!944 () V!44153)

(declare-datatypes ((tuple2!18814 0))(
  ( (tuple2!18815 (_1!9417 (_ BitVec 64)) (_2!9417 V!44153)) )
))
(declare-datatypes ((List!25591 0))(
  ( (Nil!25588) (Cons!25587 (h!26796 tuple2!18814) (t!37329 List!25591)) )
))
(declare-datatypes ((ListLongMap!16795 0))(
  ( (ListLongMap!16796 (toList!8413 List!25591)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4846 (array!75316 array!75318 (_ BitVec 32) (_ BitVec 32) V!44153 V!44153 (_ BitVec 32) Int) ListLongMap!16795)

(declare-fun -!1450 (ListLongMap!16795 (_ BitVec 64)) ListLongMap!16795)

(assert (=> b!1166361 (= (getCurrentListMapNoExtraKeys!4846 lt!525191 lt!525193 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1450 (getCurrentListMapNoExtraKeys!4846 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!38380 0))(
  ( (Unit!38381) )
))
(declare-fun lt!525190 () Unit!38380)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!674 (array!75316 array!75318 (_ BitVec 32) (_ BitVec 32) V!44153 V!44153 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38380)

(assert (=> b!1166361 (= lt!525190 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!674 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166362 () Bool)

(declare-fun res!773727 () Bool)

(assert (=> b!1166362 (=> (not res!773727) (not e!663032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166362 (= res!773727 (validKeyInArray!0 k!934))))

(declare-fun b!1166363 () Bool)

(assert (=> b!1166363 (= e!663032 e!663030)))

(declare-fun res!773724 () Bool)

(assert (=> b!1166363 (=> (not res!773724) (not e!663030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75316 (_ BitVec 32)) Bool)

(assert (=> b!1166363 (= res!773724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525191 mask!1564))))

(assert (=> b!1166363 (= lt!525191 (array!75317 (store (arr!36305 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36842 _keys!1208)))))

(declare-fun b!1166364 () Bool)

(declare-fun res!773732 () Bool)

(assert (=> b!1166364 (=> (not res!773732) (not e!663032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166364 (= res!773732 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45728 () Bool)

(declare-fun mapRes!45728 () Bool)

(assert (=> mapIsEmpty!45728 mapRes!45728))

(declare-fun b!1166365 () Bool)

(declare-fun e!663033 () Bool)

(assert (=> b!1166365 (= e!663033 e!663031)))

(declare-fun res!773721 () Bool)

(assert (=> b!1166365 (=> res!773721 e!663031)))

(assert (=> b!1166365 (= res!773721 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525192 () ListLongMap!16795)

(assert (=> b!1166365 (= lt!525192 (getCurrentListMapNoExtraKeys!4846 lt!525191 lt!525193 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2841 (Int (_ BitVec 64)) V!44153)

(assert (=> b!1166365 (= lt!525193 (array!75319 (store (arr!36306 _values!996) i!673 (ValueCellFull!13925 (dynLambda!2841 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36843 _values!996)))))

(declare-fun lt!525195 () ListLongMap!16795)

(assert (=> b!1166365 (= lt!525195 (getCurrentListMapNoExtraKeys!4846 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!45728 () Bool)

(declare-fun tp!86929 () Bool)

(assert (=> mapNonEmpty!45728 (= mapRes!45728 (and tp!86929 e!663029))))

(declare-fun mapRest!45728 () (Array (_ BitVec 32) ValueCell!13925))

(declare-fun mapValue!45728 () ValueCell!13925)

(declare-fun mapKey!45728 () (_ BitVec 32))

(assert (=> mapNonEmpty!45728 (= (arr!36306 _values!996) (store mapRest!45728 mapKey!45728 mapValue!45728))))

(declare-fun b!1166366 () Bool)

(declare-fun res!773722 () Bool)

(assert (=> b!1166366 (=> (not res!773722) (not e!663032))))

(assert (=> b!1166366 (= res!773722 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36842 _keys!1208))))))

(declare-fun b!1166367 () Bool)

(declare-fun res!773731 () Bool)

(assert (=> b!1166367 (=> (not res!773731) (not e!663032))))

(assert (=> b!1166367 (= res!773731 (= (select (arr!36305 _keys!1208) i!673) k!934))))

(declare-fun b!1166368 () Bool)

(declare-fun e!663036 () Bool)

(assert (=> b!1166368 (= e!663036 (and e!663035 mapRes!45728))))

(declare-fun condMapEmpty!45728 () Bool)

(declare-fun mapDefault!45728 () ValueCell!13925)

