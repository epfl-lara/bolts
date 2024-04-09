; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78810 () Bool)

(assert start!78810)

(declare-fun b_free!16995 () Bool)

(declare-fun b_next!16995 () Bool)

(assert (=> start!78810 (= b_free!16995 (not b_next!16995))))

(declare-fun tp!59426 () Bool)

(declare-fun b_and!27745 () Bool)

(assert (=> start!78810 (= tp!59426 b_and!27745)))

(declare-fun mapIsEmpty!31011 () Bool)

(declare-fun mapRes!31011 () Bool)

(assert (=> mapIsEmpty!31011 mapRes!31011))

(declare-fun b!919327 () Bool)

(declare-fun res!620009 () Bool)

(declare-fun e!516058 () Bool)

(assert (=> b!919327 (=> (not res!620009) (not e!516058))))

(declare-datatypes ((array!54998 0))(
  ( (array!54999 (arr!26440 (Array (_ BitVec 32) (_ BitVec 64))) (size!26900 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54998)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30969 0))(
  ( (V!30970 (val!9802 Int)) )
))
(declare-datatypes ((ValueCell!9270 0))(
  ( (ValueCellFull!9270 (v!12320 V!30969)) (EmptyCell!9270) )
))
(declare-datatypes ((array!55000 0))(
  ( (array!55001 (arr!26441 (Array (_ BitVec 32) ValueCell!9270)) (size!26901 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55000)

(assert (=> b!919327 (= res!620009 (and (= (size!26901 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26900 _keys!1487) (size!26901 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919328 () Bool)

(declare-fun e!516059 () Bool)

(assert (=> b!919328 (= e!516058 e!516059)))

(declare-fun res!620006 () Bool)

(assert (=> b!919328 (=> (not res!620006) (not e!516059))))

(declare-datatypes ((tuple2!12826 0))(
  ( (tuple2!12827 (_1!6423 (_ BitVec 64)) (_2!6423 V!30969)) )
))
(declare-datatypes ((List!18668 0))(
  ( (Nil!18665) (Cons!18664 (h!19810 tuple2!12826) (t!26401 List!18668)) )
))
(declare-datatypes ((ListLongMap!11537 0))(
  ( (ListLongMap!11538 (toList!5784 List!18668)) )
))
(declare-fun lt!412670 () ListLongMap!11537)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4795 (ListLongMap!11537 (_ BitVec 64)) Bool)

(assert (=> b!919328 (= res!620006 (contains!4795 lt!412670 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30969)

(declare-fun minValue!1173 () V!30969)

(declare-fun getCurrentListMap!3007 (array!54998 array!55000 (_ BitVec 32) (_ BitVec 32) V!30969 V!30969 (_ BitVec 32) Int) ListLongMap!11537)

(assert (=> b!919328 (= lt!412670 (getCurrentListMap!3007 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!620007 () Bool)

(assert (=> start!78810 (=> (not res!620007) (not e!516058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78810 (= res!620007 (validMask!0 mask!1881))))

(assert (=> start!78810 e!516058))

(assert (=> start!78810 true))

(declare-fun tp_is_empty!19503 () Bool)

(assert (=> start!78810 tp_is_empty!19503))

(declare-fun e!516054 () Bool)

(declare-fun array_inv!20600 (array!55000) Bool)

(assert (=> start!78810 (and (array_inv!20600 _values!1231) e!516054)))

(assert (=> start!78810 tp!59426))

(declare-fun array_inv!20601 (array!54998) Bool)

(assert (=> start!78810 (array_inv!20601 _keys!1487)))

(declare-fun b!919329 () Bool)

(declare-fun res!620011 () Bool)

(assert (=> b!919329 (=> (not res!620011) (not e!516059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919329 (= res!620011 (validKeyInArray!0 k0!1099))))

(declare-fun b!919330 () Bool)

(declare-fun res!620012 () Bool)

(assert (=> b!919330 (=> (not res!620012) (not e!516058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54998 (_ BitVec 32)) Bool)

(assert (=> b!919330 (= res!620012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919331 () Bool)

(declare-fun e!516055 () Bool)

(assert (=> b!919331 (= e!516059 e!516055)))

(declare-fun res!620005 () Bool)

(assert (=> b!919331 (=> (not res!620005) (not e!516055))))

(declare-fun lt!412673 () (_ BitVec 64))

(assert (=> b!919331 (= res!620005 (validKeyInArray!0 lt!412673))))

(assert (=> b!919331 (= lt!412673 (select (arr!26440 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapNonEmpty!31011 () Bool)

(declare-fun tp!59427 () Bool)

(declare-fun e!516060 () Bool)

(assert (=> mapNonEmpty!31011 (= mapRes!31011 (and tp!59427 e!516060))))

(declare-fun mapKey!31011 () (_ BitVec 32))

(declare-fun mapValue!31011 () ValueCell!9270)

(declare-fun mapRest!31011 () (Array (_ BitVec 32) ValueCell!9270))

(assert (=> mapNonEmpty!31011 (= (arr!26441 _values!1231) (store mapRest!31011 mapKey!31011 mapValue!31011))))

(declare-fun b!919332 () Bool)

(declare-fun e!516057 () Bool)

(assert (=> b!919332 (= e!516054 (and e!516057 mapRes!31011))))

(declare-fun condMapEmpty!31011 () Bool)

(declare-fun mapDefault!31011 () ValueCell!9270)

(assert (=> b!919332 (= condMapEmpty!31011 (= (arr!26441 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9270)) mapDefault!31011)))))

(declare-fun b!919333 () Bool)

(declare-fun res!620003 () Bool)

(assert (=> b!919333 (=> (not res!620003) (not e!516058))))

(assert (=> b!919333 (= res!620003 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26900 _keys!1487))))))

(declare-fun b!919334 () Bool)

(declare-fun res!620008 () Bool)

(assert (=> b!919334 (=> (not res!620008) (not e!516059))))

(assert (=> b!919334 (= res!620008 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919335 () Bool)

(assert (=> b!919335 (= e!516055 (not true))))

(declare-datatypes ((List!18669 0))(
  ( (Nil!18666) (Cons!18665 (h!19811 (_ BitVec 64)) (t!26402 List!18669)) )
))
(declare-fun arrayNoDuplicates!0 (array!54998 (_ BitVec 32) List!18669) Bool)

(assert (=> b!919335 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18666)))

(declare-datatypes ((Unit!31023 0))(
  ( (Unit!31024) )
))
(declare-fun lt!412671 () Unit!31023)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!54998 (_ BitVec 32) (_ BitVec 32)) Unit!31023)

(assert (=> b!919335 (= lt!412671 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412669 () tuple2!12826)

(declare-fun +!2608 (ListLongMap!11537 tuple2!12826) ListLongMap!11537)

(assert (=> b!919335 (contains!4795 (+!2608 lt!412670 lt!412669) k0!1099)))

(declare-fun lt!412672 () Unit!31023)

(declare-fun lt!412674 () V!30969)

(declare-fun addStillContains!370 (ListLongMap!11537 (_ BitVec 64) V!30969 (_ BitVec 64)) Unit!31023)

(assert (=> b!919335 (= lt!412672 (addStillContains!370 lt!412670 lt!412673 lt!412674 k0!1099))))

(assert (=> b!919335 (= (getCurrentListMap!3007 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2608 (getCurrentListMap!3007 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412669))))

(assert (=> b!919335 (= lt!412669 (tuple2!12827 lt!412673 lt!412674))))

(declare-fun get!13885 (ValueCell!9270 V!30969) V!30969)

(declare-fun dynLambda!1447 (Int (_ BitVec 64)) V!30969)

(assert (=> b!919335 (= lt!412674 (get!13885 (select (arr!26441 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1447 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412668 () Unit!31023)

(declare-fun lemmaListMapRecursiveValidKeyArray!43 (array!54998 array!55000 (_ BitVec 32) (_ BitVec 32) V!30969 V!30969 (_ BitVec 32) Int) Unit!31023)

(assert (=> b!919335 (= lt!412668 (lemmaListMapRecursiveValidKeyArray!43 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919336 () Bool)

(declare-fun res!620004 () Bool)

(assert (=> b!919336 (=> (not res!620004) (not e!516058))))

(assert (=> b!919336 (= res!620004 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18666))))

(declare-fun b!919337 () Bool)

(assert (=> b!919337 (= e!516060 tp_is_empty!19503)))

(declare-fun b!919338 () Bool)

(assert (=> b!919338 (= e!516057 tp_is_empty!19503)))

(declare-fun b!919339 () Bool)

(declare-fun res!620010 () Bool)

(assert (=> b!919339 (=> (not res!620010) (not e!516059))))

(declare-fun v!791 () V!30969)

(declare-fun apply!599 (ListLongMap!11537 (_ BitVec 64)) V!30969)

(assert (=> b!919339 (= res!620010 (= (apply!599 lt!412670 k0!1099) v!791))))

(assert (= (and start!78810 res!620007) b!919327))

(assert (= (and b!919327 res!620009) b!919330))

(assert (= (and b!919330 res!620012) b!919336))

(assert (= (and b!919336 res!620004) b!919333))

(assert (= (and b!919333 res!620003) b!919328))

(assert (= (and b!919328 res!620006) b!919339))

(assert (= (and b!919339 res!620010) b!919334))

(assert (= (and b!919334 res!620008) b!919329))

(assert (= (and b!919329 res!620011) b!919331))

(assert (= (and b!919331 res!620005) b!919335))

(assert (= (and b!919332 condMapEmpty!31011) mapIsEmpty!31011))

(assert (= (and b!919332 (not condMapEmpty!31011)) mapNonEmpty!31011))

(get-info :version)

(assert (= (and mapNonEmpty!31011 ((_ is ValueCellFull!9270) mapValue!31011)) b!919337))

(assert (= (and b!919332 ((_ is ValueCellFull!9270) mapDefault!31011)) b!919338))

(assert (= start!78810 b!919332))

(declare-fun b_lambda!13527 () Bool)

(assert (=> (not b_lambda!13527) (not b!919335)))

(declare-fun t!26400 () Bool)

(declare-fun tb!5583 () Bool)

(assert (=> (and start!78810 (= defaultEntry!1235 defaultEntry!1235) t!26400) tb!5583))

(declare-fun result!10981 () Bool)

(assert (=> tb!5583 (= result!10981 tp_is_empty!19503)))

(assert (=> b!919335 t!26400))

(declare-fun b_and!27747 () Bool)

(assert (= b_and!27745 (and (=> t!26400 result!10981) b_and!27747)))

(declare-fun m!853219 () Bool)

(assert (=> b!919331 m!853219))

(declare-fun m!853221 () Bool)

(assert (=> b!919331 m!853221))

(declare-fun m!853223 () Bool)

(assert (=> mapNonEmpty!31011 m!853223))

(declare-fun m!853225 () Bool)

(assert (=> b!919336 m!853225))

(declare-fun m!853227 () Bool)

(assert (=> b!919335 m!853227))

(declare-fun m!853229 () Bool)

(assert (=> b!919335 m!853229))

(declare-fun m!853231 () Bool)

(assert (=> b!919335 m!853231))

(declare-fun m!853233 () Bool)

(assert (=> b!919335 m!853233))

(assert (=> b!919335 m!853227))

(declare-fun m!853235 () Bool)

(assert (=> b!919335 m!853235))

(assert (=> b!919335 m!853229))

(assert (=> b!919335 m!853231))

(declare-fun m!853237 () Bool)

(assert (=> b!919335 m!853237))

(declare-fun m!853239 () Bool)

(assert (=> b!919335 m!853239))

(declare-fun m!853241 () Bool)

(assert (=> b!919335 m!853241))

(declare-fun m!853243 () Bool)

(assert (=> b!919335 m!853243))

(declare-fun m!853245 () Bool)

(assert (=> b!919335 m!853245))

(declare-fun m!853247 () Bool)

(assert (=> b!919335 m!853247))

(assert (=> b!919335 m!853241))

(declare-fun m!853249 () Bool)

(assert (=> b!919335 m!853249))

(declare-fun m!853251 () Bool)

(assert (=> b!919329 m!853251))

(declare-fun m!853253 () Bool)

(assert (=> start!78810 m!853253))

(declare-fun m!853255 () Bool)

(assert (=> start!78810 m!853255))

(declare-fun m!853257 () Bool)

(assert (=> start!78810 m!853257))

(declare-fun m!853259 () Bool)

(assert (=> b!919330 m!853259))

(declare-fun m!853261 () Bool)

(assert (=> b!919339 m!853261))

(declare-fun m!853263 () Bool)

(assert (=> b!919328 m!853263))

(declare-fun m!853265 () Bool)

(assert (=> b!919328 m!853265))

(check-sat (not b!919331) (not b!919336) (not b_next!16995) (not b!919329) (not b!919330) tp_is_empty!19503 (not b!919328) (not b_lambda!13527) b_and!27747 (not b!919339) (not start!78810) (not mapNonEmpty!31011) (not b!919335))
(check-sat b_and!27747 (not b_next!16995))
