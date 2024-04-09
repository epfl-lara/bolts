; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109518 () Bool)

(assert start!109518)

(declare-fun b_free!28971 () Bool)

(declare-fun b_next!28971 () Bool)

(assert (=> start!109518 (= b_free!28971 (not b_next!28971))))

(declare-fun tp!102032 () Bool)

(declare-fun b_and!47071 () Bool)

(assert (=> start!109518 (= tp!102032 b_and!47071)))

(declare-fun b!1296580 () Bool)

(declare-fun res!861785 () Bool)

(declare-fun e!739729 () Bool)

(assert (=> b!1296580 (=> (not res!861785) (not e!739729))))

(declare-datatypes ((array!86201 0))(
  ( (array!86202 (arr!41597 (Array (_ BitVec 32) (_ BitVec 64))) (size!42148 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86201)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86201 (_ BitVec 32)) Bool)

(assert (=> b!1296580 (= res!861785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53477 () Bool)

(declare-fun mapRes!53477 () Bool)

(assert (=> mapIsEmpty!53477 mapRes!53477))

(declare-fun b!1296581 () Bool)

(declare-fun e!739728 () Bool)

(declare-fun e!739730 () Bool)

(assert (=> b!1296581 (= e!739728 (and e!739730 mapRes!53477))))

(declare-fun condMapEmpty!53477 () Bool)

(declare-datatypes ((V!51251 0))(
  ( (V!51252 (val!17380 Int)) )
))
(declare-datatypes ((ValueCell!16407 0))(
  ( (ValueCellFull!16407 (v!19981 V!51251)) (EmptyCell!16407) )
))
(declare-datatypes ((array!86203 0))(
  ( (array!86204 (arr!41598 (Array (_ BitVec 32) ValueCell!16407)) (size!42149 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86203)

(declare-fun mapDefault!53477 () ValueCell!16407)

(assert (=> b!1296581 (= condMapEmpty!53477 (= (arr!41598 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16407)) mapDefault!53477)))))

(declare-fun b!1296582 () Bool)

(declare-fun tp_is_empty!34611 () Bool)

(assert (=> b!1296582 (= e!739730 tp_is_empty!34611)))

(declare-fun res!861787 () Bool)

(assert (=> start!109518 (=> (not res!861787) (not e!739729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109518 (= res!861787 (validMask!0 mask!2175))))

(assert (=> start!109518 e!739729))

(assert (=> start!109518 tp_is_empty!34611))

(assert (=> start!109518 true))

(declare-fun array_inv!31483 (array!86203) Bool)

(assert (=> start!109518 (and (array_inv!31483 _values!1445) e!739728)))

(declare-fun array_inv!31484 (array!86201) Bool)

(assert (=> start!109518 (array_inv!31484 _keys!1741)))

(assert (=> start!109518 tp!102032))

(declare-fun mapNonEmpty!53477 () Bool)

(declare-fun tp!102033 () Bool)

(declare-fun e!739731 () Bool)

(assert (=> mapNonEmpty!53477 (= mapRes!53477 (and tp!102033 e!739731))))

(declare-fun mapRest!53477 () (Array (_ BitVec 32) ValueCell!16407))

(declare-fun mapKey!53477 () (_ BitVec 32))

(declare-fun mapValue!53477 () ValueCell!16407)

(assert (=> mapNonEmpty!53477 (= (arr!41598 _values!1445) (store mapRest!53477 mapKey!53477 mapValue!53477))))

(declare-fun b!1296583 () Bool)

(declare-fun res!861788 () Bool)

(assert (=> b!1296583 (=> (not res!861788) (not e!739729))))

(declare-datatypes ((List!29707 0))(
  ( (Nil!29704) (Cons!29703 (h!30912 (_ BitVec 64)) (t!43278 List!29707)) )
))
(declare-fun arrayNoDuplicates!0 (array!86201 (_ BitVec 32) List!29707) Bool)

(assert (=> b!1296583 (= res!861788 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29704))))

(declare-fun b!1296584 () Bool)

(declare-fun res!861789 () Bool)

(assert (=> b!1296584 (=> (not res!861789) (not e!739729))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1296584 (= res!861789 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42148 _keys!1741))))))

(declare-fun b!1296585 () Bool)

(assert (=> b!1296585 (= e!739729 false)))

(declare-fun minValue!1387 () V!51251)

(declare-fun zeroValue!1387 () V!51251)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!580447 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22542 0))(
  ( (tuple2!22543 (_1!11281 (_ BitVec 64)) (_2!11281 V!51251)) )
))
(declare-datatypes ((List!29708 0))(
  ( (Nil!29705) (Cons!29704 (h!30913 tuple2!22542) (t!43279 List!29708)) )
))
(declare-datatypes ((ListLongMap!20211 0))(
  ( (ListLongMap!20212 (toList!10121 List!29708)) )
))
(declare-fun contains!8175 (ListLongMap!20211 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5095 (array!86201 array!86203 (_ BitVec 32) (_ BitVec 32) V!51251 V!51251 (_ BitVec 32) Int) ListLongMap!20211)

(assert (=> b!1296585 (= lt!580447 (contains!8175 (getCurrentListMap!5095 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1296586 () Bool)

(declare-fun res!861786 () Bool)

(assert (=> b!1296586 (=> (not res!861786) (not e!739729))))

(assert (=> b!1296586 (= res!861786 (and (= (size!42149 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42148 _keys!1741) (size!42149 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296587 () Bool)

(assert (=> b!1296587 (= e!739731 tp_is_empty!34611)))

(assert (= (and start!109518 res!861787) b!1296586))

(assert (= (and b!1296586 res!861786) b!1296580))

(assert (= (and b!1296580 res!861785) b!1296583))

(assert (= (and b!1296583 res!861788) b!1296584))

(assert (= (and b!1296584 res!861789) b!1296585))

(assert (= (and b!1296581 condMapEmpty!53477) mapIsEmpty!53477))

(assert (= (and b!1296581 (not condMapEmpty!53477)) mapNonEmpty!53477))

(get-info :version)

(assert (= (and mapNonEmpty!53477 ((_ is ValueCellFull!16407) mapValue!53477)) b!1296587))

(assert (= (and b!1296581 ((_ is ValueCellFull!16407) mapDefault!53477)) b!1296582))

(assert (= start!109518 b!1296581))

(declare-fun m!1188477 () Bool)

(assert (=> b!1296580 m!1188477))

(declare-fun m!1188479 () Bool)

(assert (=> mapNonEmpty!53477 m!1188479))

(declare-fun m!1188481 () Bool)

(assert (=> start!109518 m!1188481))

(declare-fun m!1188483 () Bool)

(assert (=> start!109518 m!1188483))

(declare-fun m!1188485 () Bool)

(assert (=> start!109518 m!1188485))

(declare-fun m!1188487 () Bool)

(assert (=> b!1296585 m!1188487))

(assert (=> b!1296585 m!1188487))

(declare-fun m!1188489 () Bool)

(assert (=> b!1296585 m!1188489))

(declare-fun m!1188491 () Bool)

(assert (=> b!1296583 m!1188491))

(check-sat (not b!1296585) tp_is_empty!34611 (not start!109518) b_and!47071 (not b!1296583) (not b_next!28971) (not b!1296580) (not mapNonEmpty!53477))
(check-sat b_and!47071 (not b_next!28971))
