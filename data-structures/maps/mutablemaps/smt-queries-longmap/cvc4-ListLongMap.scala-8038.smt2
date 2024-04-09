; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99108 () Bool)

(assert start!99108)

(declare-fun b_free!24677 () Bool)

(declare-fun b_next!24677 () Bool)

(assert (=> start!99108 (= b_free!24677 (not b_next!24677))))

(declare-fun tp!86743 () Bool)

(declare-fun b_and!40217 () Bool)

(assert (=> start!99108 (= tp!86743 b_and!40217)))

(declare-fun b!1164954 () Bool)

(declare-fun res!772660 () Bool)

(declare-fun e!662345 () Bool)

(assert (=> b!1164954 (=> (not res!772660) (not e!662345))))

(declare-datatypes ((array!75198 0))(
  ( (array!75199 (arr!36246 (Array (_ BitVec 32) (_ BitVec 64))) (size!36783 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75198)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44069 0))(
  ( (V!44070 (val!14660 Int)) )
))
(declare-datatypes ((ValueCell!13894 0))(
  ( (ValueCellFull!13894 (v!17298 V!44069)) (EmptyCell!13894) )
))
(declare-datatypes ((array!75200 0))(
  ( (array!75201 (arr!36247 (Array (_ BitVec 32) ValueCell!13894)) (size!36784 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75200)

(assert (=> b!1164954 (= res!772660 (and (= (size!36784 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36783 _keys!1208) (size!36784 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164955 () Bool)

(declare-fun e!662341 () Bool)

(assert (=> b!1164955 (= e!662345 e!662341)))

(declare-fun res!772670 () Bool)

(assert (=> b!1164955 (=> (not res!772670) (not e!662341))))

(declare-fun lt!524744 () array!75198)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75198 (_ BitVec 32)) Bool)

(assert (=> b!1164955 (= res!772670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524744 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1164955 (= lt!524744 (array!75199 (store (arr!36246 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36783 _keys!1208)))))

(declare-fun b!1164956 () Bool)

(declare-fun res!772664 () Bool)

(assert (=> b!1164956 (=> (not res!772664) (not e!662345))))

(assert (=> b!1164956 (= res!772664 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36783 _keys!1208))))))

(declare-fun b!1164957 () Bool)

(declare-fun e!662342 () Bool)

(assert (=> b!1164957 (= e!662342 true)))

(declare-fun zeroValue!944 () V!44069)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18770 0))(
  ( (tuple2!18771 (_1!9395 (_ BitVec 64)) (_2!9395 V!44069)) )
))
(declare-datatypes ((List!25547 0))(
  ( (Nil!25544) (Cons!25543 (h!26752 tuple2!18770) (t!37223 List!25547)) )
))
(declare-datatypes ((ListLongMap!16751 0))(
  ( (ListLongMap!16752 (toList!8391 List!25547)) )
))
(declare-fun lt!524743 () ListLongMap!16751)

(declare-fun minValue!944 () V!44069)

(declare-fun getCurrentListMapNoExtraKeys!4824 (array!75198 array!75200 (_ BitVec 32) (_ BitVec 32) V!44069 V!44069 (_ BitVec 32) Int) ListLongMap!16751)

(declare-fun dynLambda!2821 (Int (_ BitVec 64)) V!44069)

(assert (=> b!1164957 (= lt!524743 (getCurrentListMapNoExtraKeys!4824 lt!524744 (array!75201 (store (arr!36247 _values!996) i!673 (ValueCellFull!13894 (dynLambda!2821 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36784 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524742 () ListLongMap!16751)

(assert (=> b!1164957 (= lt!524742 (getCurrentListMapNoExtraKeys!4824 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164958 () Bool)

(declare-fun res!772662 () Bool)

(assert (=> b!1164958 (=> (not res!772662) (not e!662345))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164958 (= res!772662 (validKeyInArray!0 k!934))))

(declare-fun b!1164959 () Bool)

(declare-fun res!772668 () Bool)

(assert (=> b!1164959 (=> (not res!772668) (not e!662345))))

(assert (=> b!1164959 (= res!772668 (= (select (arr!36246 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!45635 () Bool)

(declare-fun mapRes!45635 () Bool)

(declare-fun tp!86742 () Bool)

(declare-fun e!662343 () Bool)

(assert (=> mapNonEmpty!45635 (= mapRes!45635 (and tp!86742 e!662343))))

(declare-fun mapValue!45635 () ValueCell!13894)

(declare-fun mapKey!45635 () (_ BitVec 32))

(declare-fun mapRest!45635 () (Array (_ BitVec 32) ValueCell!13894))

(assert (=> mapNonEmpty!45635 (= (arr!36247 _values!996) (store mapRest!45635 mapKey!45635 mapValue!45635))))

(declare-fun b!1164960 () Bool)

(declare-fun res!772666 () Bool)

(assert (=> b!1164960 (=> (not res!772666) (not e!662345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164960 (= res!772666 (validMask!0 mask!1564))))

(declare-fun b!1164961 () Bool)

(declare-fun e!662346 () Bool)

(declare-fun e!662344 () Bool)

(assert (=> b!1164961 (= e!662346 (and e!662344 mapRes!45635))))

(declare-fun condMapEmpty!45635 () Bool)

(declare-fun mapDefault!45635 () ValueCell!13894)

