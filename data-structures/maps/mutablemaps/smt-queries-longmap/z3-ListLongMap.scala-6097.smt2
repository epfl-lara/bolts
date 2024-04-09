; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78720 () Bool)

(assert start!78720)

(declare-fun b_free!16905 () Bool)

(declare-fun b_next!16905 () Bool)

(assert (=> start!78720 (= b_free!16905 (not b_next!16905))))

(declare-fun tp!59157 () Bool)

(declare-fun b_and!27565 () Bool)

(assert (=> start!78720 (= tp!59157 b_and!27565)))

(declare-fun b!917482 () Bool)

(declare-fun res!618657 () Bool)

(declare-fun e!515112 () Bool)

(assert (=> b!917482 (=> (not res!618657) (not e!515112))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917482 (= res!618657 (validKeyInArray!0 k0!1099))))

(declare-fun b!917483 () Bool)

(declare-fun res!618660 () Bool)

(declare-fun e!515113 () Bool)

(assert (=> b!917483 (=> (not res!618660) (not e!515113))))

(declare-datatypes ((array!54818 0))(
  ( (array!54819 (arr!26350 (Array (_ BitVec 32) (_ BitVec 64))) (size!26810 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54818)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54818 (_ BitVec 32)) Bool)

(assert (=> b!917483 (= res!618660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917484 () Bool)

(declare-fun e!515109 () Bool)

(assert (=> b!917484 (= e!515109 (not true))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30849 0))(
  ( (V!30850 (val!9757 Int)) )
))
(declare-datatypes ((ValueCell!9225 0))(
  ( (ValueCellFull!9225 (v!12275 V!30849)) (EmptyCell!9225) )
))
(declare-datatypes ((array!54820 0))(
  ( (array!54821 (arr!26351 (Array (_ BitVec 32) ValueCell!9225)) (size!26811 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54820)

(declare-fun lt!412002 () (_ BitVec 64))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30849)

(declare-fun minValue!1173 () V!30849)

(declare-datatypes ((tuple2!12744 0))(
  ( (tuple2!12745 (_1!6382 (_ BitVec 64)) (_2!6382 V!30849)) )
))
(declare-datatypes ((List!18595 0))(
  ( (Nil!18592) (Cons!18591 (h!19737 tuple2!12744) (t!26238 List!18595)) )
))
(declare-datatypes ((ListLongMap!11455 0))(
  ( (ListLongMap!11456 (toList!5743 List!18595)) )
))
(declare-fun getCurrentListMap!2969 (array!54818 array!54820 (_ BitVec 32) (_ BitVec 32) V!30849 V!30849 (_ BitVec 32) Int) ListLongMap!11455)

(declare-fun +!2575 (ListLongMap!11455 tuple2!12744) ListLongMap!11455)

(declare-fun get!13822 (ValueCell!9225 V!30849) V!30849)

(declare-fun dynLambda!1414 (Int (_ BitVec 64)) V!30849)

(assert (=> b!917484 (= (getCurrentListMap!2969 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2575 (getCurrentListMap!2969 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12745 lt!412002 (get!13822 (select (arr!26351 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1414 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30957 0))(
  ( (Unit!30958) )
))
(declare-fun lt!412001 () Unit!30957)

(declare-fun lemmaListMapRecursiveValidKeyArray!10 (array!54818 array!54820 (_ BitVec 32) (_ BitVec 32) V!30849 V!30849 (_ BitVec 32) Int) Unit!30957)

(assert (=> b!917484 (= lt!412001 (lemmaListMapRecursiveValidKeyArray!10 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917485 () Bool)

(assert (=> b!917485 (= e!515112 e!515109)))

(declare-fun res!618662 () Bool)

(assert (=> b!917485 (=> (not res!618662) (not e!515109))))

(assert (=> b!917485 (= res!618662 (validKeyInArray!0 lt!412002))))

(assert (=> b!917485 (= lt!412002 (select (arr!26350 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!30876 () Bool)

(declare-fun mapRes!30876 () Bool)

(assert (=> mapIsEmpty!30876 mapRes!30876))

(declare-fun b!917486 () Bool)

(assert (=> b!917486 (= e!515113 e!515112)))

(declare-fun res!618659 () Bool)

(assert (=> b!917486 (=> (not res!618659) (not e!515112))))

(declare-fun lt!412000 () ListLongMap!11455)

(declare-fun contains!4758 (ListLongMap!11455 (_ BitVec 64)) Bool)

(assert (=> b!917486 (= res!618659 (contains!4758 lt!412000 k0!1099))))

(assert (=> b!917486 (= lt!412000 (getCurrentListMap!2969 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917487 () Bool)

(declare-fun e!515115 () Bool)

(declare-fun tp_is_empty!19413 () Bool)

(assert (=> b!917487 (= e!515115 tp_is_empty!19413)))

(declare-fun b!917488 () Bool)

(declare-fun e!515111 () Bool)

(declare-fun e!515110 () Bool)

(assert (=> b!917488 (= e!515111 (and e!515110 mapRes!30876))))

(declare-fun condMapEmpty!30876 () Bool)

(declare-fun mapDefault!30876 () ValueCell!9225)

(assert (=> b!917488 (= condMapEmpty!30876 (= (arr!26351 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9225)) mapDefault!30876)))))

(declare-fun mapNonEmpty!30876 () Bool)

(declare-fun tp!59156 () Bool)

(assert (=> mapNonEmpty!30876 (= mapRes!30876 (and tp!59156 e!515115))))

(declare-fun mapRest!30876 () (Array (_ BitVec 32) ValueCell!9225))

(declare-fun mapKey!30876 () (_ BitVec 32))

(declare-fun mapValue!30876 () ValueCell!9225)

(assert (=> mapNonEmpty!30876 (= (arr!26351 _values!1231) (store mapRest!30876 mapKey!30876 mapValue!30876))))

(declare-fun res!618654 () Bool)

(assert (=> start!78720 (=> (not res!618654) (not e!515113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78720 (= res!618654 (validMask!0 mask!1881))))

(assert (=> start!78720 e!515113))

(assert (=> start!78720 true))

(assert (=> start!78720 tp_is_empty!19413))

(declare-fun array_inv!20534 (array!54820) Bool)

(assert (=> start!78720 (and (array_inv!20534 _values!1231) e!515111)))

(assert (=> start!78720 tp!59157))

(declare-fun array_inv!20535 (array!54818) Bool)

(assert (=> start!78720 (array_inv!20535 _keys!1487)))

(declare-fun b!917489 () Bool)

(declare-fun res!618656 () Bool)

(assert (=> b!917489 (=> (not res!618656) (not e!515113))))

(assert (=> b!917489 (= res!618656 (and (= (size!26811 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26810 _keys!1487) (size!26811 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917490 () Bool)

(declare-fun res!618655 () Bool)

(assert (=> b!917490 (=> (not res!618655) (not e!515113))))

(assert (=> b!917490 (= res!618655 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26810 _keys!1487))))))

(declare-fun b!917491 () Bool)

(assert (=> b!917491 (= e!515110 tp_is_empty!19413)))

(declare-fun b!917492 () Bool)

(declare-fun res!618661 () Bool)

(assert (=> b!917492 (=> (not res!618661) (not e!515113))))

(declare-datatypes ((List!18596 0))(
  ( (Nil!18593) (Cons!18592 (h!19738 (_ BitVec 64)) (t!26239 List!18596)) )
))
(declare-fun arrayNoDuplicates!0 (array!54818 (_ BitVec 32) List!18596) Bool)

(assert (=> b!917492 (= res!618661 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18593))))

(declare-fun b!917493 () Bool)

(declare-fun res!618653 () Bool)

(assert (=> b!917493 (=> (not res!618653) (not e!515112))))

(assert (=> b!917493 (= res!618653 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917494 () Bool)

(declare-fun res!618658 () Bool)

(assert (=> b!917494 (=> (not res!618658) (not e!515112))))

(declare-fun v!791 () V!30849)

(declare-fun apply!567 (ListLongMap!11455 (_ BitVec 64)) V!30849)

(assert (=> b!917494 (= res!618658 (= (apply!567 lt!412000 k0!1099) v!791))))

(assert (= (and start!78720 res!618654) b!917489))

(assert (= (and b!917489 res!618656) b!917483))

(assert (= (and b!917483 res!618660) b!917492))

(assert (= (and b!917492 res!618661) b!917490))

(assert (= (and b!917490 res!618655) b!917486))

(assert (= (and b!917486 res!618659) b!917494))

(assert (= (and b!917494 res!618658) b!917493))

(assert (= (and b!917493 res!618653) b!917482))

(assert (= (and b!917482 res!618657) b!917485))

(assert (= (and b!917485 res!618662) b!917484))

(assert (= (and b!917488 condMapEmpty!30876) mapIsEmpty!30876))

(assert (= (and b!917488 (not condMapEmpty!30876)) mapNonEmpty!30876))

(get-info :version)

(assert (= (and mapNonEmpty!30876 ((_ is ValueCellFull!9225) mapValue!30876)) b!917487))

(assert (= (and b!917488 ((_ is ValueCellFull!9225) mapDefault!30876)) b!917491))

(assert (= start!78720 b!917488))

(declare-fun b_lambda!13437 () Bool)

(assert (=> (not b_lambda!13437) (not b!917484)))

(declare-fun t!26237 () Bool)

(declare-fun tb!5493 () Bool)

(assert (=> (and start!78720 (= defaultEntry!1235 defaultEntry!1235) t!26237) tb!5493))

(declare-fun result!10801 () Bool)

(assert (=> tb!5493 (= result!10801 tp_is_empty!19413)))

(assert (=> b!917484 t!26237))

(declare-fun b_and!27567 () Bool)

(assert (= b_and!27565 (and (=> t!26237 result!10801) b_and!27567)))

(declare-fun m!851319 () Bool)

(assert (=> b!917483 m!851319))

(declare-fun m!851321 () Bool)

(assert (=> b!917485 m!851321))

(declare-fun m!851323 () Bool)

(assert (=> b!917485 m!851323))

(declare-fun m!851325 () Bool)

(assert (=> b!917482 m!851325))

(declare-fun m!851327 () Bool)

(assert (=> b!917494 m!851327))

(declare-fun m!851329 () Bool)

(assert (=> b!917486 m!851329))

(declare-fun m!851331 () Bool)

(assert (=> b!917486 m!851331))

(declare-fun m!851333 () Bool)

(assert (=> start!78720 m!851333))

(declare-fun m!851335 () Bool)

(assert (=> start!78720 m!851335))

(declare-fun m!851337 () Bool)

(assert (=> start!78720 m!851337))

(declare-fun m!851339 () Bool)

(assert (=> mapNonEmpty!30876 m!851339))

(declare-fun m!851341 () Bool)

(assert (=> b!917492 m!851341))

(declare-fun m!851343 () Bool)

(assert (=> b!917484 m!851343))

(declare-fun m!851345 () Bool)

(assert (=> b!917484 m!851345))

(assert (=> b!917484 m!851343))

(assert (=> b!917484 m!851345))

(declare-fun m!851347 () Bool)

(assert (=> b!917484 m!851347))

(declare-fun m!851349 () Bool)

(assert (=> b!917484 m!851349))

(declare-fun m!851351 () Bool)

(assert (=> b!917484 m!851351))

(assert (=> b!917484 m!851351))

(declare-fun m!851353 () Bool)

(assert (=> b!917484 m!851353))

(declare-fun m!851355 () Bool)

(assert (=> b!917484 m!851355))

(check-sat (not b!917484) (not b!917485) (not b!917494) (not b!917486) b_and!27567 (not b!917483) tp_is_empty!19413 (not b_lambda!13437) (not b!917492) (not mapNonEmpty!30876) (not b_next!16905) (not start!78720) (not b!917482))
(check-sat b_and!27567 (not b_next!16905))
