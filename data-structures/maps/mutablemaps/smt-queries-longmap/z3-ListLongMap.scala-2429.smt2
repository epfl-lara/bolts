; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38354 () Bool)

(assert start!38354)

(declare-fun b!395260 () Bool)

(declare-fun res!226668 () Bool)

(declare-fun e!239313 () Bool)

(assert (=> b!395260 (=> (not res!226668) (not e!239313))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395260 (= res!226668 (validKeyInArray!0 k0!794))))

(declare-fun b!395261 () Bool)

(declare-fun e!239315 () Bool)

(declare-fun tp_is_empty!9813 () Bool)

(assert (=> b!395261 (= e!239315 tp_is_empty!9813)))

(declare-fun b!395262 () Bool)

(declare-fun e!239312 () Bool)

(declare-fun mapRes!16332 () Bool)

(assert (=> b!395262 (= e!239312 (and e!239315 mapRes!16332))))

(declare-fun condMapEmpty!16332 () Bool)

(declare-datatypes ((V!14189 0))(
  ( (V!14190 (val!4951 Int)) )
))
(declare-datatypes ((ValueCell!4563 0))(
  ( (ValueCellFull!4563 (v!7193 V!14189)) (EmptyCell!4563) )
))
(declare-datatypes ((array!23511 0))(
  ( (array!23512 (arr!11205 (Array (_ BitVec 32) ValueCell!4563)) (size!11557 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23511)

(declare-fun mapDefault!16332 () ValueCell!4563)

(assert (=> b!395262 (= condMapEmpty!16332 (= (arr!11205 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4563)) mapDefault!16332)))))

(declare-fun b!395263 () Bool)

(declare-fun res!226670 () Bool)

(assert (=> b!395263 (=> (not res!226670) (not e!239313))))

(declare-datatypes ((array!23513 0))(
  ( (array!23514 (arr!11206 (Array (_ BitVec 32) (_ BitVec 64))) (size!11558 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23513)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395263 (= res!226670 (or (= (select (arr!11206 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11206 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!395264 () Bool)

(declare-fun res!226672 () Bool)

(assert (=> b!395264 (=> (not res!226672) (not e!239313))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23513 (_ BitVec 32)) Bool)

(assert (=> b!395264 (= res!226672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395265 () Bool)

(declare-fun res!226669 () Bool)

(assert (=> b!395265 (=> (not res!226669) (not e!239313))))

(assert (=> b!395265 (= res!226669 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11558 _keys!709))))))

(declare-fun mapNonEmpty!16332 () Bool)

(declare-fun tp!32127 () Bool)

(declare-fun e!239311 () Bool)

(assert (=> mapNonEmpty!16332 (= mapRes!16332 (and tp!32127 e!239311))))

(declare-fun mapKey!16332 () (_ BitVec 32))

(declare-fun mapRest!16332 () (Array (_ BitVec 32) ValueCell!4563))

(declare-fun mapValue!16332 () ValueCell!4563)

(assert (=> mapNonEmpty!16332 (= (arr!11205 _values!549) (store mapRest!16332 mapKey!16332 mapValue!16332))))

(declare-fun b!395266 () Bool)

(assert (=> b!395266 (= e!239313 (not (= (size!11558 _keys!709) (bvadd #b00000000000000000000000000000001 mask!1025))))))

(declare-fun b!395268 () Bool)

(assert (=> b!395268 (= e!239311 tp_is_empty!9813)))

(declare-fun b!395269 () Bool)

(declare-fun res!226674 () Bool)

(assert (=> b!395269 (=> (not res!226674) (not e!239313))))

(declare-fun arrayContainsKey!0 (array!23513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395269 (= res!226674 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!395270 () Bool)

(declare-fun res!226675 () Bool)

(assert (=> b!395270 (=> (not res!226675) (not e!239313))))

(declare-datatypes ((List!6473 0))(
  ( (Nil!6470) (Cons!6469 (h!7325 (_ BitVec 64)) (t!11655 List!6473)) )
))
(declare-fun arrayNoDuplicates!0 (array!23513 (_ BitVec 32) List!6473) Bool)

(assert (=> b!395270 (= res!226675 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6470))))

(declare-fun b!395271 () Bool)

(declare-fun res!226671 () Bool)

(assert (=> b!395271 (=> (not res!226671) (not e!239313))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!395271 (= res!226671 (and (= (size!11557 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11558 _keys!709) (size!11557 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!16332 () Bool)

(assert (=> mapIsEmpty!16332 mapRes!16332))

(declare-fun res!226667 () Bool)

(assert (=> start!38354 (=> (not res!226667) (not e!239313))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38354 (= res!226667 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11558 _keys!709))))))

(assert (=> start!38354 e!239313))

(assert (=> start!38354 true))

(declare-fun array_inv!8204 (array!23511) Bool)

(assert (=> start!38354 (and (array_inv!8204 _values!549) e!239312)))

(declare-fun array_inv!8205 (array!23513) Bool)

(assert (=> start!38354 (array_inv!8205 _keys!709)))

(declare-fun b!395267 () Bool)

(declare-fun res!226673 () Bool)

(assert (=> b!395267 (=> (not res!226673) (not e!239313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395267 (= res!226673 (validMask!0 mask!1025))))

(assert (= (and start!38354 res!226667) b!395267))

(assert (= (and b!395267 res!226673) b!395271))

(assert (= (and b!395271 res!226671) b!395264))

(assert (= (and b!395264 res!226672) b!395270))

(assert (= (and b!395270 res!226675) b!395265))

(assert (= (and b!395265 res!226669) b!395260))

(assert (= (and b!395260 res!226668) b!395263))

(assert (= (and b!395263 res!226670) b!395269))

(assert (= (and b!395269 res!226674) b!395266))

(assert (= (and b!395262 condMapEmpty!16332) mapIsEmpty!16332))

(assert (= (and b!395262 (not condMapEmpty!16332)) mapNonEmpty!16332))

(get-info :version)

(assert (= (and mapNonEmpty!16332 ((_ is ValueCellFull!4563) mapValue!16332)) b!395268))

(assert (= (and b!395262 ((_ is ValueCellFull!4563) mapDefault!16332)) b!395261))

(assert (= start!38354 b!395262))

(declare-fun m!391341 () Bool)

(assert (=> b!395264 m!391341))

(declare-fun m!391343 () Bool)

(assert (=> mapNonEmpty!16332 m!391343))

(declare-fun m!391345 () Bool)

(assert (=> b!395263 m!391345))

(declare-fun m!391347 () Bool)

(assert (=> b!395269 m!391347))

(declare-fun m!391349 () Bool)

(assert (=> b!395270 m!391349))

(declare-fun m!391351 () Bool)

(assert (=> b!395260 m!391351))

(declare-fun m!391353 () Bool)

(assert (=> b!395267 m!391353))

(declare-fun m!391355 () Bool)

(assert (=> start!38354 m!391355))

(declare-fun m!391357 () Bool)

(assert (=> start!38354 m!391357))

(check-sat (not b!395267) (not b!395269) (not b!395270) tp_is_empty!9813 (not b!395260) (not mapNonEmpty!16332) (not b!395264) (not start!38354))
(check-sat)
