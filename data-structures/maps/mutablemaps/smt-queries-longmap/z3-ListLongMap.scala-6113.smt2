; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78816 () Bool)

(assert start!78816)

(declare-fun b_free!17001 () Bool)

(declare-fun b_next!17001 () Bool)

(assert (=> start!78816 (= b_free!17001 (not b_next!17001))))

(declare-fun tp!59444 () Bool)

(declare-fun b_and!27757 () Bool)

(assert (=> start!78816 (= tp!59444 b_and!27757)))

(declare-fun b!919450 () Bool)

(declare-fun e!516121 () Bool)

(declare-fun e!516118 () Bool)

(declare-fun mapRes!31020 () Bool)

(assert (=> b!919450 (= e!516121 (and e!516118 mapRes!31020))))

(declare-fun condMapEmpty!31020 () Bool)

(declare-datatypes ((V!30977 0))(
  ( (V!30978 (val!9805 Int)) )
))
(declare-datatypes ((ValueCell!9273 0))(
  ( (ValueCellFull!9273 (v!12323 V!30977)) (EmptyCell!9273) )
))
(declare-datatypes ((array!55010 0))(
  ( (array!55011 (arr!26446 (Array (_ BitVec 32) ValueCell!9273)) (size!26906 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55010)

(declare-fun mapDefault!31020 () ValueCell!9273)

(assert (=> b!919450 (= condMapEmpty!31020 (= (arr!26446 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9273)) mapDefault!31020)))))

(declare-fun b!919451 () Bool)

(declare-fun res!620094 () Bool)

(declare-fun e!516123 () Bool)

(assert (=> b!919451 (=> (not res!620094) (not e!516123))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55012 0))(
  ( (array!55013 (arr!26447 (Array (_ BitVec 32) (_ BitVec 64))) (size!26907 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55012)

(assert (=> b!919451 (= res!620094 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26907 _keys!1487))))))

(declare-fun b!919452 () Bool)

(declare-fun e!516120 () Bool)

(declare-fun e!516119 () Bool)

(assert (=> b!919452 (= e!516120 e!516119)))

(declare-fun res!620101 () Bool)

(assert (=> b!919452 (=> (not res!620101) (not e!516119))))

(declare-fun lt!412731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919452 (= res!620101 (validKeyInArray!0 lt!412731))))

(assert (=> b!919452 (= lt!412731 (select (arr!26447 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919453 () Bool)

(declare-fun res!620102 () Bool)

(assert (=> b!919453 (=> (not res!620102) (not e!516123))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55012 (_ BitVec 32)) Bool)

(assert (=> b!919453 (= res!620102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919454 () Bool)

(declare-fun res!620093 () Bool)

(assert (=> b!919454 (=> (not res!620093) (not e!516120))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30977)

(declare-datatypes ((tuple2!12832 0))(
  ( (tuple2!12833 (_1!6426 (_ BitVec 64)) (_2!6426 V!30977)) )
))
(declare-datatypes ((List!18674 0))(
  ( (Nil!18671) (Cons!18670 (h!19816 tuple2!12832) (t!26413 List!18674)) )
))
(declare-datatypes ((ListLongMap!11543 0))(
  ( (ListLongMap!11544 (toList!5787 List!18674)) )
))
(declare-fun lt!412733 () ListLongMap!11543)

(declare-fun apply!601 (ListLongMap!11543 (_ BitVec 64)) V!30977)

(assert (=> b!919454 (= res!620093 (= (apply!601 lt!412733 k0!1099) v!791))))

(declare-fun res!620097 () Bool)

(assert (=> start!78816 (=> (not res!620097) (not e!516123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78816 (= res!620097 (validMask!0 mask!1881))))

(assert (=> start!78816 e!516123))

(assert (=> start!78816 true))

(declare-fun tp_is_empty!19509 () Bool)

(assert (=> start!78816 tp_is_empty!19509))

(declare-fun array_inv!20606 (array!55010) Bool)

(assert (=> start!78816 (and (array_inv!20606 _values!1231) e!516121)))

(assert (=> start!78816 tp!59444))

(declare-fun array_inv!20607 (array!55012) Bool)

(assert (=> start!78816 (array_inv!20607 _keys!1487)))

(declare-fun b!919455 () Bool)

(assert (=> b!919455 (= e!516118 tp_is_empty!19509)))

(declare-fun b!919456 () Bool)

(declare-fun res!620100 () Bool)

(assert (=> b!919456 (=> (not res!620100) (not e!516123))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!919456 (= res!620100 (and (= (size!26906 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26907 _keys!1487) (size!26906 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919457 () Bool)

(assert (=> b!919457 (= e!516123 e!516120)))

(declare-fun res!620096 () Bool)

(assert (=> b!919457 (=> (not res!620096) (not e!516120))))

(declare-fun contains!4798 (ListLongMap!11543 (_ BitVec 64)) Bool)

(assert (=> b!919457 (= res!620096 (contains!4798 lt!412733 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30977)

(declare-fun minValue!1173 () V!30977)

(declare-fun getCurrentListMap!3010 (array!55012 array!55010 (_ BitVec 32) (_ BitVec 32) V!30977 V!30977 (_ BitVec 32) Int) ListLongMap!11543)

(assert (=> b!919457 (= lt!412733 (getCurrentListMap!3010 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31020 () Bool)

(assert (=> mapIsEmpty!31020 mapRes!31020))

(declare-fun b!919458 () Bool)

(assert (=> b!919458 (= e!516119 (not true))))

(declare-datatypes ((List!18675 0))(
  ( (Nil!18672) (Cons!18671 (h!19817 (_ BitVec 64)) (t!26414 List!18675)) )
))
(declare-fun arrayNoDuplicates!0 (array!55012 (_ BitVec 32) List!18675) Bool)

(assert (=> b!919458 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18672)))

(declare-datatypes ((Unit!31029 0))(
  ( (Unit!31030) )
))
(declare-fun lt!412732 () Unit!31029)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55012 (_ BitVec 32) (_ BitVec 32)) Unit!31029)

(assert (=> b!919458 (= lt!412732 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412736 () tuple2!12832)

(declare-fun +!2611 (ListLongMap!11543 tuple2!12832) ListLongMap!11543)

(assert (=> b!919458 (contains!4798 (+!2611 lt!412733 lt!412736) k0!1099)))

(declare-fun lt!412735 () V!30977)

(declare-fun lt!412734 () Unit!31029)

(declare-fun addStillContains!373 (ListLongMap!11543 (_ BitVec 64) V!30977 (_ BitVec 64)) Unit!31029)

(assert (=> b!919458 (= lt!412734 (addStillContains!373 lt!412733 lt!412731 lt!412735 k0!1099))))

(assert (=> b!919458 (= (getCurrentListMap!3010 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2611 (getCurrentListMap!3010 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412736))))

(assert (=> b!919458 (= lt!412736 (tuple2!12833 lt!412731 lt!412735))))

(declare-fun get!13890 (ValueCell!9273 V!30977) V!30977)

(declare-fun dynLambda!1450 (Int (_ BitVec 64)) V!30977)

(assert (=> b!919458 (= lt!412735 (get!13890 (select (arr!26446 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1450 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412737 () Unit!31029)

(declare-fun lemmaListMapRecursiveValidKeyArray!46 (array!55012 array!55010 (_ BitVec 32) (_ BitVec 32) V!30977 V!30977 (_ BitVec 32) Int) Unit!31029)

(assert (=> b!919458 (= lt!412737 (lemmaListMapRecursiveValidKeyArray!46 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919459 () Bool)

(declare-fun res!620099 () Bool)

(assert (=> b!919459 (=> (not res!620099) (not e!516120))))

(assert (=> b!919459 (= res!620099 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31020 () Bool)

(declare-fun tp!59445 () Bool)

(declare-fun e!516117 () Bool)

(assert (=> mapNonEmpty!31020 (= mapRes!31020 (and tp!59445 e!516117))))

(declare-fun mapValue!31020 () ValueCell!9273)

(declare-fun mapKey!31020 () (_ BitVec 32))

(declare-fun mapRest!31020 () (Array (_ BitVec 32) ValueCell!9273))

(assert (=> mapNonEmpty!31020 (= (arr!26446 _values!1231) (store mapRest!31020 mapKey!31020 mapValue!31020))))

(declare-fun b!919460 () Bool)

(assert (=> b!919460 (= e!516117 tp_is_empty!19509)))

(declare-fun b!919461 () Bool)

(declare-fun res!620095 () Bool)

(assert (=> b!919461 (=> (not res!620095) (not e!516120))))

(assert (=> b!919461 (= res!620095 (validKeyInArray!0 k0!1099))))

(declare-fun b!919462 () Bool)

(declare-fun res!620098 () Bool)

(assert (=> b!919462 (=> (not res!620098) (not e!516123))))

(assert (=> b!919462 (= res!620098 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18672))))

(assert (= (and start!78816 res!620097) b!919456))

(assert (= (and b!919456 res!620100) b!919453))

(assert (= (and b!919453 res!620102) b!919462))

(assert (= (and b!919462 res!620098) b!919451))

(assert (= (and b!919451 res!620094) b!919457))

(assert (= (and b!919457 res!620096) b!919454))

(assert (= (and b!919454 res!620093) b!919459))

(assert (= (and b!919459 res!620099) b!919461))

(assert (= (and b!919461 res!620095) b!919452))

(assert (= (and b!919452 res!620101) b!919458))

(assert (= (and b!919450 condMapEmpty!31020) mapIsEmpty!31020))

(assert (= (and b!919450 (not condMapEmpty!31020)) mapNonEmpty!31020))

(get-info :version)

(assert (= (and mapNonEmpty!31020 ((_ is ValueCellFull!9273) mapValue!31020)) b!919460))

(assert (= (and b!919450 ((_ is ValueCellFull!9273) mapDefault!31020)) b!919455))

(assert (= start!78816 b!919450))

(declare-fun b_lambda!13533 () Bool)

(assert (=> (not b_lambda!13533) (not b!919458)))

(declare-fun t!26412 () Bool)

(declare-fun tb!5589 () Bool)

(assert (=> (and start!78816 (= defaultEntry!1235 defaultEntry!1235) t!26412) tb!5589))

(declare-fun result!10993 () Bool)

(assert (=> tb!5589 (= result!10993 tp_is_empty!19509)))

(assert (=> b!919458 t!26412))

(declare-fun b_and!27759 () Bool)

(assert (= b_and!27757 (and (=> t!26412 result!10993) b_and!27759)))

(declare-fun m!853363 () Bool)

(assert (=> b!919457 m!853363))

(declare-fun m!853365 () Bool)

(assert (=> b!919457 m!853365))

(declare-fun m!853367 () Bool)

(assert (=> b!919458 m!853367))

(declare-fun m!853369 () Bool)

(assert (=> b!919458 m!853369))

(declare-fun m!853371 () Bool)

(assert (=> b!919458 m!853371))

(declare-fun m!853373 () Bool)

(assert (=> b!919458 m!853373))

(declare-fun m!853375 () Bool)

(assert (=> b!919458 m!853375))

(declare-fun m!853377 () Bool)

(assert (=> b!919458 m!853377))

(assert (=> b!919458 m!853369))

(assert (=> b!919458 m!853371))

(declare-fun m!853379 () Bool)

(assert (=> b!919458 m!853379))

(declare-fun m!853381 () Bool)

(assert (=> b!919458 m!853381))

(declare-fun m!853383 () Bool)

(assert (=> b!919458 m!853383))

(assert (=> b!919458 m!853367))

(declare-fun m!853385 () Bool)

(assert (=> b!919458 m!853385))

(declare-fun m!853387 () Bool)

(assert (=> b!919458 m!853387))

(assert (=> b!919458 m!853375))

(declare-fun m!853389 () Bool)

(assert (=> b!919458 m!853389))

(declare-fun m!853391 () Bool)

(assert (=> b!919452 m!853391))

(declare-fun m!853393 () Bool)

(assert (=> b!919452 m!853393))

(declare-fun m!853395 () Bool)

(assert (=> start!78816 m!853395))

(declare-fun m!853397 () Bool)

(assert (=> start!78816 m!853397))

(declare-fun m!853399 () Bool)

(assert (=> start!78816 m!853399))

(declare-fun m!853401 () Bool)

(assert (=> b!919461 m!853401))

(declare-fun m!853403 () Bool)

(assert (=> mapNonEmpty!31020 m!853403))

(declare-fun m!853405 () Bool)

(assert (=> b!919454 m!853405))

(declare-fun m!853407 () Bool)

(assert (=> b!919462 m!853407))

(declare-fun m!853409 () Bool)

(assert (=> b!919453 m!853409))

(check-sat (not b!919457) (not mapNonEmpty!31020) (not b!919454) (not b_lambda!13533) (not b!919458) (not b!919453) (not b!919461) (not b!919462) tp_is_empty!19509 (not b!919452) (not start!78816) (not b_next!17001) b_and!27759)
(check-sat b_and!27759 (not b_next!17001))
