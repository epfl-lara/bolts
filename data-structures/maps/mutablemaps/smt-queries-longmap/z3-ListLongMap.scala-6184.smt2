; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79242 () Bool)

(assert start!79242)

(declare-fun b_free!17427 () Bool)

(declare-fun b_next!17427 () Bool)

(assert (=> start!79242 (= b_free!17427 (not b_next!17427))))

(declare-fun tp!60723 () Bool)

(declare-fun b_and!28511 () Bool)

(assert (=> start!79242 (= tp!60723 b_and!28511)))

(declare-fun b!929911 () Bool)

(declare-fun e!522219 () Bool)

(declare-fun e!522214 () Bool)

(assert (=> b!929911 (= e!522219 e!522214)))

(declare-fun res!626352 () Bool)

(assert (=> b!929911 (=> (not res!626352) (not e!522214))))

(declare-datatypes ((V!31545 0))(
  ( (V!31546 (val!10018 Int)) )
))
(declare-datatypes ((tuple2!13206 0))(
  ( (tuple2!13207 (_1!6613 (_ BitVec 64)) (_2!6613 V!31545)) )
))
(declare-datatypes ((List!19028 0))(
  ( (Nil!19025) (Cons!19024 (h!20170 tuple2!13206) (t!27093 List!19028)) )
))
(declare-datatypes ((ListLongMap!11917 0))(
  ( (ListLongMap!11918 (toList!5974 List!19028)) )
))
(declare-fun lt!419123 () ListLongMap!11917)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4988 (ListLongMap!11917 (_ BitVec 64)) Bool)

(assert (=> b!929911 (= res!626352 (contains!4988 lt!419123 k0!1099))))

