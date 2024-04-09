; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82250 () Bool)

(assert start!82250)

(declare-fun b_free!18495 () Bool)

(declare-fun b_next!18495 () Bool)

(assert (=> start!82250 (= b_free!18495 (not b_next!18495))))

(declare-fun tp!64447 () Bool)

(declare-fun b_and!30001 () Bool)

(assert (=> start!82250 (= tp!64447 b_and!30001)))

(declare-fun b!958211 () Bool)

(declare-fun res!641511 () Bool)

(declare-fun e!540229 () Bool)

(assert (=> b!958211 (=> (not res!641511) (not e!540229))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58519 0))(
  ( (array!58520 (arr!28129 (Array (_ BitVec 32) (_ BitVec 64))) (size!28609 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58519)

(declare-datatypes ((V!33251 0))(
  ( (V!33252 (val!10651 Int)) )
))
(declare-datatypes ((ValueCell!10119 0))(
  ( (ValueCellFull!10119 (v!13208 V!33251)) (EmptyCell!10119) )
))
(declare-datatypes ((array!58521 0))(
  ( (array!58522 (arr!28130 (Array (_ BitVec 32) ValueCell!10119)) (size!28610 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58521)

(assert (=> b!958211 (= res!641511 (and (= (size!28610 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28609 _keys!1668) (size!28610 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958212 () Bool)

(declare-fun res!641507 () Bool)

(assert (=> b!958212 (=> (not res!641507) (not e!540229))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958212 (= res!641507 (validKeyInArray!0 (select (arr!28129 _keys!1668) i!793)))))

(declare-fun res!641508 () Bool)

(assert (=> start!82250 (=> (not res!641508) (not e!540229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82250 (= res!641508 (validMask!0 mask!2088))))

(assert (=> start!82250 e!540229))

(assert (=> start!82250 true))

(declare-fun tp_is_empty!21201 () Bool)

(assert (=> start!82250 tp_is_empty!21201))

(declare-fun array_inv!21759 (array!58519) Bool)

(assert (=> start!82250 (array_inv!21759 _keys!1668)))

(declare-fun e!540230 () Bool)

(declare-fun array_inv!21760 (array!58521) Bool)

(assert (=> start!82250 (and (array_inv!21760 _values!1386) e!540230)))

(assert (=> start!82250 tp!64447))

(declare-fun b!958213 () Bool)

(declare-fun res!641510 () Bool)

(assert (=> b!958213 (=> (not res!641510) (not e!540229))))

(declare-datatypes ((List!19685 0))(
  ( (Nil!19682) (Cons!19681 (h!20843 (_ BitVec 64)) (t!28056 List!19685)) )
))
(declare-fun arrayNoDuplicates!0 (array!58519 (_ BitVec 32) List!19685) Bool)

(assert (=> b!958213 (= res!641510 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19682))))

(declare-fun b!958214 () Bool)

(declare-fun e!540231 () Bool)

(assert (=> b!958214 (= e!540231 tp_is_empty!21201)))

(declare-fun mapIsEmpty!33781 () Bool)

(declare-fun mapRes!33781 () Bool)

(assert (=> mapIsEmpty!33781 mapRes!33781))

(declare-fun b!958215 () Bool)

(declare-fun res!641509 () Bool)

(assert (=> b!958215 (=> (not res!641509) (not e!540229))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958215 (= res!641509 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28609 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28609 _keys!1668))))))

(declare-fun mapNonEmpty!33781 () Bool)

(declare-fun tp!64446 () Bool)

(declare-fun e!540232 () Bool)

(assert (=> mapNonEmpty!33781 (= mapRes!33781 (and tp!64446 e!540232))))

(declare-fun mapRest!33781 () (Array (_ BitVec 32) ValueCell!10119))

(declare-fun mapKey!33781 () (_ BitVec 32))

(declare-fun mapValue!33781 () ValueCell!10119)

(assert (=> mapNonEmpty!33781 (= (arr!28130 _values!1386) (store mapRest!33781 mapKey!33781 mapValue!33781))))

(declare-fun b!958216 () Bool)

(assert (=> b!958216 (= e!540229 false)))

(declare-fun minValue!1328 () V!33251)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33251)

(declare-fun lt!430379 () Bool)

(declare-datatypes ((tuple2!13820 0))(
  ( (tuple2!13821 (_1!6920 (_ BitVec 64)) (_2!6920 V!33251)) )
))
(declare-datatypes ((List!19686 0))(
  ( (Nil!19683) (Cons!19682 (h!20844 tuple2!13820) (t!28057 List!19686)) )
))
(declare-datatypes ((ListLongMap!12531 0))(
  ( (ListLongMap!12532 (toList!6281 List!19686)) )
))
(declare-fun contains!5334 (ListLongMap!12531 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3466 (array!58519 array!58521 (_ BitVec 32) (_ BitVec 32) V!33251 V!33251 (_ BitVec 32) Int) ListLongMap!12531)

(assert (=> b!958216 (= lt!430379 (contains!5334 (getCurrentListMap!3466 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28129 _keys!1668) i!793)))))

(declare-fun b!958217 () Bool)

(assert (=> b!958217 (= e!540232 tp_is_empty!21201)))

(declare-fun b!958218 () Bool)

(declare-fun res!641506 () Bool)

(assert (=> b!958218 (=> (not res!641506) (not e!540229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58519 (_ BitVec 32)) Bool)

(assert (=> b!958218 (= res!641506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958219 () Bool)

(assert (=> b!958219 (= e!540230 (and e!540231 mapRes!33781))))

(declare-fun condMapEmpty!33781 () Bool)

(declare-fun mapDefault!33781 () ValueCell!10119)

(assert (=> b!958219 (= condMapEmpty!33781 (= (arr!28130 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10119)) mapDefault!33781)))))

(assert (= (and start!82250 res!641508) b!958211))

(assert (= (and b!958211 res!641511) b!958218))

(assert (= (and b!958218 res!641506) b!958213))

(assert (= (and b!958213 res!641510) b!958215))

(assert (= (and b!958215 res!641509) b!958212))

(assert (= (and b!958212 res!641507) b!958216))

(assert (= (and b!958219 condMapEmpty!33781) mapIsEmpty!33781))

(assert (= (and b!958219 (not condMapEmpty!33781)) mapNonEmpty!33781))

(get-info :version)

(assert (= (and mapNonEmpty!33781 ((_ is ValueCellFull!10119) mapValue!33781)) b!958217))

(assert (= (and b!958219 ((_ is ValueCellFull!10119) mapDefault!33781)) b!958214))

(assert (= start!82250 b!958219))

(declare-fun m!889013 () Bool)

(assert (=> b!958213 m!889013))

(declare-fun m!889015 () Bool)

(assert (=> start!82250 m!889015))

(declare-fun m!889017 () Bool)

(assert (=> start!82250 m!889017))

(declare-fun m!889019 () Bool)

(assert (=> start!82250 m!889019))

(declare-fun m!889021 () Bool)

(assert (=> b!958216 m!889021))

(declare-fun m!889023 () Bool)

(assert (=> b!958216 m!889023))

(assert (=> b!958216 m!889021))

(assert (=> b!958216 m!889023))

(declare-fun m!889025 () Bool)

(assert (=> b!958216 m!889025))

(declare-fun m!889027 () Bool)

(assert (=> mapNonEmpty!33781 m!889027))

(assert (=> b!958212 m!889023))

(assert (=> b!958212 m!889023))

(declare-fun m!889029 () Bool)

(assert (=> b!958212 m!889029))

(declare-fun m!889031 () Bool)

(assert (=> b!958218 m!889031))

(check-sat (not b!958212) (not b_next!18495) (not b!958213) tp_is_empty!21201 (not start!82250) (not b!958218) b_and!30001 (not mapNonEmpty!33781) (not b!958216))
(check-sat b_and!30001 (not b_next!18495))
