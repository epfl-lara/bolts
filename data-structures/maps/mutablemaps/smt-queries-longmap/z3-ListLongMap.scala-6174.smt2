; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79182 () Bool)

(assert start!79182)

(declare-fun b_free!17367 () Bool)

(declare-fun b_next!17367 () Bool)

(assert (=> start!79182 (= b_free!17367 (not b_next!17367))))

(declare-fun tp!60542 () Bool)

(declare-fun b_and!28451 () Bool)

(assert (=> start!79182 (= tp!60542 b_and!28451)))

(declare-fun b!928956 () Bool)

(declare-fun res!625662 () Bool)

(declare-fun e!521677 () Bool)

(assert (=> b!928956 (=> (not res!625662) (not e!521677))))

(declare-datatypes ((array!55724 0))(
  ( (array!55725 (arr!26803 (Array (_ BitVec 32) (_ BitVec 64))) (size!27263 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55724)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31465 0))(
  ( (V!31466 (val!9988 Int)) )
))
(declare-datatypes ((ValueCell!9456 0))(
  ( (ValueCellFull!9456 (v!12506 V!31465)) (EmptyCell!9456) )
))
(declare-datatypes ((array!55726 0))(
  ( (array!55727 (arr!26804 (Array (_ BitVec 32) ValueCell!9456)) (size!27264 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55726)

(assert (=> b!928956 (= res!625662 (and (= (size!27264 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27263 _keys!1487) (size!27264 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928957 () Bool)

(declare-fun res!625664 () Bool)

(assert (=> b!928957 (=> (not res!625664) (not e!521677))))

(declare-datatypes ((List!18985 0))(
  ( (Nil!18982) (Cons!18981 (h!20127 (_ BitVec 64)) (t!27050 List!18985)) )
))
(declare-fun arrayNoDuplicates!0 (array!55724 (_ BitVec 32) List!18985) Bool)

(assert (=> b!928957 (= res!625664 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18982))))

(declare-fun mapIsEmpty!31569 () Bool)

(declare-fun mapRes!31569 () Bool)

(assert (=> mapIsEmpty!31569 mapRes!31569))

(declare-fun res!625665 () Bool)

(assert (=> start!79182 (=> (not res!625665) (not e!521677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79182 (= res!625665 (validMask!0 mask!1881))))

(assert (=> start!79182 e!521677))

(assert (=> start!79182 true))

(declare-fun e!521679 () Bool)

(declare-fun array_inv!20858 (array!55726) Bool)

(assert (=> start!79182 (and (array_inv!20858 _values!1231) e!521679)))

(assert (=> start!79182 tp!60542))

(declare-fun array_inv!20859 (array!55724) Bool)

(assert (=> start!79182 (array_inv!20859 _keys!1487)))

(declare-fun tp_is_empty!19875 () Bool)

(assert (=> start!79182 tp_is_empty!19875))

(declare-fun b!928958 () Bool)

(declare-fun res!625663 () Bool)

(assert (=> b!928958 (=> (not res!625663) (not e!521677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55724 (_ BitVec 32)) Bool)

(assert (=> b!928958 (= res!625663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928959 () Bool)

(declare-fun res!625667 () Bool)

(assert (=> b!928959 (=> (not res!625667) (not e!521677))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928959 (= res!625667 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27263 _keys!1487))))))

(declare-fun mapNonEmpty!31569 () Bool)

(declare-fun tp!60543 () Bool)

(declare-fun e!521676 () Bool)

(assert (=> mapNonEmpty!31569 (= mapRes!31569 (and tp!60543 e!521676))))

(declare-fun mapRest!31569 () (Array (_ BitVec 32) ValueCell!9456))

(declare-fun mapValue!31569 () ValueCell!9456)

(declare-fun mapKey!31569 () (_ BitVec 32))

(assert (=> mapNonEmpty!31569 (= (arr!26804 _values!1231) (store mapRest!31569 mapKey!31569 mapValue!31569))))

(declare-fun b!928960 () Bool)

(declare-fun e!521675 () Bool)

(assert (=> b!928960 (= e!521679 (and e!521675 mapRes!31569))))

(declare-fun condMapEmpty!31569 () Bool)

(declare-fun mapDefault!31569 () ValueCell!9456)

(assert (=> b!928960 (= condMapEmpty!31569 (= (arr!26804 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9456)) mapDefault!31569)))))

(declare-fun b!928961 () Bool)

(assert (=> b!928961 (= e!521676 tp_is_empty!19875)))

(declare-fun b!928962 () Bool)

(declare-fun e!521678 () Bool)

(assert (=> b!928962 (= e!521677 e!521678)))

(declare-fun res!625666 () Bool)

(assert (=> b!928962 (=> (not res!625666) (not e!521678))))

(declare-datatypes ((tuple2!13162 0))(
  ( (tuple2!13163 (_1!6591 (_ BitVec 64)) (_2!6591 V!31465)) )
))
(declare-datatypes ((List!18986 0))(
  ( (Nil!18983) (Cons!18982 (h!20128 tuple2!13162) (t!27051 List!18986)) )
))
(declare-datatypes ((ListLongMap!11873 0))(
  ( (ListLongMap!11874 (toList!5952 List!18986)) )
))
(declare-fun lt!418952 () ListLongMap!11873)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4968 (ListLongMap!11873 (_ BitVec 64)) Bool)

(assert (=> b!928962 (= res!625666 (contains!4968 lt!418952 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31465)

(declare-fun minValue!1173 () V!31465)

(declare-fun getCurrentListMap!3162 (array!55724 array!55726 (_ BitVec 32) (_ BitVec 32) V!31465 V!31465 (_ BitVec 32) Int) ListLongMap!11873)

(assert (=> b!928962 (= lt!418952 (getCurrentListMap!3162 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928963 () Bool)

(assert (=> b!928963 (= e!521675 tp_is_empty!19875)))

(declare-fun b!928964 () Bool)

(assert (=> b!928964 (= e!521678 false)))

(declare-fun lt!418953 () V!31465)

(declare-fun apply!747 (ListLongMap!11873 (_ BitVec 64)) V!31465)

(assert (=> b!928964 (= lt!418953 (apply!747 lt!418952 k0!1099))))

(assert (= (and start!79182 res!625665) b!928956))

(assert (= (and b!928956 res!625662) b!928958))

(assert (= (and b!928958 res!625663) b!928957))

(assert (= (and b!928957 res!625664) b!928959))

(assert (= (and b!928959 res!625667) b!928962))

(assert (= (and b!928962 res!625666) b!928964))

(assert (= (and b!928960 condMapEmpty!31569) mapIsEmpty!31569))

(assert (= (and b!928960 (not condMapEmpty!31569)) mapNonEmpty!31569))

(get-info :version)

(assert (= (and mapNonEmpty!31569 ((_ is ValueCellFull!9456) mapValue!31569)) b!928961))

(assert (= (and b!928960 ((_ is ValueCellFull!9456) mapDefault!31569)) b!928963))

(assert (= start!79182 b!928960))

(declare-fun m!863743 () Bool)

(assert (=> start!79182 m!863743))

(declare-fun m!863745 () Bool)

(assert (=> start!79182 m!863745))

(declare-fun m!863747 () Bool)

(assert (=> start!79182 m!863747))

(declare-fun m!863749 () Bool)

(assert (=> b!928964 m!863749))

(declare-fun m!863751 () Bool)

(assert (=> b!928962 m!863751))

(declare-fun m!863753 () Bool)

(assert (=> b!928962 m!863753))

(declare-fun m!863755 () Bool)

(assert (=> b!928957 m!863755))

(declare-fun m!863757 () Bool)

(assert (=> b!928958 m!863757))

(declare-fun m!863759 () Bool)

(assert (=> mapNonEmpty!31569 m!863759))

(check-sat (not b_next!17367) (not mapNonEmpty!31569) (not b!928964) tp_is_empty!19875 (not b!928958) (not start!79182) (not b!928957) (not b!928962) b_and!28451)
(check-sat b_and!28451 (not b_next!17367))
