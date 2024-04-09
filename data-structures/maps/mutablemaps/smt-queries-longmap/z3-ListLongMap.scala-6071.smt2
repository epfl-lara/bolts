; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78564 () Bool)

(assert start!78564)

(declare-fun b!915366 () Bool)

(declare-fun e!513785 () Bool)

(declare-fun tp_is_empty!19257 () Bool)

(assert (=> b!915366 (= e!513785 tp_is_empty!19257)))

(declare-fun res!617259 () Bool)

(declare-fun e!513788 () Bool)

(assert (=> start!78564 (=> (not res!617259) (not e!513788))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78564 (= res!617259 (validMask!0 mask!1881))))

(assert (=> start!78564 e!513788))

(assert (=> start!78564 true))

(declare-datatypes ((V!30641 0))(
  ( (V!30642 (val!9679 Int)) )
))
(declare-datatypes ((ValueCell!9147 0))(
  ( (ValueCellFull!9147 (v!12197 V!30641)) (EmptyCell!9147) )
))
(declare-datatypes ((array!54518 0))(
  ( (array!54519 (arr!26200 (Array (_ BitVec 32) ValueCell!9147)) (size!26660 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54518)

(declare-fun e!513787 () Bool)

(declare-fun array_inv!20438 (array!54518) Bool)

(assert (=> start!78564 (and (array_inv!20438 _values!1231) e!513787)))

(declare-datatypes ((array!54520 0))(
  ( (array!54521 (arr!26201 (Array (_ BitVec 32) (_ BitVec 64))) (size!26661 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54520)

(declare-fun array_inv!20439 (array!54520) Bool)

(assert (=> start!78564 (array_inv!20439 _keys!1487)))

(declare-fun b!915367 () Bool)

(assert (=> b!915367 (= e!513788 false)))

(declare-fun lt!411630 () Bool)

(declare-datatypes ((List!18485 0))(
  ( (Nil!18482) (Cons!18481 (h!19627 (_ BitVec 64)) (t!26106 List!18485)) )
))
(declare-fun arrayNoDuplicates!0 (array!54520 (_ BitVec 32) List!18485) Bool)

(assert (=> b!915367 (= lt!411630 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18482))))

(declare-fun b!915368 () Bool)

(declare-fun e!513789 () Bool)

(declare-fun mapRes!30642 () Bool)

(assert (=> b!915368 (= e!513787 (and e!513789 mapRes!30642))))

(declare-fun condMapEmpty!30642 () Bool)

(declare-fun mapDefault!30642 () ValueCell!9147)

(assert (=> b!915368 (= condMapEmpty!30642 (= (arr!26200 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9147)) mapDefault!30642)))))

(declare-fun b!915369 () Bool)

(assert (=> b!915369 (= e!513789 tp_is_empty!19257)))

(declare-fun b!915370 () Bool)

(declare-fun res!617260 () Bool)

(assert (=> b!915370 (=> (not res!617260) (not e!513788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54520 (_ BitVec 32)) Bool)

(assert (=> b!915370 (= res!617260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30642 () Bool)

(declare-fun tp!58710 () Bool)

(assert (=> mapNonEmpty!30642 (= mapRes!30642 (and tp!58710 e!513785))))

(declare-fun mapValue!30642 () ValueCell!9147)

(declare-fun mapKey!30642 () (_ BitVec 32))

(declare-fun mapRest!30642 () (Array (_ BitVec 32) ValueCell!9147))

(assert (=> mapNonEmpty!30642 (= (arr!26200 _values!1231) (store mapRest!30642 mapKey!30642 mapValue!30642))))

(declare-fun b!915371 () Bool)

(declare-fun res!617261 () Bool)

(assert (=> b!915371 (=> (not res!617261) (not e!513788))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915371 (= res!617261 (and (= (size!26660 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26661 _keys!1487) (size!26660 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30642 () Bool)

(assert (=> mapIsEmpty!30642 mapRes!30642))

(assert (= (and start!78564 res!617259) b!915371))

(assert (= (and b!915371 res!617261) b!915370))

(assert (= (and b!915370 res!617260) b!915367))

(assert (= (and b!915368 condMapEmpty!30642) mapIsEmpty!30642))

(assert (= (and b!915368 (not condMapEmpty!30642)) mapNonEmpty!30642))

(get-info :version)

(assert (= (and mapNonEmpty!30642 ((_ is ValueCellFull!9147) mapValue!30642)) b!915366))

(assert (= (and b!915368 ((_ is ValueCellFull!9147) mapDefault!30642)) b!915369))

(assert (= start!78564 b!915368))

(declare-fun m!849823 () Bool)

(assert (=> start!78564 m!849823))

(declare-fun m!849825 () Bool)

(assert (=> start!78564 m!849825))

(declare-fun m!849827 () Bool)

(assert (=> start!78564 m!849827))

(declare-fun m!849829 () Bool)

(assert (=> b!915367 m!849829))

(declare-fun m!849831 () Bool)

(assert (=> b!915370 m!849831))

(declare-fun m!849833 () Bool)

(assert (=> mapNonEmpty!30642 m!849833))

(check-sat (not mapNonEmpty!30642) (not b!915370) (not b!915367) (not start!78564) tp_is_empty!19257)
(check-sat)
