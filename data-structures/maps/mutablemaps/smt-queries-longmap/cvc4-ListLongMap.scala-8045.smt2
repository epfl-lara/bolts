; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99150 () Bool)

(assert start!99150)

(declare-fun b_free!24719 () Bool)

(declare-fun b_next!24719 () Bool)

(assert (=> start!99150 (= b_free!24719 (not b_next!24719))))

(declare-fun tp!86868 () Bool)

(declare-fun b_and!40301 () Bool)

(assert (=> start!99150 (= tp!86868 b_and!40301)))

(declare-fun b!1165886 () Bool)

(declare-fun e!662795 () Bool)

(assert (=> b!1165886 (= e!662795 true)))

(declare-datatypes ((V!44125 0))(
  ( (V!44126 (val!14681 Int)) )
))
(declare-fun zeroValue!944 () V!44125)

(declare-datatypes ((array!75280 0))(
  ( (array!75281 (arr!36287 (Array (_ BitVec 32) (_ BitVec 64))) (size!36824 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75280)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525011 () array!75280)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13915 0))(
  ( (ValueCellFull!13915 (v!17319 V!44125)) (EmptyCell!13915) )
))
(declare-datatypes ((array!75282 0))(
  ( (array!75283 (arr!36288 (Array (_ BitVec 32) ValueCell!13915)) (size!36825 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75282)

(declare-fun minValue!944 () V!44125)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!525012 () array!75282)

(declare-datatypes ((tuple2!18802 0))(
  ( (tuple2!18803 (_1!9411 (_ BitVec 64)) (_2!9411 V!44125)) )
))
(declare-datatypes ((List!25578 0))(
  ( (Nil!25575) (Cons!25574 (h!26783 tuple2!18802) (t!37296 List!25578)) )
))
(declare-datatypes ((ListLongMap!16783 0))(
  ( (ListLongMap!16784 (toList!8407 List!25578)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4840 (array!75280 array!75282 (_ BitVec 32) (_ BitVec 32) V!44125 V!44125 (_ BitVec 32) Int) ListLongMap!16783)

(declare-fun -!1444 (ListLongMap!16783 (_ BitVec 64)) ListLongMap!16783)

(assert (=> b!1165886 (= (getCurrentListMapNoExtraKeys!4840 lt!525011 lt!525012 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1444 (getCurrentListMapNoExtraKeys!4840 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38366 0))(
  ( (Unit!38367) )
))
(declare-fun lt!525015 () Unit!38366)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!668 (array!75280 array!75282 (_ BitVec 32) (_ BitVec 32) V!44125 V!44125 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38366)

(assert (=> b!1165886 (= lt!525015 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!668 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1165887 () Bool)

(declare-fun e!662793 () Bool)

(declare-fun e!662792 () Bool)

(assert (=> b!1165887 (= e!662793 e!662792)))

(declare-fun res!773364 () Bool)

(assert (=> b!1165887 (=> (not res!773364) (not e!662792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75280 (_ BitVec 32)) Bool)

(assert (=> b!1165887 (= res!773364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525011 mask!1564))))

(assert (=> b!1165887 (= lt!525011 (array!75281 (store (arr!36287 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36824 _keys!1208)))))

(declare-fun b!1165888 () Bool)

(declare-fun res!773366 () Bool)

(assert (=> b!1165888 (=> (not res!773366) (not e!662793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165888 (= res!773366 (validMask!0 mask!1564))))

(declare-fun b!1165889 () Bool)

(declare-fun res!773363 () Bool)

(assert (=> b!1165889 (=> (not res!773363) (not e!662792))))

(declare-datatypes ((List!25579 0))(
  ( (Nil!25576) (Cons!25575 (h!26784 (_ BitVec 64)) (t!37297 List!25579)) )
))
(declare-fun arrayNoDuplicates!0 (array!75280 (_ BitVec 32) List!25579) Bool)

(assert (=> b!1165889 (= res!773363 (arrayNoDuplicates!0 lt!525011 #b00000000000000000000000000000000 Nil!25576))))

(declare-fun b!1165890 () Bool)

(declare-fun res!773370 () Bool)

(assert (=> b!1165890 (=> (not res!773370) (not e!662793))))

(assert (=> b!1165890 (= res!773370 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36824 _keys!1208))))))

(declare-fun b!1165891 () Bool)

(declare-fun e!662790 () Bool)

(assert (=> b!1165891 (= e!662792 (not e!662790))))

(declare-fun res!773371 () Bool)

(assert (=> b!1165891 (=> res!773371 e!662790)))

(assert (=> b!1165891 (= res!773371 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165891 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!525010 () Unit!38366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75280 (_ BitVec 64) (_ BitVec 32)) Unit!38366)

(assert (=> b!1165891 (= lt!525010 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1165892 () Bool)

(declare-fun res!773372 () Bool)

(assert (=> b!1165892 (=> (not res!773372) (not e!662793))))

(assert (=> b!1165892 (= res!773372 (= (select (arr!36287 _keys!1208) i!673) k!934))))

(declare-fun b!1165893 () Bool)

(declare-fun e!662796 () Bool)

(declare-fun tp_is_empty!29249 () Bool)

(assert (=> b!1165893 (= e!662796 tp_is_empty!29249)))

(declare-fun b!1165894 () Bool)

(declare-fun res!773367 () Bool)

(assert (=> b!1165894 (=> (not res!773367) (not e!662793))))

(assert (=> b!1165894 (= res!773367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165895 () Bool)

(declare-fun e!662789 () Bool)

(declare-fun e!662794 () Bool)

(declare-fun mapRes!45698 () Bool)

(assert (=> b!1165895 (= e!662789 (and e!662794 mapRes!45698))))

(declare-fun condMapEmpty!45698 () Bool)

(declare-fun mapDefault!45698 () ValueCell!13915)

