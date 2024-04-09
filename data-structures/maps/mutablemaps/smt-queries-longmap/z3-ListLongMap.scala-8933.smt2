; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108362 () Bool)

(assert start!108362)

(declare-fun mapIsEmpty!51821 () Bool)

(declare-fun mapRes!51821 () Bool)

(assert (=> mapIsEmpty!51821 mapRes!51821))

(declare-fun res!849455 () Bool)

(declare-fun e!730389 () Bool)

(assert (=> start!108362 (=> (not res!849455) (not e!730389))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108362 (= res!849455 (validMask!0 mask!2175))))

(assert (=> start!108362 e!730389))

(assert (=> start!108362 true))

(declare-datatypes ((V!49787 0))(
  ( (V!49788 (val!16831 Int)) )
))
(declare-datatypes ((ValueCell!15858 0))(
  ( (ValueCellFull!15858 (v!19429 V!49787)) (EmptyCell!15858) )
))
(declare-datatypes ((array!84067 0))(
  ( (array!84068 (arr!40533 (Array (_ BitVec 32) ValueCell!15858)) (size!41084 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84067)

(declare-fun e!730387 () Bool)

(declare-fun array_inv!30763 (array!84067) Bool)

(assert (=> start!108362 (and (array_inv!30763 _values!1445) e!730387)))

(declare-datatypes ((array!84069 0))(
  ( (array!84070 (arr!40534 (Array (_ BitVec 32) (_ BitVec 64))) (size!41085 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84069)

(declare-fun array_inv!30764 (array!84069) Bool)

(assert (=> start!108362 (array_inv!30764 _keys!1741)))

(declare-fun b!1278507 () Bool)

(assert (=> b!1278507 (= e!730389 false)))

(declare-fun lt!575836 () Bool)

(declare-datatypes ((List!28906 0))(
  ( (Nil!28903) (Cons!28902 (h!30111 (_ BitVec 64)) (t!42453 List!28906)) )
))
(declare-fun arrayNoDuplicates!0 (array!84069 (_ BitVec 32) List!28906) Bool)

(assert (=> b!1278507 (= lt!575836 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28903))))

(declare-fun b!1278508 () Bool)

(declare-fun e!730388 () Bool)

(declare-fun tp_is_empty!33513 () Bool)

(assert (=> b!1278508 (= e!730388 tp_is_empty!33513)))

(declare-fun b!1278509 () Bool)

(assert (=> b!1278509 (= e!730387 (and e!730388 mapRes!51821))))

(declare-fun condMapEmpty!51821 () Bool)

(declare-fun mapDefault!51821 () ValueCell!15858)

(assert (=> b!1278509 (= condMapEmpty!51821 (= (arr!40533 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15858)) mapDefault!51821)))))

(declare-fun b!1278510 () Bool)

(declare-fun e!730386 () Bool)

(assert (=> b!1278510 (= e!730386 tp_is_empty!33513)))

(declare-fun b!1278511 () Bool)

(declare-fun res!849453 () Bool)

(assert (=> b!1278511 (=> (not res!849453) (not e!730389))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278511 (= res!849453 (and (= (size!41084 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41085 _keys!1741) (size!41084 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51821 () Bool)

(declare-fun tp!98796 () Bool)

(assert (=> mapNonEmpty!51821 (= mapRes!51821 (and tp!98796 e!730386))))

(declare-fun mapKey!51821 () (_ BitVec 32))

(declare-fun mapValue!51821 () ValueCell!15858)

(declare-fun mapRest!51821 () (Array (_ BitVec 32) ValueCell!15858))

(assert (=> mapNonEmpty!51821 (= (arr!40533 _values!1445) (store mapRest!51821 mapKey!51821 mapValue!51821))))

(declare-fun b!1278512 () Bool)

(declare-fun res!849454 () Bool)

(assert (=> b!1278512 (=> (not res!849454) (not e!730389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84069 (_ BitVec 32)) Bool)

(assert (=> b!1278512 (= res!849454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108362 res!849455) b!1278511))

(assert (= (and b!1278511 res!849453) b!1278512))

(assert (= (and b!1278512 res!849454) b!1278507))

(assert (= (and b!1278509 condMapEmpty!51821) mapIsEmpty!51821))

(assert (= (and b!1278509 (not condMapEmpty!51821)) mapNonEmpty!51821))

(get-info :version)

(assert (= (and mapNonEmpty!51821 ((_ is ValueCellFull!15858) mapValue!51821)) b!1278510))

(assert (= (and b!1278509 ((_ is ValueCellFull!15858) mapDefault!51821)) b!1278508))

(assert (= start!108362 b!1278509))

(declare-fun m!1173803 () Bool)

(assert (=> start!108362 m!1173803))

(declare-fun m!1173805 () Bool)

(assert (=> start!108362 m!1173805))

(declare-fun m!1173807 () Bool)

(assert (=> start!108362 m!1173807))

(declare-fun m!1173809 () Bool)

(assert (=> b!1278507 m!1173809))

(declare-fun m!1173811 () Bool)

(assert (=> mapNonEmpty!51821 m!1173811))

(declare-fun m!1173813 () Bool)

(assert (=> b!1278512 m!1173813))

(check-sat (not mapNonEmpty!51821) (not start!108362) (not b!1278512) (not b!1278507) tp_is_empty!33513)
(check-sat)
