; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81908 () Bool)

(assert start!81908)

(declare-fun b_free!18375 () Bool)

(declare-fun b_next!18375 () Bool)

(assert (=> start!81908 (= b_free!18375 (not b_next!18375))))

(declare-fun tp!63826 () Bool)

(declare-fun b_and!29879 () Bool)

(assert (=> start!81908 (= tp!63826 b_and!29879)))

(declare-fun b!954790 () Bool)

(declare-fun e!537951 () Bool)

(assert (=> b!954790 (= e!537951 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32875 0))(
  ( (V!32876 (val!10510 Int)) )
))
(declare-fun zeroValue!1139 () V!32875)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun lt!429901 () Bool)

(declare-datatypes ((array!57963 0))(
  ( (array!57964 (arr!27857 (Array (_ BitVec 32) (_ BitVec 64))) (size!28337 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57963)

(declare-datatypes ((ValueCell!9978 0))(
  ( (ValueCellFull!9978 (v!13065 V!32875)) (EmptyCell!9978) )
))
(declare-datatypes ((array!57965 0))(
  ( (array!57966 (arr!27858 (Array (_ BitVec 32) ValueCell!9978)) (size!28338 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57965)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32875)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13740 0))(
  ( (tuple2!13741 (_1!6880 (_ BitVec 64)) (_2!6880 V!32875)) )
))
(declare-datatypes ((List!19557 0))(
  ( (Nil!19554) (Cons!19553 (h!20715 tuple2!13740) (t!27926 List!19557)) )
))
(declare-datatypes ((ListLongMap!12451 0))(
  ( (ListLongMap!12452 (toList!6241 List!19557)) )
))
(declare-fun contains!5291 (ListLongMap!12451 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3426 (array!57963 array!57965 (_ BitVec 32) (_ BitVec 32) V!32875 V!32875 (_ BitVec 32) Int) ListLongMap!12451)

(assert (=> b!954790 (= lt!429901 (contains!5291 (getCurrentListMap!3426 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27857 _keys!1441) i!735)))))

(declare-fun b!954791 () Bool)

(declare-fun res!639482 () Bool)

(assert (=> b!954791 (=> (not res!639482) (not e!537951))))

(assert (=> b!954791 (= res!639482 (and (= (size!28338 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28337 _keys!1441) (size!28338 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954792 () Bool)

(declare-fun e!537950 () Bool)

(declare-fun tp_is_empty!20919 () Bool)

(assert (=> b!954792 (= e!537950 tp_is_empty!20919)))

(declare-fun b!954793 () Bool)

(declare-fun e!537947 () Bool)

(declare-fun e!537948 () Bool)

(declare-fun mapRes!33340 () Bool)

(assert (=> b!954793 (= e!537947 (and e!537948 mapRes!33340))))

(declare-fun condMapEmpty!33340 () Bool)

(declare-fun mapDefault!33340 () ValueCell!9978)

(assert (=> b!954793 (= condMapEmpty!33340 (= (arr!27858 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9978)) mapDefault!33340)))))

(declare-fun b!954794 () Bool)

(declare-fun res!639487 () Bool)

(assert (=> b!954794 (=> (not res!639487) (not e!537951))))

(declare-datatypes ((List!19558 0))(
  ( (Nil!19555) (Cons!19554 (h!20716 (_ BitVec 64)) (t!27927 List!19558)) )
))
(declare-fun arrayNoDuplicates!0 (array!57963 (_ BitVec 32) List!19558) Bool)

(assert (=> b!954794 (= res!639487 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19555))))

(declare-fun b!954795 () Bool)

(declare-fun res!639486 () Bool)

(assert (=> b!954795 (=> (not res!639486) (not e!537951))))

(assert (=> b!954795 (= res!639486 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28337 _keys!1441))))))

(declare-fun mapNonEmpty!33340 () Bool)

(declare-fun tp!63825 () Bool)

(assert (=> mapNonEmpty!33340 (= mapRes!33340 (and tp!63825 e!537950))))

(declare-fun mapKey!33340 () (_ BitVec 32))

(declare-fun mapRest!33340 () (Array (_ BitVec 32) ValueCell!9978))

(declare-fun mapValue!33340 () ValueCell!9978)

(assert (=> mapNonEmpty!33340 (= (arr!27858 _values!1197) (store mapRest!33340 mapKey!33340 mapValue!33340))))

(declare-fun b!954796 () Bool)

(assert (=> b!954796 (= e!537948 tp_is_empty!20919)))

(declare-fun b!954797 () Bool)

(declare-fun res!639485 () Bool)

(assert (=> b!954797 (=> (not res!639485) (not e!537951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954797 (= res!639485 (validKeyInArray!0 (select (arr!27857 _keys!1441) i!735)))))

(declare-fun b!954798 () Bool)

(declare-fun res!639483 () Bool)

(assert (=> b!954798 (=> (not res!639483) (not e!537951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57963 (_ BitVec 32)) Bool)

(assert (=> b!954798 (= res!639483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapIsEmpty!33340 () Bool)

(assert (=> mapIsEmpty!33340 mapRes!33340))

(declare-fun res!639484 () Bool)

(assert (=> start!81908 (=> (not res!639484) (not e!537951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81908 (= res!639484 (validMask!0 mask!1823))))

(assert (=> start!81908 e!537951))

(assert (=> start!81908 true))

(assert (=> start!81908 tp_is_empty!20919))

(declare-fun array_inv!21569 (array!57963) Bool)

(assert (=> start!81908 (array_inv!21569 _keys!1441)))

(declare-fun array_inv!21570 (array!57965) Bool)

(assert (=> start!81908 (and (array_inv!21570 _values!1197) e!537947)))

(assert (=> start!81908 tp!63826))

(assert (= (and start!81908 res!639484) b!954791))

(assert (= (and b!954791 res!639482) b!954798))

(assert (= (and b!954798 res!639483) b!954794))

(assert (= (and b!954794 res!639487) b!954795))

(assert (= (and b!954795 res!639486) b!954797))

(assert (= (and b!954797 res!639485) b!954790))

(assert (= (and b!954793 condMapEmpty!33340) mapIsEmpty!33340))

(assert (= (and b!954793 (not condMapEmpty!33340)) mapNonEmpty!33340))

(get-info :version)

(assert (= (and mapNonEmpty!33340 ((_ is ValueCellFull!9978) mapValue!33340)) b!954792))

(assert (= (and b!954793 ((_ is ValueCellFull!9978) mapDefault!33340)) b!954796))

(assert (= start!81908 b!954793))

(declare-fun m!886499 () Bool)

(assert (=> start!81908 m!886499))

(declare-fun m!886501 () Bool)

(assert (=> start!81908 m!886501))

(declare-fun m!886503 () Bool)

(assert (=> start!81908 m!886503))

(declare-fun m!886505 () Bool)

(assert (=> b!954794 m!886505))

(declare-fun m!886507 () Bool)

(assert (=> b!954790 m!886507))

(declare-fun m!886509 () Bool)

(assert (=> b!954790 m!886509))

(assert (=> b!954790 m!886507))

(assert (=> b!954790 m!886509))

(declare-fun m!886511 () Bool)

(assert (=> b!954790 m!886511))

(declare-fun m!886513 () Bool)

(assert (=> b!954798 m!886513))

(assert (=> b!954797 m!886509))

(assert (=> b!954797 m!886509))

(declare-fun m!886515 () Bool)

(assert (=> b!954797 m!886515))

(declare-fun m!886517 () Bool)

(assert (=> mapNonEmpty!33340 m!886517))

(check-sat tp_is_empty!20919 (not start!81908) (not b!954798) (not b!954794) (not b!954797) (not b_next!18375) b_and!29879 (not mapNonEmpty!33340) (not b!954790))
(check-sat b_and!29879 (not b_next!18375))
