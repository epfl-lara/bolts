; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108416 () Bool)

(assert start!108416)

(declare-fun b_free!27927 () Bool)

(declare-fun b_next!27927 () Bool)

(assert (=> start!108416 (= b_free!27927 (not b_next!27927))))

(declare-fun tp!98891 () Bool)

(declare-fun b_and!45997 () Bool)

(assert (=> start!108416 (= tp!98891 b_and!45997)))

(declare-fun b!1279030 () Bool)

(declare-fun res!849735 () Bool)

(declare-fun e!730792 () Bool)

(assert (=> b!1279030 (=> (not res!849735) (not e!730792))))

(declare-datatypes ((array!84169 0))(
  ( (array!84170 (arr!40584 (Array (_ BitVec 32) (_ BitVec 64))) (size!41135 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84169)

(declare-datatypes ((List!28927 0))(
  ( (Nil!28924) (Cons!28923 (h!30132 (_ BitVec 64)) (t!42474 List!28927)) )
))
(declare-fun arrayNoDuplicates!0 (array!84169 (_ BitVec 32) List!28927) Bool)

(assert (=> b!1279030 (= res!849735 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28924))))

(declare-fun res!849733 () Bool)

(assert (=> start!108416 (=> (not res!849733) (not e!730792))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108416 (= res!849733 (validMask!0 mask!2175))))

(assert (=> start!108416 e!730792))

(declare-fun tp_is_empty!33567 () Bool)

(assert (=> start!108416 tp_is_empty!33567))

(assert (=> start!108416 true))

(declare-datatypes ((V!49859 0))(
  ( (V!49860 (val!16858 Int)) )
))
(declare-datatypes ((ValueCell!15885 0))(
  ( (ValueCellFull!15885 (v!19456 V!49859)) (EmptyCell!15885) )
))
(declare-datatypes ((array!84171 0))(
  ( (array!84172 (arr!40585 (Array (_ BitVec 32) ValueCell!15885)) (size!41136 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84171)

(declare-fun e!730791 () Bool)

(declare-fun array_inv!30799 (array!84171) Bool)

(assert (=> start!108416 (and (array_inv!30799 _values!1445) e!730791)))

(declare-fun array_inv!30800 (array!84169) Bool)

(assert (=> start!108416 (array_inv!30800 _keys!1741)))

(assert (=> start!108416 tp!98891))

(declare-fun b!1279031 () Bool)

(declare-fun res!849734 () Bool)

(assert (=> b!1279031 (=> (not res!849734) (not e!730792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84169 (_ BitVec 32)) Bool)

(assert (=> b!1279031 (= res!849734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279032 () Bool)

(assert (=> b!1279032 (= e!730792 false)))

(declare-fun minValue!1387 () V!49859)

(declare-fun zeroValue!1387 () V!49859)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!575908 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21714 0))(
  ( (tuple2!21715 (_1!10867 (_ BitVec 64)) (_2!10867 V!49859)) )
))
(declare-datatypes ((List!28928 0))(
  ( (Nil!28925) (Cons!28924 (h!30133 tuple2!21714) (t!42475 List!28928)) )
))
(declare-datatypes ((ListLongMap!19383 0))(
  ( (ListLongMap!19384 (toList!9707 List!28928)) )
))
(declare-fun contains!7760 (ListLongMap!19383 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4727 (array!84169 array!84171 (_ BitVec 32) (_ BitVec 32) V!49859 V!49859 (_ BitVec 32) Int) ListLongMap!19383)

(assert (=> b!1279032 (= lt!575908 (contains!7760 (getCurrentListMap!4727 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!51902 () Bool)

(declare-fun mapRes!51902 () Bool)

(declare-fun tp!98892 () Bool)

(declare-fun e!730793 () Bool)

(assert (=> mapNonEmpty!51902 (= mapRes!51902 (and tp!98892 e!730793))))

(declare-fun mapRest!51902 () (Array (_ BitVec 32) ValueCell!15885))

(declare-fun mapKey!51902 () (_ BitVec 32))

(declare-fun mapValue!51902 () ValueCell!15885)

(assert (=> mapNonEmpty!51902 (= (arr!40585 _values!1445) (store mapRest!51902 mapKey!51902 mapValue!51902))))

(declare-fun b!1279033 () Bool)

(declare-fun e!730795 () Bool)

(assert (=> b!1279033 (= e!730795 tp_is_empty!33567)))

(declare-fun b!1279034 () Bool)

(declare-fun res!849737 () Bool)

(assert (=> b!1279034 (=> (not res!849737) (not e!730792))))

(assert (=> b!1279034 (= res!849737 (and (= (size!41136 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41135 _keys!1741) (size!41136 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279035 () Bool)

(declare-fun res!849736 () Bool)

(assert (=> b!1279035 (=> (not res!849736) (not e!730792))))

(assert (=> b!1279035 (= res!849736 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41135 _keys!1741))))))

(declare-fun b!1279036 () Bool)

(assert (=> b!1279036 (= e!730793 tp_is_empty!33567)))

(declare-fun mapIsEmpty!51902 () Bool)

(assert (=> mapIsEmpty!51902 mapRes!51902))

(declare-fun b!1279037 () Bool)

(assert (=> b!1279037 (= e!730791 (and e!730795 mapRes!51902))))

(declare-fun condMapEmpty!51902 () Bool)

(declare-fun mapDefault!51902 () ValueCell!15885)

(assert (=> b!1279037 (= condMapEmpty!51902 (= (arr!40585 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15885)) mapDefault!51902)))))

(assert (= (and start!108416 res!849733) b!1279034))

(assert (= (and b!1279034 res!849737) b!1279031))

(assert (= (and b!1279031 res!849734) b!1279030))

(assert (= (and b!1279030 res!849735) b!1279035))

(assert (= (and b!1279035 res!849736) b!1279032))

(assert (= (and b!1279037 condMapEmpty!51902) mapIsEmpty!51902))

(assert (= (and b!1279037 (not condMapEmpty!51902)) mapNonEmpty!51902))

(get-info :version)

(assert (= (and mapNonEmpty!51902 ((_ is ValueCellFull!15885) mapValue!51902)) b!1279036))

(assert (= (and b!1279037 ((_ is ValueCellFull!15885) mapDefault!51902)) b!1279033))

(assert (= start!108416 b!1279037))

(declare-fun m!1174143 () Bool)

(assert (=> b!1279031 m!1174143))

(declare-fun m!1174145 () Bool)

(assert (=> b!1279032 m!1174145))

(assert (=> b!1279032 m!1174145))

(declare-fun m!1174147 () Bool)

(assert (=> b!1279032 m!1174147))

(declare-fun m!1174149 () Bool)

(assert (=> start!108416 m!1174149))

(declare-fun m!1174151 () Bool)

(assert (=> start!108416 m!1174151))

(declare-fun m!1174153 () Bool)

(assert (=> start!108416 m!1174153))

(declare-fun m!1174155 () Bool)

(assert (=> mapNonEmpty!51902 m!1174155))

(declare-fun m!1174157 () Bool)

(assert (=> b!1279030 m!1174157))

(check-sat (not start!108416) (not b!1279032) (not b_next!27927) (not mapNonEmpty!51902) tp_is_empty!33567 (not b!1279031) (not b!1279030) b_and!45997)
(check-sat b_and!45997 (not b_next!27927))
