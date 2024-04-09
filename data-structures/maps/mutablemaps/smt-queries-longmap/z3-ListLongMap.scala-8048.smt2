; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99166 () Bool)

(assert start!99166)

(declare-fun b_free!24735 () Bool)

(declare-fun b_next!24735 () Bool)

(assert (=> start!99166 (= b_free!24735 (not b_next!24735))))

(declare-fun tp!86916 () Bool)

(declare-fun b_and!40333 () Bool)

(assert (=> start!99166 (= tp!86916 b_and!40333)))

(declare-fun b!1166262 () Bool)

(declare-fun e!662986 () Bool)

(declare-fun tp_is_empty!29265 () Bool)

(assert (=> b!1166262 (= e!662986 tp_is_empty!29265)))

(declare-fun b!1166263 () Bool)

(declare-fun e!662985 () Bool)

(declare-fun e!662987 () Bool)

(assert (=> b!1166263 (= e!662985 (not e!662987))))

(declare-fun res!773650 () Bool)

(assert (=> b!1166263 (=> res!773650 e!662987)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166263 (= res!773650 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75308 0))(
  ( (array!75309 (arr!36301 (Array (_ BitVec 32) (_ BitVec 64))) (size!36838 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75308)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166263 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38376 0))(
  ( (Unit!38377) )
))
(declare-fun lt!525158 () Unit!38376)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75308 (_ BitVec 64) (_ BitVec 32)) Unit!38376)

