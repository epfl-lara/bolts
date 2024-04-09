; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82238 () Bool)

(assert start!82238)

(declare-fun b_free!18483 () Bool)

(declare-fun b_next!18483 () Bool)

(assert (=> start!82238 (= b_free!18483 (not b_next!18483))))

(declare-fun tp!64411 () Bool)

(declare-fun b_and!29989 () Bool)

(assert (=> start!82238 (= tp!64411 b_and!29989)))

(declare-fun b!958049 () Bool)

(declare-fun e!540142 () Bool)

(declare-fun tp_is_empty!21189 () Bool)

(assert (=> b!958049 (= e!540142 tp_is_empty!21189)))

(declare-fun b!958050 () Bool)

(declare-fun res!641403 () Bool)

(declare-fun e!540141 () Bool)

(assert (=> b!958050 (=> (not res!641403) (not e!540141))))

(declare-datatypes ((array!58495 0))(
  ( (array!58496 (arr!28117 (Array (_ BitVec 32) (_ BitVec 64))) (size!28597 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58495)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958050 (= res!641403 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28597 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28597 _keys!1668))))))

(declare-fun b!958051 () Bool)

(declare-fun res!641400 () Bool)

(assert (=> b!958051 (=> (not res!641400) (not e!540141))))

(declare-datatypes ((List!19678 0))(
  ( (Nil!19675) (Cons!19674 (h!20836 (_ BitVec 64)) (t!28049 List!19678)) )
))
(declare-fun arrayNoDuplicates!0 (array!58495 (_ BitVec 32) List!19678) Bool)

(assert (=> b!958051 (= res!641400 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19675))))

(declare-fun mapIsEmpty!33763 () Bool)

(declare-fun mapRes!33763 () Bool)

(assert (=> mapIsEmpty!33763 mapRes!33763))

(declare-fun mapNonEmpty!33763 () Bool)

(declare-fun tp!64410 () Bool)

(declare-fun e!540139 () Bool)

(assert (=> mapNonEmpty!33763 (= mapRes!33763 (and tp!64410 e!540139))))

(declare-datatypes ((V!33235 0))(
  ( (V!33236 (val!10645 Int)) )
))
(declare-datatypes ((ValueCell!10113 0))(
  ( (ValueCellFull!10113 (v!13202 V!33235)) (EmptyCell!10113) )
))
(declare-fun mapValue!33763 () ValueCell!10113)

(declare-fun mapKey!33763 () (_ BitVec 32))

(declare-fun mapRest!33763 () (Array (_ BitVec 32) ValueCell!10113))

