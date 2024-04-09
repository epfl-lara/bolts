; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82220 () Bool)

(assert start!82220)

(declare-fun b_free!18465 () Bool)

(declare-fun b_next!18465 () Bool)

(assert (=> start!82220 (= b_free!18465 (not b_next!18465))))

(declare-fun tp!64357 () Bool)

(declare-fun b_and!29971 () Bool)

(assert (=> start!82220 (= tp!64357 b_and!29971)))

(declare-fun b!957806 () Bool)

(declare-fun res!641239 () Bool)

(declare-fun e!540008 () Bool)

(assert (=> b!957806 (=> (not res!641239) (not e!540008))))

(declare-datatypes ((array!58459 0))(
  ( (array!58460 (arr!28099 (Array (_ BitVec 32) (_ BitVec 64))) (size!28579 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58459)

(declare-datatypes ((List!19665 0))(
  ( (Nil!19662) (Cons!19661 (h!20823 (_ BitVec 64)) (t!28036 List!19665)) )
))
(declare-fun arrayNoDuplicates!0 (array!58459 (_ BitVec 32) List!19665) Bool)

(assert (=> b!957806 (= res!641239 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19662))))

(declare-fun res!641238 () Bool)

(assert (=> start!82220 (=> (not res!641238) (not e!540008))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82220 (= res!641238 (validMask!0 mask!2088))))

(assert (=> start!82220 e!540008))

(assert (=> start!82220 true))

(declare-fun tp_is_empty!21171 () Bool)

(assert (=> start!82220 tp_is_empty!21171))

(declare-fun array_inv!21739 (array!58459) Bool)

(assert (=> start!82220 (array_inv!21739 _keys!1668)))

(declare-datatypes ((V!33211 0))(
  ( (V!33212 (val!10636 Int)) )
))
(declare-datatypes ((ValueCell!10104 0))(
  ( (ValueCellFull!10104 (v!13193 V!33211)) (EmptyCell!10104) )
))
(declare-datatypes ((array!58461 0))(
  ( (array!58462 (arr!28100 (Array (_ BitVec 32) ValueCell!10104)) (size!28580 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58461)

(declare-fun e!540004 () Bool)

(declare-fun array_inv!21740 (array!58461) Bool)

(assert (=> start!82220 (and (array_inv!21740 _values!1386) e!540004)))

(assert (=> start!82220 tp!64357))

(declare-fun b!957807 () Bool)

(declare-fun res!641237 () Bool)

(assert (=> b!957807 (=> (not res!641237) (not e!540008))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957807 (= res!641237 (and (= (size!28580 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28579 _keys!1668) (size!28580 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957808 () Bool)

(declare-fun res!641236 () Bool)

(assert (=> b!957808 (=> (not res!641236) (not e!540008))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!957808 (= res!641236 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28579 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28579 _keys!1668))))))

(declare-fun b!957809 () Bool)

(declare-fun e!540005 () Bool)

(declare-fun mapRes!33736 () Bool)

(assert (=> b!957809 (= e!540004 (and e!540005 mapRes!33736))))

(declare-fun condMapEmpty!33736 () Bool)

(declare-fun mapDefault!33736 () ValueCell!10104)

(assert (=> b!957809 (= condMapEmpty!33736 (= (arr!28100 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10104)) mapDefault!33736)))))

(declare-fun b!957810 () Bool)

(declare-fun res!641240 () Bool)

(assert (=> b!957810 (=> (not res!641240) (not e!540008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957810 (= res!641240 (validKeyInArray!0 (select (arr!28099 _keys!1668) i!793)))))

(declare-fun b!957811 () Bool)

(assert (=> b!957811 (= e!540008 false)))

(declare-fun lt!430334 () Bool)

(declare-fun minValue!1328 () V!33211)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33211)

(declare-datatypes ((tuple2!13798 0))(
  ( (tuple2!13799 (_1!6909 (_ BitVec 64)) (_2!6909 V!33211)) )
))
(declare-datatypes ((List!19666 0))(
  ( (Nil!19663) (Cons!19662 (h!20824 tuple2!13798) (t!28037 List!19666)) )
))
(declare-datatypes ((ListLongMap!12509 0))(
  ( (ListLongMap!12510 (toList!6270 List!19666)) )
))
(declare-fun contains!5323 (ListLongMap!12509 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3455 (array!58459 array!58461 (_ BitVec 32) (_ BitVec 32) V!33211 V!33211 (_ BitVec 32) Int) ListLongMap!12509)

(assert (=> b!957811 (= lt!430334 (contains!5323 (getCurrentListMap!3455 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28099 _keys!1668) i!793)))))

(declare-fun b!957812 () Bool)

(assert (=> b!957812 (= e!540005 tp_is_empty!21171)))

(declare-fun b!957813 () Bool)

(declare-fun res!641241 () Bool)

(assert (=> b!957813 (=> (not res!641241) (not e!540008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58459 (_ BitVec 32)) Bool)

(assert (=> b!957813 (= res!641241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapIsEmpty!33736 () Bool)

(assert (=> mapIsEmpty!33736 mapRes!33736))

(declare-fun b!957814 () Bool)

(declare-fun e!540007 () Bool)

(assert (=> b!957814 (= e!540007 tp_is_empty!21171)))

(declare-fun mapNonEmpty!33736 () Bool)

(declare-fun tp!64356 () Bool)

(assert (=> mapNonEmpty!33736 (= mapRes!33736 (and tp!64356 e!540007))))

(declare-fun mapRest!33736 () (Array (_ BitVec 32) ValueCell!10104))

(declare-fun mapKey!33736 () (_ BitVec 32))

(declare-fun mapValue!33736 () ValueCell!10104)

(assert (=> mapNonEmpty!33736 (= (arr!28100 _values!1386) (store mapRest!33736 mapKey!33736 mapValue!33736))))

(assert (= (and start!82220 res!641238) b!957807))

(assert (= (and b!957807 res!641237) b!957813))

(assert (= (and b!957813 res!641241) b!957806))

(assert (= (and b!957806 res!641239) b!957808))

(assert (= (and b!957808 res!641236) b!957810))

(assert (= (and b!957810 res!641240) b!957811))

(assert (= (and b!957809 condMapEmpty!33736) mapIsEmpty!33736))

(assert (= (and b!957809 (not condMapEmpty!33736)) mapNonEmpty!33736))

(get-info :version)

(assert (= (and mapNonEmpty!33736 ((_ is ValueCellFull!10104) mapValue!33736)) b!957814))

(assert (= (and b!957809 ((_ is ValueCellFull!10104) mapDefault!33736)) b!957812))

(assert (= start!82220 b!957809))

(declare-fun m!888713 () Bool)

(assert (=> b!957810 m!888713))

(assert (=> b!957810 m!888713))

(declare-fun m!888715 () Bool)

(assert (=> b!957810 m!888715))

(declare-fun m!888717 () Bool)

(assert (=> b!957813 m!888717))

(declare-fun m!888719 () Bool)

(assert (=> b!957806 m!888719))

(declare-fun m!888721 () Bool)

(assert (=> start!82220 m!888721))

(declare-fun m!888723 () Bool)

(assert (=> start!82220 m!888723))

(declare-fun m!888725 () Bool)

(assert (=> start!82220 m!888725))

(declare-fun m!888727 () Bool)

(assert (=> b!957811 m!888727))

(assert (=> b!957811 m!888713))

(assert (=> b!957811 m!888727))

(assert (=> b!957811 m!888713))

(declare-fun m!888729 () Bool)

(assert (=> b!957811 m!888729))

(declare-fun m!888731 () Bool)

(assert (=> mapNonEmpty!33736 m!888731))

(check-sat (not mapNonEmpty!33736) (not b!957806) (not b!957810) (not b_next!18465) (not b!957813) (not b!957811) (not start!82220) tp_is_empty!21171 b_and!29971)
(check-sat b_and!29971 (not b_next!18465))
