; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81896 () Bool)

(assert start!81896)

(declare-fun b_free!18363 () Bool)

(declare-fun b_next!18363 () Bool)

(assert (=> start!81896 (= b_free!18363 (not b_next!18363))))

(declare-fun tp!63789 () Bool)

(declare-fun b_and!29867 () Bool)

(assert (=> start!81896 (= tp!63789 b_and!29867)))

(declare-fun b!954628 () Bool)

(declare-fun e!537857 () Bool)

(declare-fun tp_is_empty!20907 () Bool)

(assert (=> b!954628 (= e!537857 tp_is_empty!20907)))

(declare-fun b!954629 () Bool)

(declare-fun res!639378 () Bool)

(declare-fun e!537861 () Bool)

(assert (=> b!954629 (=> (not res!639378) (not e!537861))))

(declare-datatypes ((array!57939 0))(
  ( (array!57940 (arr!27845 (Array (_ BitVec 32) (_ BitVec 64))) (size!28325 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57939)

(declare-datatypes ((List!19550 0))(
  ( (Nil!19547) (Cons!19546 (h!20708 (_ BitVec 64)) (t!27919 List!19550)) )
))
(declare-fun arrayNoDuplicates!0 (array!57939 (_ BitVec 32) List!19550) Bool)

(assert (=> b!954629 (= res!639378 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19547))))

(declare-fun mapNonEmpty!33322 () Bool)

(declare-fun mapRes!33322 () Bool)

(declare-fun tp!63790 () Bool)

(declare-fun e!537859 () Bool)

(assert (=> mapNonEmpty!33322 (= mapRes!33322 (and tp!63790 e!537859))))

(declare-datatypes ((V!32859 0))(
  ( (V!32860 (val!10504 Int)) )
))
(declare-datatypes ((ValueCell!9972 0))(
  ( (ValueCellFull!9972 (v!13059 V!32859)) (EmptyCell!9972) )
))
(declare-fun mapRest!33322 () (Array (_ BitVec 32) ValueCell!9972))

(declare-fun mapKey!33322 () (_ BitVec 32))

(declare-datatypes ((array!57941 0))(
  ( (array!57942 (arr!27846 (Array (_ BitVec 32) ValueCell!9972)) (size!28326 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57941)

(declare-fun mapValue!33322 () ValueCell!9972)

(assert (=> mapNonEmpty!33322 (= (arr!27846 _values!1197) (store mapRest!33322 mapKey!33322 mapValue!33322))))

(declare-fun b!954631 () Bool)

(declare-fun e!537860 () Bool)

(assert (=> b!954631 (= e!537860 (and e!537857 mapRes!33322))))

(declare-fun condMapEmpty!33322 () Bool)

(declare-fun mapDefault!33322 () ValueCell!9972)

(assert (=> b!954631 (= condMapEmpty!33322 (= (arr!27846 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9972)) mapDefault!33322)))))

(declare-fun b!954632 () Bool)

(declare-fun res!639375 () Bool)

(assert (=> b!954632 (=> (not res!639375) (not e!537861))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57939 (_ BitVec 32)) Bool)

(assert (=> b!954632 (= res!639375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapIsEmpty!33322 () Bool)

(assert (=> mapIsEmpty!33322 mapRes!33322))

(declare-fun b!954630 () Bool)

(declare-fun res!639377 () Bool)

(assert (=> b!954630 (=> (not res!639377) (not e!537861))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!954630 (= res!639377 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28325 _keys!1441))))))

(declare-fun res!639379 () Bool)

(assert (=> start!81896 (=> (not res!639379) (not e!537861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81896 (= res!639379 (validMask!0 mask!1823))))

(assert (=> start!81896 e!537861))

(assert (=> start!81896 true))

(assert (=> start!81896 tp_is_empty!20907))

(declare-fun array_inv!21563 (array!57939) Bool)

(assert (=> start!81896 (array_inv!21563 _keys!1441)))

(declare-fun array_inv!21564 (array!57941) Bool)

(assert (=> start!81896 (and (array_inv!21564 _values!1197) e!537860)))

(assert (=> start!81896 tp!63789))

(declare-fun b!954633 () Bool)

(assert (=> b!954633 (= e!537861 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!32859)

(declare-fun lt!429883 () Bool)

(declare-fun minValue!1139 () V!32859)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13734 0))(
  ( (tuple2!13735 (_1!6877 (_ BitVec 64)) (_2!6877 V!32859)) )
))
(declare-datatypes ((List!19551 0))(
  ( (Nil!19548) (Cons!19547 (h!20709 tuple2!13734) (t!27920 List!19551)) )
))
(declare-datatypes ((ListLongMap!12445 0))(
  ( (ListLongMap!12446 (toList!6238 List!19551)) )
))
(declare-fun contains!5288 (ListLongMap!12445 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3423 (array!57939 array!57941 (_ BitVec 32) (_ BitVec 32) V!32859 V!32859 (_ BitVec 32) Int) ListLongMap!12445)

(assert (=> b!954633 (= lt!429883 (contains!5288 (getCurrentListMap!3423 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27845 _keys!1441) i!735)))))

(declare-fun b!954634 () Bool)

(declare-fun res!639374 () Bool)

(assert (=> b!954634 (=> (not res!639374) (not e!537861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954634 (= res!639374 (validKeyInArray!0 (select (arr!27845 _keys!1441) i!735)))))

(declare-fun b!954635 () Bool)

(assert (=> b!954635 (= e!537859 tp_is_empty!20907)))

(declare-fun b!954636 () Bool)

(declare-fun res!639376 () Bool)

(assert (=> b!954636 (=> (not res!639376) (not e!537861))))

(assert (=> b!954636 (= res!639376 (and (= (size!28326 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28325 _keys!1441) (size!28326 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(assert (= (and start!81896 res!639379) b!954636))

(assert (= (and b!954636 res!639376) b!954632))

(assert (= (and b!954632 res!639375) b!954629))

(assert (= (and b!954629 res!639378) b!954630))

(assert (= (and b!954630 res!639377) b!954634))

(assert (= (and b!954634 res!639374) b!954633))

(assert (= (and b!954631 condMapEmpty!33322) mapIsEmpty!33322))

(assert (= (and b!954631 (not condMapEmpty!33322)) mapNonEmpty!33322))

(get-info :version)

(assert (= (and mapNonEmpty!33322 ((_ is ValueCellFull!9972) mapValue!33322)) b!954635))

(assert (= (and b!954631 ((_ is ValueCellFull!9972) mapDefault!33322)) b!954628))

(assert (= start!81896 b!954631))

(declare-fun m!886379 () Bool)

(assert (=> b!954633 m!886379))

(declare-fun m!886381 () Bool)

(assert (=> b!954633 m!886381))

(assert (=> b!954633 m!886379))

(assert (=> b!954633 m!886381))

(declare-fun m!886383 () Bool)

(assert (=> b!954633 m!886383))

(declare-fun m!886385 () Bool)

(assert (=> b!954629 m!886385))

(assert (=> b!954634 m!886381))

(assert (=> b!954634 m!886381))

(declare-fun m!886387 () Bool)

(assert (=> b!954634 m!886387))

(declare-fun m!886389 () Bool)

(assert (=> b!954632 m!886389))

(declare-fun m!886391 () Bool)

(assert (=> start!81896 m!886391))

(declare-fun m!886393 () Bool)

(assert (=> start!81896 m!886393))

(declare-fun m!886395 () Bool)

(assert (=> start!81896 m!886395))

(declare-fun m!886397 () Bool)

(assert (=> mapNonEmpty!33322 m!886397))

(check-sat (not b!954632) tp_is_empty!20907 (not b!954629) b_and!29867 (not b_next!18363) (not start!81896) (not b!954634) (not mapNonEmpty!33322) (not b!954633))
(check-sat b_and!29867 (not b_next!18363))
