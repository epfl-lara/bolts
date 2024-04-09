; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99820 () Bool)

(assert start!99820)

(declare-fun b_free!25363 () Bool)

(declare-fun b_next!25363 () Bool)

(assert (=> start!99820 (= b_free!25363 (not b_next!25363))))

(declare-fun tp!88804 () Bool)

(declare-fun b_and!41607 () Bool)

(assert (=> start!99820 (= tp!88804 b_and!41607)))

(declare-fun b!1185475 () Bool)

(declare-fun e!674075 () Bool)

(declare-fun e!674066 () Bool)

(assert (=> b!1185475 (= e!674075 (not e!674066))))

(declare-fun res!788124 () Bool)

(assert (=> b!1185475 (=> res!788124 e!674066)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1185475 (= res!788124 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76554 0))(
  ( (array!76555 (arr!36923 (Array (_ BitVec 32) (_ BitVec 64))) (size!37460 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76554)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185475 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39197 0))(
  ( (Unit!39198) )
))
(declare-fun lt!538056 () Unit!39197)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76554 (_ BitVec 64) (_ BitVec 32)) Unit!39197)

(assert (=> b!1185475 (= lt!538056 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185476 () Bool)

(declare-fun e!674070 () Bool)

(assert (=> b!1185476 (= e!674070 true)))

(declare-datatypes ((V!44985 0))(
  ( (V!44986 (val!15003 Int)) )
))
(declare-datatypes ((tuple2!19370 0))(
  ( (tuple2!19371 (_1!9695 (_ BitVec 64)) (_2!9695 V!44985)) )
))
(declare-datatypes ((List!26131 0))(
  ( (Nil!26128) (Cons!26127 (h!27336 tuple2!19370) (t!38493 List!26131)) )
))
(declare-datatypes ((ListLongMap!17351 0))(
  ( (ListLongMap!17352 (toList!8691 List!26131)) )
))
(declare-fun lt!538044 () ListLongMap!17351)

(declare-fun lt!538062 () ListLongMap!17351)

(declare-fun -!1676 (ListLongMap!17351 (_ BitVec 64)) ListLongMap!17351)

(assert (=> b!1185476 (= (-!1676 lt!538044 k!934) lt!538062)))

(declare-fun lt!538048 () Unit!39197)

(declare-fun lt!538047 () ListLongMap!17351)

(declare-fun lt!538053 () V!44985)

(declare-fun addRemoveCommutativeForDiffKeys!187 (ListLongMap!17351 (_ BitVec 64) V!44985 (_ BitVec 64)) Unit!39197)

(assert (=> b!1185476 (= lt!538048 (addRemoveCommutativeForDiffKeys!187 lt!538047 (select (arr!36923 _keys!1208) from!1455) lt!538053 k!934))))

(declare-fun lt!538046 () ListLongMap!17351)

(declare-fun lt!538052 () ListLongMap!17351)

(declare-fun lt!538045 () ListLongMap!17351)

(assert (=> b!1185476 (and (= lt!538045 lt!538044) (= lt!538052 lt!538046))))

(declare-fun lt!538059 () tuple2!19370)

(declare-fun +!3897 (ListLongMap!17351 tuple2!19370) ListLongMap!17351)

(assert (=> b!1185476 (= lt!538044 (+!3897 lt!538047 lt!538059))))

(assert (=> b!1185476 (not (= (select (arr!36923 _keys!1208) from!1455) k!934))))

(declare-fun lt!538050 () Unit!39197)

(declare-fun e!674073 () Unit!39197)

(assert (=> b!1185476 (= lt!538050 e!674073)))

(declare-fun c!117116 () Bool)

(assert (=> b!1185476 (= c!117116 (= (select (arr!36923 _keys!1208) from!1455) k!934))))

(declare-fun e!674071 () Bool)

(assert (=> b!1185476 e!674071))

(declare-fun res!788116 () Bool)

(assert (=> b!1185476 (=> (not res!788116) (not e!674071))))

(declare-fun lt!538060 () ListLongMap!17351)

(assert (=> b!1185476 (= res!788116 (= lt!538060 lt!538062))))

(assert (=> b!1185476 (= lt!538062 (+!3897 lt!538052 lt!538059))))

(assert (=> b!1185476 (= lt!538059 (tuple2!19371 (select (arr!36923 _keys!1208) from!1455) lt!538053))))

(declare-fun lt!538057 () V!44985)

(declare-datatypes ((ValueCell!14237 0))(
  ( (ValueCellFull!14237 (v!17642 V!44985)) (EmptyCell!14237) )
))
(declare-datatypes ((array!76556 0))(
  ( (array!76557 (arr!36924 (Array (_ BitVec 32) ValueCell!14237)) (size!37461 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76556)

(declare-fun get!18941 (ValueCell!14237 V!44985) V!44985)

(assert (=> b!1185476 (= lt!538053 (get!18941 (select (arr!36924 _values!996) from!1455) lt!538057))))

(declare-fun mapIsEmpty!46667 () Bool)

(declare-fun mapRes!46667 () Bool)

(assert (=> mapIsEmpty!46667 mapRes!46667))

(declare-fun b!1185477 () Bool)

(declare-fun res!788128 () Bool)

(declare-fun e!674067 () Bool)

(assert (=> b!1185477 (=> (not res!788128) (not e!674067))))

(declare-datatypes ((List!26132 0))(
  ( (Nil!26129) (Cons!26128 (h!27337 (_ BitVec 64)) (t!38494 List!26132)) )
))
(declare-fun arrayNoDuplicates!0 (array!76554 (_ BitVec 32) List!26132) Bool)

(assert (=> b!1185477 (= res!788128 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26129))))

(declare-fun b!1185478 () Bool)

(declare-fun res!788117 () Bool)

(assert (=> b!1185478 (=> (not res!788117) (not e!674075))))

(declare-fun lt!538051 () array!76554)

(assert (=> b!1185478 (= res!788117 (arrayNoDuplicates!0 lt!538051 #b00000000000000000000000000000000 Nil!26129))))

(declare-fun b!1185479 () Bool)

(declare-fun res!788127 () Bool)

(assert (=> b!1185479 (=> (not res!788127) (not e!674067))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76554 (_ BitVec 32)) Bool)

(assert (=> b!1185479 (= res!788127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185480 () Bool)

(declare-fun e!674068 () Bool)

(declare-fun tp_is_empty!29893 () Bool)

(assert (=> b!1185480 (= e!674068 tp_is_empty!29893)))

(declare-fun b!1185481 () Bool)

(declare-fun e!674072 () Bool)

(assert (=> b!1185481 (= e!674072 tp_is_empty!29893)))

(declare-fun b!1185482 () Bool)

(declare-fun e!674069 () Bool)

(assert (=> b!1185482 (= e!674069 (and e!674068 mapRes!46667))))

(declare-fun condMapEmpty!46667 () Bool)

(declare-fun mapDefault!46667 () ValueCell!14237)

