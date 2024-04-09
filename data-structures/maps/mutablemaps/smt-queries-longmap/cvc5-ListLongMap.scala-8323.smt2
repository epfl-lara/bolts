; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101322 () Bool)

(assert start!101322)

(declare-fun b_free!26209 () Bool)

(declare-fun b_next!26209 () Bool)

(assert (=> start!101322 (= b_free!26209 (not b_next!26209))))

(declare-fun tp!91650 () Bool)

(declare-fun b_and!43545 () Bool)

(assert (=> start!101322 (= tp!91650 b_and!43545)))

(declare-fun b!1216854 () Bool)

(declare-fun res!808179 () Bool)

(declare-fun e!690880 () Bool)

(assert (=> b!1216854 (=> (not res!808179) (not e!690880))))

(declare-datatypes ((array!78572 0))(
  ( (array!78573 (arr!37917 (Array (_ BitVec 32) (_ BitVec 64))) (size!38454 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78572)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78572 (_ BitVec 32)) Bool)

(assert (=> b!1216854 (= res!808179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1216855 () Bool)

(declare-fun res!808185 () Bool)

(assert (=> b!1216855 (=> (not res!808185) (not e!690880))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216855 (= res!808185 (validKeyInArray!0 k!934))))

(declare-fun b!1216856 () Bool)

(declare-fun res!808184 () Bool)

(assert (=> b!1216856 (=> (not res!808184) (not e!690880))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!46345 0))(
  ( (V!46346 (val!15513 Int)) )
))
(declare-datatypes ((ValueCell!14747 0))(
  ( (ValueCellFull!14747 (v!18167 V!46345)) (EmptyCell!14747) )
))
(declare-datatypes ((array!78574 0))(
  ( (array!78575 (arr!37918 (Array (_ BitVec 32) ValueCell!14747)) (size!38455 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78574)

(assert (=> b!1216856 (= res!808184 (and (= (size!38455 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38454 _keys!1208) (size!38455 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1216857 () Bool)

(declare-fun res!808188 () Bool)

(assert (=> b!1216857 (=> (not res!808188) (not e!690880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216857 (= res!808188 (validMask!0 mask!1564))))

(declare-fun b!1216858 () Bool)

(declare-fun res!808178 () Bool)

(declare-fun e!690883 () Bool)

(assert (=> b!1216858 (=> (not res!808178) (not e!690883))))

(declare-fun lt!553024 () array!78572)

(declare-datatypes ((List!26904 0))(
  ( (Nil!26901) (Cons!26900 (h!28109 (_ BitVec 64)) (t!40100 List!26904)) )
))
(declare-fun arrayNoDuplicates!0 (array!78572 (_ BitVec 32) List!26904) Bool)

(assert (=> b!1216858 (= res!808178 (arrayNoDuplicates!0 lt!553024 #b00000000000000000000000000000000 Nil!26901))))

(declare-fun b!1216860 () Bool)

(declare-fun e!690881 () Bool)

(declare-fun e!690885 () Bool)

(assert (=> b!1216860 (= e!690881 e!690885)))

(declare-fun res!808180 () Bool)

(assert (=> b!1216860 (=> res!808180 e!690885)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1216860 (= res!808180 (not (validKeyInArray!0 (select (arr!37917 _keys!1208) from!1455))))))

(declare-fun zeroValue!944 () V!46345)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!553023 () array!78574)

(declare-fun minValue!944 () V!46345)

(declare-datatypes ((tuple2!20082 0))(
  ( (tuple2!20083 (_1!10051 (_ BitVec 64)) (_2!10051 V!46345)) )
))
(declare-datatypes ((List!26905 0))(
  ( (Nil!26902) (Cons!26901 (h!28110 tuple2!20082) (t!40101 List!26905)) )
))
(declare-datatypes ((ListLongMap!18063 0))(
  ( (ListLongMap!18064 (toList!9047 List!26905)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5452 (array!78572 array!78574 (_ BitVec 32) (_ BitVec 32) V!46345 V!46345 (_ BitVec 32) Int) ListLongMap!18063)

(declare-fun -!1910 (ListLongMap!18063 (_ BitVec 64)) ListLongMap!18063)

(assert (=> b!1216860 (= (getCurrentListMapNoExtraKeys!5452 lt!553024 lt!553023 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1910 (getCurrentListMapNoExtraKeys!5452 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40280 0))(
  ( (Unit!40281) )
))
(declare-fun lt!553022 () Unit!40280)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1112 (array!78572 array!78574 (_ BitVec 32) (_ BitVec 32) V!46345 V!46345 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40280)

(assert (=> b!1216860 (= lt!553022 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1112 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1216861 () Bool)

(declare-fun e!690887 () Bool)

(declare-fun e!690884 () Bool)

(declare-fun mapRes!48244 () Bool)

(assert (=> b!1216861 (= e!690887 (and e!690884 mapRes!48244))))

(declare-fun condMapEmpty!48244 () Bool)

(declare-fun mapDefault!48244 () ValueCell!14747)

