; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108518 () Bool)

(assert start!108518)

(declare-fun b_free!28029 () Bool)

(declare-fun b_next!28029 () Bool)

(assert (=> start!108518 (= b_free!28029 (not b_next!28029))))

(declare-fun tp!99198 () Bool)

(declare-fun b_and!46099 () Bool)

(assert (=> start!108518 (= tp!99198 b_and!46099)))

(declare-fun b!1280263 () Bool)

(declare-fun res!850507 () Bool)

(declare-fun e!731557 () Bool)

(assert (=> b!1280263 (=> (not res!850507) (not e!731557))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49995 0))(
  ( (V!49996 (val!16909 Int)) )
))
(declare-datatypes ((ValueCell!15936 0))(
  ( (ValueCellFull!15936 (v!19507 V!49995)) (EmptyCell!15936) )
))
(declare-datatypes ((array!84369 0))(
  ( (array!84370 (arr!40684 (Array (_ BitVec 32) ValueCell!15936)) (size!41235 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84369)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84371 0))(
  ( (array!84372 (arr!40685 (Array (_ BitVec 32) (_ BitVec 64))) (size!41236 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84371)

(assert (=> b!1280263 (= res!850507 (and (= (size!41235 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41236 _keys!1741) (size!41235 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52055 () Bool)

(declare-fun mapRes!52055 () Bool)

(declare-fun tp!99197 () Bool)

(declare-fun e!731560 () Bool)

(assert (=> mapNonEmpty!52055 (= mapRes!52055 (and tp!99197 e!731560))))

(declare-fun mapRest!52055 () (Array (_ BitVec 32) ValueCell!15936))

(declare-fun mapValue!52055 () ValueCell!15936)

(declare-fun mapKey!52055 () (_ BitVec 32))

(assert (=> mapNonEmpty!52055 (= (arr!40684 _values!1445) (store mapRest!52055 mapKey!52055 mapValue!52055))))

(declare-fun mapIsEmpty!52055 () Bool)

(assert (=> mapIsEmpty!52055 mapRes!52055))

(declare-fun b!1280264 () Bool)

(declare-fun res!850510 () Bool)

(assert (=> b!1280264 (=> (not res!850510) (not e!731557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84371 (_ BitVec 32)) Bool)

(assert (=> b!1280264 (= res!850510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280265 () Bool)

(declare-fun tp_is_empty!33669 () Bool)

(assert (=> b!1280265 (= e!731560 tp_is_empty!33669)))

(declare-fun b!1280266 () Bool)

(declare-fun res!850509 () Bool)

(assert (=> b!1280266 (=> (not res!850509) (not e!731557))))

(declare-datatypes ((List!28998 0))(
  ( (Nil!28995) (Cons!28994 (h!30203 (_ BitVec 64)) (t!42545 List!28998)) )
))
(declare-fun arrayNoDuplicates!0 (array!84371 (_ BitVec 32) List!28998) Bool)

(assert (=> b!1280266 (= res!850509 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28995))))

(declare-fun res!850508 () Bool)

(assert (=> start!108518 (=> (not res!850508) (not e!731557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108518 (= res!850508 (validMask!0 mask!2175))))

(assert (=> start!108518 e!731557))

(assert (=> start!108518 tp_is_empty!33669))

(assert (=> start!108518 true))

(declare-fun e!731559 () Bool)

(declare-fun array_inv!30867 (array!84369) Bool)

(assert (=> start!108518 (and (array_inv!30867 _values!1445) e!731559)))

(declare-fun array_inv!30868 (array!84371) Bool)

(assert (=> start!108518 (array_inv!30868 _keys!1741)))

(assert (=> start!108518 tp!99198))

(declare-fun b!1280267 () Bool)

(assert (=> b!1280267 (= e!731557 false)))

(declare-fun minValue!1387 () V!49995)

(declare-fun zeroValue!1387 () V!49995)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!576052 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21788 0))(
  ( (tuple2!21789 (_1!10904 (_ BitVec 64)) (_2!10904 V!49995)) )
))
(declare-datatypes ((List!28999 0))(
  ( (Nil!28996) (Cons!28995 (h!30204 tuple2!21788) (t!42546 List!28999)) )
))
(declare-datatypes ((ListLongMap!19457 0))(
  ( (ListLongMap!19458 (toList!9744 List!28999)) )
))
(declare-fun contains!7797 (ListLongMap!19457 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4764 (array!84371 array!84369 (_ BitVec 32) (_ BitVec 32) V!49995 V!49995 (_ BitVec 32) Int) ListLongMap!19457)

(assert (=> b!1280267 (= lt!576052 (contains!7797 (getCurrentListMap!4764 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1280268 () Bool)

(declare-fun res!850511 () Bool)

(assert (=> b!1280268 (=> (not res!850511) (not e!731557))))

(assert (=> b!1280268 (= res!850511 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41236 _keys!1741))))))

(declare-fun b!1280269 () Bool)

(declare-fun e!731558 () Bool)

(assert (=> b!1280269 (= e!731558 tp_is_empty!33669)))

(declare-fun b!1280270 () Bool)

(assert (=> b!1280270 (= e!731559 (and e!731558 mapRes!52055))))

(declare-fun condMapEmpty!52055 () Bool)

(declare-fun mapDefault!52055 () ValueCell!15936)

(assert (=> b!1280270 (= condMapEmpty!52055 (= (arr!40684 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15936)) mapDefault!52055)))))

(assert (= (and start!108518 res!850508) b!1280263))

(assert (= (and b!1280263 res!850507) b!1280264))

(assert (= (and b!1280264 res!850510) b!1280266))

(assert (= (and b!1280266 res!850509) b!1280268))

(assert (= (and b!1280268 res!850511) b!1280267))

(assert (= (and b!1280270 condMapEmpty!52055) mapIsEmpty!52055))

(assert (= (and b!1280270 (not condMapEmpty!52055)) mapNonEmpty!52055))

(get-info :version)

(assert (= (and mapNonEmpty!52055 ((_ is ValueCellFull!15936) mapValue!52055)) b!1280265))

(assert (= (and b!1280270 ((_ is ValueCellFull!15936) mapDefault!52055)) b!1280269))

(assert (= start!108518 b!1280270))

(declare-fun m!1174959 () Bool)

(assert (=> b!1280266 m!1174959))

(declare-fun m!1174961 () Bool)

(assert (=> start!108518 m!1174961))

(declare-fun m!1174963 () Bool)

(assert (=> start!108518 m!1174963))

(declare-fun m!1174965 () Bool)

(assert (=> start!108518 m!1174965))

(declare-fun m!1174967 () Bool)

(assert (=> b!1280264 m!1174967))

(declare-fun m!1174969 () Bool)

(assert (=> b!1280267 m!1174969))

(assert (=> b!1280267 m!1174969))

(declare-fun m!1174971 () Bool)

(assert (=> b!1280267 m!1174971))

(declare-fun m!1174973 () Bool)

(assert (=> mapNonEmpty!52055 m!1174973))

(check-sat tp_is_empty!33669 (not b!1280266) (not mapNonEmpty!52055) (not b!1280264) (not start!108518) b_and!46099 (not b!1280267) (not b_next!28029))
(check-sat b_and!46099 (not b_next!28029))
