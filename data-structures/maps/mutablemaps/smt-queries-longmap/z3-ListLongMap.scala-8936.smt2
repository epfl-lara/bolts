; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108380 () Bool)

(assert start!108380)

(declare-fun b!1278669 () Bool)

(declare-fun res!849534 () Bool)

(declare-fun e!730521 () Bool)

(assert (=> b!1278669 (=> (not res!849534) (not e!730521))))

(declare-datatypes ((array!84101 0))(
  ( (array!84102 (arr!40550 (Array (_ BitVec 32) (_ BitVec 64))) (size!41101 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84101)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84101 (_ BitVec 32)) Bool)

(assert (=> b!1278669 (= res!849534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278670 () Bool)

(assert (=> b!1278670 (= e!730521 false)))

(declare-fun lt!575863 () Bool)

(declare-datatypes ((List!28912 0))(
  ( (Nil!28909) (Cons!28908 (h!30117 (_ BitVec 64)) (t!42459 List!28912)) )
))
(declare-fun arrayNoDuplicates!0 (array!84101 (_ BitVec 32) List!28912) Bool)

(assert (=> b!1278670 (= lt!575863 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28909))))

(declare-fun b!1278671 () Bool)

(declare-fun e!730523 () Bool)

(declare-fun e!730524 () Bool)

(declare-fun mapRes!51848 () Bool)

(assert (=> b!1278671 (= e!730523 (and e!730524 mapRes!51848))))

(declare-fun condMapEmpty!51848 () Bool)

(declare-datatypes ((V!49811 0))(
  ( (V!49812 (val!16840 Int)) )
))
(declare-datatypes ((ValueCell!15867 0))(
  ( (ValueCellFull!15867 (v!19438 V!49811)) (EmptyCell!15867) )
))
(declare-datatypes ((array!84103 0))(
  ( (array!84104 (arr!40551 (Array (_ BitVec 32) ValueCell!15867)) (size!41102 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84103)

(declare-fun mapDefault!51848 () ValueCell!15867)

(assert (=> b!1278671 (= condMapEmpty!51848 (= (arr!40551 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15867)) mapDefault!51848)))))

(declare-fun mapIsEmpty!51848 () Bool)

(assert (=> mapIsEmpty!51848 mapRes!51848))

(declare-fun res!849536 () Bool)

(assert (=> start!108380 (=> (not res!849536) (not e!730521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108380 (= res!849536 (validMask!0 mask!2175))))

(assert (=> start!108380 e!730521))

(assert (=> start!108380 true))

(declare-fun array_inv!30777 (array!84103) Bool)

(assert (=> start!108380 (and (array_inv!30777 _values!1445) e!730523)))

(declare-fun array_inv!30778 (array!84101) Bool)

(assert (=> start!108380 (array_inv!30778 _keys!1741)))

(declare-fun b!1278672 () Bool)

(declare-fun e!730522 () Bool)

(declare-fun tp_is_empty!33531 () Bool)

(assert (=> b!1278672 (= e!730522 tp_is_empty!33531)))

(declare-fun b!1278673 () Bool)

(declare-fun res!849535 () Bool)

(assert (=> b!1278673 (=> (not res!849535) (not e!730521))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278673 (= res!849535 (and (= (size!41102 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41101 _keys!1741) (size!41102 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51848 () Bool)

(declare-fun tp!98823 () Bool)

(assert (=> mapNonEmpty!51848 (= mapRes!51848 (and tp!98823 e!730522))))

(declare-fun mapKey!51848 () (_ BitVec 32))

(declare-fun mapValue!51848 () ValueCell!15867)

(declare-fun mapRest!51848 () (Array (_ BitVec 32) ValueCell!15867))

(assert (=> mapNonEmpty!51848 (= (arr!40551 _values!1445) (store mapRest!51848 mapKey!51848 mapValue!51848))))

(declare-fun b!1278674 () Bool)

(assert (=> b!1278674 (= e!730524 tp_is_empty!33531)))

(assert (= (and start!108380 res!849536) b!1278673))

(assert (= (and b!1278673 res!849535) b!1278669))

(assert (= (and b!1278669 res!849534) b!1278670))

(assert (= (and b!1278671 condMapEmpty!51848) mapIsEmpty!51848))

(assert (= (and b!1278671 (not condMapEmpty!51848)) mapNonEmpty!51848))

(get-info :version)

(assert (= (and mapNonEmpty!51848 ((_ is ValueCellFull!15867) mapValue!51848)) b!1278672))

(assert (= (and b!1278671 ((_ is ValueCellFull!15867) mapDefault!51848)) b!1278674))

(assert (= start!108380 b!1278671))

(declare-fun m!1173911 () Bool)

(assert (=> b!1278669 m!1173911))

(declare-fun m!1173913 () Bool)

(assert (=> b!1278670 m!1173913))

(declare-fun m!1173915 () Bool)

(assert (=> start!108380 m!1173915))

(declare-fun m!1173917 () Bool)

(assert (=> start!108380 m!1173917))

(declare-fun m!1173919 () Bool)

(assert (=> start!108380 m!1173919))

(declare-fun m!1173921 () Bool)

(assert (=> mapNonEmpty!51848 m!1173921))

(check-sat (not b!1278670) (not start!108380) (not mapNonEmpty!51848) (not b!1278669) tp_is_empty!33531)
(check-sat)
