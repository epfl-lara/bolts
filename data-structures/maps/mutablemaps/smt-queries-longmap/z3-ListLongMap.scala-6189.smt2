; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79272 () Bool)

(assert start!79272)

(declare-fun b_free!17457 () Bool)

(declare-fun b_next!17457 () Bool)

(assert (=> start!79272 (= b_free!17457 (not b_next!17457))))

(declare-fun tp!60813 () Bool)

(declare-fun b_and!28541 () Bool)

(assert (=> start!79272 (= tp!60813 b_and!28541)))

(declare-fun b!930396 () Bool)

(declare-fun res!626700 () Bool)

(declare-fun e!522487 () Bool)

(assert (=> b!930396 (=> (not res!626700) (not e!522487))))

(declare-datatypes ((array!55900 0))(
  ( (array!55901 (arr!26891 (Array (_ BitVec 32) (_ BitVec 64))) (size!27351 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55900)

(declare-datatypes ((List!19052 0))(
  ( (Nil!19049) (Cons!19048 (h!20194 (_ BitVec 64)) (t!27117 List!19052)) )
))
(declare-fun arrayNoDuplicates!0 (array!55900 (_ BitVec 32) List!19052) Bool)

(assert (=> b!930396 (= res!626700 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19049))))

(declare-fun b!930397 () Bool)

(declare-fun res!626702 () Bool)

(assert (=> b!930397 (=> (not res!626702) (not e!522487))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31585 0))(
  ( (V!31586 (val!10033 Int)) )
))
(declare-datatypes ((ValueCell!9501 0))(
  ( (ValueCellFull!9501 (v!12551 V!31585)) (EmptyCell!9501) )
))
(declare-datatypes ((array!55902 0))(
  ( (array!55903 (arr!26892 (Array (_ BitVec 32) ValueCell!9501)) (size!27352 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55902)

(assert (=> b!930397 (= res!626702 (and (= (size!27352 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27351 _keys!1487) (size!27352 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930398 () Bool)

(declare-fun res!626701 () Bool)

(assert (=> b!930398 (=> (not res!626701) (not e!522487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55900 (_ BitVec 32)) Bool)

(assert (=> b!930398 (= res!626701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930399 () Bool)

(declare-fun e!522485 () Bool)

(declare-fun tp_is_empty!19965 () Bool)

(assert (=> b!930399 (= e!522485 tp_is_empty!19965)))

(declare-fun res!626699 () Bool)

(assert (=> start!79272 (=> (not res!626699) (not e!522487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79272 (= res!626699 (validMask!0 mask!1881))))

(assert (=> start!79272 e!522487))

(assert (=> start!79272 true))

(declare-fun e!522486 () Bool)

(declare-fun array_inv!20912 (array!55902) Bool)

(assert (=> start!79272 (and (array_inv!20912 _values!1231) e!522486)))

(assert (=> start!79272 tp!60813))

(declare-fun array_inv!20913 (array!55900) Bool)

(assert (=> start!79272 (array_inv!20913 _keys!1487)))

(assert (=> start!79272 tp_is_empty!19965))

(declare-fun mapIsEmpty!31704 () Bool)

(declare-fun mapRes!31704 () Bool)

(assert (=> mapIsEmpty!31704 mapRes!31704))

(declare-fun b!930400 () Bool)

(declare-fun res!626698 () Bool)

(assert (=> b!930400 (=> (not res!626698) (not e!522487))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930400 (= res!626698 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27351 _keys!1487))))))

(declare-fun mapNonEmpty!31704 () Bool)

(declare-fun tp!60812 () Bool)

(assert (=> mapNonEmpty!31704 (= mapRes!31704 (and tp!60812 e!522485))))

(declare-fun mapKey!31704 () (_ BitVec 32))

(declare-fun mapRest!31704 () (Array (_ BitVec 32) ValueCell!9501))

(declare-fun mapValue!31704 () ValueCell!9501)

(assert (=> mapNonEmpty!31704 (= (arr!26892 _values!1231) (store mapRest!31704 mapKey!31704 mapValue!31704))))

(declare-fun b!930401 () Bool)

(declare-fun e!522489 () Bool)

(assert (=> b!930401 (= e!522487 e!522489)))

(declare-fun res!626697 () Bool)

(assert (=> b!930401 (=> (not res!626697) (not e!522489))))

(declare-datatypes ((tuple2!13232 0))(
  ( (tuple2!13233 (_1!6626 (_ BitVec 64)) (_2!6626 V!31585)) )
))
(declare-datatypes ((List!19053 0))(
  ( (Nil!19050) (Cons!19049 (h!20195 tuple2!13232) (t!27118 List!19053)) )
))
(declare-datatypes ((ListLongMap!11943 0))(
  ( (ListLongMap!11944 (toList!5987 List!19053)) )
))
(declare-fun lt!419196 () ListLongMap!11943)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4998 (ListLongMap!11943 (_ BitVec 64)) Bool)

(assert (=> b!930401 (= res!626697 (contains!4998 lt!419196 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31585)

(declare-fun minValue!1173 () V!31585)

(declare-fun getCurrentListMap!3192 (array!55900 array!55902 (_ BitVec 32) (_ BitVec 32) V!31585 V!31585 (_ BitVec 32) Int) ListLongMap!11943)

(assert (=> b!930401 (= lt!419196 (getCurrentListMap!3192 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930402 () Bool)

(assert (=> b!930402 (= e!522489 false)))

(declare-fun lt!419195 () V!31585)

(declare-fun apply!775 (ListLongMap!11943 (_ BitVec 64)) V!31585)

(assert (=> b!930402 (= lt!419195 (apply!775 lt!419196 k0!1099))))

(declare-fun b!930403 () Bool)

(declare-fun e!522484 () Bool)

(assert (=> b!930403 (= e!522486 (and e!522484 mapRes!31704))))

(declare-fun condMapEmpty!31704 () Bool)

(declare-fun mapDefault!31704 () ValueCell!9501)

(assert (=> b!930403 (= condMapEmpty!31704 (= (arr!26892 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9501)) mapDefault!31704)))))

(declare-fun b!930404 () Bool)

(assert (=> b!930404 (= e!522484 tp_is_empty!19965)))

(assert (= (and start!79272 res!626699) b!930397))

(assert (= (and b!930397 res!626702) b!930398))

(assert (= (and b!930398 res!626701) b!930396))

(assert (= (and b!930396 res!626700) b!930400))

(assert (= (and b!930400 res!626698) b!930401))

(assert (= (and b!930401 res!626697) b!930402))

(assert (= (and b!930403 condMapEmpty!31704) mapIsEmpty!31704))

(assert (= (and b!930403 (not condMapEmpty!31704)) mapNonEmpty!31704))

(get-info :version)

(assert (= (and mapNonEmpty!31704 ((_ is ValueCellFull!9501) mapValue!31704)) b!930399))

(assert (= (and b!930403 ((_ is ValueCellFull!9501) mapDefault!31704)) b!930404))

(assert (= start!79272 b!930403))

(declare-fun m!864679 () Bool)

(assert (=> start!79272 m!864679))

(declare-fun m!864681 () Bool)

(assert (=> start!79272 m!864681))

(declare-fun m!864683 () Bool)

(assert (=> start!79272 m!864683))

(declare-fun m!864685 () Bool)

(assert (=> b!930396 m!864685))

(declare-fun m!864687 () Bool)

(assert (=> mapNonEmpty!31704 m!864687))

(declare-fun m!864689 () Bool)

(assert (=> b!930402 m!864689))

(declare-fun m!864691 () Bool)

(assert (=> b!930401 m!864691))

(declare-fun m!864693 () Bool)

(assert (=> b!930401 m!864693))

(declare-fun m!864695 () Bool)

(assert (=> b!930398 m!864695))

(check-sat b_and!28541 (not b_next!17457) (not b!930396) tp_is_empty!19965 (not b!930402) (not start!79272) (not b!930398) (not mapNonEmpty!31704) (not b!930401))
(check-sat b_and!28541 (not b_next!17457))
