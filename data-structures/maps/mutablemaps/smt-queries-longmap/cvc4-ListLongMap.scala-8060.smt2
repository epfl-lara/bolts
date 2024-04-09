; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99240 () Bool)

(assert start!99240)

(declare-fun b_free!24809 () Bool)

(declare-fun b_next!24809 () Bool)

(assert (=> start!99240 (= b_free!24809 (not b_next!24809))))

(declare-fun tp!87138 () Bool)

(declare-fun b_and!40481 () Bool)

(assert (=> start!99240 (= tp!87138 b_and!40481)))

(declare-fun b!1168001 () Bool)

(declare-fun e!663874 () Bool)

(declare-fun e!663871 () Bool)

(assert (=> b!1168001 (= e!663874 e!663871)))

(declare-fun res!774984 () Bool)

(assert (=> b!1168001 (=> res!774984 e!663871)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1168001 (= res!774984 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44245 0))(
  ( (V!44246 (val!14726 Int)) )
))
(declare-fun zeroValue!944 () V!44245)

(declare-datatypes ((ValueCell!13960 0))(
  ( (ValueCellFull!13960 (v!17364 V!44245)) (EmptyCell!13960) )
))
(declare-datatypes ((array!75454 0))(
  ( (array!75455 (arr!36374 (Array (_ BitVec 32) ValueCell!13960)) (size!36911 (_ BitVec 32))) )
))
(declare-fun lt!525820 () array!75454)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18872 0))(
  ( (tuple2!18873 (_1!9446 (_ BitVec 64)) (_2!9446 V!44245)) )
))
(declare-datatypes ((List!25648 0))(
  ( (Nil!25645) (Cons!25644 (h!26853 tuple2!18872) (t!37456 List!25648)) )
))
(declare-datatypes ((ListLongMap!16853 0))(
  ( (ListLongMap!16854 (toList!8442 List!25648)) )
))
(declare-fun lt!525823 () ListLongMap!16853)

(declare-fun minValue!944 () V!44245)

(declare-datatypes ((array!75456 0))(
  ( (array!75457 (arr!36375 (Array (_ BitVec 32) (_ BitVec 64))) (size!36912 (_ BitVec 32))) )
))
(declare-fun lt!525821 () array!75456)

(declare-fun getCurrentListMapNoExtraKeys!4875 (array!75456 array!75454 (_ BitVec 32) (_ BitVec 32) V!44245 V!44245 (_ BitVec 32) Int) ListLongMap!16853)

(assert (=> b!1168001 (= lt!525823 (getCurrentListMapNoExtraKeys!4875 lt!525821 lt!525820 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75454)

(declare-fun dynLambda!2867 (Int (_ BitVec 64)) V!44245)

(assert (=> b!1168001 (= lt!525820 (array!75455 (store (arr!36374 _values!996) i!673 (ValueCellFull!13960 (dynLambda!2867 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36911 _values!996)))))

(declare-fun _keys!1208 () array!75456)

(declare-fun lt!525824 () ListLongMap!16853)

(assert (=> b!1168001 (= lt!525824 (getCurrentListMapNoExtraKeys!4875 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168002 () Bool)

(declare-fun res!774990 () Bool)

(declare-fun e!663873 () Bool)

(assert (=> b!1168002 (=> (not res!774990) (not e!663873))))

(assert (=> b!1168002 (= res!774990 (and (= (size!36911 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36912 _keys!1208) (size!36911 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1168003 () Bool)

(declare-fun res!774992 () Bool)

(assert (=> b!1168003 (=> (not res!774992) (not e!663873))))

(assert (=> b!1168003 (= res!774992 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36912 _keys!1208))))))

(declare-fun b!1168004 () Bool)

(declare-fun e!663872 () Bool)

(declare-fun tp_is_empty!29339 () Bool)

(assert (=> b!1168004 (= e!663872 tp_is_empty!29339)))

(declare-fun b!1168006 () Bool)

(declare-fun res!774986 () Bool)

(assert (=> b!1168006 (=> (not res!774986) (not e!663873))))

(declare-datatypes ((List!25649 0))(
  ( (Nil!25646) (Cons!25645 (h!26854 (_ BitVec 64)) (t!37457 List!25649)) )
))
(declare-fun arrayNoDuplicates!0 (array!75456 (_ BitVec 32) List!25649) Bool)

(assert (=> b!1168006 (= res!774986 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25646))))

(declare-fun mapNonEmpty!45833 () Bool)

(declare-fun mapRes!45833 () Bool)

(declare-fun tp!87139 () Bool)

(declare-fun e!663875 () Bool)

(assert (=> mapNonEmpty!45833 (= mapRes!45833 (and tp!87139 e!663875))))

(declare-fun mapRest!45833 () (Array (_ BitVec 32) ValueCell!13960))

(declare-fun mapKey!45833 () (_ BitVec 32))

(declare-fun mapValue!45833 () ValueCell!13960)

(assert (=> mapNonEmpty!45833 (= (arr!36374 _values!996) (store mapRest!45833 mapKey!45833 mapValue!45833))))

(declare-fun b!1168007 () Bool)

(declare-fun res!774985 () Bool)

(assert (=> b!1168007 (=> (not res!774985) (not e!663873))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1168007 (= res!774985 (= (select (arr!36375 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!45833 () Bool)

(assert (=> mapIsEmpty!45833 mapRes!45833))

(declare-fun res!774991 () Bool)

(assert (=> start!99240 (=> (not res!774991) (not e!663873))))

(assert (=> start!99240 (= res!774991 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36912 _keys!1208))))))

(assert (=> start!99240 e!663873))

(assert (=> start!99240 tp_is_empty!29339))

(declare-fun array_inv!27684 (array!75456) Bool)

(assert (=> start!99240 (array_inv!27684 _keys!1208)))

(assert (=> start!99240 true))

(assert (=> start!99240 tp!87138))

(declare-fun e!663870 () Bool)

(declare-fun array_inv!27685 (array!75454) Bool)

(assert (=> start!99240 (and (array_inv!27685 _values!996) e!663870)))

(declare-fun b!1168005 () Bool)

(assert (=> b!1168005 (= e!663875 tp_is_empty!29339)))

(declare-fun b!1168008 () Bool)

(declare-fun res!774989 () Bool)

(assert (=> b!1168008 (=> (not res!774989) (not e!663873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168008 (= res!774989 (validMask!0 mask!1564))))

(declare-fun b!1168009 () Bool)

(declare-fun res!774981 () Bool)

(assert (=> b!1168009 (=> (not res!774981) (not e!663873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168009 (= res!774981 (validKeyInArray!0 k!934))))

(declare-fun b!1168010 () Bool)

(assert (=> b!1168010 (= e!663870 (and e!663872 mapRes!45833))))

(declare-fun condMapEmpty!45833 () Bool)

(declare-fun mapDefault!45833 () ValueCell!13960)

