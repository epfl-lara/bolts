; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79206 () Bool)

(assert start!79206)

(declare-fun b_free!17391 () Bool)

(declare-fun b_next!17391 () Bool)

(assert (=> start!79206 (= b_free!17391 (not b_next!17391))))

(declare-fun tp!60614 () Bool)

(declare-fun b_and!28475 () Bool)

(assert (=> start!79206 (= tp!60614 b_and!28475)))

(declare-fun b!929317 () Bool)

(declare-fun e!521893 () Bool)

(declare-fun e!521892 () Bool)

(assert (=> b!929317 (= e!521893 e!521892)))

(declare-fun res!625915 () Bool)

(assert (=> b!929317 (=> (not res!625915) (not e!521892))))

(declare-datatypes ((V!31497 0))(
  ( (V!31498 (val!10000 Int)) )
))
(declare-datatypes ((tuple2!13180 0))(
  ( (tuple2!13181 (_1!6600 (_ BitVec 64)) (_2!6600 V!31497)) )
))
(declare-datatypes ((List!19001 0))(
  ( (Nil!18998) (Cons!18997 (h!20143 tuple2!13180) (t!27066 List!19001)) )
))
(declare-datatypes ((ListLongMap!11891 0))(
  ( (ListLongMap!11892 (toList!5961 List!19001)) )
))
(declare-fun lt!419016 () ListLongMap!11891)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4977 (ListLongMap!11891 (_ BitVec 64)) Bool)

(assert (=> b!929317 (= res!625915 (contains!4977 lt!419016 k0!1099))))

