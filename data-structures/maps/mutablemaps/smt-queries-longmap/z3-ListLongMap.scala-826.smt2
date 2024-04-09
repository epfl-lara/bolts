; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20066 () Bool)

(assert start!20066)

(declare-fun mapIsEmpty!7922 () Bool)

(declare-fun mapRes!7922 () Bool)

(assert (=> mapIsEmpty!7922 mapRes!7922))

(declare-fun b!196333 () Bool)

(declare-fun e!129309 () Bool)

(declare-fun e!129307 () Bool)

(assert (=> b!196333 (= e!129309 (and e!129307 mapRes!7922))))

(declare-fun condMapEmpty!7922 () Bool)

(declare-datatypes ((V!5739 0))(
  ( (V!5740 (val!2329 Int)) )
))
(declare-datatypes ((ValueCell!1941 0))(
  ( (ValueCellFull!1941 (v!4295 V!5739)) (EmptyCell!1941) )
))
(declare-datatypes ((array!8394 0))(
  ( (array!8395 (arr!3947 (Array (_ BitVec 32) ValueCell!1941)) (size!4272 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8394)

(declare-fun mapDefault!7922 () ValueCell!1941)

(assert (=> b!196333 (= condMapEmpty!7922 (= (arr!3947 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1941)) mapDefault!7922)))))

(declare-fun b!196334 () Bool)

(declare-fun res!92678 () Bool)

(declare-fun e!129310 () Bool)

(assert (=> b!196334 (=> (not res!92678) (not e!129310))))

(declare-datatypes ((array!8396 0))(
  ( (array!8397 (arr!3948 (Array (_ BitVec 32) (_ BitVec 64))) (size!4273 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8396)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!196334 (= res!92678 (and (= (size!4272 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4273 _keys!825) (size!4272 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196335 () Bool)

(declare-fun tp_is_empty!4569 () Bool)

(assert (=> b!196335 (= e!129307 tp_is_empty!4569)))

(declare-fun res!92679 () Bool)

(assert (=> start!20066 (=> (not res!92679) (not e!129310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20066 (= res!92679 (validMask!0 mask!1149))))

(assert (=> start!20066 e!129310))

(assert (=> start!20066 true))

(declare-fun array_inv!2557 (array!8394) Bool)

(assert (=> start!20066 (and (array_inv!2557 _values!649) e!129309)))

(declare-fun array_inv!2558 (array!8396) Bool)

(assert (=> start!20066 (array_inv!2558 _keys!825)))

(declare-fun b!196336 () Bool)

(assert (=> b!196336 (= e!129310 false)))

(declare-fun lt!97630 () Bool)

(declare-datatypes ((List!2489 0))(
  ( (Nil!2486) (Cons!2485 (h!3127 (_ BitVec 64)) (t!7428 List!2489)) )
))
(declare-fun arrayNoDuplicates!0 (array!8396 (_ BitVec 32) List!2489) Bool)

(assert (=> b!196336 (= lt!97630 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2486))))

(declare-fun b!196337 () Bool)

(declare-fun res!92680 () Bool)

(assert (=> b!196337 (=> (not res!92680) (not e!129310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8396 (_ BitVec 32)) Bool)

(assert (=> b!196337 (= res!92680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196338 () Bool)

(declare-fun e!129306 () Bool)

(assert (=> b!196338 (= e!129306 tp_is_empty!4569)))

(declare-fun mapNonEmpty!7922 () Bool)

(declare-fun tp!17210 () Bool)

(assert (=> mapNonEmpty!7922 (= mapRes!7922 (and tp!17210 e!129306))))

(declare-fun mapRest!7922 () (Array (_ BitVec 32) ValueCell!1941))

(declare-fun mapKey!7922 () (_ BitVec 32))

(declare-fun mapValue!7922 () ValueCell!1941)

(assert (=> mapNonEmpty!7922 (= (arr!3947 _values!649) (store mapRest!7922 mapKey!7922 mapValue!7922))))

(assert (= (and start!20066 res!92679) b!196334))

(assert (= (and b!196334 res!92678) b!196337))

(assert (= (and b!196337 res!92680) b!196336))

(assert (= (and b!196333 condMapEmpty!7922) mapIsEmpty!7922))

(assert (= (and b!196333 (not condMapEmpty!7922)) mapNonEmpty!7922))

(get-info :version)

(assert (= (and mapNonEmpty!7922 ((_ is ValueCellFull!1941) mapValue!7922)) b!196338))

(assert (= (and b!196333 ((_ is ValueCellFull!1941) mapDefault!7922)) b!196335))

(assert (= start!20066 b!196333))

(declare-fun m!223653 () Bool)

(assert (=> start!20066 m!223653))

(declare-fun m!223655 () Bool)

(assert (=> start!20066 m!223655))

(declare-fun m!223657 () Bool)

(assert (=> start!20066 m!223657))

(declare-fun m!223659 () Bool)

(assert (=> b!196336 m!223659))

(declare-fun m!223661 () Bool)

(assert (=> b!196337 m!223661))

(declare-fun m!223663 () Bool)

(assert (=> mapNonEmpty!7922 m!223663))

(check-sat (not mapNonEmpty!7922) (not start!20066) (not b!196336) (not b!196337) tp_is_empty!4569)
(check-sat)
