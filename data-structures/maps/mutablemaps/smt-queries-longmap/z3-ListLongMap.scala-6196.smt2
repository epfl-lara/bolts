; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79314 () Bool)

(assert start!79314)

(declare-fun b_free!17499 () Bool)

(declare-fun b_next!17499 () Bool)

(assert (=> start!79314 (= b_free!17499 (not b_next!17499))))

(declare-fun tp!60938 () Bool)

(declare-fun b_and!28583 () Bool)

(assert (=> start!79314 (= tp!60938 b_and!28583)))

(declare-fun b!930963 () Bool)

(declare-fun e!522867 () Bool)

(declare-fun e!522865 () Bool)

(assert (=> b!930963 (= e!522867 e!522865)))

(declare-fun res!627078 () Bool)

(assert (=> b!930963 (=> (not res!627078) (not e!522865))))

(declare-datatypes ((V!31641 0))(
  ( (V!31642 (val!10054 Int)) )
))
(declare-datatypes ((tuple2!13270 0))(
  ( (tuple2!13271 (_1!6645 (_ BitVec 64)) (_2!6645 V!31641)) )
))
(declare-datatypes ((List!19085 0))(
  ( (Nil!19082) (Cons!19081 (h!20227 tuple2!13270) (t!27150 List!19085)) )
))
(declare-datatypes ((ListLongMap!11981 0))(
  ( (ListLongMap!11982 (toList!6006 List!19085)) )
))
(declare-fun lt!419322 () ListLongMap!11981)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5010 (ListLongMap!11981 (_ BitVec 64)) Bool)

(assert (=> b!930963 (= res!627078 (contains!5010 lt!419322 k0!1099))))

