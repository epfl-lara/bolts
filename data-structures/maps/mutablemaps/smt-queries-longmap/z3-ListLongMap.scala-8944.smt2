; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108428 () Bool)

(assert start!108428)

(declare-fun b_free!27939 () Bool)

(declare-fun b_next!27939 () Bool)

(assert (=> start!108428 (= b_free!27939 (not b_next!27939))))

(declare-fun tp!98928 () Bool)

(declare-fun b_and!46009 () Bool)

(assert (=> start!108428 (= tp!98928 b_and!46009)))

(declare-fun b!1279174 () Bool)

(declare-fun e!730883 () Bool)

(assert (=> b!1279174 (= e!730883 false)))

(declare-datatypes ((V!49875 0))(
  ( (V!49876 (val!16864 Int)) )
))
(declare-fun minValue!1387 () V!49875)

(declare-fun zeroValue!1387 () V!49875)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!575926 () Bool)

(declare-datatypes ((ValueCell!15891 0))(
  ( (ValueCellFull!15891 (v!19462 V!49875)) (EmptyCell!15891) )
))
(declare-datatypes ((array!84193 0))(
  ( (array!84194 (arr!40596 (Array (_ BitVec 32) ValueCell!15891)) (size!41147 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84193)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!84195 0))(
  ( (array!84196 (arr!40597 (Array (_ BitVec 32) (_ BitVec 64))) (size!41148 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84195)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!21722 0))(
  ( (tuple2!21723 (_1!10871 (_ BitVec 64)) (_2!10871 V!49875)) )
))
(declare-datatypes ((List!28934 0))(
  ( (Nil!28931) (Cons!28930 (h!30139 tuple2!21722) (t!42481 List!28934)) )
))
(declare-datatypes ((ListLongMap!19391 0))(
  ( (ListLongMap!19392 (toList!9711 List!28934)) )
))
(declare-fun contains!7764 (ListLongMap!19391 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4731 (array!84195 array!84193 (_ BitVec 32) (_ BitVec 32) V!49875 V!49875 (_ BitVec 32) Int) ListLongMap!19391)

(assert (=> b!1279174 (= lt!575926 (contains!7764 (getCurrentListMap!4731 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1279175 () Bool)

(declare-fun res!849823 () Bool)

(assert (=> b!1279175 (=> (not res!849823) (not e!730883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84195 (_ BitVec 32)) Bool)

(assert (=> b!1279175 (= res!849823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!51920 () Bool)

(declare-fun mapRes!51920 () Bool)

(assert (=> mapIsEmpty!51920 mapRes!51920))

(declare-fun b!1279176 () Bool)

(declare-fun e!730882 () Bool)

(declare-fun e!730884 () Bool)

(assert (=> b!1279176 (= e!730882 (and e!730884 mapRes!51920))))

(declare-fun condMapEmpty!51920 () Bool)

(declare-fun mapDefault!51920 () ValueCell!15891)

(assert (=> b!1279176 (= condMapEmpty!51920 (= (arr!40596 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15891)) mapDefault!51920)))))

(declare-fun b!1279177 () Bool)

(declare-fun tp_is_empty!33579 () Bool)

(assert (=> b!1279177 (= e!730884 tp_is_empty!33579)))

(declare-fun b!1279178 () Bool)

(declare-fun e!730885 () Bool)

(assert (=> b!1279178 (= e!730885 tp_is_empty!33579)))

(declare-fun b!1279179 () Bool)

(declare-fun res!849824 () Bool)

(assert (=> b!1279179 (=> (not res!849824) (not e!730883))))

(assert (=> b!1279179 (= res!849824 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41148 _keys!1741))))))

(declare-fun res!849826 () Bool)

(assert (=> start!108428 (=> (not res!849826) (not e!730883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108428 (= res!849826 (validMask!0 mask!2175))))

(assert (=> start!108428 e!730883))

(assert (=> start!108428 tp_is_empty!33579))

(assert (=> start!108428 true))

(declare-fun array_inv!30803 (array!84193) Bool)

(assert (=> start!108428 (and (array_inv!30803 _values!1445) e!730882)))

(declare-fun array_inv!30804 (array!84195) Bool)

(assert (=> start!108428 (array_inv!30804 _keys!1741)))

(assert (=> start!108428 tp!98928))

(declare-fun b!1279180 () Bool)

(declare-fun res!849825 () Bool)

(assert (=> b!1279180 (=> (not res!849825) (not e!730883))))

(assert (=> b!1279180 (= res!849825 (and (= (size!41147 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41148 _keys!1741) (size!41147 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51920 () Bool)

(declare-fun tp!98927 () Bool)

(assert (=> mapNonEmpty!51920 (= mapRes!51920 (and tp!98927 e!730885))))

(declare-fun mapValue!51920 () ValueCell!15891)

(declare-fun mapKey!51920 () (_ BitVec 32))

(declare-fun mapRest!51920 () (Array (_ BitVec 32) ValueCell!15891))

(assert (=> mapNonEmpty!51920 (= (arr!40596 _values!1445) (store mapRest!51920 mapKey!51920 mapValue!51920))))

(declare-fun b!1279181 () Bool)

(declare-fun res!849827 () Bool)

(assert (=> b!1279181 (=> (not res!849827) (not e!730883))))

(declare-datatypes ((List!28935 0))(
  ( (Nil!28932) (Cons!28931 (h!30140 (_ BitVec 64)) (t!42482 List!28935)) )
))
(declare-fun arrayNoDuplicates!0 (array!84195 (_ BitVec 32) List!28935) Bool)

(assert (=> b!1279181 (= res!849827 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28932))))

(assert (= (and start!108428 res!849826) b!1279180))

(assert (= (and b!1279180 res!849825) b!1279175))

(assert (= (and b!1279175 res!849823) b!1279181))

(assert (= (and b!1279181 res!849827) b!1279179))

(assert (= (and b!1279179 res!849824) b!1279174))

(assert (= (and b!1279176 condMapEmpty!51920) mapIsEmpty!51920))

(assert (= (and b!1279176 (not condMapEmpty!51920)) mapNonEmpty!51920))

(get-info :version)

(assert (= (and mapNonEmpty!51920 ((_ is ValueCellFull!15891) mapValue!51920)) b!1279178))

(assert (= (and b!1279176 ((_ is ValueCellFull!15891) mapDefault!51920)) b!1279177))

(assert (= start!108428 b!1279176))

(declare-fun m!1174239 () Bool)

(assert (=> b!1279174 m!1174239))

(assert (=> b!1279174 m!1174239))

(declare-fun m!1174241 () Bool)

(assert (=> b!1279174 m!1174241))

(declare-fun m!1174243 () Bool)

(assert (=> mapNonEmpty!51920 m!1174243))

(declare-fun m!1174245 () Bool)

(assert (=> b!1279175 m!1174245))

(declare-fun m!1174247 () Bool)

(assert (=> b!1279181 m!1174247))

(declare-fun m!1174249 () Bool)

(assert (=> start!108428 m!1174249))

(declare-fun m!1174251 () Bool)

(assert (=> start!108428 m!1174251))

(declare-fun m!1174253 () Bool)

(assert (=> start!108428 m!1174253))

(check-sat (not start!108428) (not b!1279174) (not b_next!27939) (not mapNonEmpty!51920) (not b!1279175) tp_is_empty!33579 b_and!46009 (not b!1279181))
(check-sat b_and!46009 (not b_next!27939))
