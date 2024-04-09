; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79308 () Bool)

(assert start!79308)

(declare-fun b_free!17493 () Bool)

(declare-fun b_next!17493 () Bool)

(assert (=> start!79308 (= b_free!17493 (not b_next!17493))))

(declare-fun tp!60921 () Bool)

(declare-fun b_and!28577 () Bool)

(assert (=> start!79308 (= tp!60921 b_and!28577)))

(declare-fun b!930882 () Bool)

(declare-fun res!627026 () Bool)

(declare-fun e!522813 () Bool)

(assert (=> b!930882 (=> (not res!627026) (not e!522813))))

(declare-datatypes ((array!55970 0))(
  ( (array!55971 (arr!26926 (Array (_ BitVec 32) (_ BitVec 64))) (size!27386 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55970)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55970 (_ BitVec 32)) Bool)

(assert (=> b!930882 (= res!627026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930883 () Bool)

(declare-fun e!522810 () Bool)

(declare-fun tp_is_empty!20001 () Bool)

(assert (=> b!930883 (= e!522810 tp_is_empty!20001)))

(declare-fun b!930884 () Bool)

(declare-fun res!627021 () Bool)

(assert (=> b!930884 (=> (not res!627021) (not e!522813))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31633 0))(
  ( (V!31634 (val!10051 Int)) )
))
(declare-datatypes ((ValueCell!9519 0))(
  ( (ValueCellFull!9519 (v!12569 V!31633)) (EmptyCell!9519) )
))
(declare-datatypes ((array!55972 0))(
  ( (array!55973 (arr!26927 (Array (_ BitVec 32) ValueCell!9519)) (size!27387 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55972)

(assert (=> b!930884 (= res!627021 (and (= (size!27387 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27386 _keys!1487) (size!27387 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31758 () Bool)

(declare-fun mapRes!31758 () Bool)

(declare-fun tp!60920 () Bool)

(declare-fun e!522809 () Bool)

(assert (=> mapNonEmpty!31758 (= mapRes!31758 (and tp!60920 e!522809))))

(declare-fun mapKey!31758 () (_ BitVec 32))

(declare-fun mapRest!31758 () (Array (_ BitVec 32) ValueCell!9519))

(declare-fun mapValue!31758 () ValueCell!9519)

(assert (=> mapNonEmpty!31758 (= (arr!26927 _values!1231) (store mapRest!31758 mapKey!31758 mapValue!31758))))

(declare-fun res!627025 () Bool)

(assert (=> start!79308 (=> (not res!627025) (not e!522813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79308 (= res!627025 (validMask!0 mask!1881))))

(assert (=> start!79308 e!522813))

(assert (=> start!79308 true))

(declare-fun e!522812 () Bool)

(declare-fun array_inv!20934 (array!55972) Bool)

(assert (=> start!79308 (and (array_inv!20934 _values!1231) e!522812)))

(assert (=> start!79308 tp!60921))

(declare-fun array_inv!20935 (array!55970) Bool)

(assert (=> start!79308 (array_inv!20935 _keys!1487)))

(assert (=> start!79308 tp_is_empty!20001))

(declare-fun b!930885 () Bool)

(declare-fun e!522811 () Bool)

(assert (=> b!930885 (= e!522811 false)))

(declare-fun lt!419303 () V!31633)

(declare-datatypes ((tuple2!13266 0))(
  ( (tuple2!13267 (_1!6643 (_ BitVec 64)) (_2!6643 V!31633)) )
))
(declare-datatypes ((List!19080 0))(
  ( (Nil!19077) (Cons!19076 (h!20222 tuple2!13266) (t!27145 List!19080)) )
))
(declare-datatypes ((ListLongMap!11977 0))(
  ( (ListLongMap!11978 (toList!6004 List!19080)) )
))
(declare-fun lt!419304 () ListLongMap!11977)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!790 (ListLongMap!11977 (_ BitVec 64)) V!31633)

(assert (=> b!930885 (= lt!419303 (apply!790 lt!419304 k0!1099))))

(declare-fun b!930886 () Bool)

(declare-fun res!627023 () Bool)

(assert (=> b!930886 (=> (not res!627023) (not e!522813))))

(declare-datatypes ((List!19081 0))(
  ( (Nil!19078) (Cons!19077 (h!20223 (_ BitVec 64)) (t!27146 List!19081)) )
))
(declare-fun arrayNoDuplicates!0 (array!55970 (_ BitVec 32) List!19081) Bool)

(assert (=> b!930886 (= res!627023 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19078))))

(declare-fun mapIsEmpty!31758 () Bool)

(assert (=> mapIsEmpty!31758 mapRes!31758))

(declare-fun b!930887 () Bool)

(assert (=> b!930887 (= e!522809 tp_is_empty!20001)))

(declare-fun b!930888 () Bool)

(assert (=> b!930888 (= e!522813 e!522811)))

(declare-fun res!627022 () Bool)

(assert (=> b!930888 (=> (not res!627022) (not e!522811))))

(declare-fun contains!5008 (ListLongMap!11977 (_ BitVec 64)) Bool)

(assert (=> b!930888 (= res!627022 (contains!5008 lt!419304 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31633)

(declare-fun minValue!1173 () V!31633)

(declare-fun getCurrentListMap!3202 (array!55970 array!55972 (_ BitVec 32) (_ BitVec 32) V!31633 V!31633 (_ BitVec 32) Int) ListLongMap!11977)

(assert (=> b!930888 (= lt!419304 (getCurrentListMap!3202 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930889 () Bool)

(assert (=> b!930889 (= e!522812 (and e!522810 mapRes!31758))))

(declare-fun condMapEmpty!31758 () Bool)

(declare-fun mapDefault!31758 () ValueCell!9519)

(assert (=> b!930889 (= condMapEmpty!31758 (= (arr!26927 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9519)) mapDefault!31758)))))

(declare-fun b!930890 () Bool)

(declare-fun res!627024 () Bool)

(assert (=> b!930890 (=> (not res!627024) (not e!522813))))

(assert (=> b!930890 (= res!627024 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27386 _keys!1487))))))

(assert (= (and start!79308 res!627025) b!930884))

(assert (= (and b!930884 res!627021) b!930882))

(assert (= (and b!930882 res!627026) b!930886))

(assert (= (and b!930886 res!627023) b!930890))

(assert (= (and b!930890 res!627024) b!930888))

(assert (= (and b!930888 res!627022) b!930885))

(assert (= (and b!930889 condMapEmpty!31758) mapIsEmpty!31758))

(assert (= (and b!930889 (not condMapEmpty!31758)) mapNonEmpty!31758))

(get-info :version)

(assert (= (and mapNonEmpty!31758 ((_ is ValueCellFull!9519) mapValue!31758)) b!930887))

(assert (= (and b!930889 ((_ is ValueCellFull!9519) mapDefault!31758)) b!930883))

(assert (= start!79308 b!930889))

(declare-fun m!865003 () Bool)

(assert (=> start!79308 m!865003))

(declare-fun m!865005 () Bool)

(assert (=> start!79308 m!865005))

(declare-fun m!865007 () Bool)

(assert (=> start!79308 m!865007))

(declare-fun m!865009 () Bool)

(assert (=> b!930888 m!865009))

(declare-fun m!865011 () Bool)

(assert (=> b!930888 m!865011))

(declare-fun m!865013 () Bool)

(assert (=> b!930882 m!865013))

(declare-fun m!865015 () Bool)

(assert (=> mapNonEmpty!31758 m!865015))

(declare-fun m!865017 () Bool)

(assert (=> b!930886 m!865017))

(declare-fun m!865019 () Bool)

(assert (=> b!930885 m!865019))

(check-sat tp_is_empty!20001 b_and!28577 (not b!930885) (not mapNonEmpty!31758) (not b!930882) (not b!930888) (not start!79308) (not b!930886) (not b_next!17493))
(check-sat b_and!28577 (not b_next!17493))
