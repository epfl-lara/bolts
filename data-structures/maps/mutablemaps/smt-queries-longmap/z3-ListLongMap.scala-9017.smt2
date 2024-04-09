; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108900 () Bool)

(assert start!108900)

(declare-fun b_free!28377 () Bool)

(declare-fun b_next!28377 () Bool)

(assert (=> start!108900 (= b_free!28377 (not b_next!28377))))

(declare-fun tp!100247 () Bool)

(declare-fun b_and!46453 () Bool)

(assert (=> start!108900 (= tp!100247 b_and!46453)))

(declare-fun mapNonEmpty!52583 () Bool)

(declare-fun mapRes!52583 () Bool)

(declare-fun tp!100248 () Bool)

(declare-fun e!734362 () Bool)

(assert (=> mapNonEmpty!52583 (= mapRes!52583 (and tp!100248 e!734362))))

(declare-datatypes ((V!50459 0))(
  ( (V!50460 (val!17083 Int)) )
))
(declare-datatypes ((ValueCell!16110 0))(
  ( (ValueCellFull!16110 (v!19683 V!50459)) (EmptyCell!16110) )
))
(declare-fun mapValue!52583 () ValueCell!16110)

(declare-datatypes ((array!85043 0))(
  ( (array!85044 (arr!41019 (Array (_ BitVec 32) ValueCell!16110)) (size!41570 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85043)

(declare-fun mapKey!52583 () (_ BitVec 32))

(declare-fun mapRest!52583 () (Array (_ BitVec 32) ValueCell!16110))

(assert (=> mapNonEmpty!52583 (= (arr!41019 _values!1445) (store mapRest!52583 mapKey!52583 mapValue!52583))))

(declare-fun mapIsEmpty!52583 () Bool)

(assert (=> mapIsEmpty!52583 mapRes!52583))

(declare-fun b!1285557 () Bool)

(declare-fun res!854088 () Bool)

(declare-fun e!734365 () Bool)

(assert (=> b!1285557 (=> (not res!854088) (not e!734365))))

(declare-datatypes ((array!85045 0))(
  ( (array!85046 (arr!41020 (Array (_ BitVec 32) (_ BitVec 64))) (size!41571 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85045)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85045 (_ BitVec 32)) Bool)

(assert (=> b!1285557 (= res!854088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285558 () Bool)

(declare-fun res!854090 () Bool)

(assert (=> b!1285558 (=> (not res!854090) (not e!734365))))

(declare-datatypes ((List!29240 0))(
  ( (Nil!29237) (Cons!29236 (h!30445 (_ BitVec 64)) (t!42791 List!29240)) )
))
(declare-fun arrayNoDuplicates!0 (array!85045 (_ BitVec 32) List!29240) Bool)

(assert (=> b!1285558 (= res!854090 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29237))))

(declare-fun b!1285559 () Bool)

(declare-fun tp_is_empty!34017 () Bool)

(assert (=> b!1285559 (= e!734362 tp_is_empty!34017)))

(declare-fun b!1285560 () Bool)

(declare-fun e!734363 () Bool)

(declare-fun e!734364 () Bool)

(assert (=> b!1285560 (= e!734363 (and e!734364 mapRes!52583))))

(declare-fun condMapEmpty!52583 () Bool)

(declare-fun mapDefault!52583 () ValueCell!16110)

(assert (=> b!1285560 (= condMapEmpty!52583 (= (arr!41019 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16110)) mapDefault!52583)))))

(declare-fun b!1285561 () Bool)

(assert (=> b!1285561 (= e!734364 tp_is_empty!34017)))

(declare-fun b!1285562 () Bool)

(declare-fun res!854089 () Bool)

(assert (=> b!1285562 (=> (not res!854089) (not e!734365))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1285562 (= res!854089 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41571 _keys!1741))))))

(declare-fun b!1285563 () Bool)

(assert (=> b!1285563 (= e!734365 false)))

(declare-fun minValue!1387 () V!50459)

(declare-fun zeroValue!1387 () V!50459)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!576879 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22028 0))(
  ( (tuple2!22029 (_1!11024 (_ BitVec 64)) (_2!11024 V!50459)) )
))
(declare-datatypes ((List!29241 0))(
  ( (Nil!29238) (Cons!29237 (h!30446 tuple2!22028) (t!42792 List!29241)) )
))
(declare-datatypes ((ListLongMap!19697 0))(
  ( (ListLongMap!19698 (toList!9864 List!29241)) )
))
(declare-fun contains!7919 (ListLongMap!19697 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4880 (array!85045 array!85043 (_ BitVec 32) (_ BitVec 32) V!50459 V!50459 (_ BitVec 32) Int) ListLongMap!19697)

(assert (=> b!1285563 (= lt!576879 (contains!7919 (getCurrentListMap!4880 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!854091 () Bool)

(assert (=> start!108900 (=> (not res!854091) (not e!734365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108900 (= res!854091 (validMask!0 mask!2175))))

(assert (=> start!108900 e!734365))

(assert (=> start!108900 tp_is_empty!34017))

(assert (=> start!108900 true))

(declare-fun array_inv!31081 (array!85043) Bool)

(assert (=> start!108900 (and (array_inv!31081 _values!1445) e!734363)))

(declare-fun array_inv!31082 (array!85045) Bool)

(assert (=> start!108900 (array_inv!31082 _keys!1741)))

(assert (=> start!108900 tp!100247))

(declare-fun b!1285564 () Bool)

(declare-fun res!854087 () Bool)

(assert (=> b!1285564 (=> (not res!854087) (not e!734365))))

(assert (=> b!1285564 (= res!854087 (and (= (size!41570 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41571 _keys!1741) (size!41570 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108900 res!854091) b!1285564))

(assert (= (and b!1285564 res!854087) b!1285557))

(assert (= (and b!1285557 res!854088) b!1285558))

(assert (= (and b!1285558 res!854090) b!1285562))

(assert (= (and b!1285562 res!854089) b!1285563))

(assert (= (and b!1285560 condMapEmpty!52583) mapIsEmpty!52583))

(assert (= (and b!1285560 (not condMapEmpty!52583)) mapNonEmpty!52583))

(get-info :version)

(assert (= (and mapNonEmpty!52583 ((_ is ValueCellFull!16110) mapValue!52583)) b!1285559))

(assert (= (and b!1285560 ((_ is ValueCellFull!16110) mapDefault!52583)) b!1285561))

(assert (= start!108900 b!1285560))

(declare-fun m!1178887 () Bool)

(assert (=> b!1285558 m!1178887))

(declare-fun m!1178889 () Bool)

(assert (=> b!1285563 m!1178889))

(assert (=> b!1285563 m!1178889))

(declare-fun m!1178891 () Bool)

(assert (=> b!1285563 m!1178891))

(declare-fun m!1178893 () Bool)

(assert (=> start!108900 m!1178893))

(declare-fun m!1178895 () Bool)

(assert (=> start!108900 m!1178895))

(declare-fun m!1178897 () Bool)

(assert (=> start!108900 m!1178897))

(declare-fun m!1178899 () Bool)

(assert (=> mapNonEmpty!52583 m!1178899))

(declare-fun m!1178901 () Bool)

(assert (=> b!1285557 m!1178901))

(check-sat (not b!1285563) (not b_next!28377) tp_is_empty!34017 (not mapNonEmpty!52583) (not start!108900) (not b!1285558) b_and!46453 (not b!1285557))
(check-sat b_and!46453 (not b_next!28377))
