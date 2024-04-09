; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108476 () Bool)

(assert start!108476)

(declare-fun b_free!27987 () Bool)

(declare-fun b_next!27987 () Bool)

(assert (=> start!108476 (= b_free!27987 (not b_next!27987))))

(declare-fun tp!99071 () Bool)

(declare-fun b_and!46057 () Bool)

(assert (=> start!108476 (= tp!99071 b_and!46057)))

(declare-fun mapIsEmpty!51992 () Bool)

(declare-fun mapRes!51992 () Bool)

(assert (=> mapIsEmpty!51992 mapRes!51992))

(declare-fun res!850196 () Bool)

(declare-fun e!731243 () Bool)

(assert (=> start!108476 (=> (not res!850196) (not e!731243))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108476 (= res!850196 (validMask!0 mask!2175))))

(assert (=> start!108476 e!731243))

(declare-fun tp_is_empty!33627 () Bool)

(assert (=> start!108476 tp_is_empty!33627))

(assert (=> start!108476 true))

(declare-datatypes ((V!49939 0))(
  ( (V!49940 (val!16888 Int)) )
))
(declare-datatypes ((ValueCell!15915 0))(
  ( (ValueCellFull!15915 (v!19486 V!49939)) (EmptyCell!15915) )
))
(declare-datatypes ((array!84287 0))(
  ( (array!84288 (arr!40643 (Array (_ BitVec 32) ValueCell!15915)) (size!41194 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84287)

(declare-fun e!731245 () Bool)

(declare-fun array_inv!30833 (array!84287) Bool)

(assert (=> start!108476 (and (array_inv!30833 _values!1445) e!731245)))

(declare-datatypes ((array!84289 0))(
  ( (array!84290 (arr!40644 (Array (_ BitVec 32) (_ BitVec 64))) (size!41195 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84289)

(declare-fun array_inv!30834 (array!84289) Bool)

(assert (=> start!108476 (array_inv!30834 _keys!1741)))

(assert (=> start!108476 tp!99071))

(declare-fun b!1279759 () Bool)

(declare-fun res!850193 () Bool)

(assert (=> b!1279759 (=> (not res!850193) (not e!731243))))

(declare-datatypes ((List!28968 0))(
  ( (Nil!28965) (Cons!28964 (h!30173 (_ BitVec 64)) (t!42515 List!28968)) )
))
(declare-fun arrayNoDuplicates!0 (array!84289 (_ BitVec 32) List!28968) Bool)

(assert (=> b!1279759 (= res!850193 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28965))))

(declare-fun b!1279760 () Bool)

(declare-fun res!850194 () Bool)

(assert (=> b!1279760 (=> (not res!850194) (not e!731243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84289 (_ BitVec 32)) Bool)

(assert (=> b!1279760 (= res!850194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279761 () Bool)

(declare-fun res!850195 () Bool)

(assert (=> b!1279761 (=> (not res!850195) (not e!731243))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279761 (= res!850195 (and (= (size!41194 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41195 _keys!1741) (size!41194 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51992 () Bool)

(declare-fun tp!99072 () Bool)

(declare-fun e!731241 () Bool)

(assert (=> mapNonEmpty!51992 (= mapRes!51992 (and tp!99072 e!731241))))

(declare-fun mapValue!51992 () ValueCell!15915)

(declare-fun mapKey!51992 () (_ BitVec 32))

(declare-fun mapRest!51992 () (Array (_ BitVec 32) ValueCell!15915))

(assert (=> mapNonEmpty!51992 (= (arr!40643 _values!1445) (store mapRest!51992 mapKey!51992 mapValue!51992))))

(declare-fun b!1279762 () Bool)

(declare-fun e!731242 () Bool)

(assert (=> b!1279762 (= e!731242 tp_is_empty!33627)))

(declare-fun b!1279763 () Bool)

(assert (=> b!1279763 (= e!731241 tp_is_empty!33627)))

(declare-fun b!1279764 () Bool)

(declare-fun res!850192 () Bool)

(assert (=> b!1279764 (=> (not res!850192) (not e!731243))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279764 (= res!850192 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41195 _keys!1741))))))

(declare-fun b!1279765 () Bool)

(assert (=> b!1279765 (= e!731245 (and e!731242 mapRes!51992))))

(declare-fun condMapEmpty!51992 () Bool)

(declare-fun mapDefault!51992 () ValueCell!15915)

(assert (=> b!1279765 (= condMapEmpty!51992 (= (arr!40643 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15915)) mapDefault!51992)))))

(declare-fun b!1279766 () Bool)

(assert (=> b!1279766 (= e!731243 false)))

(declare-fun minValue!1387 () V!49939)

(declare-fun zeroValue!1387 () V!49939)

(declare-fun lt!575989 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21756 0))(
  ( (tuple2!21757 (_1!10888 (_ BitVec 64)) (_2!10888 V!49939)) )
))
(declare-datatypes ((List!28969 0))(
  ( (Nil!28966) (Cons!28965 (h!30174 tuple2!21756) (t!42516 List!28969)) )
))
(declare-datatypes ((ListLongMap!19425 0))(
  ( (ListLongMap!19426 (toList!9728 List!28969)) )
))
(declare-fun contains!7781 (ListLongMap!19425 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4748 (array!84289 array!84287 (_ BitVec 32) (_ BitVec 32) V!49939 V!49939 (_ BitVec 32) Int) ListLongMap!19425)

(assert (=> b!1279766 (= lt!575989 (contains!7781 (getCurrentListMap!4748 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108476 res!850196) b!1279761))

(assert (= (and b!1279761 res!850195) b!1279760))

(assert (= (and b!1279760 res!850194) b!1279759))

(assert (= (and b!1279759 res!850193) b!1279764))

(assert (= (and b!1279764 res!850192) b!1279766))

(assert (= (and b!1279765 condMapEmpty!51992) mapIsEmpty!51992))

(assert (= (and b!1279765 (not condMapEmpty!51992)) mapNonEmpty!51992))

(get-info :version)

(assert (= (and mapNonEmpty!51992 ((_ is ValueCellFull!15915) mapValue!51992)) b!1279763))

(assert (= (and b!1279765 ((_ is ValueCellFull!15915) mapDefault!51992)) b!1279762))

(assert (= start!108476 b!1279765))

(declare-fun m!1174623 () Bool)

(assert (=> b!1279766 m!1174623))

(assert (=> b!1279766 m!1174623))

(declare-fun m!1174625 () Bool)

(assert (=> b!1279766 m!1174625))

(declare-fun m!1174627 () Bool)

(assert (=> b!1279760 m!1174627))

(declare-fun m!1174629 () Bool)

(assert (=> mapNonEmpty!51992 m!1174629))

(declare-fun m!1174631 () Bool)

(assert (=> start!108476 m!1174631))

(declare-fun m!1174633 () Bool)

(assert (=> start!108476 m!1174633))

(declare-fun m!1174635 () Bool)

(assert (=> start!108476 m!1174635))

(declare-fun m!1174637 () Bool)

(assert (=> b!1279759 m!1174637))

(check-sat (not mapNonEmpty!51992) (not b_next!27987) (not b!1279766) (not b!1279759) (not start!108476) (not b!1279760) b_and!46057 tp_is_empty!33627)
(check-sat b_and!46057 (not b_next!27987))
