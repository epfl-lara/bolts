; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78834 () Bool)

(assert start!78834)

(declare-fun b_free!17019 () Bool)

(declare-fun b_next!17019 () Bool)

(assert (=> start!78834 (= b_free!17019 (not b_next!17019))))

(declare-fun tp!59499 () Bool)

(declare-fun b_and!27793 () Bool)

(assert (=> start!78834 (= tp!59499 b_and!27793)))

(declare-fun res!620368 () Bool)

(declare-fun e!516311 () Bool)

(assert (=> start!78834 (=> (not res!620368) (not e!516311))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78834 (= res!620368 (validMask!0 mask!1881))))

(assert (=> start!78834 e!516311))

(assert (=> start!78834 true))

(declare-fun tp_is_empty!19527 () Bool)

(assert (=> start!78834 tp_is_empty!19527))

(declare-datatypes ((V!31001 0))(
  ( (V!31002 (val!9814 Int)) )
))
(declare-datatypes ((ValueCell!9282 0))(
  ( (ValueCellFull!9282 (v!12332 V!31001)) (EmptyCell!9282) )
))
(declare-datatypes ((array!55046 0))(
  ( (array!55047 (arr!26464 (Array (_ BitVec 32) ValueCell!9282)) (size!26924 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55046)

(declare-fun e!516306 () Bool)

(declare-fun array_inv!20612 (array!55046) Bool)

(assert (=> start!78834 (and (array_inv!20612 _values!1231) e!516306)))

(assert (=> start!78834 tp!59499))

(declare-datatypes ((array!55048 0))(
  ( (array!55049 (arr!26465 (Array (_ BitVec 32) (_ BitVec 64))) (size!26925 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55048)

(declare-fun array_inv!20613 (array!55048) Bool)

(assert (=> start!78834 (array_inv!20613 _keys!1487)))

(declare-fun b!919819 () Bool)

(declare-fun res!620366 () Bool)

(declare-fun e!516309 () Bool)

(assert (=> b!919819 (=> (not res!620366) (not e!516309))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31001)

(declare-datatypes ((tuple2!12844 0))(
  ( (tuple2!12845 (_1!6432 (_ BitVec 64)) (_2!6432 V!31001)) )
))
(declare-datatypes ((List!18687 0))(
  ( (Nil!18684) (Cons!18683 (h!19829 tuple2!12844) (t!26444 List!18687)) )
))
(declare-datatypes ((ListLongMap!11555 0))(
  ( (ListLongMap!11556 (toList!5793 List!18687)) )
))
(declare-fun lt!412926 () ListLongMap!11555)

(declare-fun apply!606 (ListLongMap!11555 (_ BitVec 64)) V!31001)

(assert (=> b!919819 (= res!620366 (= (apply!606 lt!412926 k0!1099) v!791))))

(declare-fun mapIsEmpty!31047 () Bool)

(declare-fun mapRes!31047 () Bool)

(assert (=> mapIsEmpty!31047 mapRes!31047))

(declare-fun b!919820 () Bool)

(declare-fun e!516308 () Bool)

(assert (=> b!919820 (= e!516309 e!516308)))

(declare-fun res!620367 () Bool)

(assert (=> b!919820 (=> (not res!620367) (not e!516308))))

(declare-fun lt!412923 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919820 (= res!620367 (validKeyInArray!0 lt!412923))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919820 (= lt!412923 (select (arr!26465 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919821 () Bool)

(declare-fun e!516312 () Bool)

(assert (=> b!919821 (= e!516312 tp_is_empty!19527)))

(declare-fun b!919822 () Bool)

(declare-fun e!516310 () Bool)

(assert (=> b!919822 (= e!516310 tp_is_empty!19527)))

(declare-fun b!919823 () Bool)

(declare-fun res!620365 () Bool)

(assert (=> b!919823 (=> (not res!620365) (not e!516311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55048 (_ BitVec 32)) Bool)

(assert (=> b!919823 (= res!620365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919824 () Bool)

(assert (=> b!919824 (= e!516311 e!516309)))

(declare-fun res!620364 () Bool)

(assert (=> b!919824 (=> (not res!620364) (not e!516309))))

(declare-fun contains!4803 (ListLongMap!11555 (_ BitVec 64)) Bool)

(assert (=> b!919824 (= res!620364 (contains!4803 lt!412926 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31001)

(declare-fun minValue!1173 () V!31001)

(declare-fun getCurrentListMap!3015 (array!55048 array!55046 (_ BitVec 32) (_ BitVec 32) V!31001 V!31001 (_ BitVec 32) Int) ListLongMap!11555)

(assert (=> b!919824 (= lt!412926 (getCurrentListMap!3015 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!919825 () Bool)

(declare-fun res!620370 () Bool)

(assert (=> b!919825 (=> (not res!620370) (not e!516309))))

(assert (=> b!919825 (= res!620370 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919826 () Bool)

(assert (=> b!919826 (= e!516308 (not true))))

(declare-datatypes ((List!18688 0))(
  ( (Nil!18685) (Cons!18684 (h!19830 (_ BitVec 64)) (t!26445 List!18688)) )
))
(declare-fun arrayNoDuplicates!0 (array!55048 (_ BitVec 32) List!18688) Bool)

(assert (=> b!919826 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18685)))

(declare-datatypes ((Unit!31039 0))(
  ( (Unit!31040) )
))
(declare-fun lt!412920 () Unit!31039)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55048 (_ BitVec 32) (_ BitVec 32)) Unit!31039)

(assert (=> b!919826 (= lt!412920 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412922 () tuple2!12844)

(declare-fun +!2616 (ListLongMap!11555 tuple2!12844) ListLongMap!11555)

(assert (=> b!919826 (contains!4803 (+!2616 lt!412926 lt!412922) k0!1099)))

(declare-fun lt!412921 () Unit!31039)

(declare-fun lt!412924 () V!31001)

(declare-fun addStillContains!378 (ListLongMap!11555 (_ BitVec 64) V!31001 (_ BitVec 64)) Unit!31039)

(assert (=> b!919826 (= lt!412921 (addStillContains!378 lt!412926 lt!412923 lt!412924 k0!1099))))

(assert (=> b!919826 (= (getCurrentListMap!3015 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2616 (getCurrentListMap!3015 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412922))))

(assert (=> b!919826 (= lt!412922 (tuple2!12845 lt!412923 lt!412924))))

(declare-fun get!13901 (ValueCell!9282 V!31001) V!31001)

(declare-fun dynLambda!1455 (Int (_ BitVec 64)) V!31001)

(assert (=> b!919826 (= lt!412924 (get!13901 (select (arr!26464 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1455 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412925 () Unit!31039)

(declare-fun lemmaListMapRecursiveValidKeyArray!51 (array!55048 array!55046 (_ BitVec 32) (_ BitVec 32) V!31001 V!31001 (_ BitVec 32) Int) Unit!31039)

(assert (=> b!919826 (= lt!412925 (lemmaListMapRecursiveValidKeyArray!51 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919827 () Bool)

(declare-fun res!620369 () Bool)

(assert (=> b!919827 (=> (not res!620369) (not e!516311))))

(assert (=> b!919827 (= res!620369 (and (= (size!26924 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26925 _keys!1487) (size!26924 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919828 () Bool)

(declare-fun res!620371 () Bool)

(assert (=> b!919828 (=> (not res!620371) (not e!516311))))

(assert (=> b!919828 (= res!620371 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26925 _keys!1487))))))

(declare-fun b!919829 () Bool)

(declare-fun res!620363 () Bool)

(assert (=> b!919829 (=> (not res!620363) (not e!516309))))

(assert (=> b!919829 (= res!620363 (validKeyInArray!0 k0!1099))))

(declare-fun b!919830 () Bool)

(assert (=> b!919830 (= e!516306 (and e!516312 mapRes!31047))))

(declare-fun condMapEmpty!31047 () Bool)

(declare-fun mapDefault!31047 () ValueCell!9282)

(assert (=> b!919830 (= condMapEmpty!31047 (= (arr!26464 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9282)) mapDefault!31047)))))

(declare-fun b!919831 () Bool)

(declare-fun res!620372 () Bool)

(assert (=> b!919831 (=> (not res!620372) (not e!516311))))

(assert (=> b!919831 (= res!620372 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18685))))

(declare-fun mapNonEmpty!31047 () Bool)

(declare-fun tp!59498 () Bool)

(assert (=> mapNonEmpty!31047 (= mapRes!31047 (and tp!59498 e!516310))))

(declare-fun mapKey!31047 () (_ BitVec 32))

(declare-fun mapRest!31047 () (Array (_ BitVec 32) ValueCell!9282))

(declare-fun mapValue!31047 () ValueCell!9282)

(assert (=> mapNonEmpty!31047 (= (arr!26464 _values!1231) (store mapRest!31047 mapKey!31047 mapValue!31047))))

(assert (= (and start!78834 res!620368) b!919827))

(assert (= (and b!919827 res!620369) b!919823))

(assert (= (and b!919823 res!620365) b!919831))

(assert (= (and b!919831 res!620372) b!919828))

(assert (= (and b!919828 res!620371) b!919824))

(assert (= (and b!919824 res!620364) b!919819))

(assert (= (and b!919819 res!620366) b!919825))

(assert (= (and b!919825 res!620370) b!919829))

(assert (= (and b!919829 res!620363) b!919820))

(assert (= (and b!919820 res!620367) b!919826))

(assert (= (and b!919830 condMapEmpty!31047) mapIsEmpty!31047))

(assert (= (and b!919830 (not condMapEmpty!31047)) mapNonEmpty!31047))

(get-info :version)

(assert (= (and mapNonEmpty!31047 ((_ is ValueCellFull!9282) mapValue!31047)) b!919822))

(assert (= (and b!919830 ((_ is ValueCellFull!9282) mapDefault!31047)) b!919821))

(assert (= start!78834 b!919830))

(declare-fun b_lambda!13551 () Bool)

(assert (=> (not b_lambda!13551) (not b!919826)))

(declare-fun t!26443 () Bool)

(declare-fun tb!5607 () Bool)

(assert (=> (and start!78834 (= defaultEntry!1235 defaultEntry!1235) t!26443) tb!5607))

(declare-fun result!11029 () Bool)

(assert (=> tb!5607 (= result!11029 tp_is_empty!19527)))

(assert (=> b!919826 t!26443))

(declare-fun b_and!27795 () Bool)

(assert (= b_and!27793 (and (=> t!26443 result!11029) b_and!27795)))

(declare-fun m!853795 () Bool)

(assert (=> mapNonEmpty!31047 m!853795))

(declare-fun m!853797 () Bool)

(assert (=> b!919820 m!853797))

(declare-fun m!853799 () Bool)

(assert (=> b!919820 m!853799))

(declare-fun m!853801 () Bool)

(assert (=> b!919826 m!853801))

(declare-fun m!853803 () Bool)

(assert (=> b!919826 m!853803))

(declare-fun m!853805 () Bool)

(assert (=> b!919826 m!853805))

(declare-fun m!853807 () Bool)

(assert (=> b!919826 m!853807))

(declare-fun m!853809 () Bool)

(assert (=> b!919826 m!853809))

(assert (=> b!919826 m!853803))

(declare-fun m!853811 () Bool)

(assert (=> b!919826 m!853811))

(declare-fun m!853813 () Bool)

(assert (=> b!919826 m!853813))

(declare-fun m!853815 () Bool)

(assert (=> b!919826 m!853815))

(assert (=> b!919826 m!853801))

(declare-fun m!853817 () Bool)

(assert (=> b!919826 m!853817))

(assert (=> b!919826 m!853809))

(declare-fun m!853819 () Bool)

(assert (=> b!919826 m!853819))

(declare-fun m!853821 () Bool)

(assert (=> b!919826 m!853821))

(assert (=> b!919826 m!853805))

(declare-fun m!853823 () Bool)

(assert (=> b!919826 m!853823))

(declare-fun m!853825 () Bool)

(assert (=> b!919831 m!853825))

(declare-fun m!853827 () Bool)

(assert (=> b!919824 m!853827))

(declare-fun m!853829 () Bool)

(assert (=> b!919824 m!853829))

(declare-fun m!853831 () Bool)

(assert (=> b!919823 m!853831))

(declare-fun m!853833 () Bool)

(assert (=> start!78834 m!853833))

(declare-fun m!853835 () Bool)

(assert (=> start!78834 m!853835))

(declare-fun m!853837 () Bool)

(assert (=> start!78834 m!853837))

(declare-fun m!853839 () Bool)

(assert (=> b!919829 m!853839))

(declare-fun m!853841 () Bool)

(assert (=> b!919819 m!853841))

(check-sat (not b!919824) (not mapNonEmpty!31047) (not b!919829) (not b!919823) (not b!919831) (not start!78834) (not b!919820) (not b_lambda!13551) (not b!919826) tp_is_empty!19527 b_and!27795 (not b_next!17019) (not b!919819))
(check-sat b_and!27795 (not b_next!17019))
