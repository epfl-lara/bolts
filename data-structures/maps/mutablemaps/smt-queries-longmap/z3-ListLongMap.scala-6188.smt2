; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79266 () Bool)

(assert start!79266)

(declare-fun b_free!17451 () Bool)

(declare-fun b_next!17451 () Bool)

(assert (=> start!79266 (= b_free!17451 (not b_next!17451))))

(declare-fun tp!60794 () Bool)

(declare-fun b_and!28535 () Bool)

(assert (=> start!79266 (= tp!60794 b_and!28535)))

(declare-fun b!930303 () Bool)

(declare-fun res!626632 () Bool)

(declare-fun e!522433 () Bool)

(assert (=> b!930303 (=> (not res!626632) (not e!522433))))

(declare-datatypes ((array!55888 0))(
  ( (array!55889 (arr!26885 (Array (_ BitVec 32) (_ BitVec 64))) (size!27345 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55888)

(declare-datatypes ((List!19046 0))(
  ( (Nil!19043) (Cons!19042 (h!20188 (_ BitVec 64)) (t!27111 List!19046)) )
))
(declare-fun arrayNoDuplicates!0 (array!55888 (_ BitVec 32) List!19046) Bool)

(assert (=> b!930303 (= res!626632 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19043))))

(declare-fun b!930304 () Bool)

(declare-fun res!626637 () Bool)

(declare-fun e!522432 () Bool)

(assert (=> b!930304 (=> (not res!626637) (not e!522432))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!31577 0))(
  ( (V!31578 (val!10030 Int)) )
))
(declare-fun v!791 () V!31577)

(declare-datatypes ((tuple2!13226 0))(
  ( (tuple2!13227 (_1!6623 (_ BitVec 64)) (_2!6623 V!31577)) )
))
(declare-datatypes ((List!19047 0))(
  ( (Nil!19044) (Cons!19043 (h!20189 tuple2!13226) (t!27112 List!19047)) )
))
(declare-datatypes ((ListLongMap!11937 0))(
  ( (ListLongMap!11938 (toList!5984 List!19047)) )
))
(declare-fun lt!419181 () ListLongMap!11937)

(declare-fun apply!772 (ListLongMap!11937 (_ BitVec 64)) V!31577)

(assert (=> b!930304 (= res!626637 (= (apply!772 lt!419181 k0!1099) v!791))))

(declare-fun b!930305 () Bool)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930305 (= e!522432 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27345 _keys!1487)))))

(declare-fun b!930306 () Bool)

(assert (=> b!930306 (= e!522433 e!522432)))

(declare-fun res!626633 () Bool)

(assert (=> b!930306 (=> (not res!626633) (not e!522432))))

(declare-fun contains!4997 (ListLongMap!11937 (_ BitVec 64)) Bool)

