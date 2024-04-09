; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99616 () Bool)

(assert start!99616)

(declare-fun b_free!25159 () Bool)

(declare-fun b_next!25159 () Bool)

(assert (=> start!99616 (= b_free!25159 (not b_next!25159))))

(declare-fun tp!88191 () Bool)

(declare-fun b_and!41199 () Bool)

(assert (=> start!99616 (= tp!88191 b_and!41199)))

(declare-fun mapNonEmpty!46361 () Bool)

(declare-fun mapRes!46361 () Bool)

(declare-fun tp!88192 () Bool)

(declare-fun e!670287 () Bool)

(assert (=> mapNonEmpty!46361 (= mapRes!46361 (and tp!88192 e!670287))))

(declare-fun mapKey!46361 () (_ BitVec 32))

(declare-datatypes ((V!44713 0))(
  ( (V!44714 (val!14901 Int)) )
))
(declare-datatypes ((ValueCell!14135 0))(
  ( (ValueCellFull!14135 (v!17540 V!44713)) (EmptyCell!14135) )
))
(declare-datatypes ((array!76150 0))(
  ( (array!76151 (arr!36721 (Array (_ BitVec 32) ValueCell!14135)) (size!37258 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76150)

(declare-fun mapValue!46361 () ValueCell!14135)

(declare-fun mapRest!46361 () (Array (_ BitVec 32) ValueCell!14135))

(assert (=> mapNonEmpty!46361 (= (arr!36721 _values!996) (store mapRest!46361 mapKey!46361 mapValue!46361))))

(declare-fun b!1178946 () Bool)

(declare-fun res!783326 () Bool)

(declare-fun e!670291 () Bool)

(assert (=> b!1178946 (=> (not res!783326) (not e!670291))))

(declare-datatypes ((array!76152 0))(
  ( (array!76153 (arr!36722 (Array (_ BitVec 32) (_ BitVec 64))) (size!37259 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76152)

(declare-datatypes ((List!25958 0))(
  ( (Nil!25955) (Cons!25954 (h!27163 (_ BitVec 64)) (t!38116 List!25958)) )
))
(declare-fun arrayNoDuplicates!0 (array!76152 (_ BitVec 32) List!25958) Bool)

(assert (=> b!1178946 (= res!783326 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25955))))

(declare-fun b!1178947 () Bool)

(declare-fun res!783329 () Bool)

(assert (=> b!1178947 (=> (not res!783329) (not e!670291))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1178947 (= res!783329 (and (= (size!37258 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37259 _keys!1208) (size!37258 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178948 () Bool)

(declare-fun res!783331 () Bool)

(assert (=> b!1178948 (=> (not res!783331) (not e!670291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76152 (_ BitVec 32)) Bool)

(assert (=> b!1178948 (= res!783331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1178949 () Bool)

(declare-fun e!670284 () Bool)

(assert (=> b!1178949 (= e!670284 true)))

(declare-fun e!670282 () Bool)

(assert (=> b!1178949 e!670282))

(declare-fun res!783320 () Bool)

(assert (=> b!1178949 (=> (not res!783320) (not e!670282))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1178949 (= res!783320 (not (= (select (arr!36722 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38885 0))(
  ( (Unit!38886) )
))
(declare-fun lt!532697 () Unit!38885)

(declare-fun e!670285 () Unit!38885)

(assert (=> b!1178949 (= lt!532697 e!670285)))

(declare-fun c!116810 () Bool)

(assert (=> b!1178949 (= c!116810 (= (select (arr!36722 _keys!1208) from!1455) k!934))))

(declare-fun e!670280 () Bool)

(assert (=> b!1178949 e!670280))

(declare-fun res!783330 () Bool)

(assert (=> b!1178949 (=> (not res!783330) (not e!670280))))

(declare-datatypes ((tuple2!19194 0))(
  ( (tuple2!19195 (_1!9607 (_ BitVec 64)) (_2!9607 V!44713)) )
))
(declare-datatypes ((List!25959 0))(
  ( (Nil!25956) (Cons!25955 (h!27164 tuple2!19194) (t!38117 List!25959)) )
))
(declare-datatypes ((ListLongMap!17175 0))(
  ( (ListLongMap!17176 (toList!8603 List!25959)) )
))
(declare-fun lt!532701 () ListLongMap!17175)

(declare-fun lt!532691 () tuple2!19194)

(declare-fun lt!532702 () ListLongMap!17175)

(declare-fun +!3824 (ListLongMap!17175 tuple2!19194) ListLongMap!17175)

(assert (=> b!1178949 (= res!783330 (= lt!532701 (+!3824 lt!532702 lt!532691)))))

(declare-fun lt!532700 () V!44713)

(declare-fun get!18804 (ValueCell!14135 V!44713) V!44713)

(assert (=> b!1178949 (= lt!532691 (tuple2!19195 (select (arr!36722 _keys!1208) from!1455) (get!18804 (select (arr!36721 _values!996) from!1455) lt!532700)))))

(declare-fun b!1178950 () Bool)

(declare-fun e!670283 () Bool)

(declare-fun e!670281 () Bool)

(assert (=> b!1178950 (= e!670283 (not e!670281))))

(declare-fun res!783321 () Bool)

(assert (=> b!1178950 (=> res!783321 e!670281)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1178950 (= res!783321 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178950 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!532704 () Unit!38885)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76152 (_ BitVec 64) (_ BitVec 32)) Unit!38885)

(assert (=> b!1178950 (= lt!532704 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178951 () Bool)

(declare-fun tp_is_empty!29689 () Bool)

(assert (=> b!1178951 (= e!670287 tp_is_empty!29689)))

(declare-fun b!1178952 () Bool)

(declare-fun e!670288 () Bool)

(declare-fun e!670290 () Bool)

(assert (=> b!1178952 (= e!670288 (and e!670290 mapRes!46361))))

(declare-fun condMapEmpty!46361 () Bool)

(declare-fun mapDefault!46361 () ValueCell!14135)

