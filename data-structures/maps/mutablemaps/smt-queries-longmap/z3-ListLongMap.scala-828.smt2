; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20078 () Bool)

(assert start!20078)

(declare-fun b!196441 () Bool)

(declare-fun res!92734 () Bool)

(declare-fun e!129397 () Bool)

(assert (=> b!196441 (=> (not res!92734) (not e!129397))))

(declare-datatypes ((array!8418 0))(
  ( (array!8419 (arr!3959 (Array (_ BitVec 32) (_ BitVec 64))) (size!4284 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8418)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8418 (_ BitVec 32)) Bool)

(assert (=> b!196441 (= res!92734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!7940 () Bool)

(declare-fun mapRes!7940 () Bool)

(assert (=> mapIsEmpty!7940 mapRes!7940))

(declare-fun mapNonEmpty!7940 () Bool)

(declare-fun tp!17228 () Bool)

(declare-fun e!129400 () Bool)

(assert (=> mapNonEmpty!7940 (= mapRes!7940 (and tp!17228 e!129400))))

(declare-datatypes ((V!5755 0))(
  ( (V!5756 (val!2335 Int)) )
))
(declare-datatypes ((ValueCell!1947 0))(
  ( (ValueCellFull!1947 (v!4301 V!5755)) (EmptyCell!1947) )
))
(declare-datatypes ((array!8420 0))(
  ( (array!8421 (arr!3960 (Array (_ BitVec 32) ValueCell!1947)) (size!4285 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8420)

(declare-fun mapKey!7940 () (_ BitVec 32))

(declare-fun mapValue!7940 () ValueCell!1947)

(declare-fun mapRest!7940 () (Array (_ BitVec 32) ValueCell!1947))

(assert (=> mapNonEmpty!7940 (= (arr!3960 _values!649) (store mapRest!7940 mapKey!7940 mapValue!7940))))

(declare-fun b!196443 () Bool)

(declare-fun tp_is_empty!4581 () Bool)

(assert (=> b!196443 (= e!129400 tp_is_empty!4581)))

(declare-fun b!196444 () Bool)

(assert (=> b!196444 (= e!129397 false)))

(declare-fun lt!97648 () Bool)

(declare-datatypes ((List!2495 0))(
  ( (Nil!2492) (Cons!2491 (h!3133 (_ BitVec 64)) (t!7434 List!2495)) )
))
(declare-fun arrayNoDuplicates!0 (array!8418 (_ BitVec 32) List!2495) Bool)

(assert (=> b!196444 (= lt!97648 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2492))))

(declare-fun res!92733 () Bool)

(assert (=> start!20078 (=> (not res!92733) (not e!129397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20078 (= res!92733 (validMask!0 mask!1149))))

(assert (=> start!20078 e!129397))

(assert (=> start!20078 true))

(declare-fun e!129399 () Bool)

(declare-fun array_inv!2569 (array!8420) Bool)

(assert (=> start!20078 (and (array_inv!2569 _values!649) e!129399)))

(declare-fun array_inv!2570 (array!8418) Bool)

(assert (=> start!20078 (array_inv!2570 _keys!825)))

(declare-fun b!196442 () Bool)

(declare-fun res!92732 () Bool)

(assert (=> b!196442 (=> (not res!92732) (not e!129397))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196442 (= res!92732 (and (= (size!4285 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4284 _keys!825) (size!4285 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196445 () Bool)

(declare-fun e!129396 () Bool)

(assert (=> b!196445 (= e!129396 tp_is_empty!4581)))

(declare-fun b!196446 () Bool)

(assert (=> b!196446 (= e!129399 (and e!129396 mapRes!7940))))

(declare-fun condMapEmpty!7940 () Bool)

(declare-fun mapDefault!7940 () ValueCell!1947)

(assert (=> b!196446 (= condMapEmpty!7940 (= (arr!3960 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1947)) mapDefault!7940)))))

(assert (= (and start!20078 res!92733) b!196442))

(assert (= (and b!196442 res!92732) b!196441))

(assert (= (and b!196441 res!92734) b!196444))

(assert (= (and b!196446 condMapEmpty!7940) mapIsEmpty!7940))

(assert (= (and b!196446 (not condMapEmpty!7940)) mapNonEmpty!7940))

(get-info :version)

(assert (= (and mapNonEmpty!7940 ((_ is ValueCellFull!1947) mapValue!7940)) b!196443))

(assert (= (and b!196446 ((_ is ValueCellFull!1947) mapDefault!7940)) b!196445))

(assert (= start!20078 b!196446))

(declare-fun m!223725 () Bool)

(assert (=> b!196441 m!223725))

(declare-fun m!223727 () Bool)

(assert (=> mapNonEmpty!7940 m!223727))

(declare-fun m!223729 () Bool)

(assert (=> b!196444 m!223729))

(declare-fun m!223731 () Bool)

(assert (=> start!20078 m!223731))

(declare-fun m!223733 () Bool)

(assert (=> start!20078 m!223733))

(declare-fun m!223735 () Bool)

(assert (=> start!20078 m!223735))

(check-sat (not start!20078) tp_is_empty!4581 (not b!196441) (not mapNonEmpty!7940) (not b!196444))
(check-sat)
