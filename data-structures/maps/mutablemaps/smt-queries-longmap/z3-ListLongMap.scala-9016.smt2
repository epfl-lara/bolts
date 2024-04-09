; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108894 () Bool)

(assert start!108894)

(declare-fun b_free!28371 () Bool)

(declare-fun b_next!28371 () Bool)

(assert (=> start!108894 (= b_free!28371 (not b_next!28371))))

(declare-fun tp!100229 () Bool)

(declare-fun b_and!46447 () Bool)

(assert (=> start!108894 (= tp!100229 b_and!46447)))

(declare-fun b!1285485 () Bool)

(declare-fun res!854043 () Bool)

(declare-fun e!734319 () Bool)

(assert (=> b!1285485 (=> (not res!854043) (not e!734319))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50451 0))(
  ( (V!50452 (val!17080 Int)) )
))
(declare-datatypes ((ValueCell!16107 0))(
  ( (ValueCellFull!16107 (v!19680 V!50451)) (EmptyCell!16107) )
))
(declare-datatypes ((array!85033 0))(
  ( (array!85034 (arr!41014 (Array (_ BitVec 32) ValueCell!16107)) (size!41565 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85033)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85035 0))(
  ( (array!85036 (arr!41015 (Array (_ BitVec 32) (_ BitVec 64))) (size!41566 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85035)

(assert (=> b!1285485 (= res!854043 (and (= (size!41565 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41566 _keys!1741) (size!41565 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285486 () Bool)

(declare-fun res!854042 () Bool)

(assert (=> b!1285486 (=> (not res!854042) (not e!734319))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1285486 (= res!854042 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41566 _keys!1741))))))

(declare-fun b!1285487 () Bool)

(assert (=> b!1285487 (= e!734319 false)))

(declare-fun minValue!1387 () V!50451)

(declare-fun zeroValue!1387 () V!50451)

(declare-fun lt!576870 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22026 0))(
  ( (tuple2!22027 (_1!11023 (_ BitVec 64)) (_2!11023 V!50451)) )
))
(declare-datatypes ((List!29238 0))(
  ( (Nil!29235) (Cons!29234 (h!30443 tuple2!22026) (t!42789 List!29238)) )
))
(declare-datatypes ((ListLongMap!19695 0))(
  ( (ListLongMap!19696 (toList!9863 List!29238)) )
))
(declare-fun contains!7918 (ListLongMap!19695 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4879 (array!85035 array!85033 (_ BitVec 32) (_ BitVec 32) V!50451 V!50451 (_ BitVec 32) Int) ListLongMap!19695)

(assert (=> b!1285487 (= lt!576870 (contains!7918 (getCurrentListMap!4879 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1285488 () Bool)

(declare-fun e!734317 () Bool)

(declare-fun e!734318 () Bool)

(declare-fun mapRes!52574 () Bool)

(assert (=> b!1285488 (= e!734317 (and e!734318 mapRes!52574))))

(declare-fun condMapEmpty!52574 () Bool)

(declare-fun mapDefault!52574 () ValueCell!16107)

(assert (=> b!1285488 (= condMapEmpty!52574 (= (arr!41014 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16107)) mapDefault!52574)))))

(declare-fun b!1285489 () Bool)

(declare-fun e!734316 () Bool)

(declare-fun tp_is_empty!34011 () Bool)

(assert (=> b!1285489 (= e!734316 tp_is_empty!34011)))

(declare-fun b!1285490 () Bool)

(declare-fun res!854044 () Bool)

(assert (=> b!1285490 (=> (not res!854044) (not e!734319))))

(declare-datatypes ((List!29239 0))(
  ( (Nil!29236) (Cons!29235 (h!30444 (_ BitVec 64)) (t!42790 List!29239)) )
))
(declare-fun arrayNoDuplicates!0 (array!85035 (_ BitVec 32) List!29239) Bool)

(assert (=> b!1285490 (= res!854044 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29236))))

(declare-fun res!854046 () Bool)

(assert (=> start!108894 (=> (not res!854046) (not e!734319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108894 (= res!854046 (validMask!0 mask!2175))))

(assert (=> start!108894 e!734319))

(assert (=> start!108894 tp_is_empty!34011))

(assert (=> start!108894 true))

(declare-fun array_inv!31077 (array!85033) Bool)

(assert (=> start!108894 (and (array_inv!31077 _values!1445) e!734317)))

(declare-fun array_inv!31078 (array!85035) Bool)

(assert (=> start!108894 (array_inv!31078 _keys!1741)))

(assert (=> start!108894 tp!100229))

(declare-fun mapIsEmpty!52574 () Bool)

(assert (=> mapIsEmpty!52574 mapRes!52574))

(declare-fun mapNonEmpty!52574 () Bool)

(declare-fun tp!100230 () Bool)

(assert (=> mapNonEmpty!52574 (= mapRes!52574 (and tp!100230 e!734316))))

(declare-fun mapValue!52574 () ValueCell!16107)

(declare-fun mapKey!52574 () (_ BitVec 32))

(declare-fun mapRest!52574 () (Array (_ BitVec 32) ValueCell!16107))

(assert (=> mapNonEmpty!52574 (= (arr!41014 _values!1445) (store mapRest!52574 mapKey!52574 mapValue!52574))))

(declare-fun b!1285491 () Bool)

(declare-fun res!854045 () Bool)

(assert (=> b!1285491 (=> (not res!854045) (not e!734319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85035 (_ BitVec 32)) Bool)

(assert (=> b!1285491 (= res!854045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285492 () Bool)

(assert (=> b!1285492 (= e!734318 tp_is_empty!34011)))

(assert (= (and start!108894 res!854046) b!1285485))

(assert (= (and b!1285485 res!854043) b!1285491))

(assert (= (and b!1285491 res!854045) b!1285490))

(assert (= (and b!1285490 res!854044) b!1285486))

(assert (= (and b!1285486 res!854042) b!1285487))

(assert (= (and b!1285488 condMapEmpty!52574) mapIsEmpty!52574))

(assert (= (and b!1285488 (not condMapEmpty!52574)) mapNonEmpty!52574))

(get-info :version)

(assert (= (and mapNonEmpty!52574 ((_ is ValueCellFull!16107) mapValue!52574)) b!1285489))

(assert (= (and b!1285488 ((_ is ValueCellFull!16107) mapDefault!52574)) b!1285492))

(assert (= start!108894 b!1285488))

(declare-fun m!1178839 () Bool)

(assert (=> b!1285490 m!1178839))

(declare-fun m!1178841 () Bool)

(assert (=> mapNonEmpty!52574 m!1178841))

(declare-fun m!1178843 () Bool)

(assert (=> b!1285491 m!1178843))

(declare-fun m!1178845 () Bool)

(assert (=> start!108894 m!1178845))

(declare-fun m!1178847 () Bool)

(assert (=> start!108894 m!1178847))

(declare-fun m!1178849 () Bool)

(assert (=> start!108894 m!1178849))

(declare-fun m!1178851 () Bool)

(assert (=> b!1285487 m!1178851))

(assert (=> b!1285487 m!1178851))

(declare-fun m!1178853 () Bool)

(assert (=> b!1285487 m!1178853))

(check-sat tp_is_empty!34011 (not start!108894) (not b!1285487) (not mapNonEmpty!52574) b_and!46447 (not b_next!28371) (not b!1285490) (not b!1285491))
(check-sat b_and!46447 (not b_next!28371))
