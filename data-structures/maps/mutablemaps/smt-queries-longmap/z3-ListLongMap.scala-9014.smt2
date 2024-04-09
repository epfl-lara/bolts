; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108882 () Bool)

(assert start!108882)

(declare-fun b_free!28359 () Bool)

(declare-fun b_next!28359 () Bool)

(assert (=> start!108882 (= b_free!28359 (not b_next!28359))))

(declare-fun tp!100194 () Bool)

(declare-fun b_and!46435 () Bool)

(assert (=> start!108882 (= tp!100194 b_and!46435)))

(declare-fun b!1285341 () Bool)

(declare-fun res!853954 () Bool)

(declare-fun e!734226 () Bool)

(assert (=> b!1285341 (=> (not res!853954) (not e!734226))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85009 0))(
  ( (array!85010 (arr!41002 (Array (_ BitVec 32) (_ BitVec 64))) (size!41553 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85009)

(assert (=> b!1285341 (= res!853954 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41553 _keys!1741))))))

(declare-fun mapNonEmpty!52556 () Bool)

(declare-fun mapRes!52556 () Bool)

(declare-fun tp!100193 () Bool)

(declare-fun e!734228 () Bool)

(assert (=> mapNonEmpty!52556 (= mapRes!52556 (and tp!100193 e!734228))))

(declare-datatypes ((V!50435 0))(
  ( (V!50436 (val!17074 Int)) )
))
(declare-datatypes ((ValueCell!16101 0))(
  ( (ValueCellFull!16101 (v!19674 V!50435)) (EmptyCell!16101) )
))
(declare-datatypes ((array!85011 0))(
  ( (array!85012 (arr!41003 (Array (_ BitVec 32) ValueCell!16101)) (size!41554 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85011)

(declare-fun mapRest!52556 () (Array (_ BitVec 32) ValueCell!16101))

(declare-fun mapValue!52556 () ValueCell!16101)

(declare-fun mapKey!52556 () (_ BitVec 32))

(assert (=> mapNonEmpty!52556 (= (arr!41003 _values!1445) (store mapRest!52556 mapKey!52556 mapValue!52556))))

(declare-fun b!1285342 () Bool)

(declare-fun res!853952 () Bool)

(assert (=> b!1285342 (=> (not res!853952) (not e!734226))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85009 (_ BitVec 32)) Bool)

(assert (=> b!1285342 (= res!853952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52556 () Bool)

(assert (=> mapIsEmpty!52556 mapRes!52556))

(declare-fun b!1285344 () Bool)

(assert (=> b!1285344 (= e!734226 false)))

(declare-fun minValue!1387 () V!50435)

(declare-fun zeroValue!1387 () V!50435)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!576852 () Bool)

(declare-datatypes ((tuple2!22016 0))(
  ( (tuple2!22017 (_1!11018 (_ BitVec 64)) (_2!11018 V!50435)) )
))
(declare-datatypes ((List!29228 0))(
  ( (Nil!29225) (Cons!29224 (h!30433 tuple2!22016) (t!42779 List!29228)) )
))
(declare-datatypes ((ListLongMap!19685 0))(
  ( (ListLongMap!19686 (toList!9858 List!29228)) )
))
(declare-fun contains!7913 (ListLongMap!19685 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4874 (array!85009 array!85011 (_ BitVec 32) (_ BitVec 32) V!50435 V!50435 (_ BitVec 32) Int) ListLongMap!19685)

(assert (=> b!1285344 (= lt!576852 (contains!7913 (getCurrentListMap!4874 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1285345 () Bool)

(declare-fun tp_is_empty!33999 () Bool)

(assert (=> b!1285345 (= e!734228 tp_is_empty!33999)))

(declare-fun b!1285346 () Bool)

(declare-fun e!734230 () Bool)

(assert (=> b!1285346 (= e!734230 tp_is_empty!33999)))

(declare-fun b!1285347 () Bool)

(declare-fun e!734227 () Bool)

(assert (=> b!1285347 (= e!734227 (and e!734230 mapRes!52556))))

(declare-fun condMapEmpty!52556 () Bool)

(declare-fun mapDefault!52556 () ValueCell!16101)

(assert (=> b!1285347 (= condMapEmpty!52556 (= (arr!41003 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16101)) mapDefault!52556)))))

(declare-fun b!1285348 () Bool)

(declare-fun res!853953 () Bool)

(assert (=> b!1285348 (=> (not res!853953) (not e!734226))))

(declare-datatypes ((List!29229 0))(
  ( (Nil!29226) (Cons!29225 (h!30434 (_ BitVec 64)) (t!42780 List!29229)) )
))
(declare-fun arrayNoDuplicates!0 (array!85009 (_ BitVec 32) List!29229) Bool)

(assert (=> b!1285348 (= res!853953 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29226))))

(declare-fun b!1285343 () Bool)

(declare-fun res!853956 () Bool)

(assert (=> b!1285343 (=> (not res!853956) (not e!734226))))

(assert (=> b!1285343 (= res!853956 (and (= (size!41554 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41553 _keys!1741) (size!41554 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!853955 () Bool)

(assert (=> start!108882 (=> (not res!853955) (not e!734226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108882 (= res!853955 (validMask!0 mask!2175))))

(assert (=> start!108882 e!734226))

(assert (=> start!108882 tp_is_empty!33999))

(assert (=> start!108882 true))

(declare-fun array_inv!31071 (array!85011) Bool)

(assert (=> start!108882 (and (array_inv!31071 _values!1445) e!734227)))

(declare-fun array_inv!31072 (array!85009) Bool)

(assert (=> start!108882 (array_inv!31072 _keys!1741)))

(assert (=> start!108882 tp!100194))

(assert (= (and start!108882 res!853955) b!1285343))

(assert (= (and b!1285343 res!853956) b!1285342))

(assert (= (and b!1285342 res!853952) b!1285348))

(assert (= (and b!1285348 res!853953) b!1285341))

(assert (= (and b!1285341 res!853954) b!1285344))

(assert (= (and b!1285347 condMapEmpty!52556) mapIsEmpty!52556))

(assert (= (and b!1285347 (not condMapEmpty!52556)) mapNonEmpty!52556))

(get-info :version)

(assert (= (and mapNonEmpty!52556 ((_ is ValueCellFull!16101) mapValue!52556)) b!1285345))

(assert (= (and b!1285347 ((_ is ValueCellFull!16101) mapDefault!52556)) b!1285346))

(assert (= start!108882 b!1285347))

(declare-fun m!1178743 () Bool)

(assert (=> b!1285342 m!1178743))

(declare-fun m!1178745 () Bool)

(assert (=> b!1285344 m!1178745))

(assert (=> b!1285344 m!1178745))

(declare-fun m!1178747 () Bool)

(assert (=> b!1285344 m!1178747))

(declare-fun m!1178749 () Bool)

(assert (=> b!1285348 m!1178749))

(declare-fun m!1178751 () Bool)

(assert (=> start!108882 m!1178751))

(declare-fun m!1178753 () Bool)

(assert (=> start!108882 m!1178753))

(declare-fun m!1178755 () Bool)

(assert (=> start!108882 m!1178755))

(declare-fun m!1178757 () Bool)

(assert (=> mapNonEmpty!52556 m!1178757))

(check-sat (not mapNonEmpty!52556) (not b!1285348) tp_is_empty!33999 (not start!108882) b_and!46435 (not b!1285344) (not b_next!28359) (not b!1285342))
(check-sat b_and!46435 (not b_next!28359))
