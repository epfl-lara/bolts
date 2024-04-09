; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79248 () Bool)

(assert start!79248)

(declare-fun b_free!17433 () Bool)

(declare-fun b_next!17433 () Bool)

(assert (=> start!79248 (= b_free!17433 (not b_next!17433))))

(declare-fun tp!60741 () Bool)

(declare-fun b_and!28517 () Bool)

(assert (=> start!79248 (= tp!60741 b_and!28517)))

(declare-fun b!930015 () Bool)

(declare-fun e!522270 () Bool)

(declare-fun tp_is_empty!19941 () Bool)

(assert (=> b!930015 (= e!522270 tp_is_empty!19941)))

(declare-fun b!930016 () Bool)

(declare-fun res!626432 () Bool)

(declare-fun e!522268 () Bool)

(assert (=> b!930016 (=> (not res!626432) (not e!522268))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31553 0))(
  ( (V!31554 (val!10021 Int)) )
))
(declare-datatypes ((ValueCell!9489 0))(
  ( (ValueCellFull!9489 (v!12539 V!31553)) (EmptyCell!9489) )
))
(declare-datatypes ((array!55852 0))(
  ( (array!55853 (arr!26867 (Array (_ BitVec 32) ValueCell!9489)) (size!27327 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55852)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((array!55854 0))(
  ( (array!55855 (arr!26868 (Array (_ BitVec 32) (_ BitVec 64))) (size!27328 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55854)

(declare-fun zeroValue!1173 () V!31553)

(declare-fun minValue!1173 () V!31553)

(declare-datatypes ((tuple2!13210 0))(
  ( (tuple2!13211 (_1!6615 (_ BitVec 64)) (_2!6615 V!31553)) )
))
(declare-datatypes ((List!19031 0))(
  ( (Nil!19028) (Cons!19027 (h!20173 tuple2!13210) (t!27096 List!19031)) )
))
(declare-datatypes ((ListLongMap!11921 0))(
  ( (ListLongMap!11922 (toList!5976 List!19031)) )
))
(declare-fun contains!4990 (ListLongMap!11921 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3184 (array!55854 array!55852 (_ BitVec 32) (_ BitVec 32) V!31553 V!31553 (_ BitVec 32) Int) ListLongMap!11921)

(assert (=> b!930016 (= res!626432 (contains!4990 (getCurrentListMap!3184 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun b!930017 () Bool)

(declare-fun res!626427 () Bool)

(declare-fun e!522271 () Bool)

(assert (=> b!930017 (=> (not res!626427) (not e!522271))))

(declare-datatypes ((List!19032 0))(
  ( (Nil!19029) (Cons!19028 (h!20174 (_ BitVec 64)) (t!27097 List!19032)) )
))
(declare-fun arrayNoDuplicates!0 (array!55854 (_ BitVec 32) List!19032) Bool)

(assert (=> b!930017 (= res!626427 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19029))))

(declare-fun res!626424 () Bool)

(assert (=> start!79248 (=> (not res!626424) (not e!522271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79248 (= res!626424 (validMask!0 mask!1881))))

(assert (=> start!79248 e!522271))

(assert (=> start!79248 true))

(assert (=> start!79248 tp_is_empty!19941))

(declare-fun e!522269 () Bool)

(declare-fun array_inv!20894 (array!55852) Bool)

(assert (=> start!79248 (and (array_inv!20894 _values!1231) e!522269)))

(assert (=> start!79248 tp!60741))

(declare-fun array_inv!20895 (array!55854) Bool)

(assert (=> start!79248 (array_inv!20895 _keys!1487)))

(declare-fun b!930018 () Bool)

(declare-fun res!626430 () Bool)

(assert (=> b!930018 (=> (not res!626430) (not e!522271))))

(assert (=> b!930018 (= res!626430 (and (= (size!27327 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27328 _keys!1487) (size!27327 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930019 () Bool)

(declare-fun res!626428 () Bool)

(assert (=> b!930019 (=> (not res!626428) (not e!522268))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930019 (= res!626428 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!930020 () Bool)

(declare-fun e!522273 () Bool)

(declare-fun mapRes!31668 () Bool)

(assert (=> b!930020 (= e!522269 (and e!522273 mapRes!31668))))

(declare-fun condMapEmpty!31668 () Bool)

(declare-fun mapDefault!31668 () ValueCell!9489)

(assert (=> b!930020 (= condMapEmpty!31668 (= (arr!26867 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9489)) mapDefault!31668)))))

(declare-fun b!930021 () Bool)

(declare-fun res!626431 () Bool)

(assert (=> b!930021 (=> (not res!626431) (not e!522271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55854 (_ BitVec 32)) Bool)

(assert (=> b!930021 (= res!626431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930022 () Bool)

(assert (=> b!930022 (= e!522271 e!522268)))

(declare-fun res!626426 () Bool)

(assert (=> b!930022 (=> (not res!626426) (not e!522268))))

(declare-fun lt!419136 () ListLongMap!11921)

(assert (=> b!930022 (= res!626426 (contains!4990 lt!419136 k0!1099))))

(assert (=> b!930022 (= lt!419136 (getCurrentListMap!3184 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930023 () Bool)

(declare-fun res!626425 () Bool)

(assert (=> b!930023 (=> (not res!626425) (not e!522271))))

(assert (=> b!930023 (= res!626425 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27328 _keys!1487))))))

(declare-fun mapNonEmpty!31668 () Bool)

(declare-fun tp!60740 () Bool)

(assert (=> mapNonEmpty!31668 (= mapRes!31668 (and tp!60740 e!522270))))

(declare-fun mapRest!31668 () (Array (_ BitVec 32) ValueCell!9489))

(declare-fun mapKey!31668 () (_ BitVec 32))

(declare-fun mapValue!31668 () ValueCell!9489)

(assert (=> mapNonEmpty!31668 (= (arr!26867 _values!1231) (store mapRest!31668 mapKey!31668 mapValue!31668))))

(declare-fun b!930024 () Bool)

(assert (=> b!930024 (= e!522273 tp_is_empty!19941)))

(declare-fun mapIsEmpty!31668 () Bool)

(assert (=> mapIsEmpty!31668 mapRes!31668))

(declare-fun b!930025 () Bool)

(declare-fun res!626429 () Bool)

(assert (=> b!930025 (=> (not res!626429) (not e!522268))))

(declare-fun v!791 () V!31553)

(declare-fun apply!765 (ListLongMap!11921 (_ BitVec 64)) V!31553)

(assert (=> b!930025 (= res!626429 (= (apply!765 lt!419136 k0!1099) v!791))))

(declare-fun b!930026 () Bool)

(assert (=> b!930026 (= e!522268 (bvsgt #b00000000000000000000000000000000 (size!27328 _keys!1487)))))

(assert (= (and start!79248 res!626424) b!930018))

(assert (= (and b!930018 res!626430) b!930021))

(assert (= (and b!930021 res!626431) b!930017))

(assert (= (and b!930017 res!626427) b!930023))

(assert (= (and b!930023 res!626425) b!930022))

(assert (= (and b!930022 res!626426) b!930025))

(assert (= (and b!930025 res!626429) b!930019))

(assert (= (and b!930019 res!626428) b!930016))

(assert (= (and b!930016 res!626432) b!930026))

(assert (= (and b!930020 condMapEmpty!31668) mapIsEmpty!31668))

(assert (= (and b!930020 (not condMapEmpty!31668)) mapNonEmpty!31668))

(get-info :version)

(assert (= (and mapNonEmpty!31668 ((_ is ValueCellFull!9489) mapValue!31668)) b!930015))

(assert (= (and b!930020 ((_ is ValueCellFull!9489) mapDefault!31668)) b!930024))

(assert (= start!79248 b!930020))

(declare-fun m!864437 () Bool)

(assert (=> b!930017 m!864437))

(declare-fun m!864439 () Bool)

(assert (=> mapNonEmpty!31668 m!864439))

(declare-fun m!864441 () Bool)

(assert (=> start!79248 m!864441))

(declare-fun m!864443 () Bool)

(assert (=> start!79248 m!864443))

(declare-fun m!864445 () Bool)

(assert (=> start!79248 m!864445))

(declare-fun m!864447 () Bool)

(assert (=> b!930021 m!864447))

(declare-fun m!864449 () Bool)

(assert (=> b!930022 m!864449))

(declare-fun m!864451 () Bool)

(assert (=> b!930022 m!864451))

(declare-fun m!864453 () Bool)

(assert (=> b!930025 m!864453))

(declare-fun m!864455 () Bool)

(assert (=> b!930016 m!864455))

(assert (=> b!930016 m!864455))

(declare-fun m!864457 () Bool)

(assert (=> b!930016 m!864457))

(check-sat (not b!930022) (not b!930017) (not start!79248) tp_is_empty!19941 (not b!930016) (not b!930025) b_and!28517 (not b_next!17433) (not mapNonEmpty!31668) (not b!930021))
(check-sat b_and!28517 (not b_next!17433))
