; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99264 () Bool)

(assert start!99264)

(declare-fun b_free!24833 () Bool)

(declare-fun b_next!24833 () Bool)

(assert (=> start!99264 (= b_free!24833 (not b_next!24833))))

(declare-fun tp!87210 () Bool)

(declare-fun b_and!40529 () Bool)

(assert (=> start!99264 (= tp!87210 b_and!40529)))

(declare-fun b!1168591 () Bool)

(declare-fun res!775440 () Bool)

(declare-fun e!664185 () Bool)

(assert (=> b!1168591 (=> (not res!775440) (not e!664185))))

(declare-datatypes ((array!75500 0))(
  ( (array!75501 (arr!36397 (Array (_ BitVec 32) (_ BitVec 64))) (size!36934 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75500)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1168591 (= res!775440 (= (select (arr!36397 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!45869 () Bool)

(declare-fun mapRes!45869 () Bool)

(assert (=> mapIsEmpty!45869 mapRes!45869))

(declare-fun b!1168592 () Bool)

(declare-fun e!664190 () Bool)

(assert (=> b!1168592 (= e!664185 e!664190)))

(declare-fun res!775450 () Bool)

(assert (=> b!1168592 (=> (not res!775450) (not e!664190))))

(declare-fun lt!526108 () array!75500)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75500 (_ BitVec 32)) Bool)

(assert (=> b!1168592 (= res!775450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526108 mask!1564))))

(assert (=> b!1168592 (= lt!526108 (array!75501 (store (arr!36397 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36934 _keys!1208)))))

(declare-fun mapNonEmpty!45869 () Bool)

(declare-fun tp!87211 () Bool)

(declare-fun e!664186 () Bool)

(assert (=> mapNonEmpty!45869 (= mapRes!45869 (and tp!87211 e!664186))))

(declare-datatypes ((V!44277 0))(
  ( (V!44278 (val!14738 Int)) )
))
(declare-datatypes ((ValueCell!13972 0))(
  ( (ValueCellFull!13972 (v!17376 V!44277)) (EmptyCell!13972) )
))
(declare-fun mapRest!45869 () (Array (_ BitVec 32) ValueCell!13972))

(declare-fun mapValue!45869 () ValueCell!13972)

(declare-fun mapKey!45869 () (_ BitVec 32))

(declare-datatypes ((array!75502 0))(
  ( (array!75503 (arr!36398 (Array (_ BitVec 32) ValueCell!13972)) (size!36935 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75502)

(assert (=> mapNonEmpty!45869 (= (arr!36398 _values!996) (store mapRest!45869 mapKey!45869 mapValue!45869))))

(declare-fun b!1168593 () Bool)

(declare-fun e!664187 () Bool)

(declare-fun e!664189 () Bool)

(assert (=> b!1168593 (= e!664187 e!664189)))

(declare-fun res!775446 () Bool)

(assert (=> b!1168593 (=> res!775446 e!664189)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1168593 (= res!775446 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44277)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!526110 () array!75502)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18894 0))(
  ( (tuple2!18895 (_1!9457 (_ BitVec 64)) (_2!9457 V!44277)) )
))
(declare-datatypes ((List!25666 0))(
  ( (Nil!25663) (Cons!25662 (h!26871 tuple2!18894) (t!37498 List!25666)) )
))
(declare-datatypes ((ListLongMap!16875 0))(
  ( (ListLongMap!16876 (toList!8453 List!25666)) )
))
(declare-fun lt!526107 () ListLongMap!16875)

(declare-fun minValue!944 () V!44277)

(declare-fun getCurrentListMapNoExtraKeys!4886 (array!75500 array!75502 (_ BitVec 32) (_ BitVec 32) V!44277 V!44277 (_ BitVec 32) Int) ListLongMap!16875)

(assert (=> b!1168593 (= lt!526107 (getCurrentListMapNoExtraKeys!4886 lt!526108 lt!526110 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526111 () V!44277)

(assert (=> b!1168593 (= lt!526110 (array!75503 (store (arr!36398 _values!996) i!673 (ValueCellFull!13972 lt!526111)) (size!36935 _values!996)))))

(declare-fun dynLambda!2878 (Int (_ BitVec 64)) V!44277)

(assert (=> b!1168593 (= lt!526111 (dynLambda!2878 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526109 () ListLongMap!16875)

(assert (=> b!1168593 (= lt!526109 (getCurrentListMapNoExtraKeys!4886 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168594 () Bool)

(declare-fun res!775444 () Bool)

(assert (=> b!1168594 (=> (not res!775444) (not e!664185))))

(assert (=> b!1168594 (= res!775444 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36934 _keys!1208))))))

(declare-fun b!1168595 () Bool)

(declare-fun res!775441 () Bool)

(assert (=> b!1168595 (=> (not res!775441) (not e!664185))))

(declare-datatypes ((List!25667 0))(
  ( (Nil!25664) (Cons!25663 (h!26872 (_ BitVec 64)) (t!37499 List!25667)) )
))
(declare-fun arrayNoDuplicates!0 (array!75500 (_ BitVec 32) List!25667) Bool)

(assert (=> b!1168595 (= res!775441 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25664))))

(declare-fun b!1168596 () Bool)

(declare-fun e!664183 () Bool)

(declare-fun tp_is_empty!29363 () Bool)

(assert (=> b!1168596 (= e!664183 tp_is_empty!29363)))

(declare-fun b!1168597 () Bool)

(declare-fun e!664188 () Bool)

(assert (=> b!1168597 (= e!664189 e!664188)))

(declare-fun res!775443 () Bool)

(assert (=> b!1168597 (=> res!775443 e!664188)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168597 (= res!775443 (not (validKeyInArray!0 (select (arr!36397 _keys!1208) from!1455))))))

(declare-fun lt!526106 () ListLongMap!16875)

(declare-fun lt!526104 () ListLongMap!16875)

(assert (=> b!1168597 (= lt!526106 lt!526104)))

(declare-fun lt!526105 () ListLongMap!16875)

(declare-fun -!1481 (ListLongMap!16875 (_ BitVec 64)) ListLongMap!16875)

(assert (=> b!1168597 (= lt!526104 (-!1481 lt!526105 k!934))))

(assert (=> b!1168597 (= lt!526106 (getCurrentListMapNoExtraKeys!4886 lt!526108 lt!526110 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1168597 (= lt!526105 (getCurrentListMapNoExtraKeys!4886 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38454 0))(
  ( (Unit!38455) )
))
(declare-fun lt!526113 () Unit!38454)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!705 (array!75500 array!75502 (_ BitVec 32) (_ BitVec 32) V!44277 V!44277 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38454)

(assert (=> b!1168597 (= lt!526113 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!705 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168598 () Bool)

(assert (=> b!1168598 (= e!664188 true)))

(declare-fun +!3703 (ListLongMap!16875 tuple2!18894) ListLongMap!16875)

(declare-fun get!18578 (ValueCell!13972 V!44277) V!44277)

(assert (=> b!1168598 (= lt!526107 (+!3703 lt!526104 (tuple2!18895 (select (arr!36397 _keys!1208) from!1455) (get!18578 (select (arr!36398 _values!996) from!1455) lt!526111))))))

(declare-fun b!1168599 () Bool)

(declare-fun res!775439 () Bool)

(assert (=> b!1168599 (=> (not res!775439) (not e!664190))))

(assert (=> b!1168599 (= res!775439 (arrayNoDuplicates!0 lt!526108 #b00000000000000000000000000000000 Nil!25664))))

(declare-fun b!1168601 () Bool)

(declare-fun res!775449 () Bool)

(assert (=> b!1168601 (=> (not res!775449) (not e!664185))))

(assert (=> b!1168601 (= res!775449 (and (= (size!36935 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36934 _keys!1208) (size!36935 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1168602 () Bool)

(declare-fun res!775448 () Bool)

(assert (=> b!1168602 (=> (not res!775448) (not e!664185))))

(assert (=> b!1168602 (= res!775448 (validKeyInArray!0 k!934))))

(declare-fun b!1168603 () Bool)

(declare-fun res!775442 () Bool)

(assert (=> b!1168603 (=> (not res!775442) (not e!664185))))

(assert (=> b!1168603 (= res!775442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168604 () Bool)

(declare-fun res!775451 () Bool)

(assert (=> b!1168604 (=> (not res!775451) (not e!664185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168604 (= res!775451 (validMask!0 mask!1564))))

(declare-fun b!1168605 () Bool)

(assert (=> b!1168605 (= e!664186 tp_is_empty!29363)))

(declare-fun b!1168606 () Bool)

(assert (=> b!1168606 (= e!664190 (not e!664187))))

(declare-fun res!775445 () Bool)

(assert (=> b!1168606 (=> res!775445 e!664187)))

(assert (=> b!1168606 (= res!775445 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168606 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!526112 () Unit!38454)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75500 (_ BitVec 64) (_ BitVec 32)) Unit!38454)

(assert (=> b!1168606 (= lt!526112 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168600 () Bool)

(declare-fun e!664184 () Bool)

(assert (=> b!1168600 (= e!664184 (and e!664183 mapRes!45869))))

(declare-fun condMapEmpty!45869 () Bool)

(declare-fun mapDefault!45869 () ValueCell!13972)

