; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99466 () Bool)

(assert start!99466)

(declare-fun b_free!25009 () Bool)

(declare-fun b_next!25009 () Bool)

(assert (=> start!99466 (= b_free!25009 (not b_next!25009))))

(declare-fun tp!87742 () Bool)

(declare-fun b_and!40899 () Bool)

(assert (=> start!99466 (= tp!87742 b_and!40899)))

(declare-fun mapIsEmpty!46136 () Bool)

(declare-fun mapRes!46136 () Bool)

(assert (=> mapIsEmpty!46136 mapRes!46136))

(declare-fun b!1174159 () Bool)

(declare-fun e!667447 () Bool)

(declare-fun e!667444 () Bool)

(assert (=> b!1174159 (= e!667447 e!667444)))

(declare-fun res!779816 () Bool)

(assert (=> b!1174159 (=> res!779816 e!667444)))

(declare-datatypes ((array!75854 0))(
  ( (array!75855 (arr!36573 (Array (_ BitVec 32) (_ BitVec 64))) (size!37110 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75854)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174159 (= res!779816 (not (validKeyInArray!0 (select (arr!36573 _keys!1208) from!1455))))))

(declare-datatypes ((V!44513 0))(
  ( (V!44514 (val!14826 Int)) )
))
(declare-datatypes ((tuple2!19052 0))(
  ( (tuple2!19053 (_1!9536 (_ BitVec 64)) (_2!9536 V!44513)) )
))
(declare-datatypes ((List!25823 0))(
  ( (Nil!25820) (Cons!25819 (h!27028 tuple2!19052) (t!37831 List!25823)) )
))
(declare-datatypes ((ListLongMap!17033 0))(
  ( (ListLongMap!17034 (toList!8532 List!25823)) )
))
(declare-fun lt!529411 () ListLongMap!17033)

(declare-fun lt!529406 () ListLongMap!17033)

(assert (=> b!1174159 (= lt!529411 lt!529406)))

(declare-fun lt!529413 () ListLongMap!17033)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1543 (ListLongMap!17033 (_ BitVec 64)) ListLongMap!17033)

(assert (=> b!1174159 (= lt!529406 (-!1543 lt!529413 k!934))))

(declare-fun zeroValue!944 () V!44513)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!529412 () array!75854)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14060 0))(
  ( (ValueCellFull!14060 (v!17465 V!44513)) (EmptyCell!14060) )
))
(declare-datatypes ((array!75856 0))(
  ( (array!75857 (arr!36574 (Array (_ BitVec 32) ValueCell!14060)) (size!37111 (_ BitVec 32))) )
))
(declare-fun lt!529405 () array!75856)

(declare-fun minValue!944 () V!44513)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4963 (array!75854 array!75856 (_ BitVec 32) (_ BitVec 32) V!44513 V!44513 (_ BitVec 32) Int) ListLongMap!17033)

