; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99122 () Bool)

(assert start!99122)

(declare-fun b_free!24691 () Bool)

(declare-fun b_next!24691 () Bool)

(assert (=> start!99122 (= b_free!24691 (not b_next!24691))))

(declare-fun tp!86785 () Bool)

(declare-fun b_and!40245 () Bool)

(assert (=> start!99122 (= tp!86785 b_and!40245)))

(declare-fun b!1165262 () Bool)

(declare-fun res!772897 () Bool)

(declare-fun e!662491 () Bool)

(assert (=> b!1165262 (=> (not res!772897) (not e!662491))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75226 0))(
  ( (array!75227 (arr!36260 (Array (_ BitVec 32) (_ BitVec 64))) (size!36797 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75226)

(assert (=> b!1165262 (= res!772897 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36797 _keys!1208))))))

(declare-fun b!1165263 () Bool)

(declare-fun res!772900 () Bool)

(assert (=> b!1165263 (=> (not res!772900) (not e!662491))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75226 (_ BitVec 32)) Bool)

(assert (=> b!1165263 (= res!772900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165264 () Bool)

(declare-fun res!772898 () Bool)

(assert (=> b!1165264 (=> (not res!772898) (not e!662491))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44089 0))(
  ( (V!44090 (val!14667 Int)) )
))
(declare-datatypes ((ValueCell!13901 0))(
  ( (ValueCellFull!13901 (v!17305 V!44089)) (EmptyCell!13901) )
))
(declare-datatypes ((array!75228 0))(
  ( (array!75229 (arr!36261 (Array (_ BitVec 32) ValueCell!13901)) (size!36798 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75228)

(assert (=> b!1165264 (= res!772898 (and (= (size!36798 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36797 _keys!1208) (size!36798 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165265 () Bool)

(declare-fun e!662489 () Bool)

(assert (=> b!1165265 (= e!662489 true)))

(declare-fun zeroValue!944 () V!44089)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!44089)

(declare-fun lt!524827 () array!75226)

(declare-datatypes ((tuple2!18780 0))(
  ( (tuple2!18781 (_1!9400 (_ BitVec 64)) (_2!9400 V!44089)) )
))
(declare-datatypes ((List!25556 0))(
  ( (Nil!25553) (Cons!25552 (h!26761 tuple2!18780) (t!37246 List!25556)) )
))
(declare-datatypes ((ListLongMap!16761 0))(
  ( (ListLongMap!16762 (toList!8396 List!25556)) )
))
(declare-fun lt!524826 () ListLongMap!16761)

(declare-fun getCurrentListMapNoExtraKeys!4829 (array!75226 array!75228 (_ BitVec 32) (_ BitVec 32) V!44089 V!44089 (_ BitVec 32) Int) ListLongMap!16761)

(declare-fun dynLambda!2826 (Int (_ BitVec 64)) V!44089)

(assert (=> b!1165265 (= lt!524826 (getCurrentListMapNoExtraKeys!4829 lt!524827 (array!75229 (store (arr!36261 _values!996) i!673 (ValueCellFull!13901 (dynLambda!2826 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36798 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524828 () ListLongMap!16761)

(assert (=> b!1165265 (= lt!524828 (getCurrentListMapNoExtraKeys!4829 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!45656 () Bool)

(declare-fun mapRes!45656 () Bool)

(declare-fun tp!86784 () Bool)

(declare-fun e!662493 () Bool)

(assert (=> mapNonEmpty!45656 (= mapRes!45656 (and tp!86784 e!662493))))

(declare-fun mapValue!45656 () ValueCell!13901)

(declare-fun mapKey!45656 () (_ BitVec 32))

(declare-fun mapRest!45656 () (Array (_ BitVec 32) ValueCell!13901))

(assert (=> mapNonEmpty!45656 (= (arr!36261 _values!996) (store mapRest!45656 mapKey!45656 mapValue!45656))))

(declare-fun b!1165266 () Bool)

(declare-fun tp_is_empty!29221 () Bool)

(assert (=> b!1165266 (= e!662493 tp_is_empty!29221)))

(declare-fun b!1165267 () Bool)

(declare-fun res!772901 () Bool)

(assert (=> b!1165267 (=> (not res!772901) (not e!662491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165267 (= res!772901 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45656 () Bool)

(assert (=> mapIsEmpty!45656 mapRes!45656))

(declare-fun b!1165268 () Bool)

(declare-fun e!662487 () Bool)

(assert (=> b!1165268 (= e!662487 (not e!662489))))

(declare-fun res!772895 () Bool)

(assert (=> b!1165268 (=> res!772895 e!662489)))

(assert (=> b!1165268 (= res!772895 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165268 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38348 0))(
  ( (Unit!38349) )
))
(declare-fun lt!524829 () Unit!38348)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75226 (_ BitVec 64) (_ BitVec 32)) Unit!38348)

(assert (=> b!1165268 (= lt!524829 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1165269 () Bool)

(declare-fun res!772891 () Bool)

(assert (=> b!1165269 (=> (not res!772891) (not e!662487))))

(declare-datatypes ((List!25557 0))(
  ( (Nil!25554) (Cons!25553 (h!26762 (_ BitVec 64)) (t!37247 List!25557)) )
))
(declare-fun arrayNoDuplicates!0 (array!75226 (_ BitVec 32) List!25557) Bool)

(assert (=> b!1165269 (= res!772891 (arrayNoDuplicates!0 lt!524827 #b00000000000000000000000000000000 Nil!25554))))

(declare-fun b!1165270 () Bool)

(declare-fun e!662492 () Bool)

(declare-fun e!662490 () Bool)

(assert (=> b!1165270 (= e!662492 (and e!662490 mapRes!45656))))

(declare-fun condMapEmpty!45656 () Bool)

(declare-fun mapDefault!45656 () ValueCell!13901)