(declare-datatypes ((array!55982 0))(
  ( (array!55983 (arr!26932 (Array (_ BitVec 32) (_ BitVec 64))) (size!27392 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55982)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9522 0))(
  ( (ValueCellFull!9522 (v!12572 V!31641)) (EmptyCell!9522) )
))
(declare-datatypes ((array!55984 0))(
  ( (array!55985 (arr!26933 (Array (_ BitVec 32) ValueCell!9522)) (size!27393 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55984)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31641)

(declare-fun minValue!1173 () V!31641)

(declare-fun getCurrentListMap!3204 (array!55982 array!55984 (_ BitVec 32) (_ BitVec 32) V!31641 V!31641 (_ BitVec 32) Int) ListLongMap!11981)

(assert (=> b!930963 (= lt!419322 (getCurrentListMap!3204 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930964 () Bool)

(assert (=> b!930964 (= e!522865 false)))

(declare-fun lt!419321 () V!31641)

(declare-fun apply!792 (ListLongMap!11981 (_ BitVec 64)) V!31641)

(assert (=> b!930964 (= lt!419321 (apply!792 lt!419322 k0!1099))))

(declare-fun b!930965 () Bool)

(declare-fun res!627077 () Bool)

(assert (=> b!930965 (=> (not res!627077) (not e!522867))))

(declare-datatypes ((List!19086 0))(
  ( (Nil!19083) (Cons!19082 (h!20228 (_ BitVec 64)) (t!27151 List!19086)) )
))
(declare-fun arrayNoDuplicates!0 (array!55982 (_ BitVec 32) List!19086) Bool)

(assert (=> b!930965 (= res!627077 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19083))))

(declare-fun b!930966 () Bool)

(declare-fun res!627079 () Bool)

(assert (=> b!930966 (=> (not res!627079) (not e!522867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55982 (_ BitVec 32)) Bool)

(assert (=> b!930966 (= res!627079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31767 () Bool)

(declare-fun mapRes!31767 () Bool)

(assert (=> mapIsEmpty!31767 mapRes!31767))

(declare-fun b!930968 () Bool)

(declare-fun e!522864 () Bool)

(declare-fun tp_is_empty!20007 () Bool)

(assert (=> b!930968 (= e!522864 tp_is_empty!20007)))

(declare-fun b!930969 () Bool)

(declare-fun res!627075 () Bool)

(assert (=> b!930969 (=> (not res!627075) (not e!522867))))

(assert (=> b!930969 (= res!627075 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27392 _keys!1487))))))

(declare-fun b!930970 () Bool)

(declare-fun res!627080 () Bool)

(assert (=> b!930970 (=> (not res!627080) (not e!522867))))

(assert (=> b!930970 (= res!627080 (and (= (size!27393 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27392 _keys!1487) (size!27393 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930971 () Bool)

(declare-fun e!522866 () Bool)

(declare-fun e!522862 () Bool)

(assert (=> b!930971 (= e!522866 (and e!522862 mapRes!31767))))

(declare-fun condMapEmpty!31767 () Bool)

(declare-fun mapDefault!31767 () ValueCell!9522)

(assert (=> b!930971 (= condMapEmpty!31767 (= (arr!26933 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9522)) mapDefault!31767)))))

(declare-fun mapNonEmpty!31767 () Bool)

(declare-fun tp!60939 () Bool)

(assert (=> mapNonEmpty!31767 (= mapRes!31767 (and tp!60939 e!522864))))

(declare-fun mapKey!31767 () (_ BitVec 32))

(declare-fun mapValue!31767 () ValueCell!9522)

(declare-fun mapRest!31767 () (Array (_ BitVec 32) ValueCell!9522))

(assert (=> mapNonEmpty!31767 (= (arr!26933 _values!1231) (store mapRest!31767 mapKey!31767 mapValue!31767))))

(declare-fun b!930967 () Bool)

(assert (=> b!930967 (= e!522862 tp_is_empty!20007)))

(declare-fun res!627076 () Bool)

(assert (=> start!79314 (=> (not res!627076) (not e!522867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79314 (= res!627076 (validMask!0 mask!1881))))

(assert (=> start!79314 e!522867))

(assert (=> start!79314 true))

(declare-fun array_inv!20938 (array!55984) Bool)

(assert (=> start!79314 (and (array_inv!20938 _values!1231) e!522866)))

(assert (=> start!79314 tp!60938))

(declare-fun array_inv!20939 (array!55982) Bool)

(assert (=> start!79314 (array_inv!20939 _keys!1487)))

(assert (=> start!79314 tp_is_empty!20007))

(assert (= (and start!79314 res!627076) b!930970))

(assert (= (and b!930970 res!627080) b!930966))

(assert (= (and b!930966 res!627079) b!930965))

(assert (= (and b!930965 res!627077) b!930969))

(assert (= (and b!930969 res!627075) b!930963))

(assert (= (and b!930963 res!627078) b!930964))

(assert (= (and b!930971 condMapEmpty!31767) mapIsEmpty!31767))

(assert (= (and b!930971 (not condMapEmpty!31767)) mapNonEmpty!31767))

(get-info :version)

(assert (= (and mapNonEmpty!31767 ((_ is ValueCellFull!9522) mapValue!31767)) b!930968))

(assert (= (and b!930971 ((_ is ValueCellFull!9522) mapDefault!31767)) b!930967))

(assert (= start!79314 b!930971))

(declare-fun m!865057 () Bool)

(assert (=> b!930964 m!865057))

(declare-fun m!865059 () Bool)

(assert (=> start!79314 m!865059))

(declare-fun m!865061 () Bool)

(assert (=> start!79314 m!865061))

(declare-fun m!865063 () Bool)

(assert (=> start!79314 m!865063))

(declare-fun m!865065 () Bool)

(assert (=> b!930965 m!865065))

(declare-fun m!865067 () Bool)

(assert (=> b!930966 m!865067))

(declare-fun m!865069 () Bool)

(assert (=> b!930963 m!865069))

(declare-fun m!865071 () Bool)

(assert (=> b!930963 m!865071))

(declare-fun m!865073 () Bool)

(assert (=> mapNonEmpty!31767 m!865073))

(check-sat (not start!79314) (not b_next!17499) tp_is_empty!20007 (not b!930966) (not b!930963) (not b!930964) b_and!28583 (not mapNonEmpty!31767) (not b!930965))
(check-sat b_and!28583 (not b_next!17499))
