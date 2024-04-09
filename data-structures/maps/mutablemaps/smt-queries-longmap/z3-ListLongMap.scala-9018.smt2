; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108906 () Bool)

(assert start!108906)

(declare-fun b_free!28383 () Bool)

(declare-fun b_next!28383 () Bool)

(assert (=> start!108906 (= b_free!28383 (not b_next!28383))))

(declare-fun tp!100265 () Bool)

(declare-fun b_and!46459 () Bool)

(assert (=> start!108906 (= tp!100265 b_and!46459)))

(declare-fun b!1285644 () Bool)

(declare-fun res!854150 () Bool)

(declare-fun e!734410 () Bool)

(assert (=> b!1285644 (=> (not res!854150) (not e!734410))))

(declare-datatypes ((array!85055 0))(
  ( (array!85056 (arr!41025 (Array (_ BitVec 32) (_ BitVec 64))) (size!41576 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85055)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1285644 (= res!854150 (validKeyInArray!0 (select (arr!41025 _keys!1741) from!2144)))))

(declare-fun b!1285645 () Bool)

(declare-fun res!854149 () Bool)

(assert (=> b!1285645 (=> (not res!854149) (not e!734410))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50467 0))(
  ( (V!50468 (val!17086 Int)) )
))
(declare-datatypes ((ValueCell!16113 0))(
  ( (ValueCellFull!16113 (v!19686 V!50467)) (EmptyCell!16113) )
))
(declare-datatypes ((array!85057 0))(
  ( (array!85058 (arr!41026 (Array (_ BitVec 32) ValueCell!16113)) (size!41577 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85057)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1285645 (= res!854149 (and (= (size!41577 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41576 _keys!1741) (size!41577 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285646 () Bool)

(declare-fun res!854148 () Bool)

(assert (=> b!1285646 (=> (not res!854148) (not e!734410))))

(assert (=> b!1285646 (= res!854148 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41576 _keys!1741))))))

(declare-fun b!1285647 () Bool)

(declare-fun e!734408 () Bool)

(declare-fun tp_is_empty!34023 () Bool)

(assert (=> b!1285647 (= e!734408 tp_is_empty!34023)))

(declare-fun b!1285648 () Bool)

(declare-fun e!734407 () Bool)

(declare-fun e!734406 () Bool)

(declare-fun mapRes!52592 () Bool)

(assert (=> b!1285648 (= e!734407 (and e!734406 mapRes!52592))))

(declare-fun condMapEmpty!52592 () Bool)

(declare-fun mapDefault!52592 () ValueCell!16113)

(assert (=> b!1285648 (= condMapEmpty!52592 (= (arr!41026 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16113)) mapDefault!52592)))))

(declare-fun b!1285649 () Bool)

(declare-fun res!854153 () Bool)

(assert (=> b!1285649 (=> (not res!854153) (not e!734410))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1285649 (= res!854153 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41576 _keys!1741))))))

(declare-fun mapIsEmpty!52592 () Bool)

(assert (=> mapIsEmpty!52592 mapRes!52592))

(declare-fun b!1285651 () Bool)

(declare-fun res!854152 () Bool)

(assert (=> b!1285651 (=> (not res!854152) (not e!734410))))

(declare-datatypes ((List!29246 0))(
  ( (Nil!29243) (Cons!29242 (h!30451 (_ BitVec 64)) (t!42797 List!29246)) )
))
(declare-fun arrayNoDuplicates!0 (array!85055 (_ BitVec 32) List!29246) Bool)

(assert (=> b!1285651 (= res!854152 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29243))))

(declare-fun b!1285652 () Bool)

(assert (=> b!1285652 (= e!734406 tp_is_empty!34023)))

(declare-fun b!1285653 () Bool)

(assert (=> b!1285653 (= e!734410 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsgt from!2144 (size!41576 _keys!1741))))))

(declare-fun b!1285654 () Bool)

(declare-fun res!854151 () Bool)

