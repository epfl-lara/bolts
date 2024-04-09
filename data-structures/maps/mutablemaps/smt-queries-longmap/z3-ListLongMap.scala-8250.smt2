; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100486 () Bool)

(assert start!100486)

(declare-fun b_free!25773 () Bool)

(declare-fun b_next!25773 () Bool)

(assert (=> start!100486 (= b_free!25773 (not b_next!25773))))

(declare-fun tp!90309 () Bool)

(declare-fun b_and!42447 () Bool)

(assert (=> start!100486 (= tp!90309 b_and!42447)))

(declare-fun b!1199344 () Bool)

(declare-fun res!798385 () Bool)

(declare-fun e!681236 () Bool)

(assert (=> b!1199344 (=> (not res!798385) (not e!681236))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77710 0))(
  ( (array!77711 (arr!37496 (Array (_ BitVec 32) (_ BitVec 64))) (size!38033 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77710)

(assert (=> b!1199344 (= res!798385 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38033 _keys!1208))))))

(declare-fun b!1199345 () Bool)

(declare-fun res!798377 () Bool)

(assert (=> b!1199345 (=> (not res!798377) (not e!681236))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77710 (_ BitVec 32)) Bool)

(assert (=> b!1199345 (= res!798377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199346 () Bool)

(declare-fun e!681235 () Bool)

(assert (=> b!1199346 (= e!681235 true)))

(declare-datatypes ((V!45763 0))(
  ( (V!45764 (val!15295 Int)) )
))
(declare-fun zeroValue!944 () V!45763)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19718 0))(
  ( (tuple2!19719 (_1!9869 (_ BitVec 64)) (_2!9869 V!45763)) )
))
(declare-datatypes ((List!26549 0))(
  ( (Nil!26546) (Cons!26545 (h!27754 tuple2!19718) (t!39309 List!26549)) )
))
(declare-datatypes ((ListLongMap!17699 0))(
  ( (ListLongMap!17700 (toList!8865 List!26549)) )
))
(declare-fun lt!543707 () ListLongMap!17699)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!543706 () array!77710)

