; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81926 () Bool)

(assert start!81926)

(declare-fun b_free!18393 () Bool)

(declare-fun b_next!18393 () Bool)

(assert (=> start!81926 (= b_free!18393 (not b_next!18393))))

(declare-fun tp!63879 () Bool)

(declare-fun b_and!29897 () Bool)

(assert (=> start!81926 (= tp!63879 b_and!29897)))

(declare-fun b!955047 () Bool)

(declare-fun res!639663 () Bool)

(declare-fun e!538083 () Bool)

(assert (=> b!955047 (=> (not res!639663) (not e!538083))))

(declare-datatypes ((array!57999 0))(
  ( (array!58000 (arr!27875 (Array (_ BitVec 32) (_ BitVec 64))) (size!28355 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57999)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57999 (_ BitVec 32)) Bool)

(assert (=> b!955047 (= res!639663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955048 () Bool)

(declare-fun e!538084 () Bool)

(declare-fun e!538085 () Bool)

(declare-fun mapRes!33367 () Bool)

(assert (=> b!955048 (= e!538084 (and e!538085 mapRes!33367))))

(declare-fun condMapEmpty!33367 () Bool)

(declare-datatypes ((V!32899 0))(
  ( (V!32900 (val!10519 Int)) )
))
(declare-datatypes ((ValueCell!9987 0))(
  ( (ValueCellFull!9987 (v!13074 V!32899)) (EmptyCell!9987) )
))
(declare-datatypes ((array!58001 0))(
  ( (array!58002 (arr!27876 (Array (_ BitVec 32) ValueCell!9987)) (size!28356 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58001)

(declare-fun mapDefault!33367 () ValueCell!9987)

(assert (=> b!955048 (= condMapEmpty!33367 (= (arr!27876 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9987)) mapDefault!33367)))))

(declare-fun b!955049 () Bool)

(declare-fun res!639664 () Bool)

(assert (=> b!955049 (=> (not res!639664) (not e!538083))))

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955049 (= res!639664 (validKeyInArray!0 (select (arr!27875 _keys!1441) i!735)))))

(declare-fun b!955050 () Bool)

(declare-fun tp_is_empty!20937 () Bool)

(assert (=> b!955050 (= e!538085 tp_is_empty!20937)))

(declare-fun mapIsEmpty!33367 () Bool)

(assert (=> mapIsEmpty!33367 mapRes!33367))

(declare-fun b!955051 () Bool)

(declare-fun res!639659 () Bool)

(assert (=> b!955051 (=> (not res!639659) (not e!538083))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!955051 (= res!639659 (and (= (size!28356 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28355 _keys!1441) (size!28356 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33367 () Bool)

(declare-fun tp!63880 () Bool)

(declare-fun e!538086 () Bool)

(assert (=> mapNonEmpty!33367 (= mapRes!33367 (and tp!63880 e!538086))))

(declare-fun mapValue!33367 () ValueCell!9987)

(declare-fun mapRest!33367 () (Array (_ BitVec 32) ValueCell!9987))

(declare-fun mapKey!33367 () (_ BitVec 32))

(assert (=> mapNonEmpty!33367 (= (arr!27876 _values!1197) (store mapRest!33367 mapKey!33367 mapValue!33367))))

(declare-fun b!955052 () Bool)

(declare-fun res!639662 () Bool)

(assert (=> b!955052 (=> (not res!639662) (not e!538083))))

(declare-datatypes ((List!19569 0))(
  ( (Nil!19566) (Cons!19565 (h!20727 (_ BitVec 64)) (t!27938 List!19569)) )
))
(declare-fun arrayNoDuplicates!0 (array!57999 (_ BitVec 32) List!19569) Bool)

(assert (=> b!955052 (= res!639662 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19566))))

(declare-fun res!639658 () Bool)

(assert (=> start!81926 (=> (not res!639658) (not e!538083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81926 (= res!639658 (validMask!0 mask!1823))))

(assert (=> start!81926 e!538083))

(assert (=> start!81926 true))

(assert (=> start!81926 tp_is_empty!20937))

(declare-fun array_inv!21583 (array!57999) Bool)

(assert (=> start!81926 (array_inv!21583 _keys!1441)))

(declare-fun array_inv!21584 (array!58001) Bool)

(assert (=> start!81926 (and (array_inv!21584 _values!1197) e!538084)))

(assert (=> start!81926 tp!63879))

(declare-fun b!955053 () Bool)

(declare-fun res!639660 () Bool)

(assert (=> b!955053 (=> (not res!639660) (not e!538083))))

(declare-fun zeroValue!1139 () V!32899)

(declare-fun minValue!1139 () V!32899)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13752 0))(
  ( (tuple2!13753 (_1!6886 (_ BitVec 64)) (_2!6886 V!32899)) )
))
(declare-datatypes ((List!19570 0))(
  ( (Nil!19567) (Cons!19566 (h!20728 tuple2!13752) (t!27939 List!19570)) )
))
(declare-datatypes ((ListLongMap!12463 0))(
  ( (ListLongMap!12464 (toList!6247 List!19570)) )
))
(declare-fun contains!5297 (ListLongMap!12463 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3432 (array!57999 array!58001 (_ BitVec 32) (_ BitVec 32) V!32899 V!32899 (_ BitVec 32) Int) ListLongMap!12463)

(assert (=> b!955053 (= res!639660 (contains!5297 (getCurrentListMap!3432 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27875 _keys!1441) i!735)))))

(declare-fun b!955054 () Bool)

(declare-fun res!639661 () Bool)

(assert (=> b!955054 (=> (not res!639661) (not e!538083))))

(assert (=> b!955054 (= res!639661 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28355 _keys!1441))))))

(declare-fun b!955055 () Bool)

(assert (=> b!955055 (= e!538083 (not true))))

(assert (=> b!955055 (contains!5297 (getCurrentListMap!3432 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27875 _keys!1441) i!735))))

(declare-datatypes ((Unit!32095 0))(
  ( (Unit!32096) )
))
(declare-fun lt!429928 () Unit!32095)

(declare-fun lemmaInListMapFromThenFromZero!4 (array!57999 array!58001 (_ BitVec 32) (_ BitVec 32) V!32899 V!32899 (_ BitVec 32) (_ BitVec 32) Int) Unit!32095)

(assert (=> b!955055 (= lt!429928 (lemmaInListMapFromThenFromZero!4 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955056 () Bool)

(assert (=> b!955056 (= e!538086 tp_is_empty!20937)))

(assert (= (and start!81926 res!639658) b!955051))

(assert (= (and b!955051 res!639659) b!955047))

(assert (= (and b!955047 res!639663) b!955052))

(assert (= (and b!955052 res!639662) b!955054))

(assert (= (and b!955054 res!639661) b!955049))

(assert (= (and b!955049 res!639664) b!955053))

(assert (= (and b!955053 res!639660) b!955055))

(assert (= (and b!955048 condMapEmpty!33367) mapIsEmpty!33367))

(assert (= (and b!955048 (not condMapEmpty!33367)) mapNonEmpty!33367))

(get-info :version)

(assert (= (and mapNonEmpty!33367 ((_ is ValueCellFull!9987) mapValue!33367)) b!955056))

(assert (= (and b!955048 ((_ is ValueCellFull!9987) mapDefault!33367)) b!955050))

(assert (= start!81926 b!955048))

(declare-fun m!886703 () Bool)

(assert (=> start!81926 m!886703))

(declare-fun m!886705 () Bool)

(assert (=> start!81926 m!886705))

(declare-fun m!886707 () Bool)

(assert (=> start!81926 m!886707))

(declare-fun m!886709 () Bool)

(assert (=> b!955055 m!886709))

(declare-fun m!886711 () Bool)

(assert (=> b!955055 m!886711))

(assert (=> b!955055 m!886709))

(assert (=> b!955055 m!886711))

(declare-fun m!886713 () Bool)

(assert (=> b!955055 m!886713))

(declare-fun m!886715 () Bool)

(assert (=> b!955055 m!886715))

(declare-fun m!886717 () Bool)

(assert (=> b!955052 m!886717))

(assert (=> b!955049 m!886711))

(assert (=> b!955049 m!886711))

(declare-fun m!886719 () Bool)

(assert (=> b!955049 m!886719))

(declare-fun m!886721 () Bool)

(assert (=> b!955047 m!886721))

(declare-fun m!886723 () Bool)

(assert (=> b!955053 m!886723))

(assert (=> b!955053 m!886711))

(assert (=> b!955053 m!886723))

(assert (=> b!955053 m!886711))

(declare-fun m!886725 () Bool)

(assert (=> b!955053 m!886725))

(declare-fun m!886727 () Bool)

(assert (=> mapNonEmpty!33367 m!886727))

(check-sat (not b!955055) tp_is_empty!20937 (not b!955053) (not mapNonEmpty!33367) (not b_next!18393) (not b!955047) b_and!29897 (not b!955049) (not start!81926) (not b!955052))
(check-sat b_and!29897 (not b_next!18393))
