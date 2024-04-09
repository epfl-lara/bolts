; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99664 () Bool)

(assert start!99664)

(declare-fun b_free!25207 () Bool)

(declare-fun b_next!25207 () Bool)

(assert (=> start!99664 (= b_free!25207 (not b_next!25207))))

(declare-fun tp!88335 () Bool)

(declare-fun b_and!41295 () Bool)

(assert (=> start!99664 (= tp!88335 b_and!41295)))

(declare-fun b!1180553 () Bool)

(declare-fun e!671225 () Bool)

(declare-fun e!671217 () Bool)

(assert (=> b!1180553 (= e!671225 e!671217)))

(declare-fun res!784520 () Bool)

(assert (=> b!1180553 (=> (not res!784520) (not e!671217))))

(declare-datatypes ((array!76242 0))(
  ( (array!76243 (arr!36767 (Array (_ BitVec 32) (_ BitVec 64))) (size!37304 (_ BitVec 32))) )
))
(declare-fun lt!533770 () array!76242)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76242 (_ BitVec 32)) Bool)

(assert (=> b!1180553 (= res!784520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533770 mask!1564))))

(declare-fun _keys!1208 () array!76242)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1180553 (= lt!533770 (array!76243 (store (arr!36767 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37304 _keys!1208)))))

(declare-fun b!1180554 () Bool)

(declare-fun e!671224 () Bool)

(assert (=> b!1180554 (= e!671217 (not e!671224))))

(declare-fun res!784527 () Bool)

(assert (=> b!1180554 (=> res!784527 e!671224)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1180554 (= res!784527 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180554 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38952 0))(
  ( (Unit!38953) )
))
(declare-fun lt!533777 () Unit!38952)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76242 (_ BitVec 64) (_ BitVec 32)) Unit!38952)

