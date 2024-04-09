; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79170 () Bool)

(assert start!79170)

(declare-fun b_free!17355 () Bool)

(declare-fun b_next!17355 () Bool)

(assert (=> start!79170 (= b_free!17355 (not b_next!17355))))

(declare-fun tp!60506 () Bool)

(declare-fun b_and!28439 () Bool)

(assert (=> start!79170 (= tp!60506 b_and!28439)))

(declare-fun b!928794 () Bool)

(declare-fun res!625557 () Bool)

(declare-fun e!521569 () Bool)

(assert (=> b!928794 (=> (not res!625557) (not e!521569))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55702 0))(
  ( (array!55703 (arr!26792 (Array (_ BitVec 32) (_ BitVec 64))) (size!27252 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55702)

(assert (=> b!928794 (= res!625557 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27252 _keys!1487))))))

(declare-fun b!928795 () Bool)

(declare-fun e!521567 () Bool)

(assert (=> b!928795 (= e!521569 e!521567)))

(declare-fun res!625556 () Bool)

(assert (=> b!928795 (=> (not res!625556) (not e!521567))))

(declare-datatypes ((V!31449 0))(
  ( (V!31450 (val!9982 Int)) )
))
(declare-datatypes ((tuple2!13152 0))(
  ( (tuple2!13153 (_1!6586 (_ BitVec 64)) (_2!6586 V!31449)) )
))
(declare-datatypes ((List!18975 0))(
  ( (Nil!18972) (Cons!18971 (h!20117 tuple2!13152) (t!27040 List!18975)) )
))
(declare-datatypes ((ListLongMap!11863 0))(
  ( (ListLongMap!11864 (toList!5947 List!18975)) )
))
(declare-fun lt!418916 () ListLongMap!11863)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4964 (ListLongMap!11863 (_ BitVec 64)) Bool)

