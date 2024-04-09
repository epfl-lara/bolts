; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108422 () Bool)

(assert start!108422)

(declare-fun b_free!27933 () Bool)

(declare-fun b_next!27933 () Bool)

(assert (=> start!108422 (= b_free!27933 (not b_next!27933))))

(declare-fun tp!98910 () Bool)

(declare-fun b_and!46003 () Bool)

(assert (=> start!108422 (= tp!98910 b_and!46003)))

(declare-fun b!1279102 () Bool)

(declare-fun res!849780 () Bool)

(declare-fun e!730836 () Bool)

(assert (=> b!1279102 (=> (not res!849780) (not e!730836))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84181 0))(
  ( (array!84182 (arr!40590 (Array (_ BitVec 32) (_ BitVec 64))) (size!41141 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84181)

(assert (=> b!1279102 (= res!849780 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41141 _keys!1741))))))

(declare-fun b!1279103 () Bool)

(declare-fun res!849778 () Bool)

(assert (=> b!1279103 (=> (not res!849778) (not e!730836))))

(declare-datatypes ((List!28930 0))(
  ( (Nil!28927) (Cons!28926 (h!30135 (_ BitVec 64)) (t!42477 List!28930)) )
))
(declare-fun arrayNoDuplicates!0 (array!84181 (_ BitVec 32) List!28930) Bool)

(assert (=> b!1279103 (= res!849778 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28927))))

(declare-fun b!1279104 () Bool)

(declare-fun res!849781 () Bool)

(assert (=> b!1279104 (=> (not res!849781) (not e!730836))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84181 (_ BitVec 32)) Bool)

(assert (=> b!1279104 (= res!849781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!51911 () Bool)

(declare-fun mapRes!51911 () Bool)

(declare-fun tp!98909 () Bool)

(declare-fun e!730840 () Bool)

(assert (=> mapNonEmpty!51911 (= mapRes!51911 (and tp!98909 e!730840))))

(declare-datatypes ((V!49867 0))(
  ( (V!49868 (val!16861 Int)) )
))
(declare-datatypes ((ValueCell!15888 0))(
  ( (ValueCellFull!15888 (v!19459 V!49867)) (EmptyCell!15888) )
))
(declare-fun mapRest!51911 () (Array (_ BitVec 32) ValueCell!15888))

(declare-fun mapKey!51911 () (_ BitVec 32))

(declare-fun mapValue!51911 () ValueCell!15888)

(declare-datatypes ((array!84183 0))(
  ( (array!84184 (arr!40591 (Array (_ BitVec 32) ValueCell!15888)) (size!41142 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84183)

(assert (=> mapNonEmpty!51911 (= (arr!40591 _values!1445) (store mapRest!51911 mapKey!51911 mapValue!51911))))

(declare-fun mapIsEmpty!51911 () Bool)

(assert (=> mapIsEmpty!51911 mapRes!51911))

(declare-fun b!1279105 () Bool)

(declare-fun e!730837 () Bool)

(declare-fun tp_is_empty!33573 () Bool)

(assert (=> b!1279105 (= e!730837 tp_is_empty!33573)))

(declare-fun res!849779 () Bool)

(assert (=> start!108422 (=> (not res!849779) (not e!730836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108422 (= res!849779 (validMask!0 mask!2175))))

(assert (=> start!108422 e!730836))

(assert (=> start!108422 tp_is_empty!33573))

(assert (=> start!108422 true))

(declare-fun e!730839 () Bool)

(declare-fun array_inv!30801 (array!84183) Bool)

(assert (=> start!108422 (and (array_inv!30801 _values!1445) e!730839)))

(declare-fun array_inv!30802 (array!84181) Bool)

(assert (=> start!108422 (array_inv!30802 _keys!1741)))

(assert (=> start!108422 tp!98910))

(declare-fun b!1279106 () Bool)

(assert (=> b!1279106 (= e!730839 (and e!730837 mapRes!51911))))

(declare-fun condMapEmpty!51911 () Bool)

(declare-fun mapDefault!51911 () ValueCell!15888)

(assert (=> b!1279106 (= condMapEmpty!51911 (= (arr!40591 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15888)) mapDefault!51911)))))

(declare-fun b!1279107 () Bool)

(declare-fun res!849782 () Bool)

(assert (=> b!1279107 (=> (not res!849782) (not e!730836))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279107 (= res!849782 (and (= (size!41142 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41141 _keys!1741) (size!41142 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279108 () Bool)

(assert (=> b!1279108 (= e!730840 tp_is_empty!33573)))

(declare-fun b!1279109 () Bool)

(assert (=> b!1279109 (= e!730836 false)))

(declare-fun minValue!1387 () V!49867)

(declare-fun zeroValue!1387 () V!49867)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!575917 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21718 0))(
  ( (tuple2!21719 (_1!10869 (_ BitVec 64)) (_2!10869 V!49867)) )
))
(declare-datatypes ((List!28931 0))(
  ( (Nil!28928) (Cons!28927 (h!30136 tuple2!21718) (t!42478 List!28931)) )
))
(declare-datatypes ((ListLongMap!19387 0))(
  ( (ListLongMap!19388 (toList!9709 List!28931)) )
))
(declare-fun contains!7762 (ListLongMap!19387 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4729 (array!84181 array!84183 (_ BitVec 32) (_ BitVec 32) V!49867 V!49867 (_ BitVec 32) Int) ListLongMap!19387)

(assert (=> b!1279109 (= lt!575917 (contains!7762 (getCurrentListMap!4729 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108422 res!849779) b!1279107))

(assert (= (and b!1279107 res!849782) b!1279104))

(assert (= (and b!1279104 res!849781) b!1279103))

(assert (= (and b!1279103 res!849778) b!1279102))

(assert (= (and b!1279102 res!849780) b!1279109))

(assert (= (and b!1279106 condMapEmpty!51911) mapIsEmpty!51911))

(assert (= (and b!1279106 (not condMapEmpty!51911)) mapNonEmpty!51911))

(get-info :version)

(assert (= (and mapNonEmpty!51911 ((_ is ValueCellFull!15888) mapValue!51911)) b!1279108))

(assert (= (and b!1279106 ((_ is ValueCellFull!15888) mapDefault!51911)) b!1279105))

(assert (= start!108422 b!1279106))

(declare-fun m!1174191 () Bool)

(assert (=> b!1279109 m!1174191))

(assert (=> b!1279109 m!1174191))

(declare-fun m!1174193 () Bool)

(assert (=> b!1279109 m!1174193))

(declare-fun m!1174195 () Bool)

(assert (=> start!108422 m!1174195))

(declare-fun m!1174197 () Bool)

(assert (=> start!108422 m!1174197))

(declare-fun m!1174199 () Bool)

(assert (=> start!108422 m!1174199))

(declare-fun m!1174201 () Bool)

(assert (=> b!1279103 m!1174201))

(declare-fun m!1174203 () Bool)

(assert (=> mapNonEmpty!51911 m!1174203))

(declare-fun m!1174205 () Bool)

(assert (=> b!1279104 m!1174205))

(check-sat (not mapNonEmpty!51911) (not b!1279109) (not b!1279104) b_and!46003 (not b!1279103) tp_is_empty!33573 (not b_next!27933) (not start!108422))
(check-sat b_and!46003 (not b_next!27933))