(assert (=> b!1166263 (= lt!525158 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1166264 () Bool)

(declare-fun res!773660 () Bool)

(declare-fun e!662981 () Bool)

(assert (=> b!1166264 (=> (not res!773660) (not e!662981))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44147 0))(
  ( (V!44148 (val!14689 Int)) )
))
(declare-datatypes ((ValueCell!13923 0))(
  ( (ValueCellFull!13923 (v!17327 V!44147)) (EmptyCell!13923) )
))
(declare-datatypes ((array!75310 0))(
  ( (array!75311 (arr!36302 (Array (_ BitVec 32) ValueCell!13923)) (size!36839 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75310)

(assert (=> b!1166264 (= res!773660 (and (= (size!36839 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36838 _keys!1208) (size!36839 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166265 () Bool)

(declare-fun e!662982 () Bool)

(assert (=> b!1166265 (= e!662982 true)))

(declare-fun lt!525154 () array!75310)

(declare-fun defaultEntry!1004 () Int)

(declare-fun zeroValue!944 () V!44147)

(declare-fun lt!525157 () array!75308)

(declare-fun minValue!944 () V!44147)

(declare-datatypes ((tuple2!18810 0))(
  ( (tuple2!18811 (_1!9415 (_ BitVec 64)) (_2!9415 V!44147)) )
))
(declare-datatypes ((List!25586 0))(
  ( (Nil!25583) (Cons!25582 (h!26791 tuple2!18810) (t!37320 List!25586)) )
))
(declare-datatypes ((ListLongMap!16791 0))(
  ( (ListLongMap!16792 (toList!8411 List!25586)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4844 (array!75308 array!75310 (_ BitVec 32) (_ BitVec 32) V!44147 V!44147 (_ BitVec 32) Int) ListLongMap!16791)

(declare-fun -!1448 (ListLongMap!16791 (_ BitVec 64)) ListLongMap!16791)

(assert (=> b!1166265 (= (getCurrentListMapNoExtraKeys!4844 lt!525157 lt!525154 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1448 (getCurrentListMapNoExtraKeys!4844 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!525155 () Unit!38376)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!672 (array!75308 array!75310 (_ BitVec 32) (_ BitVec 32) V!44147 V!44147 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38376)

(assert (=> b!1166265 (= lt!525155 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!672 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166266 () Bool)

(declare-fun e!662984 () Bool)

(assert (=> b!1166266 (= e!662984 tp_is_empty!29265)))

(declare-fun mapIsEmpty!45722 () Bool)

(declare-fun mapRes!45722 () Bool)

(assert (=> mapIsEmpty!45722 mapRes!45722))

(declare-fun b!1166267 () Bool)

(declare-fun res!773649 () Bool)

(assert (=> b!1166267 (=> (not res!773649) (not e!662981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166267 (= res!773649 (validKeyInArray!0 k0!934))))

(declare-fun b!1166268 () Bool)

(assert (=> b!1166268 (= e!662981 e!662985)))

(declare-fun res!773653 () Bool)

(assert (=> b!1166268 (=> (not res!773653) (not e!662985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75308 (_ BitVec 32)) Bool)

(assert (=> b!1166268 (= res!773653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525157 mask!1564))))

(assert (=> b!1166268 (= lt!525157 (array!75309 (store (arr!36301 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36838 _keys!1208)))))

(declare-fun mapNonEmpty!45722 () Bool)

(declare-fun tp!86917 () Bool)

(assert (=> mapNonEmpty!45722 (= mapRes!45722 (and tp!86917 e!662986))))

(declare-fun mapRest!45722 () (Array (_ BitVec 32) ValueCell!13923))

(declare-fun mapValue!45722 () ValueCell!13923)

(declare-fun mapKey!45722 () (_ BitVec 32))

(assert (=> mapNonEmpty!45722 (= (arr!36302 _values!996) (store mapRest!45722 mapKey!45722 mapValue!45722))))

(declare-fun b!1166269 () Bool)

(declare-fun res!773654 () Bool)

(assert (=> b!1166269 (=> (not res!773654) (not e!662981))))

(assert (=> b!1166269 (= res!773654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1166270 () Bool)

(declare-fun res!773651 () Bool)

(assert (=> b!1166270 (=> (not res!773651) (not e!662981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166270 (= res!773651 (validMask!0 mask!1564))))

(declare-fun b!1166271 () Bool)

(declare-fun res!773658 () Bool)

(assert (=> b!1166271 (=> (not res!773658) (not e!662981))))

(assert (=> b!1166271 (= res!773658 (= (select (arr!36301 _keys!1208) i!673) k0!934))))

(declare-fun res!773656 () Bool)

(assert (=> start!99166 (=> (not res!773656) (not e!662981))))

(assert (=> start!99166 (= res!773656 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36838 _keys!1208))))))

(assert (=> start!99166 e!662981))

(assert (=> start!99166 tp_is_empty!29265))

(declare-fun array_inv!27634 (array!75308) Bool)

(assert (=> start!99166 (array_inv!27634 _keys!1208)))

(assert (=> start!99166 true))

(assert (=> start!99166 tp!86916))

(declare-fun e!662983 () Bool)

(declare-fun array_inv!27635 (array!75310) Bool)

(assert (=> start!99166 (and (array_inv!27635 _values!996) e!662983)))

(declare-fun b!1166272 () Bool)

(assert (=> b!1166272 (= e!662983 (and e!662984 mapRes!45722))))

(declare-fun condMapEmpty!45722 () Bool)

(declare-fun mapDefault!45722 () ValueCell!13923)

(assert (=> b!1166272 (= condMapEmpty!45722 (= (arr!36302 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13923)) mapDefault!45722)))))

(declare-fun b!1166273 () Bool)

(declare-fun res!773659 () Bool)

(assert (=> b!1166273 (=> (not res!773659) (not e!662981))))

(declare-datatypes ((List!25587 0))(
  ( (Nil!25584) (Cons!25583 (h!26792 (_ BitVec 64)) (t!37321 List!25587)) )
))
(declare-fun arrayNoDuplicates!0 (array!75308 (_ BitVec 32) List!25587) Bool)

(assert (=> b!1166273 (= res!773659 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25584))))

(declare-fun b!1166274 () Bool)

(assert (=> b!1166274 (= e!662987 e!662982)))

(declare-fun res!773657 () Bool)

(assert (=> b!1166274 (=> res!773657 e!662982)))

(assert (=> b!1166274 (= res!773657 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525156 () ListLongMap!16791)

(assert (=> b!1166274 (= lt!525156 (getCurrentListMapNoExtraKeys!4844 lt!525157 lt!525154 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2839 (Int (_ BitVec 64)) V!44147)

(assert (=> b!1166274 (= lt!525154 (array!75311 (store (arr!36302 _values!996) i!673 (ValueCellFull!13923 (dynLambda!2839 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36839 _values!996)))))

(declare-fun lt!525159 () ListLongMap!16791)

(assert (=> b!1166274 (= lt!525159 (getCurrentListMapNoExtraKeys!4844 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166275 () Bool)

(declare-fun res!773652 () Bool)

(assert (=> b!1166275 (=> (not res!773652) (not e!662981))))

(assert (=> b!1166275 (= res!773652 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36838 _keys!1208))))))

(declare-fun b!1166276 () Bool)

(declare-fun res!773655 () Bool)

(assert (=> b!1166276 (=> (not res!773655) (not e!662985))))

(assert (=> b!1166276 (= res!773655 (arrayNoDuplicates!0 lt!525157 #b00000000000000000000000000000000 Nil!25584))))

(assert (= (and start!99166 res!773656) b!1166270))

(assert (= (and b!1166270 res!773651) b!1166264))

(assert (= (and b!1166264 res!773660) b!1166269))

(assert (= (and b!1166269 res!773654) b!1166273))

(assert (= (and b!1166273 res!773659) b!1166275))

(assert (= (and b!1166275 res!773652) b!1166267))

(assert (= (and b!1166267 res!773649) b!1166271))

(assert (= (and b!1166271 res!773658) b!1166268))

(assert (= (and b!1166268 res!773653) b!1166276))

(assert (= (and b!1166276 res!773655) b!1166263))

(assert (= (and b!1166263 (not res!773650)) b!1166274))

(assert (= (and b!1166274 (not res!773657)) b!1166265))

(assert (= (and b!1166272 condMapEmpty!45722) mapIsEmpty!45722))

(assert (= (and b!1166272 (not condMapEmpty!45722)) mapNonEmpty!45722))

(get-info :version)

(assert (= (and mapNonEmpty!45722 ((_ is ValueCellFull!13923) mapValue!45722)) b!1166262))

(assert (= (and b!1166272 ((_ is ValueCellFull!13923) mapDefault!45722)) b!1166266))

(assert (= start!99166 b!1166272))

(declare-fun b_lambda!19859 () Bool)

(assert (=> (not b_lambda!19859) (not b!1166274)))

(declare-fun t!37319 () Bool)

(declare-fun tb!9555 () Bool)

(assert (=> (and start!99166 (= defaultEntry!1004 defaultEntry!1004) t!37319) tb!9555))

(declare-fun result!19667 () Bool)

(assert (=> tb!9555 (= result!19667 tp_is_empty!29265)))

(assert (=> b!1166274 t!37319))

(declare-fun b_and!40335 () Bool)

(assert (= b_and!40333 (and (=> t!37319 result!19667) b_and!40335)))

(declare-fun m!1074367 () Bool)

(assert (=> start!99166 m!1074367))

(declare-fun m!1074369 () Bool)

(assert (=> start!99166 m!1074369))

(declare-fun m!1074371 () Bool)

(assert (=> b!1166271 m!1074371))

(declare-fun m!1074373 () Bool)

(assert (=> b!1166268 m!1074373))

(declare-fun m!1074375 () Bool)

(assert (=> b!1166268 m!1074375))

(declare-fun m!1074377 () Bool)

(assert (=> mapNonEmpty!45722 m!1074377))

(declare-fun m!1074379 () Bool)

(assert (=> b!1166274 m!1074379))

(declare-fun m!1074381 () Bool)

(assert (=> b!1166274 m!1074381))

(declare-fun m!1074383 () Bool)

(assert (=> b!1166274 m!1074383))

(declare-fun m!1074385 () Bool)

(assert (=> b!1166274 m!1074385))

(declare-fun m!1074387 () Bool)

(assert (=> b!1166267 m!1074387))

(declare-fun m!1074389 () Bool)

(assert (=> b!1166270 m!1074389))

(declare-fun m!1074391 () Bool)

(assert (=> b!1166269 m!1074391))

(declare-fun m!1074393 () Bool)

(assert (=> b!1166276 m!1074393))

(declare-fun m!1074395 () Bool)

(assert (=> b!1166263 m!1074395))

(declare-fun m!1074397 () Bool)

(assert (=> b!1166263 m!1074397))

(declare-fun m!1074399 () Bool)

(assert (=> b!1166273 m!1074399))

(declare-fun m!1074401 () Bool)

(assert (=> b!1166265 m!1074401))

(declare-fun m!1074403 () Bool)

(assert (=> b!1166265 m!1074403))

(assert (=> b!1166265 m!1074403))

(declare-fun m!1074405 () Bool)

(assert (=> b!1166265 m!1074405))

(declare-fun m!1074407 () Bool)

(assert (=> b!1166265 m!1074407))

(check-sat (not b!1166274) (not b!1166273) (not b!1166268) tp_is_empty!29265 (not b!1166269) (not b!1166276) (not b!1166270) (not start!99166) (not b_next!24735) (not b!1166265) (not b!1166263) b_and!40335 (not b!1166267) (not mapNonEmpty!45722) (not b_lambda!19859))
(check-sat b_and!40335 (not b_next!24735))
