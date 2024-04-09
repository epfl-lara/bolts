; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82334 () Bool)

(assert start!82334)

(declare-fun b_free!18579 () Bool)

(declare-fun b_next!18579 () Bool)

(assert (=> start!82334 (= b_free!18579 (not b_next!18579))))

(declare-fun tp!64698 () Bool)

(declare-fun b_and!30085 () Bool)

(assert (=> start!82334 (= tp!64698 b_and!30085)))

(declare-fun b!959422 () Bool)

(declare-fun res!642342 () Bool)

(declare-fun e!540862 () Bool)

(assert (=> b!959422 (=> (not res!642342) (not e!540862))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58677 0))(
  ( (array!58678 (arr!28208 (Array (_ BitVec 32) (_ BitVec 64))) (size!28688 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58677)

(declare-datatypes ((V!33363 0))(
  ( (V!33364 (val!10693 Int)) )
))
(declare-datatypes ((ValueCell!10161 0))(
  ( (ValueCellFull!10161 (v!13250 V!33363)) (EmptyCell!10161) )
))
(declare-datatypes ((array!58679 0))(
  ( (array!58680 (arr!28209 (Array (_ BitVec 32) ValueCell!10161)) (size!28689 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58679)

(assert (=> b!959422 (= res!642342 (and (= (size!28689 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28688 _keys!1668) (size!28689 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959423 () Bool)

(assert (=> b!959423 (= e!540862 (not (bvsle #b00000000000000000000000000000000 (size!28688 _keys!1668))))))

(declare-fun minValue!1328 () V!33363)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33363)

(declare-fun i!793 () (_ BitVec 32))

(declare-datatypes ((tuple2!13878 0))(
  ( (tuple2!13879 (_1!6949 (_ BitVec 64)) (_2!6949 V!33363)) )
))
(declare-datatypes ((List!19742 0))(
  ( (Nil!19739) (Cons!19738 (h!20900 tuple2!13878) (t!28113 List!19742)) )
))
(declare-datatypes ((ListLongMap!12589 0))(
  ( (ListLongMap!12590 (toList!6310 List!19742)) )
))
(declare-fun contains!5363 (ListLongMap!12589 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3495 (array!58677 array!58679 (_ BitVec 32) (_ BitVec 32) V!33363 V!33363 (_ BitVec 32) Int) ListLongMap!12589)

(assert (=> b!959423 (contains!5363 (getCurrentListMap!3495 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28208 _keys!1668) i!793))))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((Unit!32169 0))(
  ( (Unit!32170) )
))
(declare-fun lt!430505 () Unit!32169)

(declare-fun lemmaInListMapFromThenInFromSmaller!14 (array!58677 array!58679 (_ BitVec 32) (_ BitVec 32) V!33363 V!33363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32169)

(assert (=> b!959423 (= lt!430505 (lemmaInListMapFromThenInFromSmaller!14 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun b!959424 () Bool)

(declare-fun res!642344 () Bool)

(assert (=> b!959424 (=> (not res!642344) (not e!540862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959424 (= res!642344 (validKeyInArray!0 (select (arr!28208 _keys!1668) i!793)))))

(declare-fun b!959425 () Bool)

(declare-fun e!540861 () Bool)

(declare-fun tp_is_empty!21285 () Bool)

(assert (=> b!959425 (= e!540861 tp_is_empty!21285)))

(declare-fun b!959426 () Bool)

(declare-fun res!642341 () Bool)

(assert (=> b!959426 (=> (not res!642341) (not e!540862))))

(declare-datatypes ((List!19743 0))(
  ( (Nil!19740) (Cons!19739 (h!20901 (_ BitVec 64)) (t!28114 List!19743)) )
))
(declare-fun arrayNoDuplicates!0 (array!58677 (_ BitVec 32) List!19743) Bool)

(assert (=> b!959426 (= res!642341 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19740))))

(declare-fun b!959427 () Bool)

(declare-fun e!540860 () Bool)

(assert (=> b!959427 (= e!540860 tp_is_empty!21285)))

(declare-fun res!642339 () Bool)

(assert (=> start!82334 (=> (not res!642339) (not e!540862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82334 (= res!642339 (validMask!0 mask!2088))))

(assert (=> start!82334 e!540862))

(assert (=> start!82334 true))

(assert (=> start!82334 tp_is_empty!21285))

(declare-fun array_inv!21811 (array!58677) Bool)

(assert (=> start!82334 (array_inv!21811 _keys!1668)))

(declare-fun e!540859 () Bool)

(declare-fun array_inv!21812 (array!58679) Bool)

(assert (=> start!82334 (and (array_inv!21812 _values!1386) e!540859)))

(assert (=> start!82334 tp!64698))

(declare-fun b!959428 () Bool)

(declare-fun mapRes!33907 () Bool)

(assert (=> b!959428 (= e!540859 (and e!540860 mapRes!33907))))

(declare-fun condMapEmpty!33907 () Bool)

(declare-fun mapDefault!33907 () ValueCell!10161)

(assert (=> b!959428 (= condMapEmpty!33907 (= (arr!28209 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10161)) mapDefault!33907)))))

(declare-fun b!959429 () Bool)

(declare-fun res!642340 () Bool)

(assert (=> b!959429 (=> (not res!642340) (not e!540862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58677 (_ BitVec 32)) Bool)

(assert (=> b!959429 (= res!642340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapIsEmpty!33907 () Bool)

(assert (=> mapIsEmpty!33907 mapRes!33907))

(declare-fun b!959430 () Bool)

(declare-fun res!642345 () Bool)

(assert (=> b!959430 (=> (not res!642345) (not e!540862))))

(assert (=> b!959430 (= res!642345 (contains!5363 (getCurrentListMap!3495 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28208 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33907 () Bool)

(declare-fun tp!64699 () Bool)

(assert (=> mapNonEmpty!33907 (= mapRes!33907 (and tp!64699 e!540861))))

(declare-fun mapValue!33907 () ValueCell!10161)

(declare-fun mapRest!33907 () (Array (_ BitVec 32) ValueCell!10161))

(declare-fun mapKey!33907 () (_ BitVec 32))

(assert (=> mapNonEmpty!33907 (= (arr!28209 _values!1386) (store mapRest!33907 mapKey!33907 mapValue!33907))))

(declare-fun b!959431 () Bool)

(declare-fun res!642343 () Bool)

(assert (=> b!959431 (=> (not res!642343) (not e!540862))))

(assert (=> b!959431 (= res!642343 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28688 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28688 _keys!1668))))))

(assert (= (and start!82334 res!642339) b!959422))

(assert (= (and b!959422 res!642342) b!959429))

(assert (= (and b!959429 res!642340) b!959426))

(assert (= (and b!959426 res!642341) b!959431))

(assert (= (and b!959431 res!642343) b!959424))

(assert (= (and b!959424 res!642344) b!959430))

(assert (= (and b!959430 res!642345) b!959423))

(assert (= (and b!959428 condMapEmpty!33907) mapIsEmpty!33907))

(assert (= (and b!959428 (not condMapEmpty!33907)) mapNonEmpty!33907))

(get-info :version)

(assert (= (and mapNonEmpty!33907 ((_ is ValueCellFull!10161) mapValue!33907)) b!959425))

(assert (= (and b!959428 ((_ is ValueCellFull!10161) mapDefault!33907)) b!959427))

(assert (= start!82334 b!959428))

(declare-fun m!890003 () Bool)

(assert (=> mapNonEmpty!33907 m!890003))

(declare-fun m!890005 () Bool)

(assert (=> b!959429 m!890005))

(declare-fun m!890007 () Bool)

(assert (=> start!82334 m!890007))

(declare-fun m!890009 () Bool)

(assert (=> start!82334 m!890009))

(declare-fun m!890011 () Bool)

(assert (=> start!82334 m!890011))

(declare-fun m!890013 () Bool)

(assert (=> b!959424 m!890013))

(assert (=> b!959424 m!890013))

(declare-fun m!890015 () Bool)

(assert (=> b!959424 m!890015))

(declare-fun m!890017 () Bool)

(assert (=> b!959430 m!890017))

(assert (=> b!959430 m!890013))

(assert (=> b!959430 m!890017))

(assert (=> b!959430 m!890013))

(declare-fun m!890019 () Bool)

(assert (=> b!959430 m!890019))

(declare-fun m!890021 () Bool)

(assert (=> b!959423 m!890021))

(assert (=> b!959423 m!890013))

(assert (=> b!959423 m!890021))

(assert (=> b!959423 m!890013))

(declare-fun m!890023 () Bool)

(assert (=> b!959423 m!890023))

(declare-fun m!890025 () Bool)

(assert (=> b!959423 m!890025))

(declare-fun m!890027 () Bool)

(assert (=> b!959426 m!890027))

(check-sat (not b!959424) (not b!959423) (not start!82334) (not mapNonEmpty!33907) (not b!959430) (not b_next!18579) (not b!959426) (not b!959429) b_and!30085 tp_is_empty!21285)
(check-sat b_and!30085 (not b_next!18579))
