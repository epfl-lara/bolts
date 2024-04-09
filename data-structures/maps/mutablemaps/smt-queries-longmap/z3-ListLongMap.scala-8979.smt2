; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108672 () Bool)

(assert start!108672)

(declare-fun b_free!28149 () Bool)

(declare-fun b_next!28149 () Bool)

(assert (=> start!108672 (= b_free!28149 (not b_next!28149))))

(declare-fun tp!99564 () Bool)

(declare-fun b_and!46225 () Bool)

(assert (=> start!108672 (= tp!99564 b_and!46225)))

(declare-fun mapIsEmpty!52241 () Bool)

(declare-fun mapRes!52241 () Bool)

(assert (=> mapIsEmpty!52241 mapRes!52241))

(declare-fun b!1282227 () Bool)

(declare-fun e!732654 () Bool)

(assert (=> b!1282227 (= e!732654 false)))

(declare-datatypes ((V!50155 0))(
  ( (V!50156 (val!16969 Int)) )
))
(declare-fun minValue!1387 () V!50155)

(declare-fun zeroValue!1387 () V!50155)

(declare-fun lt!576456 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15996 0))(
  ( (ValueCellFull!15996 (v!19569 V!50155)) (EmptyCell!15996) )
))
(declare-datatypes ((array!84603 0))(
  ( (array!84604 (arr!40799 (Array (_ BitVec 32) ValueCell!15996)) (size!41350 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84603)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84605 0))(
  ( (array!84606 (arr!40800 (Array (_ BitVec 32) (_ BitVec 64))) (size!41351 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84605)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21872 0))(
  ( (tuple2!21873 (_1!10946 (_ BitVec 64)) (_2!10946 V!50155)) )
))
(declare-datatypes ((List!29082 0))(
  ( (Nil!29079) (Cons!29078 (h!30287 tuple2!21872) (t!42633 List!29082)) )
))
(declare-datatypes ((ListLongMap!19541 0))(
  ( (ListLongMap!19542 (toList!9786 List!29082)) )
))
(declare-fun contains!7841 (ListLongMap!19541 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4806 (array!84605 array!84603 (_ BitVec 32) (_ BitVec 32) V!50155 V!50155 (_ BitVec 32) Int) ListLongMap!19541)

(assert (=> b!1282227 (= lt!576456 (contains!7841 (getCurrentListMap!4806 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!851786 () Bool)

(assert (=> start!108672 (=> (not res!851786) (not e!732654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108672 (= res!851786 (validMask!0 mask!2175))))

(assert (=> start!108672 e!732654))

(declare-fun tp_is_empty!33789 () Bool)

(assert (=> start!108672 tp_is_empty!33789))

(assert (=> start!108672 true))

(declare-fun e!732655 () Bool)

(declare-fun array_inv!30931 (array!84603) Bool)

(assert (=> start!108672 (and (array_inv!30931 _values!1445) e!732655)))

(declare-fun array_inv!30932 (array!84605) Bool)

(assert (=> start!108672 (array_inv!30932 _keys!1741)))

(assert (=> start!108672 tp!99564))

(declare-fun b!1282228 () Bool)

(declare-fun res!851785 () Bool)

(assert (=> b!1282228 (=> (not res!851785) (not e!732654))))

(declare-datatypes ((List!29083 0))(
  ( (Nil!29080) (Cons!29079 (h!30288 (_ BitVec 64)) (t!42634 List!29083)) )
))
(declare-fun arrayNoDuplicates!0 (array!84605 (_ BitVec 32) List!29083) Bool)

(assert (=> b!1282228 (= res!851785 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29080))))

(declare-fun b!1282229 () Bool)

(declare-fun res!851784 () Bool)

(assert (=> b!1282229 (=> (not res!851784) (not e!732654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84605 (_ BitVec 32)) Bool)

(assert (=> b!1282229 (= res!851784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282230 () Bool)

(declare-fun e!732651 () Bool)

(assert (=> b!1282230 (= e!732651 tp_is_empty!33789)))

(declare-fun b!1282231 () Bool)

(assert (=> b!1282231 (= e!732655 (and e!732651 mapRes!52241))))

(declare-fun condMapEmpty!52241 () Bool)

(declare-fun mapDefault!52241 () ValueCell!15996)

(assert (=> b!1282231 (= condMapEmpty!52241 (= (arr!40799 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15996)) mapDefault!52241)))))

(declare-fun b!1282232 () Bool)

(declare-fun e!732652 () Bool)

(assert (=> b!1282232 (= e!732652 tp_is_empty!33789)))

(declare-fun b!1282233 () Bool)

(declare-fun res!851783 () Bool)

(assert (=> b!1282233 (=> (not res!851783) (not e!732654))))

(assert (=> b!1282233 (= res!851783 (and (= (size!41350 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41351 _keys!1741) (size!41350 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282234 () Bool)

(declare-fun res!851787 () Bool)

(assert (=> b!1282234 (=> (not res!851787) (not e!732654))))

(assert (=> b!1282234 (= res!851787 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41351 _keys!1741))))))

(declare-fun mapNonEmpty!52241 () Bool)

(declare-fun tp!99563 () Bool)

(assert (=> mapNonEmpty!52241 (= mapRes!52241 (and tp!99563 e!732652))))

(declare-fun mapValue!52241 () ValueCell!15996)

(declare-fun mapRest!52241 () (Array (_ BitVec 32) ValueCell!15996))

(declare-fun mapKey!52241 () (_ BitVec 32))

(assert (=> mapNonEmpty!52241 (= (arr!40799 _values!1445) (store mapRest!52241 mapKey!52241 mapValue!52241))))

(assert (= (and start!108672 res!851786) b!1282233))

(assert (= (and b!1282233 res!851783) b!1282229))

(assert (= (and b!1282229 res!851784) b!1282228))

(assert (= (and b!1282228 res!851785) b!1282234))

(assert (= (and b!1282234 res!851787) b!1282227))

(assert (= (and b!1282231 condMapEmpty!52241) mapIsEmpty!52241))

(assert (= (and b!1282231 (not condMapEmpty!52241)) mapNonEmpty!52241))

(get-info :version)

(assert (= (and mapNonEmpty!52241 ((_ is ValueCellFull!15996) mapValue!52241)) b!1282232))

(assert (= (and b!1282231 ((_ is ValueCellFull!15996) mapDefault!52241)) b!1282230))

(assert (= start!108672 b!1282231))

(declare-fun m!1176511 () Bool)

(assert (=> start!108672 m!1176511))

(declare-fun m!1176513 () Bool)

(assert (=> start!108672 m!1176513))

(declare-fun m!1176515 () Bool)

(assert (=> start!108672 m!1176515))

(declare-fun m!1176517 () Bool)

(assert (=> b!1282228 m!1176517))

(declare-fun m!1176519 () Bool)

(assert (=> b!1282229 m!1176519))

(declare-fun m!1176521 () Bool)

(assert (=> b!1282227 m!1176521))

(assert (=> b!1282227 m!1176521))

(declare-fun m!1176523 () Bool)

(assert (=> b!1282227 m!1176523))

(declare-fun m!1176525 () Bool)

(assert (=> mapNonEmpty!52241 m!1176525))

(check-sat tp_is_empty!33789 (not b!1282227) (not b!1282229) (not mapNonEmpty!52241) (not b!1282228) (not b_next!28149) (not start!108672) b_and!46225)
(check-sat b_and!46225 (not b_next!28149))
