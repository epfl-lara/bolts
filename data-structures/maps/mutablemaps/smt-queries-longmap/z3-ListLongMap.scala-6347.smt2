; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81848 () Bool)

(assert start!81848)

(declare-fun b_free!18315 () Bool)

(declare-fun b_next!18315 () Bool)

(assert (=> start!81848 (= b_free!18315 (not b_next!18315))))

(declare-fun tp!63646 () Bool)

(declare-fun b_and!29819 () Bool)

(assert (=> start!81848 (= tp!63646 b_and!29819)))

(declare-fun b!953980 () Bool)

(declare-fun res!638945 () Bool)

(declare-fun e!537499 () Bool)

(assert (=> b!953980 (=> (not res!638945) (not e!537499))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57847 0))(
  ( (array!57848 (arr!27799 (Array (_ BitVec 32) (_ BitVec 64))) (size!28279 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57847)

(assert (=> b!953980 (= res!638945 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28279 _keys!1441))))))

(declare-fun b!953981 () Bool)

(declare-fun res!638942 () Bool)

(assert (=> b!953981 (=> (not res!638942) (not e!537499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953981 (= res!638942 (validKeyInArray!0 (select (arr!27799 _keys!1441) i!735)))))

(declare-fun b!953982 () Bool)

(declare-fun res!638946 () Bool)

(assert (=> b!953982 (=> (not res!638946) (not e!537499))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32795 0))(
  ( (V!32796 (val!10480 Int)) )
))
(declare-datatypes ((ValueCell!9948 0))(
  ( (ValueCellFull!9948 (v!13035 V!32795)) (EmptyCell!9948) )
))
(declare-datatypes ((array!57849 0))(
  ( (array!57850 (arr!27800 (Array (_ BitVec 32) ValueCell!9948)) (size!28280 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57849)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!953982 (= res!638946 (and (= (size!28280 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28279 _keys!1441) (size!28280 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!638943 () Bool)

(assert (=> start!81848 (=> (not res!638943) (not e!537499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81848 (= res!638943 (validMask!0 mask!1823))))

(assert (=> start!81848 e!537499))

(assert (=> start!81848 true))

(declare-fun tp_is_empty!20859 () Bool)

(assert (=> start!81848 tp_is_empty!20859))

(declare-fun array_inv!21523 (array!57847) Bool)

(assert (=> start!81848 (array_inv!21523 _keys!1441)))

(declare-fun e!537497 () Bool)

(declare-fun array_inv!21524 (array!57849) Bool)

(assert (=> start!81848 (and (array_inv!21524 _values!1197) e!537497)))

(assert (=> start!81848 tp!63646))

(declare-fun b!953983 () Bool)

(declare-fun res!638944 () Bool)

(assert (=> b!953983 (=> (not res!638944) (not e!537499))))

(declare-datatypes ((List!19513 0))(
  ( (Nil!19510) (Cons!19509 (h!20671 (_ BitVec 64)) (t!27882 List!19513)) )
))
(declare-fun arrayNoDuplicates!0 (array!57847 (_ BitVec 32) List!19513) Bool)

(assert (=> b!953983 (= res!638944 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19510))))

(declare-fun mapNonEmpty!33250 () Bool)

(declare-fun mapRes!33250 () Bool)

(declare-fun tp!63645 () Bool)

(declare-fun e!537501 () Bool)

(assert (=> mapNonEmpty!33250 (= mapRes!33250 (and tp!63645 e!537501))))

(declare-fun mapKey!33250 () (_ BitVec 32))

(declare-fun mapRest!33250 () (Array (_ BitVec 32) ValueCell!9948))

(declare-fun mapValue!33250 () ValueCell!9948)

(assert (=> mapNonEmpty!33250 (= (arr!27800 _values!1197) (store mapRest!33250 mapKey!33250 mapValue!33250))))

(declare-fun b!953984 () Bool)

(assert (=> b!953984 (= e!537499 false)))

(declare-fun lt!429811 () Bool)

(declare-fun zeroValue!1139 () V!32795)

(declare-fun minValue!1139 () V!32795)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13696 0))(
  ( (tuple2!13697 (_1!6858 (_ BitVec 64)) (_2!6858 V!32795)) )
))
(declare-datatypes ((List!19514 0))(
  ( (Nil!19511) (Cons!19510 (h!20672 tuple2!13696) (t!27883 List!19514)) )
))
(declare-datatypes ((ListLongMap!12407 0))(
  ( (ListLongMap!12408 (toList!6219 List!19514)) )
))
(declare-fun contains!5269 (ListLongMap!12407 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3404 (array!57847 array!57849 (_ BitVec 32) (_ BitVec 32) V!32795 V!32795 (_ BitVec 32) Int) ListLongMap!12407)

(assert (=> b!953984 (= lt!429811 (contains!5269 (getCurrentListMap!3404 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27799 _keys!1441) i!735)))))

(declare-fun b!953985 () Bool)

(declare-fun res!638947 () Bool)

(assert (=> b!953985 (=> (not res!638947) (not e!537499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57847 (_ BitVec 32)) Bool)

(assert (=> b!953985 (= res!638947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!953986 () Bool)

(declare-fun e!537498 () Bool)

(assert (=> b!953986 (= e!537498 tp_is_empty!20859)))

(declare-fun b!953987 () Bool)

(assert (=> b!953987 (= e!537501 tp_is_empty!20859)))

(declare-fun b!953988 () Bool)

(assert (=> b!953988 (= e!537497 (and e!537498 mapRes!33250))))

(declare-fun condMapEmpty!33250 () Bool)

(declare-fun mapDefault!33250 () ValueCell!9948)

(assert (=> b!953988 (= condMapEmpty!33250 (= (arr!27800 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9948)) mapDefault!33250)))))

(declare-fun mapIsEmpty!33250 () Bool)

(assert (=> mapIsEmpty!33250 mapRes!33250))

(assert (= (and start!81848 res!638943) b!953982))

(assert (= (and b!953982 res!638946) b!953985))

(assert (= (and b!953985 res!638947) b!953983))

(assert (= (and b!953983 res!638944) b!953980))

(assert (= (and b!953980 res!638945) b!953981))

(assert (= (and b!953981 res!638942) b!953984))

(assert (= (and b!953988 condMapEmpty!33250) mapIsEmpty!33250))

(assert (= (and b!953988 (not condMapEmpty!33250)) mapNonEmpty!33250))

(get-info :version)

(assert (= (and mapNonEmpty!33250 ((_ is ValueCellFull!9948) mapValue!33250)) b!953987))

(assert (= (and b!953988 ((_ is ValueCellFull!9948) mapDefault!33250)) b!953986))

(assert (= start!81848 b!953988))

(declare-fun m!885899 () Bool)

(assert (=> b!953985 m!885899))

(declare-fun m!885901 () Bool)

(assert (=> b!953981 m!885901))

(assert (=> b!953981 m!885901))

(declare-fun m!885903 () Bool)

(assert (=> b!953981 m!885903))

(declare-fun m!885905 () Bool)

(assert (=> start!81848 m!885905))

(declare-fun m!885907 () Bool)

(assert (=> start!81848 m!885907))

(declare-fun m!885909 () Bool)

(assert (=> start!81848 m!885909))

(declare-fun m!885911 () Bool)

(assert (=> b!953984 m!885911))

(assert (=> b!953984 m!885901))

(assert (=> b!953984 m!885911))

(assert (=> b!953984 m!885901))

(declare-fun m!885913 () Bool)

(assert (=> b!953984 m!885913))

(declare-fun m!885915 () Bool)

(assert (=> b!953983 m!885915))

(declare-fun m!885917 () Bool)

(assert (=> mapNonEmpty!33250 m!885917))

(check-sat (not b!953985) (not start!81848) b_and!29819 (not b!953981) (not b!953983) (not b_next!18315) (not b!953984) tp_is_empty!20859 (not mapNonEmpty!33250))
(check-sat b_and!29819 (not b_next!18315))