(assert (=> b!1285654 (=> (not res!854151) (not e!734410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85055 (_ BitVec 32)) Bool)

(assert (=> b!1285654 (= res!854151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52592 () Bool)

(declare-fun tp!100266 () Bool)

(assert (=> mapNonEmpty!52592 (= mapRes!52592 (and tp!100266 e!734408))))

(declare-fun mapKey!52592 () (_ BitVec 32))

(declare-fun mapValue!52592 () ValueCell!16113)

(declare-fun mapRest!52592 () (Array (_ BitVec 32) ValueCell!16113))

(assert (=> mapNonEmpty!52592 (= (arr!41026 _values!1445) (store mapRest!52592 mapKey!52592 mapValue!52592))))

(declare-fun b!1285650 () Bool)

(declare-fun res!854147 () Bool)

(assert (=> b!1285650 (=> (not res!854147) (not e!734410))))

(declare-fun minValue!1387 () V!50467)

(declare-fun zeroValue!1387 () V!50467)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22034 0))(
  ( (tuple2!22035 (_1!11027 (_ BitVec 64)) (_2!11027 V!50467)) )
))
(declare-datatypes ((List!29247 0))(
  ( (Nil!29244) (Cons!29243 (h!30452 tuple2!22034) (t!42798 List!29247)) )
))
(declare-datatypes ((ListLongMap!19703 0))(
  ( (ListLongMap!19704 (toList!9867 List!29247)) )
))
(declare-fun contains!7922 (ListLongMap!19703 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4883 (array!85055 array!85057 (_ BitVec 32) (_ BitVec 32) V!50467 V!50467 (_ BitVec 32) Int) ListLongMap!19703)

(assert (=> b!1285650 (= res!854147 (contains!7922 (getCurrentListMap!4883 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!854154 () Bool)

(assert (=> start!108906 (=> (not res!854154) (not e!734410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108906 (= res!854154 (validMask!0 mask!2175))))

(assert (=> start!108906 e!734410))

(assert (=> start!108906 tp_is_empty!34023))

(assert (=> start!108906 true))

(declare-fun array_inv!31087 (array!85057) Bool)

(assert (=> start!108906 (and (array_inv!31087 _values!1445) e!734407)))

(declare-fun array_inv!31088 (array!85055) Bool)

(assert (=> start!108906 (array_inv!31088 _keys!1741)))

(assert (=> start!108906 tp!100265))

(assert (= (and start!108906 res!854154) b!1285645))

(assert (= (and b!1285645 res!854149) b!1285654))

(assert (= (and b!1285654 res!854151) b!1285651))

(assert (= (and b!1285651 res!854152) b!1285646))

(assert (= (and b!1285646 res!854148) b!1285650))

(assert (= (and b!1285650 res!854147) b!1285649))

(assert (= (and b!1285649 res!854153) b!1285644))

(assert (= (and b!1285644 res!854150) b!1285653))

(assert (= (and b!1285648 condMapEmpty!52592) mapIsEmpty!52592))

(assert (= (and b!1285648 (not condMapEmpty!52592)) mapNonEmpty!52592))

(get-info :version)

(assert (= (and mapNonEmpty!52592 ((_ is ValueCellFull!16113) mapValue!52592)) b!1285647))

(assert (= (and b!1285648 ((_ is ValueCellFull!16113) mapDefault!52592)) b!1285652))

(assert (= start!108906 b!1285648))

(declare-fun m!1178939 () Bool)

(assert (=> b!1285654 m!1178939))

(declare-fun m!1178941 () Bool)

(assert (=> b!1285651 m!1178941))

(declare-fun m!1178943 () Bool)

(assert (=> b!1285644 m!1178943))

(assert (=> b!1285644 m!1178943))

(declare-fun m!1178945 () Bool)

(assert (=> b!1285644 m!1178945))

(declare-fun m!1178947 () Bool)

(assert (=> mapNonEmpty!52592 m!1178947))

(declare-fun m!1178949 () Bool)

(assert (=> start!108906 m!1178949))

(declare-fun m!1178951 () Bool)

(assert (=> start!108906 m!1178951))

(declare-fun m!1178953 () Bool)

(assert (=> start!108906 m!1178953))

(declare-fun m!1178955 () Bool)

(assert (=> b!1285650 m!1178955))

(assert (=> b!1285650 m!1178955))

(declare-fun m!1178957 () Bool)

(assert (=> b!1285650 m!1178957))

(check-sat b_and!46459 (not b!1285644) (not mapNonEmpty!52592) (not b!1285651) (not start!108906) (not b_next!28383) (not b!1285650) tp_is_empty!34023 (not b!1285654))
(check-sat b_and!46459 (not b_next!28383))
