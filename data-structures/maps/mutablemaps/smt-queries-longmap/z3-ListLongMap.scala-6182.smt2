; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79230 () Bool)

(assert start!79230)

(declare-fun b_free!17415 () Bool)

(declare-fun b_next!17415 () Bool)

(assert (=> start!79230 (= b_free!17415 (not b_next!17415))))

(declare-fun tp!60686 () Bool)

(declare-fun b_and!28499 () Bool)

(assert (=> start!79230 (= tp!60686 b_and!28499)))

(declare-fun b!929713 () Bool)

(declare-fun e!522106 () Bool)

(assert (=> b!929713 (= e!522106 false)))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun lt!419087 () Bool)

(declare-datatypes ((V!31529 0))(
  ( (V!31530 (val!10012 Int)) )
))
(declare-datatypes ((ValueCell!9480 0))(
  ( (ValueCellFull!9480 (v!12530 V!31529)) (EmptyCell!9480) )
))
(declare-datatypes ((array!55816 0))(
  ( (array!55817 (arr!26849 (Array (_ BitVec 32) ValueCell!9480)) (size!27309 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55816)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((array!55818 0))(
  ( (array!55819 (arr!26850 (Array (_ BitVec 32) (_ BitVec 64))) (size!27310 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55818)

(declare-fun zeroValue!1173 () V!31529)

(declare-fun minValue!1173 () V!31529)

(declare-datatypes ((tuple2!13196 0))(
  ( (tuple2!13197 (_1!6608 (_ BitVec 64)) (_2!6608 V!31529)) )
))
(declare-datatypes ((List!19018 0))(
  ( (Nil!19015) (Cons!19014 (h!20160 tuple2!13196) (t!27083 List!19018)) )
))
(declare-datatypes ((ListLongMap!11907 0))(
  ( (ListLongMap!11908 (toList!5969 List!19018)) )
))
(declare-fun contains!4985 (ListLongMap!11907 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3179 (array!55818 array!55816 (_ BitVec 32) (_ BitVec 32) V!31529 V!31529 (_ BitVec 32) Int) ListLongMap!11907)

(assert (=> b!929713 (= lt!419087 (contains!4985 (getCurrentListMap!3179 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun res!626204 () Bool)

(declare-fun e!522107 () Bool)

(assert (=> start!79230 (=> (not res!626204) (not e!522107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79230 (= res!626204 (validMask!0 mask!1881))))

(assert (=> start!79230 e!522107))

(assert (=> start!79230 true))

(declare-fun tp_is_empty!19923 () Bool)

(assert (=> start!79230 tp_is_empty!19923))

(declare-fun e!522109 () Bool)

(declare-fun array_inv!20888 (array!55816) Bool)

(assert (=> start!79230 (and (array_inv!20888 _values!1231) e!522109)))

(assert (=> start!79230 tp!60686))

(declare-fun array_inv!20889 (array!55818) Bool)

(assert (=> start!79230 (array_inv!20889 _keys!1487)))

(declare-fun b!929714 () Bool)

(declare-fun e!522108 () Bool)

(assert (=> b!929714 (= e!522108 tp_is_empty!19923)))

(declare-fun b!929715 () Bool)

(declare-fun res!626210 () Bool)

(assert (=> b!929715 (=> (not res!626210) (not e!522106))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929715 (= res!626210 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!929716 () Bool)

(declare-fun res!626206 () Bool)

(assert (=> b!929716 (=> (not res!626206) (not e!522107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55818 (_ BitVec 32)) Bool)

(assert (=> b!929716 (= res!626206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929717 () Bool)

(declare-fun res!626208 () Bool)

(assert (=> b!929717 (=> (not res!626208) (not e!522107))))

(declare-datatypes ((List!19019 0))(
  ( (Nil!19016) (Cons!19015 (h!20161 (_ BitVec 64)) (t!27084 List!19019)) )
))
(declare-fun arrayNoDuplicates!0 (array!55818 (_ BitVec 32) List!19019) Bool)

(assert (=> b!929717 (= res!626208 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19016))))

(declare-fun b!929718 () Bool)

(assert (=> b!929718 (= e!522107 e!522106)))

(declare-fun res!626207 () Bool)

(assert (=> b!929718 (=> (not res!626207) (not e!522106))))

(declare-fun lt!419088 () ListLongMap!11907)

(assert (=> b!929718 (= res!626207 (contains!4985 lt!419088 k0!1099))))

(assert (=> b!929718 (= lt!419088 (getCurrentListMap!3179 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!929719 () Bool)

(declare-fun res!626205 () Bool)

(assert (=> b!929719 (=> (not res!626205) (not e!522107))))

(assert (=> b!929719 (= res!626205 (and (= (size!27309 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27310 _keys!1487) (size!27309 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929720 () Bool)

(declare-fun e!522110 () Bool)

(assert (=> b!929720 (= e!522110 tp_is_empty!19923)))

(declare-fun b!929721 () Bool)

(declare-fun res!626209 () Bool)

(assert (=> b!929721 (=> (not res!626209) (not e!522107))))

(assert (=> b!929721 (= res!626209 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27310 _keys!1487))))))

(declare-fun b!929722 () Bool)

(declare-fun mapRes!31641 () Bool)

(assert (=> b!929722 (= e!522109 (and e!522108 mapRes!31641))))

(declare-fun condMapEmpty!31641 () Bool)

(declare-fun mapDefault!31641 () ValueCell!9480)

(assert (=> b!929722 (= condMapEmpty!31641 (= (arr!26849 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9480)) mapDefault!31641)))))

(declare-fun b!929723 () Bool)

(declare-fun res!626203 () Bool)

(assert (=> b!929723 (=> (not res!626203) (not e!522106))))

(declare-fun v!791 () V!31529)

(declare-fun apply!760 (ListLongMap!11907 (_ BitVec 64)) V!31529)

(assert (=> b!929723 (= res!626203 (= (apply!760 lt!419088 k0!1099) v!791))))

(declare-fun mapIsEmpty!31641 () Bool)

(assert (=> mapIsEmpty!31641 mapRes!31641))

(declare-fun mapNonEmpty!31641 () Bool)

(declare-fun tp!60687 () Bool)

(assert (=> mapNonEmpty!31641 (= mapRes!31641 (and tp!60687 e!522110))))

(declare-fun mapKey!31641 () (_ BitVec 32))

(declare-fun mapRest!31641 () (Array (_ BitVec 32) ValueCell!9480))

(declare-fun mapValue!31641 () ValueCell!9480)

(assert (=> mapNonEmpty!31641 (= (arr!26849 _values!1231) (store mapRest!31641 mapKey!31641 mapValue!31641))))

(assert (= (and start!79230 res!626204) b!929719))

(assert (= (and b!929719 res!626205) b!929716))

(assert (= (and b!929716 res!626206) b!929717))

(assert (= (and b!929717 res!626208) b!929721))

(assert (= (and b!929721 res!626209) b!929718))

(assert (= (and b!929718 res!626207) b!929723))

(assert (= (and b!929723 res!626203) b!929715))

(assert (= (and b!929715 res!626210) b!929713))

(assert (= (and b!929722 condMapEmpty!31641) mapIsEmpty!31641))

(assert (= (and b!929722 (not condMapEmpty!31641)) mapNonEmpty!31641))

(get-info :version)

(assert (= (and mapNonEmpty!31641 ((_ is ValueCellFull!9480) mapValue!31641)) b!929720))

(assert (= (and b!929722 ((_ is ValueCellFull!9480) mapDefault!31641)) b!929714))

(assert (= start!79230 b!929722))

(declare-fun m!864239 () Bool)

(assert (=> b!929718 m!864239))

(declare-fun m!864241 () Bool)

(assert (=> b!929718 m!864241))

(declare-fun m!864243 () Bool)

(assert (=> b!929716 m!864243))

(declare-fun m!864245 () Bool)

(assert (=> b!929717 m!864245))

(declare-fun m!864247 () Bool)

(assert (=> start!79230 m!864247))

(declare-fun m!864249 () Bool)

(assert (=> start!79230 m!864249))

(declare-fun m!864251 () Bool)

(assert (=> start!79230 m!864251))

(declare-fun m!864253 () Bool)

(assert (=> mapNonEmpty!31641 m!864253))

(declare-fun m!864255 () Bool)

(assert (=> b!929713 m!864255))

(assert (=> b!929713 m!864255))

(declare-fun m!864257 () Bool)

(assert (=> b!929713 m!864257))

(declare-fun m!864259 () Bool)

(assert (=> b!929723 m!864259))

(check-sat (not mapNonEmpty!31641) (not b!929718) (not start!79230) (not b!929723) tp_is_empty!19923 (not b!929716) (not b!929717) (not b!929713) (not b_next!17415) b_and!28499)
(check-sat b_and!28499 (not b_next!17415))
