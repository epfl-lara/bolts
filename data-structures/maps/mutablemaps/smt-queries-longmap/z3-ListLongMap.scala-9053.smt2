; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109140 () Bool)

(assert start!109140)

(declare-fun b_free!28593 () Bool)

(declare-fun b_next!28593 () Bool)

(assert (=> start!109140 (= b_free!28593 (not b_next!28593))))

(declare-fun tp!100899 () Bool)

(declare-fun b_and!46693 () Bool)

(assert (=> start!109140 (= tp!100899 b_and!46693)))

(declare-fun b!1289859 () Bool)

(declare-fun res!856929 () Bool)

(declare-fun e!736448 () Bool)

(assert (=> b!1289859 (=> (not res!856929) (not e!736448))))

(declare-datatypes ((array!85465 0))(
  ( (array!85466 (arr!41229 (Array (_ BitVec 32) (_ BitVec 64))) (size!41780 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85465)

(declare-datatypes ((List!29417 0))(
  ( (Nil!29414) (Cons!29413 (h!30622 (_ BitVec 64)) (t!42988 List!29417)) )
))
(declare-fun arrayNoDuplicates!0 (array!85465 (_ BitVec 32) List!29417) Bool)

(assert (=> b!1289859 (= res!856929 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29414))))

(declare-fun b!1289860 () Bool)

(declare-fun e!736451 () Bool)

(declare-fun tp_is_empty!34233 () Bool)

(assert (=> b!1289860 (= e!736451 tp_is_empty!34233)))

(declare-fun mapNonEmpty!52910 () Bool)

(declare-fun mapRes!52910 () Bool)

(declare-fun tp!100898 () Bool)

(assert (=> mapNonEmpty!52910 (= mapRes!52910 (and tp!100898 e!736451))))

(declare-datatypes ((V!50747 0))(
  ( (V!50748 (val!17191 Int)) )
))
(declare-datatypes ((ValueCell!16218 0))(
  ( (ValueCellFull!16218 (v!19792 V!50747)) (EmptyCell!16218) )
))
(declare-fun mapRest!52910 () (Array (_ BitVec 32) ValueCell!16218))

(declare-datatypes ((array!85467 0))(
  ( (array!85468 (arr!41230 (Array (_ BitVec 32) ValueCell!16218)) (size!41781 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85467)

(declare-fun mapValue!52910 () ValueCell!16218)

(declare-fun mapKey!52910 () (_ BitVec 32))

(assert (=> mapNonEmpty!52910 (= (arr!41230 _values!1445) (store mapRest!52910 mapKey!52910 mapValue!52910))))

(declare-fun b!1289861 () Bool)

(declare-fun res!856927 () Bool)

(assert (=> b!1289861 (=> (not res!856927) (not e!736448))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85465 (_ BitVec 32)) Bool)

(assert (=> b!1289861 (= res!856927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!856934 () Bool)

(assert (=> start!109140 (=> (not res!856934) (not e!736448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109140 (= res!856934 (validMask!0 mask!2175))))

(assert (=> start!109140 e!736448))

(assert (=> start!109140 tp_is_empty!34233))

(assert (=> start!109140 true))

(declare-fun e!736450 () Bool)

(declare-fun array_inv!31225 (array!85467) Bool)

(assert (=> start!109140 (and (array_inv!31225 _values!1445) e!736450)))

(declare-fun array_inv!31226 (array!85465) Bool)

(assert (=> start!109140 (array_inv!31226 _keys!1741)))

(assert (=> start!109140 tp!100899))

(declare-fun b!1289862 () Bool)

(declare-fun res!856932 () Bool)

(assert (=> b!1289862 (=> (not res!856932) (not e!736448))))

(declare-fun minValue!1387 () V!50747)

(declare-fun zeroValue!1387 () V!50747)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22220 0))(
  ( (tuple2!22221 (_1!11120 (_ BitVec 64)) (_2!11120 V!50747)) )
))
(declare-datatypes ((List!29418 0))(
  ( (Nil!29415) (Cons!29414 (h!30623 tuple2!22220) (t!42989 List!29418)) )
))
(declare-datatypes ((ListLongMap!19889 0))(
  ( (ListLongMap!19890 (toList!9960 List!29418)) )
))
(declare-fun contains!8016 (ListLongMap!19889 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4962 (array!85465 array!85467 (_ BitVec 32) (_ BitVec 32) V!50747 V!50747 (_ BitVec 32) Int) ListLongMap!19889)

(assert (=> b!1289862 (= res!856932 (contains!8016 (getCurrentListMap!4962 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1289863 () Bool)

(declare-fun e!736449 () Bool)

(assert (=> b!1289863 (= e!736450 (and e!736449 mapRes!52910))))

(declare-fun condMapEmpty!52910 () Bool)

(declare-fun mapDefault!52910 () ValueCell!16218)

(assert (=> b!1289863 (= condMapEmpty!52910 (= (arr!41230 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16218)) mapDefault!52910)))))

(declare-fun b!1289864 () Bool)

(declare-fun res!856928 () Bool)

(assert (=> b!1289864 (=> (not res!856928) (not e!736448))))

(assert (=> b!1289864 (= res!856928 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41780 _keys!1741))))))

(declare-fun b!1289865 () Bool)

(declare-fun res!856931 () Bool)

(assert (=> b!1289865 (=> (not res!856931) (not e!736448))))

(assert (=> b!1289865 (= res!856931 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41780 _keys!1741))))))

(declare-fun b!1289866 () Bool)

(declare-fun res!856930 () Bool)

(assert (=> b!1289866 (=> (not res!856930) (not e!736448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289866 (= res!856930 (not (validKeyInArray!0 (select (arr!41229 _keys!1741) from!2144))))))

(declare-fun b!1289867 () Bool)

(declare-fun res!856933 () Bool)

(assert (=> b!1289867 (=> (not res!856933) (not e!736448))))

(assert (=> b!1289867 (= res!856933 (and (= (size!41781 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41780 _keys!1741) (size!41781 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52910 () Bool)

(assert (=> mapIsEmpty!52910 mapRes!52910))

(declare-fun b!1289868 () Bool)

(declare-fun e!736453 () Bool)

(assert (=> b!1289868 (= e!736453 true)))

(declare-fun lt!578367 () ListLongMap!19889)

(declare-fun +!4330 (ListLongMap!19889 tuple2!22220) ListLongMap!19889)

(assert (=> b!1289868 (not (contains!8016 (+!4330 lt!578367 (tuple2!22221 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42611 0))(
  ( (Unit!42612) )
))
(declare-fun lt!578366 () Unit!42611)

(declare-fun addStillNotContains!375 (ListLongMap!19889 (_ BitVec 64) V!50747 (_ BitVec 64)) Unit!42611)

(assert (=> b!1289868 (= lt!578366 (addStillNotContains!375 lt!578367 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1289868 (not (contains!8016 (+!4330 lt!578367 (tuple2!22221 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578368 () Unit!42611)

(assert (=> b!1289868 (= lt!578368 (addStillNotContains!375 lt!578367 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6042 (array!85465 array!85467 (_ BitVec 32) (_ BitVec 32) V!50747 V!50747 (_ BitVec 32) Int) ListLongMap!19889)

(assert (=> b!1289868 (= lt!578367 (getCurrentListMapNoExtraKeys!6042 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289869 () Bool)

(assert (=> b!1289869 (= e!736448 (not e!736453))))

(declare-fun res!856935 () Bool)

(assert (=> b!1289869 (=> res!856935 e!736453)))

(assert (=> b!1289869 (= res!856935 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289869 (not (contains!8016 (ListLongMap!19890 Nil!29415) k0!1205))))

(declare-fun lt!578365 () Unit!42611)

(declare-fun emptyContainsNothing!67 ((_ BitVec 64)) Unit!42611)

(assert (=> b!1289869 (= lt!578365 (emptyContainsNothing!67 k0!1205))))

(declare-fun b!1289870 () Bool)

(assert (=> b!1289870 (= e!736449 tp_is_empty!34233)))

(assert (= (and start!109140 res!856934) b!1289867))

(assert (= (and b!1289867 res!856933) b!1289861))

(assert (= (and b!1289861 res!856927) b!1289859))

(assert (= (and b!1289859 res!856929) b!1289865))

(assert (= (and b!1289865 res!856931) b!1289862))

(assert (= (and b!1289862 res!856932) b!1289864))

(assert (= (and b!1289864 res!856928) b!1289866))

(assert (= (and b!1289866 res!856930) b!1289869))

(assert (= (and b!1289869 (not res!856935)) b!1289868))

(assert (= (and b!1289863 condMapEmpty!52910) mapIsEmpty!52910))

(assert (= (and b!1289863 (not condMapEmpty!52910)) mapNonEmpty!52910))

(get-info :version)

(assert (= (and mapNonEmpty!52910 ((_ is ValueCellFull!16218) mapValue!52910)) b!1289860))

(assert (= (and b!1289863 ((_ is ValueCellFull!16218) mapDefault!52910)) b!1289870))

(assert (= start!109140 b!1289863))

(declare-fun m!1182451 () Bool)

(assert (=> mapNonEmpty!52910 m!1182451))

(declare-fun m!1182453 () Bool)

(assert (=> b!1289869 m!1182453))

(declare-fun m!1182455 () Bool)

(assert (=> b!1289869 m!1182455))

(declare-fun m!1182457 () Bool)

(assert (=> b!1289862 m!1182457))

(assert (=> b!1289862 m!1182457))

(declare-fun m!1182459 () Bool)

(assert (=> b!1289862 m!1182459))

(declare-fun m!1182461 () Bool)

(assert (=> start!109140 m!1182461))

(declare-fun m!1182463 () Bool)

(assert (=> start!109140 m!1182463))

(declare-fun m!1182465 () Bool)

(assert (=> start!109140 m!1182465))

(declare-fun m!1182467 () Bool)

(assert (=> b!1289859 m!1182467))

(declare-fun m!1182469 () Bool)

(assert (=> b!1289861 m!1182469))

(declare-fun m!1182471 () Bool)

(assert (=> b!1289866 m!1182471))

(assert (=> b!1289866 m!1182471))

(declare-fun m!1182473 () Bool)

(assert (=> b!1289866 m!1182473))

(declare-fun m!1182475 () Bool)

(assert (=> b!1289868 m!1182475))

(declare-fun m!1182477 () Bool)

(assert (=> b!1289868 m!1182477))

(declare-fun m!1182479 () Bool)

(assert (=> b!1289868 m!1182479))

(assert (=> b!1289868 m!1182475))

(declare-fun m!1182481 () Bool)

(assert (=> b!1289868 m!1182481))

(declare-fun m!1182483 () Bool)

(assert (=> b!1289868 m!1182483))

(assert (=> b!1289868 m!1182483))

(declare-fun m!1182485 () Bool)

(assert (=> b!1289868 m!1182485))

(declare-fun m!1182487 () Bool)

(assert (=> b!1289868 m!1182487))

(check-sat (not b!1289869) (not b_next!28593) b_and!46693 (not b!1289868) tp_is_empty!34233 (not b!1289859) (not start!109140) (not b!1289861) (not b!1289866) (not mapNonEmpty!52910) (not b!1289862))
(check-sat b_and!46693 (not b_next!28593))
