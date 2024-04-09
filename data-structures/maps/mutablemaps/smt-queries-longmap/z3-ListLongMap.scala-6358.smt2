; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81914 () Bool)

(assert start!81914)

(declare-fun b_free!18381 () Bool)

(declare-fun b_next!18381 () Bool)

(assert (=> start!81914 (= b_free!18381 (not b_next!18381))))

(declare-fun tp!63843 () Bool)

(declare-fun b_and!29885 () Bool)

(assert (=> start!81914 (= tp!63843 b_and!29885)))

(declare-fun mapNonEmpty!33349 () Bool)

(declare-fun mapRes!33349 () Bool)

(declare-fun tp!63844 () Bool)

(declare-fun e!537994 () Bool)

(assert (=> mapNonEmpty!33349 (= mapRes!33349 (and tp!63844 e!537994))))

(declare-datatypes ((V!32883 0))(
  ( (V!32884 (val!10513 Int)) )
))
(declare-datatypes ((ValueCell!9981 0))(
  ( (ValueCellFull!9981 (v!13068 V!32883)) (EmptyCell!9981) )
))
(declare-fun mapRest!33349 () (Array (_ BitVec 32) ValueCell!9981))

(declare-fun mapKey!33349 () (_ BitVec 32))

(declare-datatypes ((array!57975 0))(
  ( (array!57976 (arr!27863 (Array (_ BitVec 32) ValueCell!9981)) (size!28343 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57975)

(declare-fun mapValue!33349 () ValueCell!9981)

(assert (=> mapNonEmpty!33349 (= (arr!27863 _values!1197) (store mapRest!33349 mapKey!33349 mapValue!33349))))

(declare-fun b!954871 () Bool)

(declare-fun e!537993 () Bool)

(declare-fun e!537996 () Bool)

(assert (=> b!954871 (= e!537993 (and e!537996 mapRes!33349))))

(declare-fun condMapEmpty!33349 () Bool)

(declare-fun mapDefault!33349 () ValueCell!9981)

(assert (=> b!954871 (= condMapEmpty!33349 (= (arr!27863 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9981)) mapDefault!33349)))))

(declare-fun b!954872 () Bool)

(declare-fun res!639537 () Bool)

(declare-fun e!537995 () Bool)

(assert (=> b!954872 (=> (not res!639537) (not e!537995))))

(declare-datatypes ((array!57977 0))(
  ( (array!57978 (arr!27864 (Array (_ BitVec 32) (_ BitVec 64))) (size!28344 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57977)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57977 (_ BitVec 32)) Bool)

(assert (=> b!954872 (= res!639537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954873 () Bool)

(declare-fun tp_is_empty!20925 () Bool)

(assert (=> b!954873 (= e!537996 tp_is_empty!20925)))

(declare-fun b!954874 () Bool)

(declare-fun res!639541 () Bool)

(assert (=> b!954874 (=> (not res!639541) (not e!537995))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!954874 (= res!639541 (and (= (size!28343 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28344 _keys!1441) (size!28343 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954875 () Bool)

(assert (=> b!954875 (= e!537995 false)))

(declare-fun zeroValue!1139 () V!32883)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun lt!429910 () Bool)

(declare-fun minValue!1139 () V!32883)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13744 0))(
  ( (tuple2!13745 (_1!6882 (_ BitVec 64)) (_2!6882 V!32883)) )
))
(declare-datatypes ((List!19561 0))(
  ( (Nil!19558) (Cons!19557 (h!20719 tuple2!13744) (t!27930 List!19561)) )
))
(declare-datatypes ((ListLongMap!12455 0))(
  ( (ListLongMap!12456 (toList!6243 List!19561)) )
))
(declare-fun contains!5293 (ListLongMap!12455 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3428 (array!57977 array!57975 (_ BitVec 32) (_ BitVec 32) V!32883 V!32883 (_ BitVec 32) Int) ListLongMap!12455)

(assert (=> b!954875 (= lt!429910 (contains!5293 (getCurrentListMap!3428 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27864 _keys!1441) i!735)))))

(declare-fun b!954876 () Bool)

(declare-fun res!639538 () Bool)

(assert (=> b!954876 (=> (not res!639538) (not e!537995))))

(declare-datatypes ((List!19562 0))(
  ( (Nil!19559) (Cons!19558 (h!20720 (_ BitVec 64)) (t!27931 List!19562)) )
))
(declare-fun arrayNoDuplicates!0 (array!57977 (_ BitVec 32) List!19562) Bool)

(assert (=> b!954876 (= res!639538 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19559))))

(declare-fun b!954877 () Bool)

(declare-fun res!639536 () Bool)

(assert (=> b!954877 (=> (not res!639536) (not e!537995))))

(assert (=> b!954877 (= res!639536 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28344 _keys!1441))))))

(declare-fun b!954878 () Bool)

(declare-fun res!639539 () Bool)

(assert (=> b!954878 (=> (not res!639539) (not e!537995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954878 (= res!639539 (validKeyInArray!0 (select (arr!27864 _keys!1441) i!735)))))

(declare-fun res!639540 () Bool)

(assert (=> start!81914 (=> (not res!639540) (not e!537995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81914 (= res!639540 (validMask!0 mask!1823))))

(assert (=> start!81914 e!537995))

(assert (=> start!81914 true))

(assert (=> start!81914 tp_is_empty!20925))

(declare-fun array_inv!21575 (array!57977) Bool)

(assert (=> start!81914 (array_inv!21575 _keys!1441)))

(declare-fun array_inv!21576 (array!57975) Bool)

(assert (=> start!81914 (and (array_inv!21576 _values!1197) e!537993)))

(assert (=> start!81914 tp!63843))

(declare-fun b!954879 () Bool)

(assert (=> b!954879 (= e!537994 tp_is_empty!20925)))

(declare-fun mapIsEmpty!33349 () Bool)

(assert (=> mapIsEmpty!33349 mapRes!33349))

(assert (= (and start!81914 res!639540) b!954874))

(assert (= (and b!954874 res!639541) b!954872))

(assert (= (and b!954872 res!639537) b!954876))

(assert (= (and b!954876 res!639538) b!954877))

(assert (= (and b!954877 res!639536) b!954878))

(assert (= (and b!954878 res!639539) b!954875))

(assert (= (and b!954871 condMapEmpty!33349) mapIsEmpty!33349))

(assert (= (and b!954871 (not condMapEmpty!33349)) mapNonEmpty!33349))

(get-info :version)

(assert (= (and mapNonEmpty!33349 ((_ is ValueCellFull!9981) mapValue!33349)) b!954879))

(assert (= (and b!954871 ((_ is ValueCellFull!9981) mapDefault!33349)) b!954873))

(assert (= start!81914 b!954871))

(declare-fun m!886559 () Bool)

(assert (=> b!954876 m!886559))

(declare-fun m!886561 () Bool)

(assert (=> mapNonEmpty!33349 m!886561))

(declare-fun m!886563 () Bool)

(assert (=> start!81914 m!886563))

(declare-fun m!886565 () Bool)

(assert (=> start!81914 m!886565))

(declare-fun m!886567 () Bool)

(assert (=> start!81914 m!886567))

(declare-fun m!886569 () Bool)

(assert (=> b!954875 m!886569))

(declare-fun m!886571 () Bool)

(assert (=> b!954875 m!886571))

(assert (=> b!954875 m!886569))

(assert (=> b!954875 m!886571))

(declare-fun m!886573 () Bool)

(assert (=> b!954875 m!886573))

(assert (=> b!954878 m!886571))

(assert (=> b!954878 m!886571))

(declare-fun m!886575 () Bool)

(assert (=> b!954878 m!886575))

(declare-fun m!886577 () Bool)

(assert (=> b!954872 m!886577))

(check-sat (not b!954875) (not b!954876) (not b!954872) b_and!29885 (not start!81914) (not b!954878) (not mapNonEmpty!33349) tp_is_empty!20925 (not b_next!18381))
(check-sat b_and!29885 (not b_next!18381))
