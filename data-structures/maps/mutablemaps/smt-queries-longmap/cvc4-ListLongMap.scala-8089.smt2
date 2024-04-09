; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99440 () Bool)

(assert start!99440)

(declare-fun b_free!24983 () Bool)

(declare-fun b_next!24983 () Bool)

(assert (=> start!99440 (= b_free!24983 (not b_next!24983))))

(declare-fun tp!87663 () Bool)

(declare-fun b_and!40847 () Bool)

(assert (=> start!99440 (= tp!87663 b_and!40847)))

(declare-fun b!1173353 () Bool)

(declare-fun res!779228 () Bool)

(declare-fun e!666977 () Bool)

(assert (=> b!1173353 (=> (not res!779228) (not e!666977))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75802 0))(
  ( (array!75803 (arr!36547 (Array (_ BitVec 32) (_ BitVec 64))) (size!37084 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75802)

(assert (=> b!1173353 (= res!779228 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37084 _keys!1208))))))

(declare-fun b!1173354 () Bool)

(declare-datatypes ((Unit!38602 0))(
  ( (Unit!38603) )
))
(declare-fun e!666975 () Unit!38602)

(declare-fun Unit!38604 () Unit!38602)

(assert (=> b!1173354 (= e!666975 Unit!38604)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!528863 () Unit!38602)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75802 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38602)

(assert (=> b!1173354 (= lt!528863 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173354 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528860 () Unit!38602)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75802 (_ BitVec 32) (_ BitVec 32)) Unit!38602)

(assert (=> b!1173354 (= lt!528860 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25802 0))(
  ( (Nil!25799) (Cons!25798 (h!27007 (_ BitVec 64)) (t!37784 List!25802)) )
))
(declare-fun arrayNoDuplicates!0 (array!75802 (_ BitVec 32) List!25802) Bool)

(assert (=> b!1173354 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25799)))

(declare-fun lt!528864 () Unit!38602)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75802 (_ BitVec 64) (_ BitVec 32) List!25802) Unit!38602)

(assert (=> b!1173354 (= lt!528864 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25799))))

(assert (=> b!1173354 false))

(declare-fun res!779226 () Bool)

(assert (=> start!99440 (=> (not res!779226) (not e!666977))))

(assert (=> start!99440 (= res!779226 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37084 _keys!1208))))))

(assert (=> start!99440 e!666977))

(declare-fun tp_is_empty!29513 () Bool)

(assert (=> start!99440 tp_is_empty!29513))

(declare-fun array_inv!27810 (array!75802) Bool)

(assert (=> start!99440 (array_inv!27810 _keys!1208)))

(assert (=> start!99440 true))

(assert (=> start!99440 tp!87663))

(declare-datatypes ((V!44477 0))(
  ( (V!44478 (val!14813 Int)) )
))
(declare-datatypes ((ValueCell!14047 0))(
  ( (ValueCellFull!14047 (v!17452 V!44477)) (EmptyCell!14047) )
))
(declare-datatypes ((array!75804 0))(
  ( (array!75805 (arr!36548 (Array (_ BitVec 32) ValueCell!14047)) (size!37085 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75804)

(declare-fun e!666976 () Bool)

(declare-fun array_inv!27811 (array!75804) Bool)

(assert (=> start!99440 (and (array_inv!27811 _values!996) e!666976)))

(declare-fun b!1173355 () Bool)

(declare-fun e!666978 () Bool)

(assert (=> b!1173355 (= e!666977 e!666978)))

(declare-fun res!779225 () Bool)

(assert (=> b!1173355 (=> (not res!779225) (not e!666978))))

(declare-fun lt!528858 () array!75802)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75802 (_ BitVec 32)) Bool)

(assert (=> b!1173355 (= res!779225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528858 mask!1564))))

(assert (=> b!1173355 (= lt!528858 (array!75803 (store (arr!36547 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37084 _keys!1208)))))

(declare-fun b!1173356 () Bool)

(declare-fun res!779224 () Bool)

(assert (=> b!1173356 (=> (not res!779224) (not e!666977))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1173356 (= res!779224 (and (= (size!37085 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37084 _keys!1208) (size!37085 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun e!666985 () Bool)

(declare-fun b!1173357 () Bool)

(assert (=> b!1173357 (= e!666985 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173358 () Bool)

(declare-fun e!666974 () Bool)

(declare-fun mapRes!46097 () Bool)

(assert (=> b!1173358 (= e!666976 (and e!666974 mapRes!46097))))

(declare-fun condMapEmpty!46097 () Bool)

(declare-fun mapDefault!46097 () ValueCell!14047)

