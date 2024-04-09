; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79224 () Bool)

(assert start!79224)

(declare-fun b_free!17409 () Bool)

(declare-fun b_next!17409 () Bool)

(assert (=> start!79224 (= b_free!17409 (not b_next!17409))))

(declare-fun tp!60669 () Bool)

(declare-fun b_and!28493 () Bool)

(assert (=> start!79224 (= tp!60669 b_and!28493)))

(declare-fun b!929614 () Bool)

(declare-fun res!626138 () Bool)

(declare-fun e!522056 () Bool)

(assert (=> b!929614 (=> (not res!626138) (not e!522056))))

(declare-datatypes ((array!55806 0))(
  ( (array!55807 (arr!26844 (Array (_ BitVec 32) (_ BitVec 64))) (size!27304 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55806)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31521 0))(
  ( (V!31522 (val!10009 Int)) )
))
(declare-datatypes ((ValueCell!9477 0))(
  ( (ValueCellFull!9477 (v!12527 V!31521)) (EmptyCell!9477) )
))
(declare-datatypes ((array!55808 0))(
  ( (array!55809 (arr!26845 (Array (_ BitVec 32) ValueCell!9477)) (size!27305 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55808)

(assert (=> b!929614 (= res!626138 (and (= (size!27305 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27304 _keys!1487) (size!27305 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929615 () Bool)

(declare-fun res!626134 () Bool)

(assert (=> b!929615 (=> (not res!626134) (not e!522056))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929615 (= res!626134 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27304 _keys!1487))))))

(declare-fun b!929616 () Bool)

(declare-fun e!522054 () Bool)

(declare-fun tp_is_empty!19917 () Bool)

(assert (=> b!929616 (= e!522054 tp_is_empty!19917)))

(declare-fun b!929617 () Bool)

(declare-fun e!522057 () Bool)

(assert (=> b!929617 (= e!522057 tp_is_empty!19917)))

(declare-fun b!929618 () Bool)

(declare-fun e!522053 () Bool)

(declare-fun mapRes!31632 () Bool)

(assert (=> b!929618 (= e!522053 (and e!522057 mapRes!31632))))

(declare-fun condMapEmpty!31632 () Bool)

(declare-fun mapDefault!31632 () ValueCell!9477)

(assert (=> b!929618 (= condMapEmpty!31632 (= (arr!26845 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9477)) mapDefault!31632)))))

(declare-fun b!929619 () Bool)

(declare-fun e!522055 () Bool)

(assert (=> b!929619 (= e!522055 false)))

(declare-fun lt!419069 () Bool)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!31521)

(declare-fun minValue!1173 () V!31521)

(declare-datatypes ((tuple2!13194 0))(
  ( (tuple2!13195 (_1!6607 (_ BitVec 64)) (_2!6607 V!31521)) )
))
(declare-datatypes ((List!19015 0))(
  ( (Nil!19012) (Cons!19011 (h!20157 tuple2!13194) (t!27080 List!19015)) )
))
(declare-datatypes ((ListLongMap!11905 0))(
  ( (ListLongMap!11906 (toList!5968 List!19015)) )
))
(declare-fun contains!4984 (ListLongMap!11905 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3178 (array!55806 array!55808 (_ BitVec 32) (_ BitVec 32) V!31521 V!31521 (_ BitVec 32) Int) ListLongMap!11905)

(assert (=> b!929619 (= lt!419069 (contains!4984 (getCurrentListMap!3178 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun res!626133 () Bool)

(assert (=> start!79224 (=> (not res!626133) (not e!522056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79224 (= res!626133 (validMask!0 mask!1881))))

(assert (=> start!79224 e!522056))

(assert (=> start!79224 true))

(assert (=> start!79224 tp_is_empty!19917))

(declare-fun array_inv!20886 (array!55808) Bool)

(assert (=> start!79224 (and (array_inv!20886 _values!1231) e!522053)))

(assert (=> start!79224 tp!60669))

(declare-fun array_inv!20887 (array!55806) Bool)

(assert (=> start!79224 (array_inv!20887 _keys!1487)))

(declare-fun b!929620 () Bool)

(declare-fun res!626137 () Bool)

(assert (=> b!929620 (=> (not res!626137) (not e!522056))))

(declare-datatypes ((List!19016 0))(
  ( (Nil!19013) (Cons!19012 (h!20158 (_ BitVec 64)) (t!27081 List!19016)) )
))
(declare-fun arrayNoDuplicates!0 (array!55806 (_ BitVec 32) List!19016) Bool)

(assert (=> b!929620 (= res!626137 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19013))))

(declare-fun mapNonEmpty!31632 () Bool)

(declare-fun tp!60668 () Bool)

(assert (=> mapNonEmpty!31632 (= mapRes!31632 (and tp!60668 e!522054))))

(declare-fun mapKey!31632 () (_ BitVec 32))

(declare-fun mapValue!31632 () ValueCell!9477)

(declare-fun mapRest!31632 () (Array (_ BitVec 32) ValueCell!9477))

(assert (=> mapNonEmpty!31632 (= (arr!26845 _values!1231) (store mapRest!31632 mapKey!31632 mapValue!31632))))

(declare-fun b!929621 () Bool)

(declare-fun res!626132 () Bool)

(assert (=> b!929621 (=> (not res!626132) (not e!522055))))

(assert (=> b!929621 (= res!626132 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!929622 () Bool)

(declare-fun res!626135 () Bool)

(assert (=> b!929622 (=> (not res!626135) (not e!522056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55806 (_ BitVec 32)) Bool)

(assert (=> b!929622 (= res!626135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929623 () Bool)

(declare-fun res!626131 () Bool)

(assert (=> b!929623 (=> (not res!626131) (not e!522055))))

(declare-fun v!791 () V!31521)

(declare-fun lt!419070 () ListLongMap!11905)

(declare-fun apply!759 (ListLongMap!11905 (_ BitVec 64)) V!31521)

(assert (=> b!929623 (= res!626131 (= (apply!759 lt!419070 k0!1099) v!791))))

(declare-fun b!929624 () Bool)

(assert (=> b!929624 (= e!522056 e!522055)))

(declare-fun res!626136 () Bool)

(assert (=> b!929624 (=> (not res!626136) (not e!522055))))

(assert (=> b!929624 (= res!626136 (contains!4984 lt!419070 k0!1099))))

(assert (=> b!929624 (= lt!419070 (getCurrentListMap!3178 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31632 () Bool)

(assert (=> mapIsEmpty!31632 mapRes!31632))

(assert (= (and start!79224 res!626133) b!929614))

(assert (= (and b!929614 res!626138) b!929622))

(assert (= (and b!929622 res!626135) b!929620))

(assert (= (and b!929620 res!626137) b!929615))

(assert (= (and b!929615 res!626134) b!929624))

(assert (= (and b!929624 res!626136) b!929623))

(assert (= (and b!929623 res!626131) b!929621))

(assert (= (and b!929621 res!626132) b!929619))

(assert (= (and b!929618 condMapEmpty!31632) mapIsEmpty!31632))

(assert (= (and b!929618 (not condMapEmpty!31632)) mapNonEmpty!31632))

(get-info :version)

(assert (= (and mapNonEmpty!31632 ((_ is ValueCellFull!9477) mapValue!31632)) b!929616))

(assert (= (and b!929618 ((_ is ValueCellFull!9477) mapDefault!31632)) b!929617))

(assert (= start!79224 b!929618))

(declare-fun m!864173 () Bool)

(assert (=> b!929620 m!864173))

(declare-fun m!864175 () Bool)

(assert (=> b!929619 m!864175))

(assert (=> b!929619 m!864175))

(declare-fun m!864177 () Bool)

(assert (=> b!929619 m!864177))

(declare-fun m!864179 () Bool)

(assert (=> b!929624 m!864179))

(declare-fun m!864181 () Bool)

(assert (=> b!929624 m!864181))

(declare-fun m!864183 () Bool)

(assert (=> b!929623 m!864183))

(declare-fun m!864185 () Bool)

(assert (=> start!79224 m!864185))

(declare-fun m!864187 () Bool)

(assert (=> start!79224 m!864187))

(declare-fun m!864189 () Bool)

(assert (=> start!79224 m!864189))

(declare-fun m!864191 () Bool)

(assert (=> b!929622 m!864191))

(declare-fun m!864193 () Bool)

(assert (=> mapNonEmpty!31632 m!864193))

(check-sat (not b!929622) (not start!79224) b_and!28493 (not b!929623) (not b!929619) (not b!929620) (not b_next!17409) tp_is_empty!19917 (not b!929624) (not mapNonEmpty!31632))
(check-sat b_and!28493 (not b_next!17409))
