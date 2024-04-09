; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109766 () Bool)

(assert start!109766)

(declare-fun b_free!29163 () Bool)

(declare-fun b_next!29163 () Bool)

(assert (=> start!109766 (= b_free!29163 (not b_next!29163))))

(declare-fun tp!102617 () Bool)

(declare-fun b_and!47275 () Bool)

(assert (=> start!109766 (= tp!102617 b_and!47275)))

(declare-fun b!1299682 () Bool)

(declare-fun e!741454 () Bool)

(assert (=> b!1299682 (= e!741454 (not true))))

(declare-datatypes ((V!51507 0))(
  ( (V!51508 (val!17476 Int)) )
))
(declare-datatypes ((tuple2!22688 0))(
  ( (tuple2!22689 (_1!11354 (_ BitVec 64)) (_2!11354 V!51507)) )
))
(declare-datatypes ((List!29846 0))(
  ( (Nil!29843) (Cons!29842 (h!31051 tuple2!22688) (t!43423 List!29846)) )
))
(declare-datatypes ((ListLongMap!20357 0))(
  ( (ListLongMap!20358 (toList!10194 List!29846)) )
))
(declare-fun lt!581065 () ListLongMap!20357)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8252 (ListLongMap!20357 (_ BitVec 64)) Bool)

(assert (=> b!1299682 (contains!8252 lt!581065 k0!1205)))

(declare-fun minValue!1387 () V!51507)

(declare-datatypes ((Unit!42973 0))(
  ( (Unit!42974) )
))
(declare-fun lt!581066 () Unit!42973)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!68 ((_ BitVec 64) (_ BitVec 64) V!51507 ListLongMap!20357) Unit!42973)

(assert (=> b!1299682 (= lt!581066 (lemmaInListMapAfterAddingDiffThenInBefore!68 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!581065))))

