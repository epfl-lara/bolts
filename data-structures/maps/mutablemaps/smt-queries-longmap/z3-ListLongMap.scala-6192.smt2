; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79290 () Bool)

(assert start!79290)

(declare-fun b_free!17475 () Bool)

(declare-fun b_next!17475 () Bool)

(assert (=> start!79290 (= b_free!17475 (not b_next!17475))))

(declare-fun tp!60867 () Bool)

(declare-fun b_and!28559 () Bool)

(assert (=> start!79290 (= tp!60867 b_and!28559)))

(declare-fun b!930639 () Bool)

(declare-fun e!522650 () Bool)

(declare-fun tp_is_empty!19983 () Bool)

(assert (=> b!930639 (= e!522650 tp_is_empty!19983)))

(declare-fun b!930640 () Bool)

(declare-fun res!626859 () Bool)

(declare-fun e!522646 () Bool)

(assert (=> b!930640 (=> (not res!626859) (not e!522646))))

(declare-datatypes ((array!55936 0))(
  ( (array!55937 (arr!26909 (Array (_ BitVec 32) (_ BitVec 64))) (size!27369 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55936)

(declare-datatypes ((List!19066 0))(
  ( (Nil!19063) (Cons!19062 (h!20208 (_ BitVec 64)) (t!27131 List!19066)) )
))
(declare-fun arrayNoDuplicates!0 (array!55936 (_ BitVec 32) List!19066) Bool)

(assert (=> b!930640 (= res!626859 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19063))))

(declare-fun b!930641 () Bool)

(declare-fun res!626860 () Bool)

(assert (=> b!930641 (=> (not res!626860) (not e!522646))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55936 (_ BitVec 32)) Bool)

(assert (=> b!930641 (= res!626860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930642 () Bool)

(declare-fun e!522649 () Bool)

(assert (=> b!930642 (= e!522649 tp_is_empty!19983)))

(declare-fun b!930643 () Bool)

(declare-fun res!626861 () Bool)

(assert (=> b!930643 (=> (not res!626861) (not e!522646))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31609 0))(
  ( (V!31610 (val!10042 Int)) )
))
(declare-datatypes ((ValueCell!9510 0))(
  ( (ValueCellFull!9510 (v!12560 V!31609)) (EmptyCell!9510) )
))
(declare-datatypes ((array!55938 0))(
  ( (array!55939 (arr!26910 (Array (_ BitVec 32) ValueCell!9510)) (size!27370 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55938)

(assert (=> b!930643 (= res!626861 (and (= (size!27370 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27369 _keys!1487) (size!27370 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930644 () Bool)

(declare-fun res!626863 () Bool)

(assert (=> b!930644 (=> (not res!626863) (not e!522646))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930644 (= res!626863 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27369 _keys!1487))))))

(declare-fun mapNonEmpty!31731 () Bool)

(declare-fun mapRes!31731 () Bool)

(declare-fun tp!60866 () Bool)

(assert (=> mapNonEmpty!31731 (= mapRes!31731 (and tp!60866 e!522650))))

(declare-fun mapKey!31731 () (_ BitVec 32))

(declare-fun mapRest!31731 () (Array (_ BitVec 32) ValueCell!9510))

(declare-fun mapValue!31731 () ValueCell!9510)

(assert (=> mapNonEmpty!31731 (= (arr!26910 _values!1231) (store mapRest!31731 mapKey!31731 mapValue!31731))))

(declare-fun b!930645 () Bool)

(declare-fun e!522651 () Bool)

(assert (=> b!930645 (= e!522651 (and e!522649 mapRes!31731))))

(declare-fun condMapEmpty!31731 () Bool)

(declare-fun mapDefault!31731 () ValueCell!9510)

(assert (=> b!930645 (= condMapEmpty!31731 (= (arr!26910 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9510)) mapDefault!31731)))))

(declare-fun b!930646 () Bool)

(declare-fun e!522648 () Bool)

(assert (=> b!930646 (= e!522646 e!522648)))

(declare-fun res!626862 () Bool)

(assert (=> b!930646 (=> (not res!626862) (not e!522648))))

(declare-datatypes ((tuple2!13248 0))(
  ( (tuple2!13249 (_1!6634 (_ BitVec 64)) (_2!6634 V!31609)) )
))
(declare-datatypes ((List!19067 0))(
  ( (Nil!19064) (Cons!19063 (h!20209 tuple2!13248) (t!27132 List!19067)) )
))
(declare-datatypes ((ListLongMap!11959 0))(
  ( (ListLongMap!11960 (toList!5995 List!19067)) )
))
(declare-fun lt!419249 () ListLongMap!11959)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5002 (ListLongMap!11959 (_ BitVec 64)) Bool)

(assert (=> b!930646 (= res!626862 (contains!5002 lt!419249 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31609)

(declare-fun minValue!1173 () V!31609)

(declare-fun getCurrentListMap!3196 (array!55936 array!55938 (_ BitVec 32) (_ BitVec 32) V!31609 V!31609 (_ BitVec 32) Int) ListLongMap!11959)

(assert (=> b!930646 (= lt!419249 (getCurrentListMap!3196 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930647 () Bool)

(assert (=> b!930647 (= e!522648 false)))

(declare-fun lt!419250 () V!31609)

(declare-fun apply!782 (ListLongMap!11959 (_ BitVec 64)) V!31609)

(assert (=> b!930647 (= lt!419250 (apply!782 lt!419249 k0!1099))))

(declare-fun mapIsEmpty!31731 () Bool)

(assert (=> mapIsEmpty!31731 mapRes!31731))

(declare-fun res!626864 () Bool)

(assert (=> start!79290 (=> (not res!626864) (not e!522646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79290 (= res!626864 (validMask!0 mask!1881))))

(assert (=> start!79290 e!522646))

(assert (=> start!79290 true))

(declare-fun array_inv!20922 (array!55938) Bool)

(assert (=> start!79290 (and (array_inv!20922 _values!1231) e!522651)))

(assert (=> start!79290 tp!60867))

(declare-fun array_inv!20923 (array!55936) Bool)

(assert (=> start!79290 (array_inv!20923 _keys!1487)))

(assert (=> start!79290 tp_is_empty!19983))

(assert (= (and start!79290 res!626864) b!930643))

(assert (= (and b!930643 res!626861) b!930641))

(assert (= (and b!930641 res!626860) b!930640))

(assert (= (and b!930640 res!626859) b!930644))

(assert (= (and b!930644 res!626863) b!930646))

(assert (= (and b!930646 res!626862) b!930647))

(assert (= (and b!930645 condMapEmpty!31731) mapIsEmpty!31731))

(assert (= (and b!930645 (not condMapEmpty!31731)) mapNonEmpty!31731))

(get-info :version)

(assert (= (and mapNonEmpty!31731 ((_ is ValueCellFull!9510) mapValue!31731)) b!930639))

(assert (= (and b!930645 ((_ is ValueCellFull!9510) mapDefault!31731)) b!930642))

(assert (= start!79290 b!930645))

(declare-fun m!864841 () Bool)

(assert (=> b!930641 m!864841))

(declare-fun m!864843 () Bool)

(assert (=> b!930646 m!864843))

(declare-fun m!864845 () Bool)

(assert (=> b!930646 m!864845))

(declare-fun m!864847 () Bool)

(assert (=> b!930647 m!864847))

(declare-fun m!864849 () Bool)

(assert (=> mapNonEmpty!31731 m!864849))

(declare-fun m!864851 () Bool)

(assert (=> b!930640 m!864851))

(declare-fun m!864853 () Bool)

(assert (=> start!79290 m!864853))

(declare-fun m!864855 () Bool)

(assert (=> start!79290 m!864855))

(declare-fun m!864857 () Bool)

(assert (=> start!79290 m!864857))

(check-sat (not mapNonEmpty!31731) (not b!930641) (not b!930647) (not b!930646) (not start!79290) tp_is_empty!19983 (not b_next!17475) (not b!930640) b_and!28559)
(check-sat b_and!28559 (not b_next!17475))
