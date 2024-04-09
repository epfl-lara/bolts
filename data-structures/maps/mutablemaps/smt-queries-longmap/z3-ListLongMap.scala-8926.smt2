; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108276 () Bool)

(assert start!108276)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((V!49731 0))(
  ( (V!49732 (val!16810 Int)) )
))
(declare-datatypes ((ValueCell!15837 0))(
  ( (ValueCellFull!15837 (v!19407 V!49731)) (EmptyCell!15837) )
))
(declare-datatypes ((array!83977 0))(
  ( (array!83978 (arr!40493 (Array (_ BitVec 32) ValueCell!15837)) (size!41044 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!83977)

(declare-fun b!1278011 () Bool)

(declare-datatypes ((array!83979 0))(
  ( (array!83980 (arr!40494 (Array (_ BitVec 32) (_ BitVec 64))) (size!41045 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!83979)

(declare-fun e!729977 () Bool)

(assert (=> b!1278011 (= e!729977 (and (= (size!41044 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41045 _keys!1741) (size!41044 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011) (not (= (size!41045 _keys!1741) (bvadd #b00000000000000000000000000000001 mask!2175)))))))

(declare-fun mapIsEmpty!51743 () Bool)

(declare-fun mapRes!51743 () Bool)

(assert (=> mapIsEmpty!51743 mapRes!51743))

(declare-fun b!1278012 () Bool)

(declare-fun e!729979 () Bool)

(declare-fun tp_is_empty!33471 () Bool)

(assert (=> b!1278012 (= e!729979 tp_is_empty!33471)))

(declare-fun b!1278013 () Bool)

(declare-fun e!729976 () Bool)

(assert (=> b!1278013 (= e!729976 (and e!729979 mapRes!51743))))

(declare-fun condMapEmpty!51743 () Bool)

(declare-fun mapDefault!51743 () ValueCell!15837)

(assert (=> b!1278013 (= condMapEmpty!51743 (= (arr!40493 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15837)) mapDefault!51743)))))

(declare-fun b!1278014 () Bool)

(declare-fun e!729980 () Bool)

(assert (=> b!1278014 (= e!729980 tp_is_empty!33471)))

(declare-fun mapNonEmpty!51743 () Bool)

(declare-fun tp!98718 () Bool)

(assert (=> mapNonEmpty!51743 (= mapRes!51743 (and tp!98718 e!729980))))

(declare-fun mapKey!51743 () (_ BitVec 32))

(declare-fun mapRest!51743 () (Array (_ BitVec 32) ValueCell!15837))

(declare-fun mapValue!51743 () ValueCell!15837)

(assert (=> mapNonEmpty!51743 (= (arr!40493 _values!1445) (store mapRest!51743 mapKey!51743 mapValue!51743))))

(declare-fun res!849210 () Bool)

(assert (=> start!108276 (=> (not res!849210) (not e!729977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108276 (= res!849210 (validMask!0 mask!2175))))

(assert (=> start!108276 e!729977))

(assert (=> start!108276 true))

(declare-fun array_inv!30735 (array!83977) Bool)

(assert (=> start!108276 (and (array_inv!30735 _values!1445) e!729976)))

(declare-fun array_inv!30736 (array!83979) Bool)

(assert (=> start!108276 (array_inv!30736 _keys!1741)))

(assert (= (and start!108276 res!849210) b!1278011))

(assert (= (and b!1278013 condMapEmpty!51743) mapIsEmpty!51743))

(assert (= (and b!1278013 (not condMapEmpty!51743)) mapNonEmpty!51743))

(get-info :version)

(assert (= (and mapNonEmpty!51743 ((_ is ValueCellFull!15837) mapValue!51743)) b!1278014))

(assert (= (and b!1278013 ((_ is ValueCellFull!15837) mapDefault!51743)) b!1278012))

(assert (= start!108276 b!1278013))

(declare-fun m!1173495 () Bool)

(assert (=> mapNonEmpty!51743 m!1173495))

(declare-fun m!1173497 () Bool)

(assert (=> start!108276 m!1173497))

(declare-fun m!1173499 () Bool)

(assert (=> start!108276 m!1173499))

(declare-fun m!1173501 () Bool)

(assert (=> start!108276 m!1173501))

(check-sat (not start!108276) (not mapNonEmpty!51743) tp_is_empty!33471)
(check-sat)