(declare-datatypes ((array!55770 0))(
  ( (array!55771 (arr!26826 (Array (_ BitVec 32) (_ BitVec 64))) (size!27286 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55770)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9468 0))(
  ( (ValueCellFull!9468 (v!12518 V!31497)) (EmptyCell!9468) )
))
(declare-datatypes ((array!55772 0))(
  ( (array!55773 (arr!26827 (Array (_ BitVec 32) ValueCell!9468)) (size!27287 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55772)

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31497)

(declare-fun minValue!1173 () V!31497)

(declare-fun getCurrentListMap!3171 (array!55770 array!55772 (_ BitVec 32) (_ BitVec 32) V!31497 V!31497 (_ BitVec 32) Int) ListLongMap!11891)

(assert (=> b!929317 (= lt!419016 (getCurrentListMap!3171 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!929318 () Bool)

(declare-fun res!625920 () Bool)

(assert (=> b!929318 (=> (not res!625920) (not e!521893))))

(declare-datatypes ((List!19002 0))(
  ( (Nil!18999) (Cons!18998 (h!20144 (_ BitVec 64)) (t!27067 List!19002)) )
))
(declare-fun arrayNoDuplicates!0 (array!55770 (_ BitVec 32) List!19002) Bool)

(assert (=> b!929318 (= res!625920 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18999))))

(declare-fun b!929319 () Bool)

(declare-fun res!625921 () Bool)

(assert (=> b!929319 (=> (not res!625921) (not e!521893))))

(assert (=> b!929319 (= res!625921 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27286 _keys!1487))))))

(declare-fun res!625916 () Bool)

(assert (=> start!79206 (=> (not res!625916) (not e!521893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79206 (= res!625916 (validMask!0 mask!1881))))

(assert (=> start!79206 e!521893))

(assert (=> start!79206 true))

(declare-fun tp_is_empty!19899 () Bool)

(assert (=> start!79206 tp_is_empty!19899))

(declare-fun e!521891 () Bool)

(declare-fun array_inv!20872 (array!55772) Bool)

(assert (=> start!79206 (and (array_inv!20872 _values!1231) e!521891)))

(assert (=> start!79206 tp!60614))

(declare-fun array_inv!20873 (array!55770) Bool)

(assert (=> start!79206 (array_inv!20873 _keys!1487)))

(declare-fun b!929320 () Bool)

(declare-fun res!625919 () Bool)

(assert (=> b!929320 (=> (not res!625919) (not e!521893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55770 (_ BitVec 32)) Bool)

(assert (=> b!929320 (= res!625919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929321 () Bool)

(declare-fun e!521895 () Bool)

(assert (=> b!929321 (= e!521895 tp_is_empty!19899)))

(declare-fun b!929322 () Bool)

(declare-fun res!625918 () Bool)

(assert (=> b!929322 (=> (not res!625918) (not e!521893))))

(assert (=> b!929322 (= res!625918 (and (= (size!27287 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27286 _keys!1487) (size!27287 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31605 () Bool)

(declare-fun mapRes!31605 () Bool)

(assert (=> mapIsEmpty!31605 mapRes!31605))

(declare-fun b!929323 () Bool)

(declare-fun res!625917 () Bool)

(assert (=> b!929323 (=> (not res!625917) (not e!521892))))

(assert (=> b!929323 (= res!625917 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!929324 () Bool)

(assert (=> b!929324 (= e!521891 (and e!521895 mapRes!31605))))

(declare-fun condMapEmpty!31605 () Bool)

(declare-fun mapDefault!31605 () ValueCell!9468)

(assert (=> b!929324 (= condMapEmpty!31605 (= (arr!26827 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9468)) mapDefault!31605)))))

(declare-fun b!929325 () Bool)

(declare-fun e!521890 () Bool)

(assert (=> b!929325 (= e!521890 tp_is_empty!19899)))

(declare-fun b!929326 () Bool)

(assert (=> b!929326 (= e!521892 false)))

(declare-fun lt!419015 () Bool)

(assert (=> b!929326 (= lt!419015 (contains!4977 (getCurrentListMap!3171 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun mapNonEmpty!31605 () Bool)

(declare-fun tp!60615 () Bool)

(assert (=> mapNonEmpty!31605 (= mapRes!31605 (and tp!60615 e!521890))))

(declare-fun mapValue!31605 () ValueCell!9468)

(declare-fun mapRest!31605 () (Array (_ BitVec 32) ValueCell!9468))

(declare-fun mapKey!31605 () (_ BitVec 32))

(assert (=> mapNonEmpty!31605 (= (arr!26827 _values!1231) (store mapRest!31605 mapKey!31605 mapValue!31605))))

(declare-fun b!929327 () Bool)

(declare-fun res!625922 () Bool)

(assert (=> b!929327 (=> (not res!625922) (not e!521892))))

(declare-fun v!791 () V!31497)

(declare-fun apply!754 (ListLongMap!11891 (_ BitVec 64)) V!31497)

(assert (=> b!929327 (= res!625922 (= (apply!754 lt!419016 k0!1099) v!791))))

(assert (= (and start!79206 res!625916) b!929322))

(assert (= (and b!929322 res!625918) b!929320))

(assert (= (and b!929320 res!625919) b!929318))

(assert (= (and b!929318 res!625920) b!929319))

(assert (= (and b!929319 res!625921) b!929317))

(assert (= (and b!929317 res!625915) b!929327))

(assert (= (and b!929327 res!625922) b!929323))

(assert (= (and b!929323 res!625917) b!929326))

(assert (= (and b!929324 condMapEmpty!31605) mapIsEmpty!31605))

(assert (= (and b!929324 (not condMapEmpty!31605)) mapNonEmpty!31605))

(get-info :version)

(assert (= (and mapNonEmpty!31605 ((_ is ValueCellFull!9468) mapValue!31605)) b!929325))

(assert (= (and b!929324 ((_ is ValueCellFull!9468) mapDefault!31605)) b!929321))

(assert (= start!79206 b!929324))

(declare-fun m!863975 () Bool)

(assert (=> start!79206 m!863975))

(declare-fun m!863977 () Bool)

(assert (=> start!79206 m!863977))

(declare-fun m!863979 () Bool)

(assert (=> start!79206 m!863979))

(declare-fun m!863981 () Bool)

(assert (=> b!929318 m!863981))

(declare-fun m!863983 () Bool)

(assert (=> b!929327 m!863983))

(declare-fun m!863985 () Bool)

(assert (=> b!929320 m!863985))

(declare-fun m!863987 () Bool)

(assert (=> mapNonEmpty!31605 m!863987))

(declare-fun m!863989 () Bool)

(assert (=> b!929317 m!863989))

(declare-fun m!863991 () Bool)

(assert (=> b!929317 m!863991))

(declare-fun m!863993 () Bool)

(assert (=> b!929326 m!863993))

(assert (=> b!929326 m!863993))

(declare-fun m!863995 () Bool)

(assert (=> b!929326 m!863995))

(check-sat (not mapNonEmpty!31605) (not b!929326) (not b!929318) tp_is_empty!19899 (not b!929327) (not start!79206) (not b!929317) b_and!28475 (not b!929320) (not b_next!17391))
(check-sat b_and!28475 (not b_next!17391))