(declare-datatypes ((array!55840 0))(
  ( (array!55841 (arr!26861 (Array (_ BitVec 32) (_ BitVec 64))) (size!27321 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55840)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9486 0))(
  ( (ValueCellFull!9486 (v!12536 V!31545)) (EmptyCell!9486) )
))
(declare-datatypes ((array!55842 0))(
  ( (array!55843 (arr!26862 (Array (_ BitVec 32) ValueCell!9486)) (size!27322 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55842)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31545)

(declare-fun minValue!1173 () V!31545)

(declare-fun getCurrentListMap!3182 (array!55840 array!55842 (_ BitVec 32) (_ BitVec 32) V!31545 V!31545 (_ BitVec 32) Int) ListLongMap!11917)

(assert (=> b!929911 (= lt!419123 (getCurrentListMap!3182 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!929912 () Bool)

(declare-fun res!626347 () Bool)

(assert (=> b!929912 (=> (not res!626347) (not e!522219))))

(assert (=> b!929912 (= res!626347 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27321 _keys!1487))))))

(declare-fun b!929913 () Bool)

(declare-fun res!626348 () Bool)

(assert (=> b!929913 (=> (not res!626348) (not e!522219))))

(assert (=> b!929913 (= res!626348 (and (= (size!27322 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27321 _keys!1487) (size!27322 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929914 () Bool)

(assert (=> b!929914 (= e!522214 false)))

(declare-fun lt!419124 () Bool)

(assert (=> b!929914 (= lt!419124 (contains!4988 (getCurrentListMap!3182 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun b!929915 () Bool)

(declare-fun res!626353 () Bool)

(assert (=> b!929915 (=> (not res!626353) (not e!522219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55840 (_ BitVec 32)) Bool)

(assert (=> b!929915 (= res!626353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929916 () Bool)

(declare-fun e!522218 () Bool)

(declare-fun tp_is_empty!19935 () Bool)

(assert (=> b!929916 (= e!522218 tp_is_empty!19935)))

(declare-fun b!929918 () Bool)

(declare-fun res!626349 () Bool)

(assert (=> b!929918 (=> (not res!626349) (not e!522214))))

(assert (=> b!929918 (= res!626349 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!929919 () Bool)

(declare-fun e!522215 () Bool)

(assert (=> b!929919 (= e!522215 tp_is_empty!19935)))

(declare-fun mapIsEmpty!31659 () Bool)

(declare-fun mapRes!31659 () Bool)

(assert (=> mapIsEmpty!31659 mapRes!31659))

(declare-fun mapNonEmpty!31659 () Bool)

(declare-fun tp!60722 () Bool)

(assert (=> mapNonEmpty!31659 (= mapRes!31659 (and tp!60722 e!522218))))

(declare-fun mapValue!31659 () ValueCell!9486)

(declare-fun mapKey!31659 () (_ BitVec 32))

(declare-fun mapRest!31659 () (Array (_ BitVec 32) ValueCell!9486))

(assert (=> mapNonEmpty!31659 (= (arr!26862 _values!1231) (store mapRest!31659 mapKey!31659 mapValue!31659))))

(declare-fun res!626351 () Bool)

(assert (=> start!79242 (=> (not res!626351) (not e!522219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79242 (= res!626351 (validMask!0 mask!1881))))

(assert (=> start!79242 e!522219))

(assert (=> start!79242 true))

(assert (=> start!79242 tp_is_empty!19935))

(declare-fun e!522216 () Bool)

(declare-fun array_inv!20892 (array!55842) Bool)

(assert (=> start!79242 (and (array_inv!20892 _values!1231) e!522216)))

(assert (=> start!79242 tp!60723))

(declare-fun array_inv!20893 (array!55840) Bool)

(assert (=> start!79242 (array_inv!20893 _keys!1487)))

(declare-fun b!929917 () Bool)

(declare-fun res!626350 () Bool)

(assert (=> b!929917 (=> (not res!626350) (not e!522214))))

(declare-fun v!791 () V!31545)

(declare-fun apply!764 (ListLongMap!11917 (_ BitVec 64)) V!31545)

(assert (=> b!929917 (= res!626350 (= (apply!764 lt!419123 k0!1099) v!791))))

(declare-fun b!929920 () Bool)

(declare-fun res!626354 () Bool)

(assert (=> b!929920 (=> (not res!626354) (not e!522219))))

(declare-datatypes ((List!19029 0))(
  ( (Nil!19026) (Cons!19025 (h!20171 (_ BitVec 64)) (t!27094 List!19029)) )
))
(declare-fun arrayNoDuplicates!0 (array!55840 (_ BitVec 32) List!19029) Bool)

(assert (=> b!929920 (= res!626354 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19026))))

(declare-fun b!929921 () Bool)

(assert (=> b!929921 (= e!522216 (and e!522215 mapRes!31659))))

(declare-fun condMapEmpty!31659 () Bool)

(declare-fun mapDefault!31659 () ValueCell!9486)

(assert (=> b!929921 (= condMapEmpty!31659 (= (arr!26862 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9486)) mapDefault!31659)))))

(assert (= (and start!79242 res!626351) b!929913))

(assert (= (and b!929913 res!626348) b!929915))

(assert (= (and b!929915 res!626353) b!929920))

(assert (= (and b!929920 res!626354) b!929912))

(assert (= (and b!929912 res!626347) b!929911))

(assert (= (and b!929911 res!626352) b!929917))

(assert (= (and b!929917 res!626350) b!929918))

(assert (= (and b!929918 res!626349) b!929914))

(assert (= (and b!929921 condMapEmpty!31659) mapIsEmpty!31659))

(assert (= (and b!929921 (not condMapEmpty!31659)) mapNonEmpty!31659))

(get-info :version)

(assert (= (and mapNonEmpty!31659 ((_ is ValueCellFull!9486) mapValue!31659)) b!929916))

(assert (= (and b!929921 ((_ is ValueCellFull!9486) mapDefault!31659)) b!929919))

(assert (= start!79242 b!929921))

(declare-fun m!864371 () Bool)

(assert (=> b!929920 m!864371))

(declare-fun m!864373 () Bool)

(assert (=> b!929915 m!864373))

(declare-fun m!864375 () Bool)

(assert (=> b!929914 m!864375))

(assert (=> b!929914 m!864375))

(declare-fun m!864377 () Bool)

(assert (=> b!929914 m!864377))

(declare-fun m!864379 () Bool)

(assert (=> b!929917 m!864379))

(declare-fun m!864381 () Bool)

(assert (=> start!79242 m!864381))

(declare-fun m!864383 () Bool)

(assert (=> start!79242 m!864383))

(declare-fun m!864385 () Bool)

(assert (=> start!79242 m!864385))

(declare-fun m!864387 () Bool)

(assert (=> mapNonEmpty!31659 m!864387))

(declare-fun m!864389 () Bool)

(assert (=> b!929911 m!864389))

(declare-fun m!864391 () Bool)

(assert (=> b!929911 m!864391))

(check-sat (not b!929920) (not b!929915) (not mapNonEmpty!31659) (not b!929917) (not b_next!17427) (not start!79242) (not b!929911) (not b!929914) tp_is_empty!19935 b_and!28511)
(check-sat b_and!28511 (not b_next!17427))
