; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78768 () Bool)

(assert start!78768)

(declare-fun b_free!16953 () Bool)

(declare-fun b_next!16953 () Bool)

(assert (=> start!78768 (= b_free!16953 (not b_next!16953))))

(declare-fun tp!59301 () Bool)

(declare-fun b_and!27661 () Bool)

(assert (=> start!78768 (= tp!59301 b_and!27661)))

(declare-fun b!918466 () Bool)

(declare-fun e!515615 () Bool)

(declare-fun e!515618 () Bool)

(declare-fun mapRes!30948 () Bool)

(assert (=> b!918466 (= e!515615 (and e!515618 mapRes!30948))))

(declare-fun condMapEmpty!30948 () Bool)

(declare-datatypes ((V!30913 0))(
  ( (V!30914 (val!9781 Int)) )
))
(declare-datatypes ((ValueCell!9249 0))(
  ( (ValueCellFull!9249 (v!12299 V!30913)) (EmptyCell!9249) )
))
(declare-datatypes ((array!54914 0))(
  ( (array!54915 (arr!26398 (Array (_ BitVec 32) ValueCell!9249)) (size!26858 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54914)

(declare-fun mapDefault!30948 () ValueCell!9249)

(assert (=> b!918466 (= condMapEmpty!30948 (= (arr!26398 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9249)) mapDefault!30948)))))

(declare-fun b!918467 () Bool)

(declare-fun e!515617 () Bool)

(assert (=> b!918467 (= e!515617 (not true))))

(declare-datatypes ((tuple2!12788 0))(
  ( (tuple2!12789 (_1!6404 (_ BitVec 64)) (_2!6404 V!30913)) )
))
(declare-datatypes ((List!18631 0))(
  ( (Nil!18628) (Cons!18627 (h!19773 tuple2!12788) (t!26322 List!18631)) )
))
(declare-datatypes ((ListLongMap!11499 0))(
  ( (ListLongMap!11500 (toList!5765 List!18631)) )
))
(declare-fun lt!412258 () ListLongMap!11499)

(declare-fun lt!412259 () tuple2!12788)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4778 (ListLongMap!11499 (_ BitVec 64)) Bool)

(declare-fun +!2593 (ListLongMap!11499 tuple2!12788) ListLongMap!11499)

(assert (=> b!918467 (contains!4778 (+!2593 lt!412258 lt!412259) k0!1099)))

(declare-fun lt!412263 () (_ BitVec 64))

(declare-fun lt!412260 () V!30913)

(declare-datatypes ((Unit!30993 0))(
  ( (Unit!30994) )
))
(declare-fun lt!412261 () Unit!30993)

(declare-fun addStillContains!355 (ListLongMap!11499 (_ BitVec 64) V!30913 (_ BitVec 64)) Unit!30993)

(assert (=> b!918467 (= lt!412261 (addStillContains!355 lt!412258 lt!412263 lt!412260 k0!1099))))

(declare-datatypes ((array!54916 0))(
  ( (array!54917 (arr!26399 (Array (_ BitVec 32) (_ BitVec 64))) (size!26859 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54916)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30913)

(declare-fun minValue!1173 () V!30913)

(declare-fun getCurrentListMap!2990 (array!54916 array!54914 (_ BitVec 32) (_ BitVec 32) V!30913 V!30913 (_ BitVec 32) Int) ListLongMap!11499)

(assert (=> b!918467 (= (getCurrentListMap!2990 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2593 (getCurrentListMap!2990 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412259))))

(assert (=> b!918467 (= lt!412259 (tuple2!12789 lt!412263 lt!412260))))

(declare-fun get!13856 (ValueCell!9249 V!30913) V!30913)

(declare-fun dynLambda!1432 (Int (_ BitVec 64)) V!30913)

(assert (=> b!918467 (= lt!412260 (get!13856 (select (arr!26398 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1432 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412262 () Unit!30993)

(declare-fun lemmaListMapRecursiveValidKeyArray!28 (array!54916 array!54914 (_ BitVec 32) (_ BitVec 32) V!30913 V!30913 (_ BitVec 32) Int) Unit!30993)

(assert (=> b!918467 (= lt!412262 (lemmaListMapRecursiveValidKeyArray!28 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918468 () Bool)

(declare-fun res!619380 () Bool)

(declare-fun e!515616 () Bool)

(assert (=> b!918468 (=> (not res!619380) (not e!515616))))

(declare-datatypes ((List!18632 0))(
  ( (Nil!18629) (Cons!18628 (h!19774 (_ BitVec 64)) (t!26323 List!18632)) )
))
(declare-fun arrayNoDuplicates!0 (array!54916 (_ BitVec 32) List!18632) Bool)

(assert (=> b!918468 (= res!619380 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18629))))

(declare-fun b!918469 () Bool)

(declare-fun res!619377 () Bool)

(declare-fun e!515619 () Bool)

(assert (=> b!918469 (=> (not res!619377) (not e!515619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918469 (= res!619377 (validKeyInArray!0 k0!1099))))

(declare-fun b!918470 () Bool)

(declare-fun e!515613 () Bool)

(declare-fun tp_is_empty!19461 () Bool)

(assert (=> b!918470 (= e!515613 tp_is_empty!19461)))

(declare-fun b!918471 () Bool)

(declare-fun res!619374 () Bool)

(assert (=> b!918471 (=> (not res!619374) (not e!515616))))

(assert (=> b!918471 (= res!619374 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26859 _keys!1487))))))

(declare-fun b!918472 () Bool)

(assert (=> b!918472 (= e!515619 e!515617)))

(declare-fun res!619382 () Bool)

(assert (=> b!918472 (=> (not res!619382) (not e!515617))))

(assert (=> b!918472 (= res!619382 (validKeyInArray!0 lt!412263))))

(assert (=> b!918472 (= lt!412263 (select (arr!26399 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapNonEmpty!30948 () Bool)

(declare-fun tp!59300 () Bool)

(assert (=> mapNonEmpty!30948 (= mapRes!30948 (and tp!59300 e!515613))))

(declare-fun mapValue!30948 () ValueCell!9249)

(declare-fun mapKey!30948 () (_ BitVec 32))

(declare-fun mapRest!30948 () (Array (_ BitVec 32) ValueCell!9249))

(assert (=> mapNonEmpty!30948 (= (arr!26398 _values!1231) (store mapRest!30948 mapKey!30948 mapValue!30948))))

(declare-fun b!918473 () Bool)

(declare-fun res!619376 () Bool)

(assert (=> b!918473 (=> (not res!619376) (not e!515619))))

(assert (=> b!918473 (= res!619376 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!619375 () Bool)

(assert (=> start!78768 (=> (not res!619375) (not e!515616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78768 (= res!619375 (validMask!0 mask!1881))))

(assert (=> start!78768 e!515616))

(assert (=> start!78768 true))

(assert (=> start!78768 tp_is_empty!19461))

(declare-fun array_inv!20572 (array!54914) Bool)

(assert (=> start!78768 (and (array_inv!20572 _values!1231) e!515615)))

(assert (=> start!78768 tp!59301))

(declare-fun array_inv!20573 (array!54916) Bool)

(assert (=> start!78768 (array_inv!20573 _keys!1487)))

(declare-fun b!918474 () Bool)

(declare-fun res!619379 () Bool)

(assert (=> b!918474 (=> (not res!619379) (not e!515619))))

(declare-fun v!791 () V!30913)

(declare-fun apply!585 (ListLongMap!11499 (_ BitVec 64)) V!30913)

(assert (=> b!918474 (= res!619379 (= (apply!585 lt!412258 k0!1099) v!791))))

(declare-fun b!918475 () Bool)

(declare-fun res!619373 () Bool)

(assert (=> b!918475 (=> (not res!619373) (not e!515616))))

(assert (=> b!918475 (= res!619373 (and (= (size!26858 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26859 _keys!1487) (size!26858 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918476 () Bool)

(declare-fun res!619381 () Bool)

(assert (=> b!918476 (=> (not res!619381) (not e!515616))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54916 (_ BitVec 32)) Bool)

(assert (=> b!918476 (= res!619381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918477 () Bool)

(assert (=> b!918477 (= e!515616 e!515619)))

(declare-fun res!619378 () Bool)

(assert (=> b!918477 (=> (not res!619378) (not e!515619))))

(assert (=> b!918477 (= res!619378 (contains!4778 lt!412258 k0!1099))))

(assert (=> b!918477 (= lt!412258 (getCurrentListMap!2990 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918478 () Bool)

(assert (=> b!918478 (= e!515618 tp_is_empty!19461)))

(declare-fun mapIsEmpty!30948 () Bool)

(assert (=> mapIsEmpty!30948 mapRes!30948))

(assert (= (and start!78768 res!619375) b!918475))

(assert (= (and b!918475 res!619373) b!918476))

(assert (= (and b!918476 res!619381) b!918468))

(assert (= (and b!918468 res!619380) b!918471))

(assert (= (and b!918471 res!619374) b!918477))

(assert (= (and b!918477 res!619378) b!918474))

(assert (= (and b!918474 res!619379) b!918473))

(assert (= (and b!918473 res!619376) b!918469))

(assert (= (and b!918469 res!619377) b!918472))

(assert (= (and b!918472 res!619382) b!918467))

(assert (= (and b!918466 condMapEmpty!30948) mapIsEmpty!30948))

(assert (= (and b!918466 (not condMapEmpty!30948)) mapNonEmpty!30948))

(get-info :version)

(assert (= (and mapNonEmpty!30948 ((_ is ValueCellFull!9249) mapValue!30948)) b!918470))

(assert (= (and b!918466 ((_ is ValueCellFull!9249) mapDefault!30948)) b!918478))

(assert (= start!78768 b!918466))

(declare-fun b_lambda!13485 () Bool)

(assert (=> (not b_lambda!13485) (not b!918467)))

(declare-fun t!26321 () Bool)

(declare-fun tb!5541 () Bool)

(assert (=> (and start!78768 (= defaultEntry!1235 defaultEntry!1235) t!26321) tb!5541))

(declare-fun result!10897 () Bool)

(assert (=> tb!5541 (= result!10897 tp_is_empty!19461)))

(assert (=> b!918467 t!26321))

(declare-fun b_and!27663 () Bool)

(assert (= b_and!27661 (and (=> t!26321 result!10897) b_and!27663)))

(declare-fun m!852255 () Bool)

(assert (=> b!918472 m!852255))

(declare-fun m!852257 () Bool)

(assert (=> b!918472 m!852257))

(declare-fun m!852259 () Bool)

(assert (=> b!918474 m!852259))

(declare-fun m!852261 () Bool)

(assert (=> b!918477 m!852261))

(declare-fun m!852263 () Bool)

(assert (=> b!918477 m!852263))

(declare-fun m!852265 () Bool)

(assert (=> mapNonEmpty!30948 m!852265))

(declare-fun m!852267 () Bool)

(assert (=> b!918467 m!852267))

(declare-fun m!852269 () Bool)

(assert (=> b!918467 m!852269))

(declare-fun m!852271 () Bool)

(assert (=> b!918467 m!852271))

(declare-fun m!852273 () Bool)

(assert (=> b!918467 m!852273))

(declare-fun m!852275 () Bool)

(assert (=> b!918467 m!852275))

(declare-fun m!852277 () Bool)

(assert (=> b!918467 m!852277))

(declare-fun m!852279 () Bool)

(assert (=> b!918467 m!852279))

(assert (=> b!918467 m!852271))

(assert (=> b!918467 m!852275))

(declare-fun m!852281 () Bool)

(assert (=> b!918467 m!852281))

(declare-fun m!852283 () Bool)

(assert (=> b!918467 m!852283))

(assert (=> b!918467 m!852267))

(assert (=> b!918467 m!852277))

(declare-fun m!852285 () Bool)

(assert (=> b!918467 m!852285))

(declare-fun m!852287 () Bool)

(assert (=> b!918469 m!852287))

(declare-fun m!852289 () Bool)

(assert (=> b!918476 m!852289))

(declare-fun m!852291 () Bool)

(assert (=> start!78768 m!852291))

(declare-fun m!852293 () Bool)

(assert (=> start!78768 m!852293))

(declare-fun m!852295 () Bool)

(assert (=> start!78768 m!852295))

(declare-fun m!852297 () Bool)

(assert (=> b!918468 m!852297))

(check-sat b_and!27663 (not b!918469) (not b_next!16953) (not b!918472) (not b!918467) (not b!918476) (not b!918477) (not b_lambda!13485) (not mapNonEmpty!30948) (not start!78768) (not b!918468) tp_is_empty!19461 (not b!918474))
(check-sat b_and!27663 (not b_next!16953))
