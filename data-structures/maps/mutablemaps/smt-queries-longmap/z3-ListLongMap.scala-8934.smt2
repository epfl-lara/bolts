; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108368 () Bool)

(assert start!108368)

(declare-fun b!1278561 () Bool)

(declare-fun e!730433 () Bool)

(assert (=> b!1278561 (= e!730433 false)))

(declare-fun lt!575845 () Bool)

(declare-datatypes ((array!84077 0))(
  ( (array!84078 (arr!40538 (Array (_ BitVec 32) (_ BitVec 64))) (size!41089 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84077)

(declare-datatypes ((List!28908 0))(
  ( (Nil!28905) (Cons!28904 (h!30113 (_ BitVec 64)) (t!42455 List!28908)) )
))
(declare-fun arrayNoDuplicates!0 (array!84077 (_ BitVec 32) List!28908) Bool)

(assert (=> b!1278561 (= lt!575845 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28905))))

(declare-fun b!1278562 () Bool)

(declare-fun e!730431 () Bool)

(declare-fun tp_is_empty!33519 () Bool)

(assert (=> b!1278562 (= e!730431 tp_is_empty!33519)))

(declare-fun mapIsEmpty!51830 () Bool)

(declare-fun mapRes!51830 () Bool)

(assert (=> mapIsEmpty!51830 mapRes!51830))

(declare-fun b!1278563 () Bool)

(declare-fun res!849481 () Bool)

(assert (=> b!1278563 (=> (not res!849481) (not e!730433))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84077 (_ BitVec 32)) Bool)

(assert (=> b!1278563 (= res!849481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278564 () Bool)

(declare-fun e!730434 () Bool)

(assert (=> b!1278564 (= e!730434 tp_is_empty!33519)))

(declare-fun b!1278565 () Bool)

(declare-fun res!849482 () Bool)

(assert (=> b!1278565 (=> (not res!849482) (not e!730433))))

(declare-datatypes ((V!49795 0))(
  ( (V!49796 (val!16834 Int)) )
))
(declare-datatypes ((ValueCell!15861 0))(
  ( (ValueCellFull!15861 (v!19432 V!49795)) (EmptyCell!15861) )
))
(declare-datatypes ((array!84079 0))(
  ( (array!84080 (arr!40539 (Array (_ BitVec 32) ValueCell!15861)) (size!41090 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84079)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278565 (= res!849482 (and (= (size!41090 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41089 _keys!1741) (size!41090 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!849480 () Bool)

(assert (=> start!108368 (=> (not res!849480) (not e!730433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108368 (= res!849480 (validMask!0 mask!2175))))

(assert (=> start!108368 e!730433))

(assert (=> start!108368 true))

(declare-fun e!730435 () Bool)

(declare-fun array_inv!30767 (array!84079) Bool)

(assert (=> start!108368 (and (array_inv!30767 _values!1445) e!730435)))

(declare-fun array_inv!30768 (array!84077) Bool)

(assert (=> start!108368 (array_inv!30768 _keys!1741)))

(declare-fun mapNonEmpty!51830 () Bool)

(declare-fun tp!98805 () Bool)

(assert (=> mapNonEmpty!51830 (= mapRes!51830 (and tp!98805 e!730431))))

(declare-fun mapKey!51830 () (_ BitVec 32))

(declare-fun mapValue!51830 () ValueCell!15861)

(declare-fun mapRest!51830 () (Array (_ BitVec 32) ValueCell!15861))

(assert (=> mapNonEmpty!51830 (= (arr!40539 _values!1445) (store mapRest!51830 mapKey!51830 mapValue!51830))))

(declare-fun b!1278566 () Bool)

(assert (=> b!1278566 (= e!730435 (and e!730434 mapRes!51830))))

(declare-fun condMapEmpty!51830 () Bool)

(declare-fun mapDefault!51830 () ValueCell!15861)

(assert (=> b!1278566 (= condMapEmpty!51830 (= (arr!40539 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15861)) mapDefault!51830)))))

(assert (= (and start!108368 res!849480) b!1278565))

(assert (= (and b!1278565 res!849482) b!1278563))

(assert (= (and b!1278563 res!849481) b!1278561))

(assert (= (and b!1278566 condMapEmpty!51830) mapIsEmpty!51830))

(assert (= (and b!1278566 (not condMapEmpty!51830)) mapNonEmpty!51830))

(get-info :version)

(assert (= (and mapNonEmpty!51830 ((_ is ValueCellFull!15861) mapValue!51830)) b!1278562))

(assert (= (and b!1278566 ((_ is ValueCellFull!15861) mapDefault!51830)) b!1278564))

(assert (= start!108368 b!1278566))

(declare-fun m!1173839 () Bool)

(assert (=> b!1278561 m!1173839))

(declare-fun m!1173841 () Bool)

(assert (=> b!1278563 m!1173841))

(declare-fun m!1173843 () Bool)

(assert (=> start!108368 m!1173843))

(declare-fun m!1173845 () Bool)

(assert (=> start!108368 m!1173845))

(declare-fun m!1173847 () Bool)

(assert (=> start!108368 m!1173847))

(declare-fun m!1173849 () Bool)

(assert (=> mapNonEmpty!51830 m!1173849))

(check-sat (not b!1278561) (not mapNonEmpty!51830) (not start!108368) (not b!1278563) tp_is_empty!33519)
(check-sat)