(declare-datatypes ((ValueCell!14529 0))(
  ( (ValueCellFull!14529 (v!17934 V!45763)) (EmptyCell!14529) )
))
(declare-datatypes ((array!77712 0))(
  ( (array!77713 (arr!37497 (Array (_ BitVec 32) ValueCell!14529)) (size!38034 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77712)

(declare-fun minValue!944 () V!45763)

(declare-fun getCurrentListMapNoExtraKeys!5278 (array!77710 array!77712 (_ BitVec 32) (_ BitVec 32) V!45763 V!45763 (_ BitVec 32) Int) ListLongMap!17699)

(declare-fun dynLambda!3209 (Int (_ BitVec 64)) V!45763)

(assert (=> b!1199346 (= lt!543707 (getCurrentListMapNoExtraKeys!5278 lt!543706 (array!77713 (store (arr!37497 _values!996) i!673 (ValueCellFull!14529 (dynLambda!3209 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38034 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543708 () ListLongMap!17699)

(assert (=> b!1199346 (= lt!543708 (getCurrentListMapNoExtraKeys!5278 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199347 () Bool)

(declare-fun res!798386 () Bool)

(assert (=> b!1199347 (=> (not res!798386) (not e!681236))))

(assert (=> b!1199347 (= res!798386 (and (= (size!38034 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38033 _keys!1208) (size!38034 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47558 () Bool)

(declare-fun mapRes!47558 () Bool)

(assert (=> mapIsEmpty!47558 mapRes!47558))

(declare-fun b!1199348 () Bool)

(declare-fun res!798381 () Bool)

(assert (=> b!1199348 (=> (not res!798381) (not e!681236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199348 (= res!798381 (validMask!0 mask!1564))))

(declare-fun b!1199349 () Bool)

(declare-fun res!798382 () Bool)

(assert (=> b!1199349 (=> (not res!798382) (not e!681236))))

(declare-datatypes ((List!26550 0))(
  ( (Nil!26547) (Cons!26546 (h!27755 (_ BitVec 64)) (t!39310 List!26550)) )
))
(declare-fun arrayNoDuplicates!0 (array!77710 (_ BitVec 32) List!26550) Bool)

(assert (=> b!1199349 (= res!798382 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26547))))

(declare-fun b!1199350 () Bool)

(declare-fun e!681233 () Bool)

(declare-fun tp_is_empty!30477 () Bool)

(assert (=> b!1199350 (= e!681233 tp_is_empty!30477)))

(declare-fun b!1199351 () Bool)

(declare-fun e!681234 () Bool)

(assert (=> b!1199351 (= e!681234 (and e!681233 mapRes!47558))))

(declare-fun condMapEmpty!47558 () Bool)

(declare-fun mapDefault!47558 () ValueCell!14529)

(assert (=> b!1199351 (= condMapEmpty!47558 (= (arr!37497 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14529)) mapDefault!47558)))))

(declare-fun b!1199352 () Bool)

(declare-fun res!798379 () Bool)

(declare-fun e!681238 () Bool)

(assert (=> b!1199352 (=> (not res!798379) (not e!681238))))

(assert (=> b!1199352 (= res!798379 (arrayNoDuplicates!0 lt!543706 #b00000000000000000000000000000000 Nil!26547))))

(declare-fun res!798387 () Bool)

(assert (=> start!100486 (=> (not res!798387) (not e!681236))))

(assert (=> start!100486 (= res!798387 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38033 _keys!1208))))))

(assert (=> start!100486 e!681236))

(assert (=> start!100486 tp_is_empty!30477))

(declare-fun array_inv!28478 (array!77710) Bool)

(assert (=> start!100486 (array_inv!28478 _keys!1208)))

(assert (=> start!100486 true))

(assert (=> start!100486 tp!90309))

(declare-fun array_inv!28479 (array!77712) Bool)

(assert (=> start!100486 (and (array_inv!28479 _values!996) e!681234)))

(declare-fun b!1199353 () Bool)

(assert (=> b!1199353 (= e!681238 (not e!681235))))

(declare-fun res!798380 () Bool)

(assert (=> b!1199353 (=> res!798380 e!681235)))

(assert (=> b!1199353 (= res!798380 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199353 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39700 0))(
  ( (Unit!39701) )
))
(declare-fun lt!543709 () Unit!39700)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77710 (_ BitVec 64) (_ BitVec 32)) Unit!39700)

(assert (=> b!1199353 (= lt!543709 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1199354 () Bool)

(declare-fun e!681232 () Bool)

(assert (=> b!1199354 (= e!681232 tp_is_empty!30477)))

(declare-fun b!1199355 () Bool)

(declare-fun res!798384 () Bool)

(assert (=> b!1199355 (=> (not res!798384) (not e!681236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199355 (= res!798384 (validKeyInArray!0 k0!934))))

(declare-fun b!1199356 () Bool)

(assert (=> b!1199356 (= e!681236 e!681238)))

(declare-fun res!798378 () Bool)

(assert (=> b!1199356 (=> (not res!798378) (not e!681238))))

(assert (=> b!1199356 (= res!798378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543706 mask!1564))))

(assert (=> b!1199356 (= lt!543706 (array!77711 (store (arr!37496 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38033 _keys!1208)))))

(declare-fun b!1199357 () Bool)

(declare-fun res!798383 () Bool)

(assert (=> b!1199357 (=> (not res!798383) (not e!681236))))

(assert (=> b!1199357 (= res!798383 (= (select (arr!37496 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!47558 () Bool)

(declare-fun tp!90310 () Bool)

(assert (=> mapNonEmpty!47558 (= mapRes!47558 (and tp!90310 e!681232))))

(declare-fun mapRest!47558 () (Array (_ BitVec 32) ValueCell!14529))

(declare-fun mapValue!47558 () ValueCell!14529)

(declare-fun mapKey!47558 () (_ BitVec 32))

(assert (=> mapNonEmpty!47558 (= (arr!37497 _values!996) (store mapRest!47558 mapKey!47558 mapValue!47558))))

(assert (= (and start!100486 res!798387) b!1199348))

(assert (= (and b!1199348 res!798381) b!1199347))

(assert (= (and b!1199347 res!798386) b!1199345))

(assert (= (and b!1199345 res!798377) b!1199349))

(assert (= (and b!1199349 res!798382) b!1199344))

(assert (= (and b!1199344 res!798385) b!1199355))

(assert (= (and b!1199355 res!798384) b!1199357))

(assert (= (and b!1199357 res!798383) b!1199356))

(assert (= (and b!1199356 res!798378) b!1199352))

(assert (= (and b!1199352 res!798379) b!1199353))

(assert (= (and b!1199353 (not res!798380)) b!1199346))

(assert (= (and b!1199351 condMapEmpty!47558) mapIsEmpty!47558))

(assert (= (and b!1199351 (not condMapEmpty!47558)) mapNonEmpty!47558))

(get-info :version)

(assert (= (and mapNonEmpty!47558 ((_ is ValueCellFull!14529) mapValue!47558)) b!1199354))

(assert (= (and b!1199351 ((_ is ValueCellFull!14529) mapDefault!47558)) b!1199350))

(assert (= start!100486 b!1199351))

(declare-fun b_lambda!20987 () Bool)

(assert (=> (not b_lambda!20987) (not b!1199346)))

(declare-fun t!39308 () Bool)

(declare-fun tb!10581 () Bool)

(assert (=> (and start!100486 (= defaultEntry!1004 defaultEntry!1004) t!39308) tb!10581))

(declare-fun result!21731 () Bool)

(assert (=> tb!10581 (= result!21731 tp_is_empty!30477)))

(assert (=> b!1199346 t!39308))

(declare-fun b_and!42449 () Bool)

(assert (= b_and!42447 (and (=> t!39308 result!21731) b_and!42449)))

(declare-fun m!1105943 () Bool)

(assert (=> b!1199355 m!1105943))

(declare-fun m!1105945 () Bool)

(assert (=> start!100486 m!1105945))

(declare-fun m!1105947 () Bool)

(assert (=> start!100486 m!1105947))

(declare-fun m!1105949 () Bool)

(assert (=> b!1199357 m!1105949))

(declare-fun m!1105951 () Bool)

(assert (=> b!1199345 m!1105951))

(declare-fun m!1105953 () Bool)

(assert (=> mapNonEmpty!47558 m!1105953))

(declare-fun m!1105955 () Bool)

(assert (=> b!1199348 m!1105955))

(declare-fun m!1105957 () Bool)

(assert (=> b!1199346 m!1105957))

(declare-fun m!1105959 () Bool)

(assert (=> b!1199346 m!1105959))

(declare-fun m!1105961 () Bool)

(assert (=> b!1199346 m!1105961))

(declare-fun m!1105963 () Bool)

(assert (=> b!1199346 m!1105963))

(declare-fun m!1105965 () Bool)

(assert (=> b!1199356 m!1105965))

(declare-fun m!1105967 () Bool)

(assert (=> b!1199356 m!1105967))

(declare-fun m!1105969 () Bool)

(assert (=> b!1199352 m!1105969))

(declare-fun m!1105971 () Bool)

(assert (=> b!1199349 m!1105971))

(declare-fun m!1105973 () Bool)

(assert (=> b!1199353 m!1105973))

(declare-fun m!1105975 () Bool)

(assert (=> b!1199353 m!1105975))

(check-sat (not b!1199348) (not start!100486) b_and!42449 (not b!1199352) (not b!1199355) (not b!1199346) (not b!1199345) tp_is_empty!30477 (not b_next!25773) (not mapNonEmpty!47558) (not b!1199349) (not b!1199353) (not b!1199356) (not b_lambda!20987))
(check-sat b_and!42449 (not b_next!25773))