(assert (=> b!1174159 (= lt!529411 (getCurrentListMapNoExtraKeys!4963 lt!529412 lt!529405 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75856)

(assert (=> b!1174159 (= lt!529413 (getCurrentListMapNoExtraKeys!4963 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38641 0))(
  ( (Unit!38642) )
))
(declare-fun lt!529415 () Unit!38641)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!767 (array!75854 array!75856 (_ BitVec 32) (_ BitVec 32) V!44513 V!44513 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38641)

(assert (=> b!1174159 (= lt!529415 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!767 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174160 () Bool)

(declare-fun res!779808 () Bool)

(declare-fun e!667446 () Bool)

(assert (=> b!1174160 (=> (not res!779808) (not e!667446))))

(assert (=> b!1174160 (= res!779808 (= (select (arr!36573 _keys!1208) i!673) k!934))))

(declare-fun b!1174161 () Bool)

(declare-fun res!779807 () Bool)

(assert (=> b!1174161 (=> (not res!779807) (not e!667446))))

(assert (=> b!1174161 (= res!779807 (validKeyInArray!0 k!934))))

(declare-fun b!1174162 () Bool)

(declare-fun res!779809 () Bool)

(assert (=> b!1174162 (=> (not res!779809) (not e!667446))))

(declare-datatypes ((List!25824 0))(
  ( (Nil!25821) (Cons!25820 (h!27029 (_ BitVec 64)) (t!37832 List!25824)) )
))
(declare-fun arrayNoDuplicates!0 (array!75854 (_ BitVec 32) List!25824) Bool)

(assert (=> b!1174162 (= res!779809 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25821))))

(declare-fun e!667448 () Bool)

(declare-fun b!1174163 () Bool)

(declare-fun arrayContainsKey!0 (array!75854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174163 (= e!667448 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174164 () Bool)

(declare-fun e!667449 () Bool)

(declare-fun tp_is_empty!29539 () Bool)

(assert (=> b!1174164 (= e!667449 tp_is_empty!29539)))

(declare-fun b!1174165 () Bool)

(declare-fun res!779814 () Bool)

(assert (=> b!1174165 (=> (not res!779814) (not e!667446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174165 (= res!779814 (validMask!0 mask!1564))))

(declare-fun b!1174166 () Bool)

(assert (=> b!1174166 (= e!667444 true)))

(assert (=> b!1174166 (not (= (select (arr!36573 _keys!1208) from!1455) k!934))))

(declare-fun lt!529403 () Unit!38641)

(declare-fun e!667442 () Unit!38641)

(assert (=> b!1174166 (= lt!529403 e!667442)))

(declare-fun c!116585 () Bool)

(assert (=> b!1174166 (= c!116585 (= (select (arr!36573 _keys!1208) from!1455) k!934))))

(declare-fun e!667450 () Bool)

(assert (=> b!1174166 e!667450))

(declare-fun res!779810 () Bool)

(assert (=> b!1174166 (=> (not res!779810) (not e!667450))))

(declare-fun lt!529410 () ListLongMap!17033)

(declare-fun lt!529409 () V!44513)

(declare-fun +!3766 (ListLongMap!17033 tuple2!19052) ListLongMap!17033)

(declare-fun get!18703 (ValueCell!14060 V!44513) V!44513)

(assert (=> b!1174166 (= res!779810 (= lt!529410 (+!3766 lt!529406 (tuple2!19053 (select (arr!36573 _keys!1208) from!1455) (get!18703 (select (arr!36574 _values!996) from!1455) lt!529409)))))))

(declare-fun b!1174167 () Bool)

(declare-fun e!667445 () Bool)

(assert (=> b!1174167 (= e!667445 e!667447)))

(declare-fun res!779818 () Bool)

(assert (=> b!1174167 (=> res!779818 e!667447)))

(assert (=> b!1174167 (= res!779818 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1174167 (= lt!529410 (getCurrentListMapNoExtraKeys!4963 lt!529412 lt!529405 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1174167 (= lt!529405 (array!75857 (store (arr!36574 _values!996) i!673 (ValueCellFull!14060 lt!529409)) (size!37111 _values!996)))))

(declare-fun dynLambda!2947 (Int (_ BitVec 64)) V!44513)

(assert (=> b!1174167 (= lt!529409 (dynLambda!2947 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529407 () ListLongMap!17033)

(assert (=> b!1174167 (= lt!529407 (getCurrentListMapNoExtraKeys!4963 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174168 () Bool)

(declare-fun e!667452 () Bool)

(assert (=> b!1174168 (= e!667446 e!667452)))

(declare-fun res!779813 () Bool)

(assert (=> b!1174168 (=> (not res!779813) (not e!667452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75854 (_ BitVec 32)) Bool)

(assert (=> b!1174168 (= res!779813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529412 mask!1564))))

(assert (=> b!1174168 (= lt!529412 (array!75855 (store (arr!36573 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37110 _keys!1208)))))

(declare-fun b!1174169 () Bool)

(declare-fun Unit!38643 () Unit!38641)

(assert (=> b!1174169 (= e!667442 Unit!38643)))

(declare-fun res!779821 () Bool)

(assert (=> start!99466 (=> (not res!779821) (not e!667446))))

(assert (=> start!99466 (= res!779821 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37110 _keys!1208))))))

(assert (=> start!99466 e!667446))

(assert (=> start!99466 tp_is_empty!29539))

(declare-fun array_inv!27826 (array!75854) Bool)

(assert (=> start!99466 (array_inv!27826 _keys!1208)))

(assert (=> start!99466 true))

(assert (=> start!99466 tp!87742))

(declare-fun e!667453 () Bool)

(declare-fun array_inv!27827 (array!75856) Bool)

(assert (=> start!99466 (and (array_inv!27827 _values!996) e!667453)))

(declare-fun b!1174170 () Bool)

(declare-fun res!779817 () Bool)

(assert (=> b!1174170 (=> (not res!779817) (not e!667446))))

(assert (=> b!1174170 (= res!779817 (and (= (size!37111 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37110 _keys!1208) (size!37111 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174171 () Bool)

(declare-fun res!779820 () Bool)

(assert (=> b!1174171 (=> (not res!779820) (not e!667452))))

(assert (=> b!1174171 (= res!779820 (arrayNoDuplicates!0 lt!529412 #b00000000000000000000000000000000 Nil!25821))))

(declare-fun b!1174172 () Bool)

(assert (=> b!1174172 (= e!667453 (and e!667449 mapRes!46136))))

(declare-fun condMapEmpty!46136 () Bool)

(declare-fun mapDefault!46136 () ValueCell!14060)

