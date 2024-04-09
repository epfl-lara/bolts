; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82382 () Bool)

(assert start!82382)

(declare-fun b_free!18621 () Bool)

(declare-fun b_next!18621 () Bool)

(assert (=> start!82382 (= b_free!18621 (not b_next!18621))))

(declare-fun tp!64833 () Bool)

(declare-fun b_and!30127 () Bool)

(assert (=> start!82382 (= tp!64833 b_and!30127)))

(declare-fun b!960056 () Bool)

(declare-fun res!642759 () Bool)

(declare-fun e!541222 () Bool)

(assert (=> b!960056 (=> (not res!642759) (not e!541222))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58771 0))(
  ( (array!58772 (arr!28255 (Array (_ BitVec 32) (_ BitVec 64))) (size!28735 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58771)

(declare-datatypes ((V!33427 0))(
  ( (V!33428 (val!10717 Int)) )
))
(declare-datatypes ((ValueCell!10185 0))(
  ( (ValueCellFull!10185 (v!13274 V!33427)) (EmptyCell!10185) )
))
(declare-datatypes ((array!58773 0))(
  ( (array!58774 (arr!28256 (Array (_ BitVec 32) ValueCell!10185)) (size!28736 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58773)

(assert (=> b!960056 (= res!642759 (and (= (size!28736 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28735 _keys!1668) (size!28736 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33979 () Bool)

(declare-fun mapRes!33979 () Bool)

(assert (=> mapIsEmpty!33979 mapRes!33979))

(declare-fun mapNonEmpty!33979 () Bool)

(declare-fun tp!64834 () Bool)

(declare-fun e!541219 () Bool)

(assert (=> mapNonEmpty!33979 (= mapRes!33979 (and tp!64834 e!541219))))

(declare-fun mapKey!33979 () (_ BitVec 32))

(declare-fun mapValue!33979 () ValueCell!10185)

(declare-fun mapRest!33979 () (Array (_ BitVec 32) ValueCell!10185))

(assert (=> mapNonEmpty!33979 (= (arr!28256 _values!1386) (store mapRest!33979 mapKey!33979 mapValue!33979))))

(declare-fun res!642761 () Bool)

(assert (=> start!82382 (=> (not res!642761) (not e!541222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82382 (= res!642761 (validMask!0 mask!2088))))

(assert (=> start!82382 e!541222))

(assert (=> start!82382 true))

(declare-fun tp_is_empty!21333 () Bool)

(assert (=> start!82382 tp_is_empty!21333))

(declare-fun array_inv!21841 (array!58771) Bool)

(assert (=> start!82382 (array_inv!21841 _keys!1668)))

(declare-fun e!541221 () Bool)

(declare-fun array_inv!21842 (array!58773) Bool)

(assert (=> start!82382 (and (array_inv!21842 _values!1386) e!541221)))

(assert (=> start!82382 tp!64833))

(declare-fun b!960057 () Bool)

(declare-fun res!642762 () Bool)

(assert (=> b!960057 (=> (not res!642762) (not e!541222))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960057 (= res!642762 (validKeyInArray!0 (select (arr!28255 _keys!1668) i!793)))))

(declare-fun b!960058 () Bool)

(declare-fun res!642760 () Bool)

(assert (=> b!960058 (=> (not res!642760) (not e!541222))))

(declare-datatypes ((List!19771 0))(
  ( (Nil!19768) (Cons!19767 (h!20929 (_ BitVec 64)) (t!28142 List!19771)) )
))
(declare-fun arrayNoDuplicates!0 (array!58771 (_ BitVec 32) List!19771) Bool)

(assert (=> b!960058 (= res!642760 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19768))))

(declare-fun b!960059 () Bool)

(assert (=> b!960059 (= e!541222 false)))

(declare-fun lt!430568 () Bool)

(declare-fun minValue!1328 () V!33427)

(declare-fun zeroValue!1328 () V!33427)

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-datatypes ((tuple2!13908 0))(
  ( (tuple2!13909 (_1!6964 (_ BitVec 64)) (_2!6964 V!33427)) )
))
(declare-datatypes ((List!19772 0))(
  ( (Nil!19769) (Cons!19768 (h!20930 tuple2!13908) (t!28143 List!19772)) )
))
(declare-datatypes ((ListLongMap!12619 0))(
  ( (ListLongMap!12620 (toList!6325 List!19772)) )
))
(declare-fun contains!5375 (ListLongMap!12619 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3510 (array!58771 array!58773 (_ BitVec 32) (_ BitVec 32) V!33427 V!33427 (_ BitVec 32) Int) ListLongMap!12619)

(assert (=> b!960059 (= lt!430568 (contains!5375 (getCurrentListMap!3510 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28255 _keys!1668) i!793)))))

(declare-fun b!960060 () Bool)

(declare-fun res!642757 () Bool)

(assert (=> b!960060 (=> (not res!642757) (not e!541222))))

(assert (=> b!960060 (= res!642757 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28735 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28735 _keys!1668))))))

(declare-fun b!960061 () Bool)

(declare-fun e!541223 () Bool)

(assert (=> b!960061 (= e!541223 tp_is_empty!21333)))

(declare-fun b!960062 () Bool)

(assert (=> b!960062 (= e!541221 (and e!541223 mapRes!33979))))

(declare-fun condMapEmpty!33979 () Bool)

(declare-fun mapDefault!33979 () ValueCell!10185)

(assert (=> b!960062 (= condMapEmpty!33979 (= (arr!28256 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10185)) mapDefault!33979)))))

(declare-fun b!960063 () Bool)

(declare-fun res!642758 () Bool)

(assert (=> b!960063 (=> (not res!642758) (not e!541222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58771 (_ BitVec 32)) Bool)

(assert (=> b!960063 (= res!642758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960064 () Bool)

(assert (=> b!960064 (= e!541219 tp_is_empty!21333)))

(assert (= (and start!82382 res!642761) b!960056))

(assert (= (and b!960056 res!642759) b!960063))

(assert (= (and b!960063 res!642758) b!960058))

(assert (= (and b!960058 res!642760) b!960060))

(assert (= (and b!960060 res!642757) b!960057))

(assert (= (and b!960057 res!642762) b!960059))

(assert (= (and b!960062 condMapEmpty!33979) mapIsEmpty!33979))

(assert (= (and b!960062 (not condMapEmpty!33979)) mapNonEmpty!33979))

(get-info :version)

(assert (= (and mapNonEmpty!33979 ((_ is ValueCellFull!10185) mapValue!33979)) b!960064))

(assert (= (and b!960062 ((_ is ValueCellFull!10185) mapDefault!33979)) b!960061))

(assert (= start!82382 b!960062))

(declare-fun m!890465 () Bool)

(assert (=> b!960059 m!890465))

(declare-fun m!890467 () Bool)

(assert (=> b!960059 m!890467))

(assert (=> b!960059 m!890465))

(assert (=> b!960059 m!890467))

(declare-fun m!890469 () Bool)

(assert (=> b!960059 m!890469))

(declare-fun m!890471 () Bool)

(assert (=> mapNonEmpty!33979 m!890471))

(assert (=> b!960057 m!890467))

(assert (=> b!960057 m!890467))

(declare-fun m!890473 () Bool)

(assert (=> b!960057 m!890473))

(declare-fun m!890475 () Bool)

(assert (=> start!82382 m!890475))

(declare-fun m!890477 () Bool)

(assert (=> start!82382 m!890477))

(declare-fun m!890479 () Bool)

(assert (=> start!82382 m!890479))

(declare-fun m!890481 () Bool)

(assert (=> b!960058 m!890481))

(declare-fun m!890483 () Bool)

(assert (=> b!960063 m!890483))

(check-sat (not start!82382) tp_is_empty!21333 (not b!960057) b_and!30127 (not b_next!18621) (not b!960058) (not b!960059) (not b!960063) (not mapNonEmpty!33979))
(check-sat b_and!30127 (not b_next!18621))
