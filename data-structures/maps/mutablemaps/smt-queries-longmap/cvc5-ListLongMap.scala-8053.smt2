; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99194 () Bool)

(assert start!99194)

(declare-fun b_free!24763 () Bool)

(declare-fun b_next!24763 () Bool)

(assert (=> start!99194 (= b_free!24763 (not b_next!24763))))

(declare-fun tp!87000 () Bool)

(declare-fun b_and!40389 () Bool)

(assert (=> start!99194 (= tp!87000 b_and!40389)))

(declare-fun b!1166921 () Bool)

(declare-fun res!774156 () Bool)

(declare-fun e!663317 () Bool)

(assert (=> b!1166921 (=> (not res!774156) (not e!663317))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75364 0))(
  ( (array!75365 (arr!36329 (Array (_ BitVec 32) (_ BitVec 64))) (size!36866 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75364)

(assert (=> b!1166921 (= res!774156 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36866 _keys!1208))))))

(declare-fun b!1166922 () Bool)

(declare-fun e!663324 () Bool)

(assert (=> b!1166922 (= e!663324 true)))

(declare-datatypes ((V!44185 0))(
  ( (V!44186 (val!14703 Int)) )
))
(declare-fun zeroValue!944 () V!44185)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!525410 () array!75364)

(declare-fun minValue!944 () V!44185)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13937 0))(
  ( (ValueCellFull!13937 (v!17341 V!44185)) (EmptyCell!13937) )
))
(declare-datatypes ((array!75366 0))(
  ( (array!75367 (arr!36330 (Array (_ BitVec 32) ValueCell!13937)) (size!36867 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75366)

(declare-fun lt!525406 () array!75366)

(declare-datatypes ((tuple2!18836 0))(
  ( (tuple2!18837 (_1!9428 (_ BitVec 64)) (_2!9428 V!44185)) )
))
(declare-datatypes ((List!25611 0))(
  ( (Nil!25608) (Cons!25607 (h!26816 tuple2!18836) (t!37373 List!25611)) )
))
(declare-datatypes ((ListLongMap!16817 0))(
  ( (ListLongMap!16818 (toList!8424 List!25611)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4857 (array!75364 array!75366 (_ BitVec 32) (_ BitVec 32) V!44185 V!44185 (_ BitVec 32) Int) ListLongMap!16817)

(declare-fun -!1459 (ListLongMap!16817 (_ BitVec 64)) ListLongMap!16817)

(assert (=> b!1166922 (= (getCurrentListMapNoExtraKeys!4857 lt!525410 lt!525406 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1459 (getCurrentListMapNoExtraKeys!4857 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!38400 0))(
  ( (Unit!38401) )
))
(declare-fun lt!525409 () Unit!38400)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!683 (array!75364 array!75366 (_ BitVec 32) (_ BitVec 32) V!44185 V!44185 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38400)

(assert (=> b!1166922 (= lt!525409 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!683 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166923 () Bool)

(declare-fun res!774154 () Bool)

(assert (=> b!1166923 (=> (not res!774154) (not e!663317))))

(assert (=> b!1166923 (= res!774154 (and (= (size!36867 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36866 _keys!1208) (size!36867 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166924 () Bool)

(declare-fun res!774157 () Bool)

(assert (=> b!1166924 (=> (not res!774157) (not e!663317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166924 (= res!774157 (validMask!0 mask!1564))))

(declare-fun b!1166925 () Bool)

(declare-fun res!774158 () Bool)

(assert (=> b!1166925 (=> (not res!774158) (not e!663317))))

(declare-datatypes ((List!25612 0))(
  ( (Nil!25609) (Cons!25608 (h!26817 (_ BitVec 64)) (t!37374 List!25612)) )
))
(declare-fun arrayNoDuplicates!0 (array!75364 (_ BitVec 32) List!25612) Bool)

(assert (=> b!1166925 (= res!774158 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25609))))

(declare-fun mapNonEmpty!45764 () Bool)

(declare-fun mapRes!45764 () Bool)

(declare-fun tp!87001 () Bool)

(declare-fun e!663320 () Bool)

(assert (=> mapNonEmpty!45764 (= mapRes!45764 (and tp!87001 e!663320))))

(declare-fun mapRest!45764 () (Array (_ BitVec 32) ValueCell!13937))

(declare-fun mapValue!45764 () ValueCell!13937)

(declare-fun mapKey!45764 () (_ BitVec 32))

(assert (=> mapNonEmpty!45764 (= (arr!36330 _values!996) (store mapRest!45764 mapKey!45764 mapValue!45764))))

(declare-fun b!1166926 () Bool)

(declare-fun e!663321 () Bool)

(declare-fun e!663322 () Bool)

(assert (=> b!1166926 (= e!663321 (not e!663322))))

(declare-fun res!774162 () Bool)

(assert (=> b!1166926 (=> res!774162 e!663322)))

(assert (=> b!1166926 (= res!774162 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166926 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!525408 () Unit!38400)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75364 (_ BitVec 64) (_ BitVec 32)) Unit!38400)

(assert (=> b!1166926 (= lt!525408 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1166927 () Bool)

(declare-fun res!774164 () Bool)

(assert (=> b!1166927 (=> (not res!774164) (not e!663317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75364 (_ BitVec 32)) Bool)

(assert (=> b!1166927 (= res!774164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1166928 () Bool)

(declare-fun tp_is_empty!29293 () Bool)

(assert (=> b!1166928 (= e!663320 tp_is_empty!29293)))

(declare-fun b!1166929 () Bool)

(declare-fun e!663323 () Bool)

(assert (=> b!1166929 (= e!663323 tp_is_empty!29293)))

(declare-fun b!1166930 () Bool)

(declare-fun res!774161 () Bool)

(assert (=> b!1166930 (=> (not res!774161) (not e!663321))))

(assert (=> b!1166930 (= res!774161 (arrayNoDuplicates!0 lt!525410 #b00000000000000000000000000000000 Nil!25609))))

(declare-fun mapIsEmpty!45764 () Bool)

(assert (=> mapIsEmpty!45764 mapRes!45764))

(declare-fun b!1166931 () Bool)

(declare-fun res!774155 () Bool)

(assert (=> b!1166931 (=> (not res!774155) (not e!663317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166931 (= res!774155 (validKeyInArray!0 k!934))))

(declare-fun b!1166932 () Bool)

(assert (=> b!1166932 (= e!663317 e!663321)))

(declare-fun res!774163 () Bool)

(assert (=> b!1166932 (=> (not res!774163) (not e!663321))))

(assert (=> b!1166932 (= res!774163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525410 mask!1564))))

(assert (=> b!1166932 (= lt!525410 (array!75365 (store (arr!36329 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36866 _keys!1208)))))

(declare-fun res!774153 () Bool)

(assert (=> start!99194 (=> (not res!774153) (not e!663317))))

(assert (=> start!99194 (= res!774153 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36866 _keys!1208))))))

(assert (=> start!99194 e!663317))

(assert (=> start!99194 tp_is_empty!29293))

(declare-fun array_inv!27658 (array!75364) Bool)

(assert (=> start!99194 (array_inv!27658 _keys!1208)))

(assert (=> start!99194 true))

(assert (=> start!99194 tp!87000))

(declare-fun e!663319 () Bool)

(declare-fun array_inv!27659 (array!75366) Bool)

(assert (=> start!99194 (and (array_inv!27659 _values!996) e!663319)))

(declare-fun b!1166920 () Bool)

(declare-fun res!774159 () Bool)

(assert (=> b!1166920 (=> (not res!774159) (not e!663317))))

(assert (=> b!1166920 (= res!774159 (= (select (arr!36329 _keys!1208) i!673) k!934))))

(declare-fun b!1166933 () Bool)

(assert (=> b!1166933 (= e!663322 e!663324)))

(declare-fun res!774160 () Bool)

(assert (=> b!1166933 (=> res!774160 e!663324)))

(assert (=> b!1166933 (= res!774160 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525407 () ListLongMap!16817)

(assert (=> b!1166933 (= lt!525407 (getCurrentListMapNoExtraKeys!4857 lt!525410 lt!525406 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2851 (Int (_ BitVec 64)) V!44185)

(assert (=> b!1166933 (= lt!525406 (array!75367 (store (arr!36330 _values!996) i!673 (ValueCellFull!13937 (dynLambda!2851 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36867 _values!996)))))

(declare-fun lt!525411 () ListLongMap!16817)

(assert (=> b!1166933 (= lt!525411 (getCurrentListMapNoExtraKeys!4857 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166934 () Bool)

(assert (=> b!1166934 (= e!663319 (and e!663323 mapRes!45764))))

(declare-fun condMapEmpty!45764 () Bool)

(declare-fun mapDefault!45764 () ValueCell!13937)