(declare-fun zeroValue!1387 () V!51507)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16503 0))(
  ( (ValueCellFull!16503 (v!20080 V!51507)) (EmptyCell!16503) )
))
(declare-datatypes ((array!86579 0))(
  ( (array!86580 (arr!41783 (Array (_ BitVec 32) ValueCell!16503)) (size!42334 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86579)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86581 0))(
  ( (array!86582 (arr!41784 (Array (_ BitVec 32) (_ BitVec 64))) (size!42335 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86581)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun +!4424 (ListLongMap!20357 tuple2!22688) ListLongMap!20357)

(declare-fun getCurrentListMapNoExtraKeys!6137 (array!86581 array!86579 (_ BitVec 32) (_ BitVec 32) V!51507 V!51507 (_ BitVec 32) Int) ListLongMap!20357)

(assert (=> b!1299682 (= lt!581065 (+!4424 (getCurrentListMapNoExtraKeys!6137 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun res!863788 () Bool)

(assert (=> start!109766 (=> (not res!863788) (not e!741454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109766 (= res!863788 (validMask!0 mask!2175))))

(assert (=> start!109766 e!741454))

(declare-fun tp_is_empty!34803 () Bool)

(assert (=> start!109766 tp_is_empty!34803))

(assert (=> start!109766 true))

(declare-fun e!741453 () Bool)

(declare-fun array_inv!31615 (array!86579) Bool)

(assert (=> start!109766 (and (array_inv!31615 _values!1445) e!741453)))

(declare-fun array_inv!31616 (array!86581) Bool)

(assert (=> start!109766 (array_inv!31616 _keys!1741)))

(assert (=> start!109766 tp!102617))

(declare-fun b!1299683 () Bool)

(declare-fun res!863793 () Bool)

(assert (=> b!1299683 (=> (not res!863793) (not e!741454))))

(declare-datatypes ((List!29847 0))(
  ( (Nil!29844) (Cons!29843 (h!31052 (_ BitVec 64)) (t!43424 List!29847)) )
))
(declare-fun arrayNoDuplicates!0 (array!86581 (_ BitVec 32) List!29847) Bool)

(assert (=> b!1299683 (= res!863793 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29844))))

(declare-fun b!1299684 () Bool)

(declare-fun e!741455 () Bool)

(assert (=> b!1299684 (= e!741455 tp_is_empty!34803)))

(declare-fun b!1299685 () Bool)

(declare-fun res!863791 () Bool)

(assert (=> b!1299685 (=> (not res!863791) (not e!741454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86581 (_ BitVec 32)) Bool)

(assert (=> b!1299685 (= res!863791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299686 () Bool)

(declare-fun res!863786 () Bool)

(assert (=> b!1299686 (=> (not res!863786) (not e!741454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299686 (= res!863786 (validKeyInArray!0 (select (arr!41784 _keys!1741) from!2144)))))

(declare-fun b!1299687 () Bool)

(declare-fun e!741456 () Bool)

(declare-fun mapRes!53774 () Bool)

(assert (=> b!1299687 (= e!741453 (and e!741456 mapRes!53774))))

(declare-fun condMapEmpty!53774 () Bool)

(declare-fun mapDefault!53774 () ValueCell!16503)

(assert (=> b!1299687 (= condMapEmpty!53774 (= (arr!41783 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16503)) mapDefault!53774)))))

(declare-fun b!1299688 () Bool)

(declare-fun res!863789 () Bool)

(assert (=> b!1299688 (=> (not res!863789) (not e!741454))))

(declare-fun getCurrentListMap!5168 (array!86581 array!86579 (_ BitVec 32) (_ BitVec 32) V!51507 V!51507 (_ BitVec 32) Int) ListLongMap!20357)

(assert (=> b!1299688 (= res!863789 (contains!8252 (getCurrentListMap!5168 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1299689 () Bool)

(declare-fun res!863785 () Bool)

(assert (=> b!1299689 (=> (not res!863785) (not e!741454))))

(assert (=> b!1299689 (= res!863785 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42335 _keys!1741))))))

(declare-fun mapNonEmpty!53774 () Bool)

(declare-fun tp!102618 () Bool)

(assert (=> mapNonEmpty!53774 (= mapRes!53774 (and tp!102618 e!741455))))

(declare-fun mapRest!53774 () (Array (_ BitVec 32) ValueCell!16503))

(declare-fun mapKey!53774 () (_ BitVec 32))

(declare-fun mapValue!53774 () ValueCell!16503)

(assert (=> mapNonEmpty!53774 (= (arr!41783 _values!1445) (store mapRest!53774 mapKey!53774 mapValue!53774))))

(declare-fun b!1299690 () Bool)

(declare-fun res!863790 () Bool)

(assert (=> b!1299690 (=> (not res!863790) (not e!741454))))

(assert (=> b!1299690 (= res!863790 (and (= (size!42334 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42335 _keys!1741) (size!42334 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1299691 () Bool)

(assert (=> b!1299691 (= e!741456 tp_is_empty!34803)))

(declare-fun mapIsEmpty!53774 () Bool)

(assert (=> mapIsEmpty!53774 mapRes!53774))

(declare-fun b!1299692 () Bool)

(declare-fun res!863787 () Bool)

(assert (=> b!1299692 (=> (not res!863787) (not e!741454))))

(assert (=> b!1299692 (= res!863787 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42335 _keys!1741))))))

(declare-fun b!1299693 () Bool)

(declare-fun res!863792 () Bool)

(assert (=> b!1299693 (=> (not res!863792) (not e!741454))))

(assert (=> b!1299693 (= res!863792 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!109766 res!863788) b!1299690))

(assert (= (and b!1299690 res!863790) b!1299685))

(assert (= (and b!1299685 res!863791) b!1299683))

(assert (= (and b!1299683 res!863793) b!1299689))

(assert (= (and b!1299689 res!863785) b!1299688))

(assert (= (and b!1299688 res!863789) b!1299692))

(assert (= (and b!1299692 res!863787) b!1299686))

(assert (= (and b!1299686 res!863786) b!1299693))

(assert (= (and b!1299693 res!863792) b!1299682))

(assert (= (and b!1299687 condMapEmpty!53774) mapIsEmpty!53774))

(assert (= (and b!1299687 (not condMapEmpty!53774)) mapNonEmpty!53774))

(get-info :version)

(assert (= (and mapNonEmpty!53774 ((_ is ValueCellFull!16503) mapValue!53774)) b!1299684))

(assert (= (and b!1299687 ((_ is ValueCellFull!16503) mapDefault!53774)) b!1299691))

(assert (= start!109766 b!1299687))

(declare-fun m!1190823 () Bool)

(assert (=> b!1299688 m!1190823))

(assert (=> b!1299688 m!1190823))

(declare-fun m!1190825 () Bool)

(assert (=> b!1299688 m!1190825))

(declare-fun m!1190827 () Bool)

(assert (=> start!109766 m!1190827))

(declare-fun m!1190829 () Bool)

(assert (=> start!109766 m!1190829))

(declare-fun m!1190831 () Bool)

(assert (=> start!109766 m!1190831))

(declare-fun m!1190833 () Bool)

(assert (=> b!1299683 m!1190833))

(declare-fun m!1190835 () Bool)

(assert (=> b!1299686 m!1190835))

(assert (=> b!1299686 m!1190835))

(declare-fun m!1190837 () Bool)

(assert (=> b!1299686 m!1190837))

(declare-fun m!1190839 () Bool)

(assert (=> mapNonEmpty!53774 m!1190839))

(declare-fun m!1190841 () Bool)

(assert (=> b!1299685 m!1190841))

(declare-fun m!1190843 () Bool)

(assert (=> b!1299682 m!1190843))

(declare-fun m!1190845 () Bool)

(assert (=> b!1299682 m!1190845))

(declare-fun m!1190847 () Bool)

(assert (=> b!1299682 m!1190847))

(assert (=> b!1299682 m!1190847))

(declare-fun m!1190849 () Bool)

(assert (=> b!1299682 m!1190849))

(check-sat (not b!1299682) (not b!1299683) tp_is_empty!34803 b_and!47275 (not b!1299685) (not b!1299686) (not start!109766) (not mapNonEmpty!53774) (not b_next!29163) (not b!1299688))
(check-sat b_and!47275 (not b_next!29163))
