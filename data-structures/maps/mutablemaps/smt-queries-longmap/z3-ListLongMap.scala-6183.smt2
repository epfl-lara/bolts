; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79236 () Bool)

(assert start!79236)

(declare-fun b_free!17421 () Bool)

(declare-fun b_next!17421 () Bool)

(assert (=> start!79236 (= b_free!17421 (not b_next!17421))))

(declare-fun tp!60704 () Bool)

(declare-fun b_and!28505 () Bool)

(assert (=> start!79236 (= tp!60704 b_and!28505)))

(declare-fun res!626282 () Bool)

(declare-fun e!522163 () Bool)

(assert (=> start!79236 (=> (not res!626282) (not e!522163))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79236 (= res!626282 (validMask!0 mask!1881))))

(assert (=> start!79236 e!522163))

(assert (=> start!79236 true))

(declare-fun tp_is_empty!19929 () Bool)

(assert (=> start!79236 tp_is_empty!19929))

(declare-datatypes ((V!31537 0))(
  ( (V!31538 (val!10015 Int)) )
))
(declare-datatypes ((ValueCell!9483 0))(
  ( (ValueCellFull!9483 (v!12533 V!31537)) (EmptyCell!9483) )
))
(declare-datatypes ((array!55828 0))(
  ( (array!55829 (arr!26855 (Array (_ BitVec 32) ValueCell!9483)) (size!27315 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55828)

(declare-fun e!522161 () Bool)

(declare-fun array_inv!20890 (array!55828) Bool)

(assert (=> start!79236 (and (array_inv!20890 _values!1231) e!522161)))

(assert (=> start!79236 tp!60704))

(declare-datatypes ((array!55830 0))(
  ( (array!55831 (arr!26856 (Array (_ BitVec 32) (_ BitVec 64))) (size!27316 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55830)

(declare-fun array_inv!20891 (array!55830) Bool)

(assert (=> start!79236 (array_inv!20891 _keys!1487)))

(declare-fun b!929812 () Bool)

(declare-fun res!626281 () Bool)

(declare-fun e!522160 () Bool)

(assert (=> b!929812 (=> (not res!626281) (not e!522160))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929812 (= res!626281 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31650 () Bool)

(declare-fun mapRes!31650 () Bool)

(declare-fun tp!60705 () Bool)

(declare-fun e!522165 () Bool)

(assert (=> mapNonEmpty!31650 (= mapRes!31650 (and tp!60705 e!522165))))

(declare-fun mapValue!31650 () ValueCell!9483)

(declare-fun mapKey!31650 () (_ BitVec 32))

(declare-fun mapRest!31650 () (Array (_ BitVec 32) ValueCell!9483))

(assert (=> mapNonEmpty!31650 (= (arr!26855 _values!1231) (store mapRest!31650 mapKey!31650 mapValue!31650))))

(declare-fun b!929813 () Bool)

(assert (=> b!929813 (= e!522160 false)))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun lt!419105 () Bool)

(declare-fun zeroValue!1173 () V!31537)

(declare-fun minValue!1173 () V!31537)

(declare-datatypes ((tuple2!13200 0))(
  ( (tuple2!13201 (_1!6610 (_ BitVec 64)) (_2!6610 V!31537)) )
))
(declare-datatypes ((List!19023 0))(
  ( (Nil!19020) (Cons!19019 (h!20165 tuple2!13200) (t!27088 List!19023)) )
))
(declare-datatypes ((ListLongMap!11911 0))(
  ( (ListLongMap!11912 (toList!5971 List!19023)) )
))
(declare-fun contains!4986 (ListLongMap!11911 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3180 (array!55830 array!55828 (_ BitVec 32) (_ BitVec 32) V!31537 V!31537 (_ BitVec 32) Int) ListLongMap!11911)

(assert (=> b!929813 (= lt!419105 (contains!4986 (getCurrentListMap!3180 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun b!929814 () Bool)

(assert (=> b!929814 (= e!522165 tp_is_empty!19929)))

(declare-fun b!929815 () Bool)

(declare-fun res!626278 () Bool)

(assert (=> b!929815 (=> (not res!626278) (not e!522163))))

(assert (=> b!929815 (= res!626278 (and (= (size!27315 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27316 _keys!1487) (size!27315 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929816 () Bool)

(declare-fun res!626275 () Bool)

(assert (=> b!929816 (=> (not res!626275) (not e!522163))))

(assert (=> b!929816 (= res!626275 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27316 _keys!1487))))))

(declare-fun b!929817 () Bool)

(declare-fun res!626279 () Bool)

(assert (=> b!929817 (=> (not res!626279) (not e!522160))))

(declare-fun lt!419106 () ListLongMap!11911)

(declare-fun v!791 () V!31537)

(declare-fun apply!762 (ListLongMap!11911 (_ BitVec 64)) V!31537)

(assert (=> b!929817 (= res!626279 (= (apply!762 lt!419106 k0!1099) v!791))))

(declare-fun b!929818 () Bool)

(declare-fun e!522162 () Bool)

(assert (=> b!929818 (= e!522161 (and e!522162 mapRes!31650))))

(declare-fun condMapEmpty!31650 () Bool)

(declare-fun mapDefault!31650 () ValueCell!9483)

(assert (=> b!929818 (= condMapEmpty!31650 (= (arr!26855 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9483)) mapDefault!31650)))))

(declare-fun b!929819 () Bool)

(assert (=> b!929819 (= e!522162 tp_is_empty!19929)))

(declare-fun b!929820 () Bool)

(assert (=> b!929820 (= e!522163 e!522160)))

(declare-fun res!626277 () Bool)

(assert (=> b!929820 (=> (not res!626277) (not e!522160))))

(assert (=> b!929820 (= res!626277 (contains!4986 lt!419106 k0!1099))))

(assert (=> b!929820 (= lt!419106 (getCurrentListMap!3180 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31650 () Bool)

(assert (=> mapIsEmpty!31650 mapRes!31650))

(declare-fun b!929821 () Bool)

(declare-fun res!626276 () Bool)

(assert (=> b!929821 (=> (not res!626276) (not e!522163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55830 (_ BitVec 32)) Bool)

(assert (=> b!929821 (= res!626276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929822 () Bool)

(declare-fun res!626280 () Bool)

(assert (=> b!929822 (=> (not res!626280) (not e!522163))))

(declare-datatypes ((List!19024 0))(
  ( (Nil!19021) (Cons!19020 (h!20166 (_ BitVec 64)) (t!27089 List!19024)) )
))
(declare-fun arrayNoDuplicates!0 (array!55830 (_ BitVec 32) List!19024) Bool)

(assert (=> b!929822 (= res!626280 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19021))))

(assert (= (and start!79236 res!626282) b!929815))

(assert (= (and b!929815 res!626278) b!929821))

(assert (= (and b!929821 res!626276) b!929822))

(assert (= (and b!929822 res!626280) b!929816))

(assert (= (and b!929816 res!626275) b!929820))

(assert (= (and b!929820 res!626277) b!929817))

(assert (= (and b!929817 res!626279) b!929812))

(assert (= (and b!929812 res!626281) b!929813))

(assert (= (and b!929818 condMapEmpty!31650) mapIsEmpty!31650))

(assert (= (and b!929818 (not condMapEmpty!31650)) mapNonEmpty!31650))

(get-info :version)

(assert (= (and mapNonEmpty!31650 ((_ is ValueCellFull!9483) mapValue!31650)) b!929814))

(assert (= (and b!929818 ((_ is ValueCellFull!9483) mapDefault!31650)) b!929819))

(assert (= start!79236 b!929818))

(declare-fun m!864305 () Bool)

(assert (=> b!929822 m!864305))

(declare-fun m!864307 () Bool)

(assert (=> start!79236 m!864307))

(declare-fun m!864309 () Bool)

(assert (=> start!79236 m!864309))

(declare-fun m!864311 () Bool)

(assert (=> start!79236 m!864311))

(declare-fun m!864313 () Bool)

(assert (=> b!929817 m!864313))

(declare-fun m!864315 () Bool)

(assert (=> b!929821 m!864315))

(declare-fun m!864317 () Bool)

(assert (=> b!929820 m!864317))

(declare-fun m!864319 () Bool)

(assert (=> b!929820 m!864319))

(declare-fun m!864321 () Bool)

(assert (=> mapNonEmpty!31650 m!864321))

(declare-fun m!864323 () Bool)

(assert (=> b!929813 m!864323))

(assert (=> b!929813 m!864323))

(declare-fun m!864325 () Bool)

(assert (=> b!929813 m!864325))

(check-sat (not start!79236) (not b!929817) (not b!929813) (not b!929820) (not mapNonEmpty!31650) (not b_next!17421) tp_is_empty!19929 b_and!28505 (not b!929822) (not b!929821))
(check-sat b_and!28505 (not b_next!17421))
