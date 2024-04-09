; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79200 () Bool)

(assert start!79200)

(declare-fun b_free!17385 () Bool)

(declare-fun b_next!17385 () Bool)

(assert (=> start!79200 (= b_free!17385 (not b_next!17385))))

(declare-fun tp!60596 () Bool)

(declare-fun b_and!28469 () Bool)

(assert (=> start!79200 (= tp!60596 b_and!28469)))

(declare-fun b!929218 () Bool)

(declare-fun res!625848 () Bool)

(declare-fun e!521839 () Bool)

(assert (=> b!929218 (=> (not res!625848) (not e!521839))))

(declare-datatypes ((array!55758 0))(
  ( (array!55759 (arr!26820 (Array (_ BitVec 32) (_ BitVec 64))) (size!27280 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55758)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55758 (_ BitVec 32)) Bool)

(assert (=> b!929218 (= res!625848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929220 () Bool)

(declare-fun e!521840 () Bool)

(assert (=> b!929220 (= e!521840 false)))

(declare-fun lt!418997 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31489 0))(
  ( (V!31490 (val!9997 Int)) )
))
(declare-datatypes ((ValueCell!9465 0))(
  ( (ValueCellFull!9465 (v!12515 V!31489)) (EmptyCell!9465) )
))
(declare-datatypes ((array!55760 0))(
  ( (array!55761 (arr!26821 (Array (_ BitVec 32) ValueCell!9465)) (size!27281 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55760)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!31489)

(declare-fun minValue!1173 () V!31489)

(declare-datatypes ((tuple2!13176 0))(
  ( (tuple2!13177 (_1!6598 (_ BitVec 64)) (_2!6598 V!31489)) )
))
(declare-datatypes ((List!18997 0))(
  ( (Nil!18994) (Cons!18993 (h!20139 tuple2!13176) (t!27062 List!18997)) )
))
(declare-datatypes ((ListLongMap!11887 0))(
  ( (ListLongMap!11888 (toList!5959 List!18997)) )
))
(declare-fun contains!4975 (ListLongMap!11887 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3169 (array!55758 array!55760 (_ BitVec 32) (_ BitVec 32) V!31489 V!31489 (_ BitVec 32) Int) ListLongMap!11887)

(assert (=> b!929220 (= lt!418997 (contains!4975 (getCurrentListMap!3169 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun b!929221 () Bool)

(declare-fun res!625846 () Bool)

(assert (=> b!929221 (=> (not res!625846) (not e!521839))))

(declare-datatypes ((List!18998 0))(
  ( (Nil!18995) (Cons!18994 (h!20140 (_ BitVec 64)) (t!27063 List!18998)) )
))
(declare-fun arrayNoDuplicates!0 (array!55758 (_ BitVec 32) List!18998) Bool)

(assert (=> b!929221 (= res!625846 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18995))))

(declare-fun b!929222 () Bool)

(declare-fun res!625847 () Bool)

(assert (=> b!929222 (=> (not res!625847) (not e!521840))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929222 (= res!625847 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!929223 () Bool)

(declare-fun res!625845 () Bool)

(assert (=> b!929223 (=> (not res!625845) (not e!521840))))

(declare-fun v!791 () V!31489)

(declare-fun lt!418998 () ListLongMap!11887)

(declare-fun apply!752 (ListLongMap!11887 (_ BitVec 64)) V!31489)

(assert (=> b!929223 (= res!625845 (= (apply!752 lt!418998 k0!1099) v!791))))

(declare-fun b!929224 () Bool)

(declare-fun res!625850 () Bool)

(assert (=> b!929224 (=> (not res!625850) (not e!521839))))

(assert (=> b!929224 (= res!625850 (and (= (size!27281 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27280 _keys!1487) (size!27281 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31596 () Bool)

(declare-fun mapRes!31596 () Bool)

(declare-fun tp!60597 () Bool)

(declare-fun e!521841 () Bool)

(assert (=> mapNonEmpty!31596 (= mapRes!31596 (and tp!60597 e!521841))))

(declare-fun mapKey!31596 () (_ BitVec 32))

(declare-fun mapRest!31596 () (Array (_ BitVec 32) ValueCell!9465))

(declare-fun mapValue!31596 () ValueCell!9465)

(assert (=> mapNonEmpty!31596 (= (arr!26821 _values!1231) (store mapRest!31596 mapKey!31596 mapValue!31596))))

(declare-fun b!929225 () Bool)

(assert (=> b!929225 (= e!521839 e!521840)))

(declare-fun res!625843 () Bool)

(assert (=> b!929225 (=> (not res!625843) (not e!521840))))

(assert (=> b!929225 (= res!625843 (contains!4975 lt!418998 k0!1099))))

(assert (=> b!929225 (= lt!418998 (getCurrentListMap!3169 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31596 () Bool)

(assert (=> mapIsEmpty!31596 mapRes!31596))

(declare-fun b!929226 () Bool)

(declare-fun e!521838 () Bool)

(declare-fun tp_is_empty!19893 () Bool)

(assert (=> b!929226 (= e!521838 tp_is_empty!19893)))

(declare-fun b!929227 () Bool)

(declare-fun res!625849 () Bool)

(assert (=> b!929227 (=> (not res!625849) (not e!521839))))

(assert (=> b!929227 (= res!625849 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27280 _keys!1487))))))

(declare-fun b!929228 () Bool)

(assert (=> b!929228 (= e!521841 tp_is_empty!19893)))

(declare-fun res!625844 () Bool)

(assert (=> start!79200 (=> (not res!625844) (not e!521839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79200 (= res!625844 (validMask!0 mask!1881))))

(assert (=> start!79200 e!521839))

(assert (=> start!79200 true))

(assert (=> start!79200 tp_is_empty!19893))

(declare-fun e!521837 () Bool)

(declare-fun array_inv!20866 (array!55760) Bool)

(assert (=> start!79200 (and (array_inv!20866 _values!1231) e!521837)))

(assert (=> start!79200 tp!60596))

(declare-fun array_inv!20867 (array!55758) Bool)

(assert (=> start!79200 (array_inv!20867 _keys!1487)))

(declare-fun b!929219 () Bool)

(assert (=> b!929219 (= e!521837 (and e!521838 mapRes!31596))))

(declare-fun condMapEmpty!31596 () Bool)

(declare-fun mapDefault!31596 () ValueCell!9465)

(assert (=> b!929219 (= condMapEmpty!31596 (= (arr!26821 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9465)) mapDefault!31596)))))

(assert (= (and start!79200 res!625844) b!929224))

(assert (= (and b!929224 res!625850) b!929218))

(assert (= (and b!929218 res!625848) b!929221))

(assert (= (and b!929221 res!625846) b!929227))

(assert (= (and b!929227 res!625849) b!929225))

(assert (= (and b!929225 res!625843) b!929223))

(assert (= (and b!929223 res!625845) b!929222))

(assert (= (and b!929222 res!625847) b!929220))

(assert (= (and b!929219 condMapEmpty!31596) mapIsEmpty!31596))

(assert (= (and b!929219 (not condMapEmpty!31596)) mapNonEmpty!31596))

(get-info :version)

(assert (= (and mapNonEmpty!31596 ((_ is ValueCellFull!9465) mapValue!31596)) b!929228))

(assert (= (and b!929219 ((_ is ValueCellFull!9465) mapDefault!31596)) b!929226))

(assert (= start!79200 b!929219))

(declare-fun m!863909 () Bool)

(assert (=> b!929218 m!863909))

(declare-fun m!863911 () Bool)

(assert (=> b!929225 m!863911))

(declare-fun m!863913 () Bool)

(assert (=> b!929225 m!863913))

(declare-fun m!863915 () Bool)

(assert (=> start!79200 m!863915))

(declare-fun m!863917 () Bool)

(assert (=> start!79200 m!863917))

(declare-fun m!863919 () Bool)

(assert (=> start!79200 m!863919))

(declare-fun m!863921 () Bool)

(assert (=> b!929221 m!863921))

(declare-fun m!863923 () Bool)

(assert (=> mapNonEmpty!31596 m!863923))

(declare-fun m!863925 () Bool)

(assert (=> b!929220 m!863925))

(assert (=> b!929220 m!863925))

(declare-fun m!863927 () Bool)

(assert (=> b!929220 m!863927))

(declare-fun m!863929 () Bool)

(assert (=> b!929223 m!863929))

(check-sat (not start!79200) (not b!929225) (not b!929223) (not b_next!17385) (not mapNonEmpty!31596) b_and!28469 (not b!929218) (not b!929221) tp_is_empty!19893 (not b!929220))
(check-sat b_and!28469 (not b_next!17385))
