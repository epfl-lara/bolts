; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108512 () Bool)

(assert start!108512)

(declare-fun b_free!28023 () Bool)

(declare-fun b_next!28023 () Bool)

(assert (=> start!108512 (= b_free!28023 (not b_next!28023))))

(declare-fun tp!99179 () Bool)

(declare-fun b_and!46093 () Bool)

(assert (=> start!108512 (= tp!99179 b_and!46093)))

(declare-fun b!1280191 () Bool)

(declare-fun res!850465 () Bool)

(declare-fun e!731511 () Bool)

(assert (=> b!1280191 (=> (not res!850465) (not e!731511))))

(declare-datatypes ((array!84357 0))(
  ( (array!84358 (arr!40678 (Array (_ BitVec 32) (_ BitVec 64))) (size!41229 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84357)

(declare-datatypes ((List!28995 0))(
  ( (Nil!28992) (Cons!28991 (h!30200 (_ BitVec 64)) (t!42542 List!28995)) )
))
(declare-fun arrayNoDuplicates!0 (array!84357 (_ BitVec 32) List!28995) Bool)

(assert (=> b!1280191 (= res!850465 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28992))))

(declare-fun b!1280192 () Bool)

(declare-fun e!731514 () Bool)

(declare-fun tp_is_empty!33663 () Bool)

(assert (=> b!1280192 (= e!731514 tp_is_empty!33663)))

(declare-fun b!1280193 () Bool)

(declare-fun res!850464 () Bool)

(assert (=> b!1280193 (=> (not res!850464) (not e!731511))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1280193 (= res!850464 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41229 _keys!1741))))))

(declare-fun b!1280194 () Bool)

(declare-fun res!850466 () Bool)

(assert (=> b!1280194 (=> (not res!850466) (not e!731511))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49987 0))(
  ( (V!49988 (val!16906 Int)) )
))
(declare-datatypes ((ValueCell!15933 0))(
  ( (ValueCellFull!15933 (v!19504 V!49987)) (EmptyCell!15933) )
))
(declare-datatypes ((array!84359 0))(
  ( (array!84360 (arr!40679 (Array (_ BitVec 32) ValueCell!15933)) (size!41230 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84359)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280194 (= res!850466 (and (= (size!41230 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41229 _keys!1741) (size!41230 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280195 () Bool)

(declare-fun e!731515 () Bool)

(declare-fun e!731513 () Bool)

(declare-fun mapRes!52046 () Bool)

(assert (=> b!1280195 (= e!731515 (and e!731513 mapRes!52046))))

(declare-fun condMapEmpty!52046 () Bool)

(declare-fun mapDefault!52046 () ValueCell!15933)

(assert (=> b!1280195 (= condMapEmpty!52046 (= (arr!40679 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15933)) mapDefault!52046)))))

(declare-fun b!1280196 () Bool)

(declare-fun res!850463 () Bool)

(assert (=> b!1280196 (=> (not res!850463) (not e!731511))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84357 (_ BitVec 32)) Bool)

(assert (=> b!1280196 (= res!850463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52046 () Bool)

(declare-fun tp!99180 () Bool)

(assert (=> mapNonEmpty!52046 (= mapRes!52046 (and tp!99180 e!731514))))

(declare-fun mapRest!52046 () (Array (_ BitVec 32) ValueCell!15933))

(declare-fun mapValue!52046 () ValueCell!15933)

(declare-fun mapKey!52046 () (_ BitVec 32))

(assert (=> mapNonEmpty!52046 (= (arr!40679 _values!1445) (store mapRest!52046 mapKey!52046 mapValue!52046))))

(declare-fun b!1280197 () Bool)

(assert (=> b!1280197 (= e!731513 tp_is_empty!33663)))

(declare-fun res!850462 () Bool)

(assert (=> start!108512 (=> (not res!850462) (not e!731511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108512 (= res!850462 (validMask!0 mask!2175))))

(assert (=> start!108512 e!731511))

(assert (=> start!108512 tp_is_empty!33663))

(assert (=> start!108512 true))

(declare-fun array_inv!30865 (array!84359) Bool)

(assert (=> start!108512 (and (array_inv!30865 _values!1445) e!731515)))

(declare-fun array_inv!30866 (array!84357) Bool)

(assert (=> start!108512 (array_inv!30866 _keys!1741)))

(assert (=> start!108512 tp!99179))

(declare-fun mapIsEmpty!52046 () Bool)

(assert (=> mapIsEmpty!52046 mapRes!52046))

(declare-fun b!1280198 () Bool)

(assert (=> b!1280198 (= e!731511 false)))

(declare-fun minValue!1387 () V!49987)

(declare-fun zeroValue!1387 () V!49987)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!576043 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21786 0))(
  ( (tuple2!21787 (_1!10903 (_ BitVec 64)) (_2!10903 V!49987)) )
))
(declare-datatypes ((List!28996 0))(
  ( (Nil!28993) (Cons!28992 (h!30201 tuple2!21786) (t!42543 List!28996)) )
))
(declare-datatypes ((ListLongMap!19455 0))(
  ( (ListLongMap!19456 (toList!9743 List!28996)) )
))
(declare-fun contains!7796 (ListLongMap!19455 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4763 (array!84357 array!84359 (_ BitVec 32) (_ BitVec 32) V!49987 V!49987 (_ BitVec 32) Int) ListLongMap!19455)

(assert (=> b!1280198 (= lt!576043 (contains!7796 (getCurrentListMap!4763 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108512 res!850462) b!1280194))

(assert (= (and b!1280194 res!850466) b!1280196))

(assert (= (and b!1280196 res!850463) b!1280191))

(assert (= (and b!1280191 res!850465) b!1280193))

(assert (= (and b!1280193 res!850464) b!1280198))

(assert (= (and b!1280195 condMapEmpty!52046) mapIsEmpty!52046))

(assert (= (and b!1280195 (not condMapEmpty!52046)) mapNonEmpty!52046))

(get-info :version)

(assert (= (and mapNonEmpty!52046 ((_ is ValueCellFull!15933) mapValue!52046)) b!1280192))

(assert (= (and b!1280195 ((_ is ValueCellFull!15933) mapDefault!52046)) b!1280197))

(assert (= start!108512 b!1280195))

(declare-fun m!1174911 () Bool)

(assert (=> b!1280191 m!1174911))

(declare-fun m!1174913 () Bool)

(assert (=> mapNonEmpty!52046 m!1174913))

(declare-fun m!1174915 () Bool)

(assert (=> b!1280196 m!1174915))

(declare-fun m!1174917 () Bool)

(assert (=> b!1280198 m!1174917))

(assert (=> b!1280198 m!1174917))

(declare-fun m!1174919 () Bool)

(assert (=> b!1280198 m!1174919))

(declare-fun m!1174921 () Bool)

(assert (=> start!108512 m!1174921))

(declare-fun m!1174923 () Bool)

(assert (=> start!108512 m!1174923))

(declare-fun m!1174925 () Bool)

(assert (=> start!108512 m!1174925))

(check-sat (not mapNonEmpty!52046) (not b!1280198) b_and!46093 (not b_next!28023) (not start!108512) tp_is_empty!33663 (not b!1280191) (not b!1280196))
(check-sat b_and!46093 (not b_next!28023))