(assert (=> b!930306 (= res!626633 (contains!4997 lt!419181 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9498 0))(
  ( (ValueCellFull!9498 (v!12548 V!31577)) (EmptyCell!9498) )
))
(declare-datatypes ((array!55890 0))(
  ( (array!55891 (arr!26886 (Array (_ BitVec 32) ValueCell!9498)) (size!27346 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55890)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31577)

(declare-fun minValue!1173 () V!31577)

(declare-fun getCurrentListMap!3191 (array!55888 array!55890 (_ BitVec 32) (_ BitVec 32) V!31577 V!31577 (_ BitVec 32) Int) ListLongMap!11937)

(assert (=> b!930306 (= lt!419181 (getCurrentListMap!3191 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930307 () Bool)

(declare-fun res!626638 () Bool)

(assert (=> b!930307 (=> (not res!626638) (not e!522432))))

(assert (=> b!930307 (= res!626638 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!930309 () Bool)

(declare-fun e!522430 () Bool)

(declare-fun e!522434 () Bool)

(declare-fun mapRes!31695 () Bool)

(assert (=> b!930309 (= e!522430 (and e!522434 mapRes!31695))))

(declare-fun condMapEmpty!31695 () Bool)

(declare-fun mapDefault!31695 () ValueCell!9498)

(assert (=> b!930309 (= condMapEmpty!31695 (= (arr!26886 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9498)) mapDefault!31695)))))

(declare-fun b!930310 () Bool)

(declare-fun tp_is_empty!19959 () Bool)

(assert (=> b!930310 (= e!522434 tp_is_empty!19959)))

(declare-fun b!930311 () Bool)

(declare-fun e!522435 () Bool)

(assert (=> b!930311 (= e!522435 tp_is_empty!19959)))

(declare-fun mapIsEmpty!31695 () Bool)

(assert (=> mapIsEmpty!31695 mapRes!31695))

(declare-fun b!930312 () Bool)

(declare-fun res!626631 () Bool)

(assert (=> b!930312 (=> (not res!626631) (not e!522432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!930312 (= res!626631 (validKeyInArray!0 k0!1099))))

(declare-fun b!930313 () Bool)

(declare-fun res!626636 () Bool)

(assert (=> b!930313 (=> (not res!626636) (not e!522433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55888 (_ BitVec 32)) Bool)

(assert (=> b!930313 (= res!626636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!626634 () Bool)

(assert (=> start!79266 (=> (not res!626634) (not e!522433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79266 (= res!626634 (validMask!0 mask!1881))))

(assert (=> start!79266 e!522433))

(assert (=> start!79266 true))

(assert (=> start!79266 tp_is_empty!19959))

(declare-fun array_inv!20910 (array!55890) Bool)

(assert (=> start!79266 (and (array_inv!20910 _values!1231) e!522430)))

(assert (=> start!79266 tp!60794))

(declare-fun array_inv!20911 (array!55888) Bool)

(assert (=> start!79266 (array_inv!20911 _keys!1487)))

(declare-fun b!930308 () Bool)

(declare-fun res!626639 () Bool)

(assert (=> b!930308 (=> (not res!626639) (not e!522433))))

(assert (=> b!930308 (= res!626639 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27345 _keys!1487))))))

(declare-fun mapNonEmpty!31695 () Bool)

(declare-fun tp!60795 () Bool)

(assert (=> mapNonEmpty!31695 (= mapRes!31695 (and tp!60795 e!522435))))

(declare-fun mapKey!31695 () (_ BitVec 32))

(declare-fun mapValue!31695 () ValueCell!9498)

(declare-fun mapRest!31695 () (Array (_ BitVec 32) ValueCell!9498))

(assert (=> mapNonEmpty!31695 (= (arr!26886 _values!1231) (store mapRest!31695 mapKey!31695 mapValue!31695))))

(declare-fun b!930314 () Bool)

(declare-fun res!626635 () Bool)

(assert (=> b!930314 (=> (not res!626635) (not e!522433))))

(assert (=> b!930314 (= res!626635 (and (= (size!27346 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27345 _keys!1487) (size!27346 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!79266 res!626634) b!930314))

(assert (= (and b!930314 res!626635) b!930313))

(assert (= (and b!930313 res!626636) b!930303))

(assert (= (and b!930303 res!626632) b!930308))

(assert (= (and b!930308 res!626639) b!930306))

(assert (= (and b!930306 res!626633) b!930304))

(assert (= (and b!930304 res!626637) b!930307))

(assert (= (and b!930307 res!626638) b!930312))

(assert (= (and b!930312 res!626631) b!930305))

(assert (= (and b!930309 condMapEmpty!31695) mapIsEmpty!31695))

(assert (= (and b!930309 (not condMapEmpty!31695)) mapNonEmpty!31695))

(get-info :version)

(assert (= (and mapNonEmpty!31695 ((_ is ValueCellFull!9498) mapValue!31695)) b!930311))

(assert (= (and b!930309 ((_ is ValueCellFull!9498) mapDefault!31695)) b!930310))

(assert (= start!79266 b!930309))

(declare-fun m!864621 () Bool)

(assert (=> b!930312 m!864621))

(declare-fun m!864623 () Bool)

(assert (=> b!930304 m!864623))

(declare-fun m!864625 () Bool)

(assert (=> start!79266 m!864625))

(declare-fun m!864627 () Bool)

(assert (=> start!79266 m!864627))

(declare-fun m!864629 () Bool)

(assert (=> start!79266 m!864629))

(declare-fun m!864631 () Bool)

(assert (=> b!930313 m!864631))

(declare-fun m!864633 () Bool)

(assert (=> b!930303 m!864633))

(declare-fun m!864635 () Bool)

(assert (=> mapNonEmpty!31695 m!864635))

(declare-fun m!864637 () Bool)

(assert (=> b!930306 m!864637))

(declare-fun m!864639 () Bool)

(assert (=> b!930306 m!864639))

(check-sat (not mapNonEmpty!31695) (not b!930313) tp_is_empty!19959 (not b!930303) (not b!930304) (not start!79266) (not b!930306) (not b!930312) b_and!28535 (not b_next!17451))
(check-sat b_and!28535 (not b_next!17451))