(declare-datatypes ((array!58497 0))(
  ( (array!58498 (arr!28118 (Array (_ BitVec 32) ValueCell!10113)) (size!28598 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58497)

(assert (=> mapNonEmpty!33763 (= (arr!28118 _values!1386) (store mapRest!33763 mapKey!33763 mapValue!33763))))

(declare-fun b!958052 () Bool)

(assert (=> b!958052 (= e!540139 tp_is_empty!21189)))

(declare-fun b!958054 () Bool)

(declare-fun res!641399 () Bool)

(assert (=> b!958054 (=> (not res!641399) (not e!540141))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!958054 (= res!641399 (and (= (size!28598 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28597 _keys!1668) (size!28598 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958055 () Bool)

(declare-fun res!641402 () Bool)

(assert (=> b!958055 (=> (not res!641402) (not e!540141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58495 (_ BitVec 32)) Bool)

(assert (=> b!958055 (= res!641402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958056 () Bool)

(declare-fun res!641401 () Bool)

(assert (=> b!958056 (=> (not res!641401) (not e!540141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958056 (= res!641401 (validKeyInArray!0 (select (arr!28117 _keys!1668) i!793)))))

(declare-fun b!958057 () Bool)

(declare-fun e!540140 () Bool)

(assert (=> b!958057 (= e!540140 (and e!540142 mapRes!33763))))

(declare-fun condMapEmpty!33763 () Bool)

(declare-fun mapDefault!33763 () ValueCell!10113)

(assert (=> b!958057 (= condMapEmpty!33763 (= (arr!28118 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10113)) mapDefault!33763)))))

(declare-fun b!958053 () Bool)

(assert (=> b!958053 (= e!540141 false)))

(declare-fun minValue!1328 () V!33235)

(declare-fun lt!430361 () Bool)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33235)

(declare-datatypes ((tuple2!13812 0))(
  ( (tuple2!13813 (_1!6916 (_ BitVec 64)) (_2!6916 V!33235)) )
))
(declare-datatypes ((List!19679 0))(
  ( (Nil!19676) (Cons!19675 (h!20837 tuple2!13812) (t!28050 List!19679)) )
))
(declare-datatypes ((ListLongMap!12523 0))(
  ( (ListLongMap!12524 (toList!6277 List!19679)) )
))
(declare-fun contains!5330 (ListLongMap!12523 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3462 (array!58495 array!58497 (_ BitVec 32) (_ BitVec 32) V!33235 V!33235 (_ BitVec 32) Int) ListLongMap!12523)

(assert (=> b!958053 (= lt!430361 (contains!5330 (getCurrentListMap!3462 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28117 _keys!1668) i!793)))))

(declare-fun res!641398 () Bool)

(assert (=> start!82238 (=> (not res!641398) (not e!540141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82238 (= res!641398 (validMask!0 mask!2088))))

(assert (=> start!82238 e!540141))

(assert (=> start!82238 true))

(assert (=> start!82238 tp_is_empty!21189))

(declare-fun array_inv!21753 (array!58495) Bool)

(assert (=> start!82238 (array_inv!21753 _keys!1668)))

(declare-fun array_inv!21754 (array!58497) Bool)

(assert (=> start!82238 (and (array_inv!21754 _values!1386) e!540140)))

(assert (=> start!82238 tp!64411))

(assert (= (and start!82238 res!641398) b!958054))

(assert (= (and b!958054 res!641399) b!958055))

(assert (= (and b!958055 res!641402) b!958051))

(assert (= (and b!958051 res!641400) b!958050))

(assert (= (and b!958050 res!641403) b!958056))

(assert (= (and b!958056 res!641401) b!958053))

(assert (= (and b!958057 condMapEmpty!33763) mapIsEmpty!33763))

(assert (= (and b!958057 (not condMapEmpty!33763)) mapNonEmpty!33763))

(get-info :version)

(assert (= (and mapNonEmpty!33763 ((_ is ValueCellFull!10113) mapValue!33763)) b!958052))

(assert (= (and b!958057 ((_ is ValueCellFull!10113) mapDefault!33763)) b!958049))

(assert (= start!82238 b!958057))

(declare-fun m!888893 () Bool)

(assert (=> b!958051 m!888893))

(declare-fun m!888895 () Bool)

(assert (=> b!958056 m!888895))

(assert (=> b!958056 m!888895))

(declare-fun m!888897 () Bool)

(assert (=> b!958056 m!888897))

(declare-fun m!888899 () Bool)

(assert (=> mapNonEmpty!33763 m!888899))

(declare-fun m!888901 () Bool)

(assert (=> start!82238 m!888901))

(declare-fun m!888903 () Bool)

(assert (=> start!82238 m!888903))

(declare-fun m!888905 () Bool)

(assert (=> start!82238 m!888905))

(declare-fun m!888907 () Bool)

(assert (=> b!958053 m!888907))

(assert (=> b!958053 m!888895))

(assert (=> b!958053 m!888907))

(assert (=> b!958053 m!888895))

(declare-fun m!888909 () Bool)

(assert (=> b!958053 m!888909))

(declare-fun m!888911 () Bool)

(assert (=> b!958055 m!888911))

(check-sat (not start!82238) tp_is_empty!21189 (not b!958056) (not mapNonEmpty!33763) (not b_next!18483) (not b!958051) (not b!958055) (not b!958053) b_and!29989)
(check-sat b_and!29989 (not b_next!18483))
