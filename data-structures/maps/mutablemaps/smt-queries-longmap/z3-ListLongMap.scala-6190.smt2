; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79278 () Bool)

(assert start!79278)

(declare-fun b_free!17463 () Bool)

(declare-fun b_next!17463 () Bool)

(assert (=> start!79278 (= b_free!17463 (not b_next!17463))))

(declare-fun tp!60830 () Bool)

(declare-fun b_and!28547 () Bool)

(assert (=> start!79278 (= tp!60830 b_and!28547)))

(declare-fun b!930477 () Bool)

(declare-fun e!522543 () Bool)

(assert (=> b!930477 (= e!522543 false)))

(declare-datatypes ((V!31593 0))(
  ( (V!31594 (val!10036 Int)) )
))
(declare-fun lt!419213 () V!31593)

(declare-datatypes ((tuple2!13236 0))(
  ( (tuple2!13237 (_1!6628 (_ BitVec 64)) (_2!6628 V!31593)) )
))
(declare-datatypes ((List!19056 0))(
  ( (Nil!19053) (Cons!19052 (h!20198 tuple2!13236) (t!27121 List!19056)) )
))
(declare-datatypes ((ListLongMap!11947 0))(
  ( (ListLongMap!11948 (toList!5989 List!19056)) )
))
(declare-fun lt!419214 () ListLongMap!11947)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!777 (ListLongMap!11947 (_ BitVec 64)) V!31593)

(assert (=> b!930477 (= lt!419213 (apply!777 lt!419214 k0!1099))))

(declare-fun b!930478 () Bool)

(declare-fun e!522542 () Bool)

(declare-fun tp_is_empty!19971 () Bool)

(assert (=> b!930478 (= e!522542 tp_is_empty!19971)))

(declare-fun mapNonEmpty!31713 () Bool)

(declare-fun mapRes!31713 () Bool)

(declare-fun tp!60831 () Bool)

(assert (=> mapNonEmpty!31713 (= mapRes!31713 (and tp!60831 e!522542))))

(declare-datatypes ((ValueCell!9504 0))(
  ( (ValueCellFull!9504 (v!12554 V!31593)) (EmptyCell!9504) )
))
(declare-fun mapRest!31713 () (Array (_ BitVec 32) ValueCell!9504))

(declare-fun mapKey!31713 () (_ BitVec 32))

