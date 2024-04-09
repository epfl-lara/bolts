; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108792 () Bool)

(assert start!108792)

(declare-fun b_free!28269 () Bool)

(declare-fun b_next!28269 () Bool)

(assert (=> start!108792 (= b_free!28269 (not b_next!28269))))

(declare-fun tp!99924 () Bool)

(declare-fun b_and!46345 () Bool)

(assert (=> start!108792 (= tp!99924 b_and!46345)))

(declare-fun mapIsEmpty!52421 () Bool)

(declare-fun mapRes!52421 () Bool)

(assert (=> mapIsEmpty!52421 mapRes!52421))

(declare-fun mapNonEmpty!52421 () Bool)

(declare-fun tp!99923 () Bool)

(declare-fun e!733553 () Bool)

(assert (=> mapNonEmpty!52421 (= mapRes!52421 (and tp!99923 e!733553))))

(declare-datatypes ((V!50315 0))(
  ( (V!50316 (val!17029 Int)) )
))
(declare-datatypes ((ValueCell!16056 0))(
  ( (ValueCellFull!16056 (v!19629 V!50315)) (EmptyCell!16056) )
))
(declare-fun mapValue!52421 () ValueCell!16056)

(declare-fun mapRest!52421 () (Array (_ BitVec 32) ValueCell!16056))

(declare-fun mapKey!52421 () (_ BitVec 32))

(declare-datatypes ((array!84833 0))(
  ( (array!84834 (arr!40914 (Array (_ BitVec 32) ValueCell!16056)) (size!41465 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84833)

(assert (=> mapNonEmpty!52421 (= (arr!40914 _values!1445) (store mapRest!52421 mapKey!52421 mapValue!52421))))

(declare-fun b!1284163 () Bool)

(declare-fun res!853181 () Bool)

(declare-fun e!733554 () Bool)

(assert (=> b!1284163 (=> (not res!853181) (not e!733554))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84835 0))(
  ( (array!84836 (arr!40915 (Array (_ BitVec 32) (_ BitVec 64))) (size!41466 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84835)

(assert (=> b!1284163 (= res!853181 (and (= (size!41465 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41466 _keys!1741) (size!41465 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284164 () Bool)

(declare-fun e!733551 () Bool)

(declare-fun e!733555 () Bool)

(assert (=> b!1284164 (= e!733551 (and e!733555 mapRes!52421))))

(declare-fun condMapEmpty!52421 () Bool)

(declare-fun mapDefault!52421 () ValueCell!16056)

(assert (=> b!1284164 (= condMapEmpty!52421 (= (arr!40914 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16056)) mapDefault!52421)))))

(declare-fun b!1284165 () Bool)

(assert (=> b!1284165 (= e!733554 false)))

(declare-fun minValue!1387 () V!50315)

(declare-fun zeroValue!1387 () V!50315)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576726 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21956 0))(
  ( (tuple2!21957 (_1!10988 (_ BitVec 64)) (_2!10988 V!50315)) )
))
(declare-datatypes ((List!29163 0))(
  ( (Nil!29160) (Cons!29159 (h!30368 tuple2!21956) (t!42714 List!29163)) )
))
(declare-datatypes ((ListLongMap!19625 0))(
  ( (ListLongMap!19626 (toList!9828 List!29163)) )
))
(declare-fun contains!7883 (ListLongMap!19625 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4846 (array!84835 array!84833 (_ BitVec 32) (_ BitVec 32) V!50315 V!50315 (_ BitVec 32) Int) ListLongMap!19625)

(assert (=> b!1284165 (= lt!576726 (contains!7883 (getCurrentListMap!4846 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1284166 () Bool)

(declare-fun tp_is_empty!33909 () Bool)

(assert (=> b!1284166 (= e!733555 tp_is_empty!33909)))

(declare-fun b!1284167 () Bool)

(assert (=> b!1284167 (= e!733553 tp_is_empty!33909)))

(declare-fun b!1284168 () Bool)

(declare-fun res!853178 () Bool)

(assert (=> b!1284168 (=> (not res!853178) (not e!733554))))

(assert (=> b!1284168 (= res!853178 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41466 _keys!1741))))))

(declare-fun b!1284169 () Bool)

(declare-fun res!853179 () Bool)

(assert (=> b!1284169 (=> (not res!853179) (not e!733554))))

(declare-datatypes ((List!29164 0))(
  ( (Nil!29161) (Cons!29160 (h!30369 (_ BitVec 64)) (t!42715 List!29164)) )
))
(declare-fun arrayNoDuplicates!0 (array!84835 (_ BitVec 32) List!29164) Bool)

(assert (=> b!1284169 (= res!853179 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29161))))

(declare-fun res!853180 () Bool)

(assert (=> start!108792 (=> (not res!853180) (not e!733554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108792 (= res!853180 (validMask!0 mask!2175))))

(assert (=> start!108792 e!733554))

(assert (=> start!108792 tp_is_empty!33909))

(assert (=> start!108792 true))

(declare-fun array_inv!31013 (array!84833) Bool)

(assert (=> start!108792 (and (array_inv!31013 _values!1445) e!733551)))

(declare-fun array_inv!31014 (array!84835) Bool)

(assert (=> start!108792 (array_inv!31014 _keys!1741)))

(assert (=> start!108792 tp!99924))

(declare-fun b!1284162 () Bool)

(declare-fun res!853182 () Bool)

(assert (=> b!1284162 (=> (not res!853182) (not e!733554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84835 (_ BitVec 32)) Bool)

(assert (=> b!1284162 (= res!853182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108792 res!853180) b!1284163))

(assert (= (and b!1284163 res!853181) b!1284162))

(assert (= (and b!1284162 res!853182) b!1284169))

(assert (= (and b!1284169 res!853179) b!1284168))

(assert (= (and b!1284168 res!853178) b!1284165))

(assert (= (and b!1284164 condMapEmpty!52421) mapIsEmpty!52421))

(assert (= (and b!1284164 (not condMapEmpty!52421)) mapNonEmpty!52421))

(get-info :version)

(assert (= (and mapNonEmpty!52421 ((_ is ValueCellFull!16056) mapValue!52421)) b!1284167))

(assert (= (and b!1284164 ((_ is ValueCellFull!16056) mapDefault!52421)) b!1284166))

(assert (= start!108792 b!1284164))

(declare-fun m!1177951 () Bool)

(assert (=> b!1284165 m!1177951))

(assert (=> b!1284165 m!1177951))

(declare-fun m!1177953 () Bool)

(assert (=> b!1284165 m!1177953))

(declare-fun m!1177955 () Bool)

(assert (=> mapNonEmpty!52421 m!1177955))

(declare-fun m!1177957 () Bool)

(assert (=> b!1284169 m!1177957))

(declare-fun m!1177959 () Bool)

(assert (=> b!1284162 m!1177959))

(declare-fun m!1177961 () Bool)

(assert (=> start!108792 m!1177961))

(declare-fun m!1177963 () Bool)

(assert (=> start!108792 m!1177963))

(declare-fun m!1177965 () Bool)

(assert (=> start!108792 m!1177965))

(check-sat b_and!46345 (not b!1284162) tp_is_empty!33909 (not b!1284165) (not b!1284169) (not mapNonEmpty!52421) (not start!108792) (not b_next!28269))
(check-sat b_and!46345 (not b_next!28269))