(assert (=> b!1180554 (= lt!533777 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1180555 () Bool)

(declare-fun res!784529 () Bool)

(assert (=> b!1180555 (=> (not res!784529) (not e!671225))))

(declare-datatypes ((List!25995 0))(
  ( (Nil!25992) (Cons!25991 (h!27200 (_ BitVec 64)) (t!38201 List!25995)) )
))
(declare-fun arrayNoDuplicates!0 (array!76242 (_ BitVec 32) List!25995) Bool)

(assert (=> b!1180555 (= res!784529 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25992))))

(declare-fun b!1180556 () Bool)

(declare-fun res!784523 () Bool)

(assert (=> b!1180556 (=> (not res!784523) (not e!671225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180556 (= res!784523 (validKeyInArray!0 k!934))))

(declare-fun b!1180557 () Bool)

(declare-fun res!784526 () Bool)

(assert (=> b!1180557 (=> (not res!784526) (not e!671225))))

(assert (=> b!1180557 (= res!784526 (= (select (arr!36767 _keys!1208) i!673) k!934))))

(declare-fun b!1180558 () Bool)

(declare-fun res!784533 () Bool)

(declare-fun e!671222 () Bool)

(assert (=> b!1180558 (=> (not res!784533) (not e!671222))))

(declare-datatypes ((V!44777 0))(
  ( (V!44778 (val!14925 Int)) )
))
(declare-datatypes ((tuple2!19234 0))(
  ( (tuple2!19235 (_1!9627 (_ BitVec 64)) (_2!9627 V!44777)) )
))
(declare-datatypes ((List!25996 0))(
  ( (Nil!25993) (Cons!25992 (h!27201 tuple2!19234) (t!38202 List!25996)) )
))
(declare-datatypes ((ListLongMap!17215 0))(
  ( (ListLongMap!17216 (toList!8623 List!25996)) )
))
(declare-fun lt!533781 () ListLongMap!17215)

(declare-fun lt!533778 () ListLongMap!17215)

(declare-fun lt!533779 () tuple2!19234)

(declare-fun +!3842 (ListLongMap!17215 tuple2!19234) ListLongMap!17215)

(assert (=> b!1180558 (= res!784533 (= lt!533781 (+!3842 lt!533778 lt!533779)))))

(declare-fun b!1180559 () Bool)

(declare-fun e!671226 () Bool)

(assert (=> b!1180559 (= e!671226 true)))

(assert (=> b!1180559 e!671222))

(declare-fun res!784528 () Bool)

(assert (=> b!1180559 (=> (not res!784528) (not e!671222))))

(assert (=> b!1180559 (= res!784528 (not (= (select (arr!36767 _keys!1208) from!1455) k!934)))))

(declare-fun lt!533776 () Unit!38952)

(declare-fun e!671227 () Unit!38952)

(assert (=> b!1180559 (= lt!533776 e!671227)))

(declare-fun c!116882 () Bool)

(assert (=> b!1180559 (= c!116882 (= (select (arr!36767 _keys!1208) from!1455) k!934))))

(declare-fun e!671218 () Bool)

(assert (=> b!1180559 e!671218))

(declare-fun res!784532 () Bool)

(assert (=> b!1180559 (=> (not res!784532) (not e!671218))))

(declare-fun lt!533773 () ListLongMap!17215)

(declare-fun lt!533784 () ListLongMap!17215)

(assert (=> b!1180559 (= res!784532 (= lt!533773 (+!3842 lt!533784 lt!533779)))))

(declare-datatypes ((ValueCell!14159 0))(
  ( (ValueCellFull!14159 (v!17564 V!44777)) (EmptyCell!14159) )
))
(declare-datatypes ((array!76244 0))(
  ( (array!76245 (arr!36768 (Array (_ BitVec 32) ValueCell!14159)) (size!37305 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76244)

(declare-fun lt!533772 () V!44777)

(declare-fun get!18836 (ValueCell!14159 V!44777) V!44777)

(assert (=> b!1180559 (= lt!533779 (tuple2!19235 (select (arr!36767 _keys!1208) from!1455) (get!18836 (select (arr!36768 _values!996) from!1455) lt!533772)))))

(declare-fun b!1180560 () Bool)

(declare-fun res!784531 () Bool)

(assert (=> b!1180560 (=> (not res!784531) (not e!671217))))

(assert (=> b!1180560 (= res!784531 (arrayNoDuplicates!0 lt!533770 #b00000000000000000000000000000000 Nil!25992))))

(declare-fun b!1180561 () Bool)

(declare-fun e!671221 () Bool)

(assert (=> b!1180561 (= e!671221 e!671226)))

(declare-fun res!784524 () Bool)

(assert (=> b!1180561 (=> res!784524 e!671226)))

(assert (=> b!1180561 (= res!784524 (not (validKeyInArray!0 (select (arr!36767 _keys!1208) from!1455))))))

(declare-fun lt!533780 () ListLongMap!17215)

(assert (=> b!1180561 (= lt!533780 lt!533784)))

(declare-fun -!1614 (ListLongMap!17215 (_ BitVec 64)) ListLongMap!17215)

(assert (=> b!1180561 (= lt!533784 (-!1614 lt!533778 k!934))))

(declare-fun zeroValue!944 () V!44777)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!533775 () array!76244)

(declare-fun minValue!944 () V!44777)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5049 (array!76242 array!76244 (_ BitVec 32) (_ BitVec 32) V!44777 V!44777 (_ BitVec 32) Int) ListLongMap!17215)

(assert (=> b!1180561 (= lt!533780 (getCurrentListMapNoExtraKeys!5049 lt!533770 lt!533775 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1180561 (= lt!533778 (getCurrentListMapNoExtraKeys!5049 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533782 () Unit!38952)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!838 (array!76242 array!76244 (_ BitVec 32) (_ BitVec 32) V!44777 V!44777 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38952)

(assert (=> b!1180561 (= lt!533782 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!838 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1180562 () Bool)

(declare-fun res!784521 () Bool)

(assert (=> b!1180562 (=> (not res!784521) (not e!671225))))

(assert (=> b!1180562 (= res!784521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1180563 () Bool)

(declare-fun e!671216 () Bool)

(declare-fun e!671215 () Bool)

(declare-fun mapRes!46433 () Bool)

(assert (=> b!1180563 (= e!671216 (and e!671215 mapRes!46433))))

(declare-fun condMapEmpty!46433 () Bool)

(declare-fun mapDefault!46433 () ValueCell!14159)