(declare-datatypes ((array!55912 0))(
  ( (array!55913 (arr!26897 (Array (_ BitVec 32) ValueCell!9504)) (size!27357 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55912)

(declare-fun mapValue!31713 () ValueCell!9504)

(assert (=> mapNonEmpty!31713 (= (arr!26897 _values!1231) (store mapRest!31713 mapKey!31713 mapValue!31713))))

(declare-fun b!930479 () Bool)

(declare-fun e!522539 () Bool)

(declare-fun e!522540 () Bool)

(assert (=> b!930479 (= e!522539 (and e!522540 mapRes!31713))))

(declare-fun condMapEmpty!31713 () Bool)

(declare-fun mapDefault!31713 () ValueCell!9504)

(assert (=> b!930479 (= condMapEmpty!31713 (= (arr!26897 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9504)) mapDefault!31713)))))

(declare-fun b!930480 () Bool)

(declare-fun res!626752 () Bool)

(declare-fun e!522541 () Bool)

(assert (=> b!930480 (=> (not res!626752) (not e!522541))))

(declare-datatypes ((array!55914 0))(
  ( (array!55915 (arr!26898 (Array (_ BitVec 32) (_ BitVec 64))) (size!27358 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55914)

(declare-datatypes ((List!19057 0))(
  ( (Nil!19054) (Cons!19053 (h!20199 (_ BitVec 64)) (t!27122 List!19057)) )
))
(declare-fun arrayNoDuplicates!0 (array!55914 (_ BitVec 32) List!19057) Bool)

(assert (=> b!930480 (= res!626752 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19054))))

(declare-fun res!626751 () Bool)

(assert (=> start!79278 (=> (not res!626751) (not e!522541))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79278 (= res!626751 (validMask!0 mask!1881))))

(assert (=> start!79278 e!522541))

(assert (=> start!79278 true))

(declare-fun array_inv!20914 (array!55912) Bool)

(assert (=> start!79278 (and (array_inv!20914 _values!1231) e!522539)))

(assert (=> start!79278 tp!60830))

(declare-fun array_inv!20915 (array!55914) Bool)

(assert (=> start!79278 (array_inv!20915 _keys!1487)))

(assert (=> start!79278 tp_is_empty!19971))

(declare-fun b!930481 () Bool)

(assert (=> b!930481 (= e!522540 tp_is_empty!19971)))

(declare-fun mapIsEmpty!31713 () Bool)

(assert (=> mapIsEmpty!31713 mapRes!31713))

(declare-fun b!930482 () Bool)

(declare-fun res!626756 () Bool)

(assert (=> b!930482 (=> (not res!626756) (not e!522541))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930482 (= res!626756 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27358 _keys!1487))))))

(declare-fun b!930483 () Bool)

(declare-fun res!626753 () Bool)

(assert (=> b!930483 (=> (not res!626753) (not e!522541))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!930483 (= res!626753 (and (= (size!27357 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27358 _keys!1487) (size!27357 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930484 () Bool)

(assert (=> b!930484 (= e!522541 e!522543)))

(declare-fun res!626754 () Bool)

(assert (=> b!930484 (=> (not res!626754) (not e!522543))))

(declare-fun contains!4999 (ListLongMap!11947 (_ BitVec 64)) Bool)

(assert (=> b!930484 (= res!626754 (contains!4999 lt!419214 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31593)

(declare-fun minValue!1173 () V!31593)

(declare-fun getCurrentListMap!3193 (array!55914 array!55912 (_ BitVec 32) (_ BitVec 32) V!31593 V!31593 (_ BitVec 32) Int) ListLongMap!11947)

(assert (=> b!930484 (= lt!419214 (getCurrentListMap!3193 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930485 () Bool)

(declare-fun res!626755 () Bool)

(assert (=> b!930485 (=> (not res!626755) (not e!522541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55914 (_ BitVec 32)) Bool)

(assert (=> b!930485 (= res!626755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!79278 res!626751) b!930483))

(assert (= (and b!930483 res!626753) b!930485))

(assert (= (and b!930485 res!626755) b!930480))

(assert (= (and b!930480 res!626752) b!930482))

(assert (= (and b!930482 res!626756) b!930484))

(assert (= (and b!930484 res!626754) b!930477))

(assert (= (and b!930479 condMapEmpty!31713) mapIsEmpty!31713))

(assert (= (and b!930479 (not condMapEmpty!31713)) mapNonEmpty!31713))

(get-info :version)

(assert (= (and mapNonEmpty!31713 ((_ is ValueCellFull!9504) mapValue!31713)) b!930478))

(assert (= (and b!930479 ((_ is ValueCellFull!9504) mapDefault!31713)) b!930481))

(assert (= start!79278 b!930479))

(declare-fun m!864733 () Bool)

(assert (=> start!79278 m!864733))

(declare-fun m!864735 () Bool)

(assert (=> start!79278 m!864735))

(declare-fun m!864737 () Bool)

(assert (=> start!79278 m!864737))

(declare-fun m!864739 () Bool)

(assert (=> mapNonEmpty!31713 m!864739))

(declare-fun m!864741 () Bool)

(assert (=> b!930477 m!864741))

(declare-fun m!864743 () Bool)

(assert (=> b!930485 m!864743))

(declare-fun m!864745 () Bool)

(assert (=> b!930480 m!864745))

(declare-fun m!864747 () Bool)

(assert (=> b!930484 m!864747))

(declare-fun m!864749 () Bool)

(assert (=> b!930484 m!864749))

(check-sat (not mapNonEmpty!31713) b_and!28547 (not start!79278) (not b!930485) tp_is_empty!19971 (not b!930484) (not b!930477) (not b_next!17463) (not b!930480))
(check-sat b_and!28547 (not b_next!17463))
