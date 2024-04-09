; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81890 () Bool)

(assert start!81890)

(declare-fun b_free!18357 () Bool)

(declare-fun b_next!18357 () Bool)

(assert (=> start!81890 (= b_free!18357 (not b_next!18357))))

(declare-fun tp!63772 () Bool)

(declare-fun b_and!29861 () Bool)

(assert (=> start!81890 (= tp!63772 b_and!29861)))

(declare-fun mapNonEmpty!33313 () Bool)

(declare-fun mapRes!33313 () Bool)

(declare-fun tp!63771 () Bool)

(declare-fun e!537814 () Bool)

(assert (=> mapNonEmpty!33313 (= mapRes!33313 (and tp!63771 e!537814))))

(declare-fun mapKey!33313 () (_ BitVec 32))

(declare-datatypes ((V!32851 0))(
  ( (V!32852 (val!10501 Int)) )
))
(declare-datatypes ((ValueCell!9969 0))(
  ( (ValueCellFull!9969 (v!13056 V!32851)) (EmptyCell!9969) )
))
(declare-datatypes ((array!57927 0))(
  ( (array!57928 (arr!27839 (Array (_ BitVec 32) ValueCell!9969)) (size!28319 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57927)

(declare-fun mapRest!33313 () (Array (_ BitVec 32) ValueCell!9969))

(declare-fun mapValue!33313 () ValueCell!9969)

(assert (=> mapNonEmpty!33313 (= (arr!27839 _values!1197) (store mapRest!33313 mapKey!33313 mapValue!33313))))

(declare-fun b!954547 () Bool)

(declare-fun e!537815 () Bool)

(declare-fun e!537813 () Bool)

(assert (=> b!954547 (= e!537815 (and e!537813 mapRes!33313))))

(declare-fun condMapEmpty!33313 () Bool)

(declare-fun mapDefault!33313 () ValueCell!9969)

(assert (=> b!954547 (= condMapEmpty!33313 (= (arr!27839 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9969)) mapDefault!33313)))))

(declare-fun b!954548 () Bool)

(declare-fun res!639325 () Bool)

(declare-fun e!537816 () Bool)

(assert (=> b!954548 (=> (not res!639325) (not e!537816))))

(declare-datatypes ((array!57929 0))(
  ( (array!57930 (arr!27840 (Array (_ BitVec 32) (_ BitVec 64))) (size!28320 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57929)

(declare-datatypes ((List!19544 0))(
  ( (Nil!19541) (Cons!19540 (h!20702 (_ BitVec 64)) (t!27913 List!19544)) )
))
(declare-fun arrayNoDuplicates!0 (array!57929 (_ BitVec 32) List!19544) Bool)

(assert (=> b!954548 (= res!639325 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19541))))

(declare-fun mapIsEmpty!33313 () Bool)

(assert (=> mapIsEmpty!33313 mapRes!33313))

(declare-fun b!954549 () Bool)

(declare-fun res!639320 () Bool)

(assert (=> b!954549 (=> (not res!639320) (not e!537816))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57929 (_ BitVec 32)) Bool)

(assert (=> b!954549 (= res!639320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954550 () Bool)

(declare-fun res!639321 () Bool)

(assert (=> b!954550 (=> (not res!639321) (not e!537816))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!954550 (= res!639321 (and (= (size!28319 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28320 _keys!1441) (size!28319 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954551 () Bool)

(declare-fun tp_is_empty!20901 () Bool)

(assert (=> b!954551 (= e!537813 tp_is_empty!20901)))

(declare-fun b!954552 () Bool)

(assert (=> b!954552 (= e!537816 false)))

(declare-fun lt!429874 () Bool)

(declare-fun zeroValue!1139 () V!32851)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32851)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13728 0))(
  ( (tuple2!13729 (_1!6874 (_ BitVec 64)) (_2!6874 V!32851)) )
))
(declare-datatypes ((List!19545 0))(
  ( (Nil!19542) (Cons!19541 (h!20703 tuple2!13728) (t!27914 List!19545)) )
))
(declare-datatypes ((ListLongMap!12439 0))(
  ( (ListLongMap!12440 (toList!6235 List!19545)) )
))
(declare-fun contains!5285 (ListLongMap!12439 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3420 (array!57929 array!57927 (_ BitVec 32) (_ BitVec 32) V!32851 V!32851 (_ BitVec 32) Int) ListLongMap!12439)

(assert (=> b!954552 (= lt!429874 (contains!5285 (getCurrentListMap!3420 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27840 _keys!1441) i!735)))))

(declare-fun b!954553 () Bool)

(assert (=> b!954553 (= e!537814 tp_is_empty!20901)))

(declare-fun b!954554 () Bool)

(declare-fun res!639323 () Bool)

(assert (=> b!954554 (=> (not res!639323) (not e!537816))))

(assert (=> b!954554 (= res!639323 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28320 _keys!1441))))))

(declare-fun b!954555 () Bool)

(declare-fun res!639324 () Bool)

(assert (=> b!954555 (=> (not res!639324) (not e!537816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954555 (= res!639324 (validKeyInArray!0 (select (arr!27840 _keys!1441) i!735)))))

(declare-fun res!639322 () Bool)

(assert (=> start!81890 (=> (not res!639322) (not e!537816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81890 (= res!639322 (validMask!0 mask!1823))))

(assert (=> start!81890 e!537816))

(assert (=> start!81890 true))

(assert (=> start!81890 tp_is_empty!20901))

(declare-fun array_inv!21557 (array!57929) Bool)

(assert (=> start!81890 (array_inv!21557 _keys!1441)))

(declare-fun array_inv!21558 (array!57927) Bool)

(assert (=> start!81890 (and (array_inv!21558 _values!1197) e!537815)))

(assert (=> start!81890 tp!63772))

(assert (= (and start!81890 res!639322) b!954550))

(assert (= (and b!954550 res!639321) b!954549))

(assert (= (and b!954549 res!639320) b!954548))

(assert (= (and b!954548 res!639325) b!954554))

(assert (= (and b!954554 res!639323) b!954555))

(assert (= (and b!954555 res!639324) b!954552))

(assert (= (and b!954547 condMapEmpty!33313) mapIsEmpty!33313))

(assert (= (and b!954547 (not condMapEmpty!33313)) mapNonEmpty!33313))

(get-info :version)

(assert (= (and mapNonEmpty!33313 ((_ is ValueCellFull!9969) mapValue!33313)) b!954553))

(assert (= (and b!954547 ((_ is ValueCellFull!9969) mapDefault!33313)) b!954551))

(assert (= start!81890 b!954547))

(declare-fun m!886319 () Bool)

(assert (=> mapNonEmpty!33313 m!886319))

(declare-fun m!886321 () Bool)

(assert (=> b!954552 m!886321))

(declare-fun m!886323 () Bool)

(assert (=> b!954552 m!886323))

(assert (=> b!954552 m!886321))

(assert (=> b!954552 m!886323))

(declare-fun m!886325 () Bool)

(assert (=> b!954552 m!886325))

(declare-fun m!886327 () Bool)

(assert (=> b!954549 m!886327))

(declare-fun m!886329 () Bool)

(assert (=> start!81890 m!886329))

(declare-fun m!886331 () Bool)

(assert (=> start!81890 m!886331))

(declare-fun m!886333 () Bool)

(assert (=> start!81890 m!886333))

(assert (=> b!954555 m!886323))

(assert (=> b!954555 m!886323))

(declare-fun m!886335 () Bool)

(assert (=> b!954555 m!886335))

(declare-fun m!886337 () Bool)

(assert (=> b!954548 m!886337))

(check-sat (not b!954552) (not b!954548) (not b!954549) (not b_next!18357) (not mapNonEmpty!33313) (not start!81890) tp_is_empty!20901 b_and!29861 (not b!954555))
(check-sat b_and!29861 (not b_next!18357))