(assert (=> b!928795 (= res!625556 (contains!4964 lt!418916 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9450 0))(
  ( (ValueCellFull!9450 (v!12500 V!31449)) (EmptyCell!9450) )
))
(declare-datatypes ((array!55704 0))(
  ( (array!55705 (arr!26793 (Array (_ BitVec 32) ValueCell!9450)) (size!27253 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55704)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31449)

(declare-fun minValue!1173 () V!31449)

(declare-fun getCurrentListMap!3158 (array!55702 array!55704 (_ BitVec 32) (_ BitVec 32) V!31449 V!31449 (_ BitVec 32) Int) ListLongMap!11863)

(assert (=> b!928795 (= lt!418916 (getCurrentListMap!3158 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928796 () Bool)

(declare-fun res!625555 () Bool)

(assert (=> b!928796 (=> (not res!625555) (not e!521569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55702 (_ BitVec 32)) Bool)

(assert (=> b!928796 (= res!625555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928797 () Bool)

(declare-fun res!625559 () Bool)

(assert (=> b!928797 (=> (not res!625559) (not e!521569))))

(assert (=> b!928797 (= res!625559 (and (= (size!27253 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27252 _keys!1487) (size!27253 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!625558 () Bool)

(assert (=> start!79170 (=> (not res!625558) (not e!521569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79170 (= res!625558 (validMask!0 mask!1881))))

(assert (=> start!79170 e!521569))

(assert (=> start!79170 true))

(declare-fun e!521566 () Bool)

(declare-fun array_inv!20850 (array!55704) Bool)

(assert (=> start!79170 (and (array_inv!20850 _values!1231) e!521566)))

(assert (=> start!79170 tp!60506))

(declare-fun array_inv!20851 (array!55702) Bool)

(assert (=> start!79170 (array_inv!20851 _keys!1487)))

(declare-fun tp_is_empty!19863 () Bool)

(assert (=> start!79170 tp_is_empty!19863))

(declare-fun b!928798 () Bool)

(declare-fun e!521571 () Bool)

(assert (=> b!928798 (= e!521571 tp_is_empty!19863)))

(declare-fun b!928799 () Bool)

(declare-fun mapRes!31551 () Bool)

(assert (=> b!928799 (= e!521566 (and e!521571 mapRes!31551))))

(declare-fun condMapEmpty!31551 () Bool)

(declare-fun mapDefault!31551 () ValueCell!9450)

(assert (=> b!928799 (= condMapEmpty!31551 (= (arr!26793 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9450)) mapDefault!31551)))))

(declare-fun b!928800 () Bool)

(declare-fun e!521568 () Bool)

(assert (=> b!928800 (= e!521568 tp_is_empty!19863)))

(declare-fun mapIsEmpty!31551 () Bool)

(assert (=> mapIsEmpty!31551 mapRes!31551))

(declare-fun b!928801 () Bool)

(declare-fun res!625554 () Bool)

(assert (=> b!928801 (=> (not res!625554) (not e!521569))))

(declare-datatypes ((List!18976 0))(
  ( (Nil!18973) (Cons!18972 (h!20118 (_ BitVec 64)) (t!27041 List!18976)) )
))
(declare-fun arrayNoDuplicates!0 (array!55702 (_ BitVec 32) List!18976) Bool)

(assert (=> b!928801 (= res!625554 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18973))))

(declare-fun b!928802 () Bool)

(assert (=> b!928802 (= e!521567 false)))

(declare-fun lt!418917 () V!31449)

(declare-fun apply!742 (ListLongMap!11863 (_ BitVec 64)) V!31449)

(assert (=> b!928802 (= lt!418917 (apply!742 lt!418916 k0!1099))))

(declare-fun mapNonEmpty!31551 () Bool)

(declare-fun tp!60507 () Bool)

(assert (=> mapNonEmpty!31551 (= mapRes!31551 (and tp!60507 e!521568))))

(declare-fun mapRest!31551 () (Array (_ BitVec 32) ValueCell!9450))

(declare-fun mapValue!31551 () ValueCell!9450)

(declare-fun mapKey!31551 () (_ BitVec 32))

(assert (=> mapNonEmpty!31551 (= (arr!26793 _values!1231) (store mapRest!31551 mapKey!31551 mapValue!31551))))

(assert (= (and start!79170 res!625558) b!928797))

(assert (= (and b!928797 res!625559) b!928796))

(assert (= (and b!928796 res!625555) b!928801))

(assert (= (and b!928801 res!625554) b!928794))

(assert (= (and b!928794 res!625557) b!928795))

(assert (= (and b!928795 res!625556) b!928802))

(assert (= (and b!928799 condMapEmpty!31551) mapIsEmpty!31551))

(assert (= (and b!928799 (not condMapEmpty!31551)) mapNonEmpty!31551))

(get-info :version)

(assert (= (and mapNonEmpty!31551 ((_ is ValueCellFull!9450) mapValue!31551)) b!928800))

(assert (= (and b!928799 ((_ is ValueCellFull!9450) mapDefault!31551)) b!928798))

(assert (= start!79170 b!928799))

(declare-fun m!863635 () Bool)

(assert (=> mapNonEmpty!31551 m!863635))

(declare-fun m!863637 () Bool)

(assert (=> b!928802 m!863637))

(declare-fun m!863639 () Bool)

(assert (=> b!928796 m!863639))

(declare-fun m!863641 () Bool)

(assert (=> b!928795 m!863641))

(declare-fun m!863643 () Bool)

(assert (=> b!928795 m!863643))

(declare-fun m!863645 () Bool)

(assert (=> start!79170 m!863645))

(declare-fun m!863647 () Bool)

(assert (=> start!79170 m!863647))

(declare-fun m!863649 () Bool)

(assert (=> start!79170 m!863649))

(declare-fun m!863651 () Bool)

(assert (=> b!928801 m!863651))

(check-sat (not b!928801) b_and!28439 (not mapNonEmpty!31551) tp_is_empty!19863 (not b_next!17355) (not b!928796) (not start!79170) (not b!928795) (not b!928802))
(check-sat b_and!28439 (not b_next!17355))
