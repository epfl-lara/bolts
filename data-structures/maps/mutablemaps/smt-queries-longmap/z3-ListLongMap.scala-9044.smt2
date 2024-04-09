; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109086 () Bool)

(assert start!109086)

(declare-fun b_free!28539 () Bool)

(declare-fun b_next!28539 () Bool)

(assert (=> start!109086 (= b_free!28539 (not b_next!28539))))

(declare-fun tp!100736 () Bool)

(declare-fun b_and!46639 () Bool)

(assert (=> start!109086 (= tp!100736 b_and!46639)))

(declare-fun b!1288887 () Bool)

(declare-fun res!856199 () Bool)

(declare-fun e!735963 () Bool)

(assert (=> b!1288887 (=> (not res!856199) (not e!735963))))

(declare-datatypes ((array!85357 0))(
  ( (array!85358 (arr!41175 (Array (_ BitVec 32) (_ BitVec 64))) (size!41726 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85357)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288887 (= res!856199 (not (validKeyInArray!0 (select (arr!41175 _keys!1741) from!2144))))))

(declare-fun b!1288888 () Bool)

(declare-fun e!735967 () Bool)

(declare-fun tp_is_empty!34179 () Bool)

(assert (=> b!1288888 (= e!735967 tp_is_empty!34179)))

(declare-fun b!1288889 () Bool)

(declare-fun res!856203 () Bool)

(assert (=> b!1288889 (=> (not res!856203) (not e!735963))))

(declare-datatypes ((V!50675 0))(
  ( (V!50676 (val!17164 Int)) )
))
(declare-fun minValue!1387 () V!50675)

(declare-fun zeroValue!1387 () V!50675)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16191 0))(
  ( (ValueCellFull!16191 (v!19765 V!50675)) (EmptyCell!16191) )
))
(declare-datatypes ((array!85359 0))(
  ( (array!85360 (arr!41176 (Array (_ BitVec 32) ValueCell!16191)) (size!41727 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85359)

(declare-datatypes ((tuple2!22172 0))(
  ( (tuple2!22173 (_1!11096 (_ BitVec 64)) (_2!11096 V!50675)) )
))
(declare-datatypes ((List!29371 0))(
  ( (Nil!29368) (Cons!29367 (h!30576 tuple2!22172) (t!42942 List!29371)) )
))
(declare-datatypes ((ListLongMap!19841 0))(
  ( (ListLongMap!19842 (toList!9936 List!29371)) )
))
(declare-fun contains!7992 (ListLongMap!19841 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4939 (array!85357 array!85359 (_ BitVec 32) (_ BitVec 32) V!50675 V!50675 (_ BitVec 32) Int) ListLongMap!19841)

(assert (=> b!1288889 (= res!856203 (contains!7992 (getCurrentListMap!4939 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1288890 () Bool)

(declare-fun res!856201 () Bool)

(assert (=> b!1288890 (=> (not res!856201) (not e!735963))))

(assert (=> b!1288890 (= res!856201 (and (= (size!41727 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41726 _keys!1741) (size!41727 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288891 () Bool)

(declare-fun e!735964 () Bool)

(assert (=> b!1288891 (= e!735963 (not e!735964))))

(declare-fun res!856204 () Bool)

(assert (=> b!1288891 (=> res!856204 e!735964)))

(assert (=> b!1288891 (= res!856204 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288891 (not (contains!7992 (ListLongMap!19842 Nil!29368) k0!1205))))

(declare-datatypes ((Unit!42567 0))(
  ( (Unit!42568) )
))
(declare-fun lt!578063 () Unit!42567)

(declare-fun emptyContainsNothing!49 ((_ BitVec 64)) Unit!42567)

(assert (=> b!1288891 (= lt!578063 (emptyContainsNothing!49 k0!1205))))

(declare-fun b!1288892 () Bool)

(declare-fun res!856205 () Bool)

(assert (=> b!1288892 (=> (not res!856205) (not e!735963))))

(declare-datatypes ((List!29372 0))(
  ( (Nil!29369) (Cons!29368 (h!30577 (_ BitVec 64)) (t!42943 List!29372)) )
))
(declare-fun arrayNoDuplicates!0 (array!85357 (_ BitVec 32) List!29372) Bool)

(assert (=> b!1288892 (= res!856205 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29369))))

(declare-fun b!1288893 () Bool)

(declare-fun res!856198 () Bool)

(assert (=> b!1288893 (=> (not res!856198) (not e!735963))))

(assert (=> b!1288893 (= res!856198 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41726 _keys!1741))))))

(declare-fun res!856206 () Bool)

(assert (=> start!109086 (=> (not res!856206) (not e!735963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109086 (= res!856206 (validMask!0 mask!2175))))

(assert (=> start!109086 e!735963))

(assert (=> start!109086 tp_is_empty!34179))

(assert (=> start!109086 true))

(declare-fun e!735965 () Bool)

(declare-fun array_inv!31191 (array!85359) Bool)

(assert (=> start!109086 (and (array_inv!31191 _values!1445) e!735965)))

(declare-fun array_inv!31192 (array!85357) Bool)

(assert (=> start!109086 (array_inv!31192 _keys!1741)))

(assert (=> start!109086 tp!100736))

(declare-fun b!1288894 () Bool)

(declare-fun res!856200 () Bool)

(assert (=> b!1288894 (=> (not res!856200) (not e!735963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85357 (_ BitVec 32)) Bool)

(assert (=> b!1288894 (= res!856200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288895 () Bool)

(assert (=> b!1288895 (= e!735964 true)))

(declare-fun lt!578064 () ListLongMap!19841)

(declare-fun +!4311 (ListLongMap!19841 tuple2!22172) ListLongMap!19841)

(assert (=> b!1288895 (not (contains!7992 (+!4311 lt!578064 (tuple2!22173 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578065 () Unit!42567)

(declare-fun addStillNotContains!356 (ListLongMap!19841 (_ BitVec 64) V!50675 (_ BitVec 64)) Unit!42567)

(assert (=> b!1288895 (= lt!578065 (addStillNotContains!356 lt!578064 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6023 (array!85357 array!85359 (_ BitVec 32) (_ BitVec 32) V!50675 V!50675 (_ BitVec 32) Int) ListLongMap!19841)

(assert (=> b!1288895 (= lt!578064 (getCurrentListMapNoExtraKeys!6023 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!52829 () Bool)

(declare-fun mapRes!52829 () Bool)

(assert (=> mapIsEmpty!52829 mapRes!52829))

(declare-fun b!1288896 () Bool)

(declare-fun res!856202 () Bool)

(assert (=> b!1288896 (=> (not res!856202) (not e!735963))))

(assert (=> b!1288896 (= res!856202 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41726 _keys!1741))))))

(declare-fun b!1288897 () Bool)

(assert (=> b!1288897 (= e!735965 (and e!735967 mapRes!52829))))

(declare-fun condMapEmpty!52829 () Bool)

(declare-fun mapDefault!52829 () ValueCell!16191)

(assert (=> b!1288897 (= condMapEmpty!52829 (= (arr!41176 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16191)) mapDefault!52829)))))

(declare-fun mapNonEmpty!52829 () Bool)

(declare-fun tp!100737 () Bool)

(declare-fun e!735962 () Bool)

(assert (=> mapNonEmpty!52829 (= mapRes!52829 (and tp!100737 e!735962))))

(declare-fun mapValue!52829 () ValueCell!16191)

(declare-fun mapRest!52829 () (Array (_ BitVec 32) ValueCell!16191))

(declare-fun mapKey!52829 () (_ BitVec 32))

(assert (=> mapNonEmpty!52829 (= (arr!41176 _values!1445) (store mapRest!52829 mapKey!52829 mapValue!52829))))

(declare-fun b!1288898 () Bool)

(assert (=> b!1288898 (= e!735962 tp_is_empty!34179)))

(assert (= (and start!109086 res!856206) b!1288890))

(assert (= (and b!1288890 res!856201) b!1288894))

(assert (= (and b!1288894 res!856200) b!1288892))

(assert (= (and b!1288892 res!856205) b!1288896))

(assert (= (and b!1288896 res!856202) b!1288889))

(assert (= (and b!1288889 res!856203) b!1288893))

(assert (= (and b!1288893 res!856198) b!1288887))

(assert (= (and b!1288887 res!856199) b!1288891))

(assert (= (and b!1288891 (not res!856204)) b!1288895))

(assert (= (and b!1288897 condMapEmpty!52829) mapIsEmpty!52829))

(assert (= (and b!1288897 (not condMapEmpty!52829)) mapNonEmpty!52829))

(get-info :version)

(assert (= (and mapNonEmpty!52829 ((_ is ValueCellFull!16191) mapValue!52829)) b!1288898))

(assert (= (and b!1288897 ((_ is ValueCellFull!16191) mapDefault!52829)) b!1288888))

(assert (= start!109086 b!1288897))

(declare-fun m!1181485 () Bool)

(assert (=> b!1288894 m!1181485))

(declare-fun m!1181487 () Bool)

(assert (=> b!1288895 m!1181487))

(assert (=> b!1288895 m!1181487))

(declare-fun m!1181489 () Bool)

(assert (=> b!1288895 m!1181489))

(declare-fun m!1181491 () Bool)

(assert (=> b!1288895 m!1181491))

(declare-fun m!1181493 () Bool)

(assert (=> b!1288895 m!1181493))

(declare-fun m!1181495 () Bool)

(assert (=> b!1288892 m!1181495))

(declare-fun m!1181497 () Bool)

(assert (=> b!1288891 m!1181497))

(declare-fun m!1181499 () Bool)

(assert (=> b!1288891 m!1181499))

(declare-fun m!1181501 () Bool)

(assert (=> b!1288887 m!1181501))

(assert (=> b!1288887 m!1181501))

(declare-fun m!1181503 () Bool)

(assert (=> b!1288887 m!1181503))

(declare-fun m!1181505 () Bool)

(assert (=> mapNonEmpty!52829 m!1181505))

(declare-fun m!1181507 () Bool)

(assert (=> start!109086 m!1181507))

(declare-fun m!1181509 () Bool)

(assert (=> start!109086 m!1181509))

(declare-fun m!1181511 () Bool)

(assert (=> start!109086 m!1181511))

(declare-fun m!1181513 () Bool)

(assert (=> b!1288889 m!1181513))

(assert (=> b!1288889 m!1181513))

(declare-fun m!1181515 () Bool)

(assert (=> b!1288889 m!1181515))

(check-sat (not b!1288892) (not b!1288895) (not b!1288894) (not b_next!28539) b_and!46639 (not b!1288891) (not start!109086) (not b!1288889) tp_is_empty!34179 (not b!1288887) (not mapNonEmpty!52829))
(check-sat b_and!46639 (not b_next!28539))
