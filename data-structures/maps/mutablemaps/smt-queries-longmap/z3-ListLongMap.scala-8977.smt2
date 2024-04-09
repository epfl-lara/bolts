; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108660 () Bool)

(assert start!108660)

(declare-fun b_free!28137 () Bool)

(declare-fun b_next!28137 () Bool)

(assert (=> start!108660 (= b_free!28137 (not b_next!28137))))

(declare-fun tp!99528 () Bool)

(declare-fun b_and!46213 () Bool)

(assert (=> start!108660 (= tp!99528 b_and!46213)))

(declare-fun b!1282083 () Bool)

(declare-fun e!732562 () Bool)

(assert (=> b!1282083 (= e!732562 false)))

(declare-datatypes ((V!50139 0))(
  ( (V!50140 (val!16963 Int)) )
))
(declare-fun minValue!1387 () V!50139)

(declare-fun zeroValue!1387 () V!50139)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576438 () Bool)

(declare-datatypes ((ValueCell!15990 0))(
  ( (ValueCellFull!15990 (v!19563 V!50139)) (EmptyCell!15990) )
))
(declare-datatypes ((array!84579 0))(
  ( (array!84580 (arr!40787 (Array (_ BitVec 32) ValueCell!15990)) (size!41338 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84579)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84581 0))(
  ( (array!84582 (arr!40788 (Array (_ BitVec 32) (_ BitVec 64))) (size!41339 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84581)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21866 0))(
  ( (tuple2!21867 (_1!10943 (_ BitVec 64)) (_2!10943 V!50139)) )
))
(declare-datatypes ((List!29073 0))(
  ( (Nil!29070) (Cons!29069 (h!30278 tuple2!21866) (t!42624 List!29073)) )
))
(declare-datatypes ((ListLongMap!19535 0))(
  ( (ListLongMap!19536 (toList!9783 List!29073)) )
))
(declare-fun contains!7838 (ListLongMap!19535 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4803 (array!84581 array!84579 (_ BitVec 32) (_ BitVec 32) V!50139 V!50139 (_ BitVec 32) Int) ListLongMap!19535)

(assert (=> b!1282083 (= lt!576438 (contains!7838 (getCurrentListMap!4803 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1282084 () Bool)

(declare-fun res!851695 () Bool)

(assert (=> b!1282084 (=> (not res!851695) (not e!732562))))

(assert (=> b!1282084 (= res!851695 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41339 _keys!1741))))))

(declare-fun mapNonEmpty!52223 () Bool)

(declare-fun mapRes!52223 () Bool)

(declare-fun tp!99527 () Bool)

(declare-fun e!732564 () Bool)

(assert (=> mapNonEmpty!52223 (= mapRes!52223 (and tp!99527 e!732564))))

(declare-fun mapRest!52223 () (Array (_ BitVec 32) ValueCell!15990))

(declare-fun mapValue!52223 () ValueCell!15990)

(declare-fun mapKey!52223 () (_ BitVec 32))

(assert (=> mapNonEmpty!52223 (= (arr!40787 _values!1445) (store mapRest!52223 mapKey!52223 mapValue!52223))))

(declare-fun b!1282085 () Bool)

(declare-fun res!851694 () Bool)

(assert (=> b!1282085 (=> (not res!851694) (not e!732562))))

(assert (=> b!1282085 (= res!851694 (and (= (size!41338 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41339 _keys!1741) (size!41338 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282086 () Bool)

(declare-fun e!732565 () Bool)

(declare-fun e!732561 () Bool)

(assert (=> b!1282086 (= e!732565 (and e!732561 mapRes!52223))))

(declare-fun condMapEmpty!52223 () Bool)

(declare-fun mapDefault!52223 () ValueCell!15990)

(assert (=> b!1282086 (= condMapEmpty!52223 (= (arr!40787 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15990)) mapDefault!52223)))))

(declare-fun mapIsEmpty!52223 () Bool)

(assert (=> mapIsEmpty!52223 mapRes!52223))

(declare-fun b!1282088 () Bool)

(declare-fun tp_is_empty!33777 () Bool)

(assert (=> b!1282088 (= e!732564 tp_is_empty!33777)))

(declare-fun b!1282089 () Bool)

(declare-fun res!851693 () Bool)

(assert (=> b!1282089 (=> (not res!851693) (not e!732562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84581 (_ BitVec 32)) Bool)

(assert (=> b!1282089 (= res!851693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282090 () Bool)

(assert (=> b!1282090 (= e!732561 tp_is_empty!33777)))

(declare-fun res!851696 () Bool)

(assert (=> start!108660 (=> (not res!851696) (not e!732562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108660 (= res!851696 (validMask!0 mask!2175))))

(assert (=> start!108660 e!732562))

(assert (=> start!108660 tp_is_empty!33777))

(assert (=> start!108660 true))

(declare-fun array_inv!30927 (array!84579) Bool)

(assert (=> start!108660 (and (array_inv!30927 _values!1445) e!732565)))

(declare-fun array_inv!30928 (array!84581) Bool)

(assert (=> start!108660 (array_inv!30928 _keys!1741)))

(assert (=> start!108660 tp!99528))

(declare-fun b!1282087 () Bool)

(declare-fun res!851697 () Bool)

(assert (=> b!1282087 (=> (not res!851697) (not e!732562))))

(declare-datatypes ((List!29074 0))(
  ( (Nil!29071) (Cons!29070 (h!30279 (_ BitVec 64)) (t!42625 List!29074)) )
))
(declare-fun arrayNoDuplicates!0 (array!84581 (_ BitVec 32) List!29074) Bool)

(assert (=> b!1282087 (= res!851697 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29071))))

(assert (= (and start!108660 res!851696) b!1282085))

(assert (= (and b!1282085 res!851694) b!1282089))

(assert (= (and b!1282089 res!851693) b!1282087))

(assert (= (and b!1282087 res!851697) b!1282084))

(assert (= (and b!1282084 res!851695) b!1282083))

(assert (= (and b!1282086 condMapEmpty!52223) mapIsEmpty!52223))

(assert (= (and b!1282086 (not condMapEmpty!52223)) mapNonEmpty!52223))

(get-info :version)

(assert (= (and mapNonEmpty!52223 ((_ is ValueCellFull!15990) mapValue!52223)) b!1282088))

(assert (= (and b!1282086 ((_ is ValueCellFull!15990) mapDefault!52223)) b!1282090))

(assert (= start!108660 b!1282086))

(declare-fun m!1176415 () Bool)

(assert (=> mapNonEmpty!52223 m!1176415))

(declare-fun m!1176417 () Bool)

(assert (=> start!108660 m!1176417))

(declare-fun m!1176419 () Bool)

(assert (=> start!108660 m!1176419))

(declare-fun m!1176421 () Bool)

(assert (=> start!108660 m!1176421))

(declare-fun m!1176423 () Bool)

(assert (=> b!1282087 m!1176423))

(declare-fun m!1176425 () Bool)

(assert (=> b!1282083 m!1176425))

(assert (=> b!1282083 m!1176425))

(declare-fun m!1176427 () Bool)

(assert (=> b!1282083 m!1176427))

(declare-fun m!1176429 () Bool)

(assert (=> b!1282089 m!1176429))

(check-sat b_and!46213 (not b!1282083) (not b!1282089) (not start!108660) (not mapNonEmpty!52223) (not b_next!28137) (not b!1282087) tp_is_empty!33777)
(check-sat b_and!46213 (not b_next!28137))
