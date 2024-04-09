; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108858 () Bool)

(assert start!108858)

(declare-fun b_free!28335 () Bool)

(declare-fun b_next!28335 () Bool)

(assert (=> start!108858 (= b_free!28335 (not b_next!28335))))

(declare-fun tp!100122 () Bool)

(declare-fun b_and!46411 () Bool)

(assert (=> start!108858 (= tp!100122 b_and!46411)))

(declare-fun res!853776 () Bool)

(declare-fun e!734049 () Bool)

(assert (=> start!108858 (=> (not res!853776) (not e!734049))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108858 (= res!853776 (validMask!0 mask!2175))))

(assert (=> start!108858 e!734049))

(declare-fun tp_is_empty!33975 () Bool)

(assert (=> start!108858 tp_is_empty!33975))

(assert (=> start!108858 true))

(declare-datatypes ((V!50403 0))(
  ( (V!50404 (val!17062 Int)) )
))
(declare-datatypes ((ValueCell!16089 0))(
  ( (ValueCellFull!16089 (v!19662 V!50403)) (EmptyCell!16089) )
))
(declare-datatypes ((array!84963 0))(
  ( (array!84964 (arr!40979 (Array (_ BitVec 32) ValueCell!16089)) (size!41530 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84963)

(declare-fun e!734046 () Bool)

(declare-fun array_inv!31059 (array!84963) Bool)

(assert (=> start!108858 (and (array_inv!31059 _values!1445) e!734046)))

(declare-datatypes ((array!84965 0))(
  ( (array!84966 (arr!40980 (Array (_ BitVec 32) (_ BitVec 64))) (size!41531 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84965)

(declare-fun array_inv!31060 (array!84965) Bool)

(assert (=> start!108858 (array_inv!31060 _keys!1741)))

(assert (=> start!108858 tp!100122))

(declare-fun b!1285053 () Bool)

(declare-fun res!853773 () Bool)

(assert (=> b!1285053 (=> (not res!853773) (not e!734049))))

(declare-datatypes ((List!29213 0))(
  ( (Nil!29210) (Cons!29209 (h!30418 (_ BitVec 64)) (t!42764 List!29213)) )
))
(declare-fun arrayNoDuplicates!0 (array!84965 (_ BitVec 32) List!29213) Bool)

(assert (=> b!1285053 (= res!853773 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29210))))

(declare-fun mapNonEmpty!52520 () Bool)

(declare-fun mapRes!52520 () Bool)

(declare-fun tp!100121 () Bool)

(declare-fun e!734050 () Bool)

(assert (=> mapNonEmpty!52520 (= mapRes!52520 (and tp!100121 e!734050))))

(declare-fun mapKey!52520 () (_ BitVec 32))

(declare-fun mapValue!52520 () ValueCell!16089)

(declare-fun mapRest!52520 () (Array (_ BitVec 32) ValueCell!16089))

(assert (=> mapNonEmpty!52520 (= (arr!40979 _values!1445) (store mapRest!52520 mapKey!52520 mapValue!52520))))

(declare-fun b!1285054 () Bool)

(declare-fun res!853775 () Bool)

(assert (=> b!1285054 (=> (not res!853775) (not e!734049))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1285054 (= res!853775 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41531 _keys!1741))))))

(declare-fun b!1285055 () Bool)

(assert (=> b!1285055 (= e!734050 tp_is_empty!33975)))

(declare-fun b!1285056 () Bool)

(declare-fun e!734047 () Bool)

(assert (=> b!1285056 (= e!734046 (and e!734047 mapRes!52520))))

(declare-fun condMapEmpty!52520 () Bool)

(declare-fun mapDefault!52520 () ValueCell!16089)

(assert (=> b!1285056 (= condMapEmpty!52520 (= (arr!40979 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16089)) mapDefault!52520)))))

(declare-fun mapIsEmpty!52520 () Bool)

(assert (=> mapIsEmpty!52520 mapRes!52520))

(declare-fun b!1285057 () Bool)

(assert (=> b!1285057 (= e!734047 tp_is_empty!33975)))

(declare-fun b!1285058 () Bool)

(declare-fun res!853774 () Bool)

(assert (=> b!1285058 (=> (not res!853774) (not e!734049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84965 (_ BitVec 32)) Bool)

(assert (=> b!1285058 (= res!853774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285059 () Bool)

(assert (=> b!1285059 (= e!734049 false)))

(declare-fun minValue!1387 () V!50403)

(declare-fun zeroValue!1387 () V!50403)

(declare-fun lt!576816 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22000 0))(
  ( (tuple2!22001 (_1!11010 (_ BitVec 64)) (_2!11010 V!50403)) )
))
(declare-datatypes ((List!29214 0))(
  ( (Nil!29211) (Cons!29210 (h!30419 tuple2!22000) (t!42765 List!29214)) )
))
(declare-datatypes ((ListLongMap!19669 0))(
  ( (ListLongMap!19670 (toList!9850 List!29214)) )
))
(declare-fun contains!7905 (ListLongMap!19669 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4866 (array!84965 array!84963 (_ BitVec 32) (_ BitVec 32) V!50403 V!50403 (_ BitVec 32) Int) ListLongMap!19669)

(assert (=> b!1285059 (= lt!576816 (contains!7905 (getCurrentListMap!4866 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1285060 () Bool)

(declare-fun res!853772 () Bool)

(assert (=> b!1285060 (=> (not res!853772) (not e!734049))))

(assert (=> b!1285060 (= res!853772 (and (= (size!41530 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41531 _keys!1741) (size!41530 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108858 res!853776) b!1285060))

(assert (= (and b!1285060 res!853772) b!1285058))

(assert (= (and b!1285058 res!853774) b!1285053))

(assert (= (and b!1285053 res!853773) b!1285054))

(assert (= (and b!1285054 res!853775) b!1285059))

(assert (= (and b!1285056 condMapEmpty!52520) mapIsEmpty!52520))

(assert (= (and b!1285056 (not condMapEmpty!52520)) mapNonEmpty!52520))

(get-info :version)

(assert (= (and mapNonEmpty!52520 ((_ is ValueCellFull!16089) mapValue!52520)) b!1285055))

(assert (= (and b!1285056 ((_ is ValueCellFull!16089) mapDefault!52520)) b!1285057))

(assert (= start!108858 b!1285056))

(declare-fun m!1178551 () Bool)

(assert (=> b!1285053 m!1178551))

(declare-fun m!1178553 () Bool)

(assert (=> mapNonEmpty!52520 m!1178553))

(declare-fun m!1178555 () Bool)

(assert (=> start!108858 m!1178555))

(declare-fun m!1178557 () Bool)

(assert (=> start!108858 m!1178557))

(declare-fun m!1178559 () Bool)

(assert (=> start!108858 m!1178559))

(declare-fun m!1178561 () Bool)

(assert (=> b!1285058 m!1178561))

(declare-fun m!1178563 () Bool)

(assert (=> b!1285059 m!1178563))

(assert (=> b!1285059 m!1178563))

(declare-fun m!1178565 () Bool)

(assert (=> b!1285059 m!1178565))

(check-sat (not mapNonEmpty!52520) (not b!1285059) (not b!1285053) tp_is_empty!33975 (not b_next!28335) (not start!108858) b_and!46411 (not b!1285058))
(check-sat b_and!46411 (not b_next!28335))
