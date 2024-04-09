; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20054 () Bool)

(assert start!20054)

(declare-fun b!196225 () Bool)

(declare-fun res!92625 () Bool)

(declare-fun e!129217 () Bool)

(assert (=> b!196225 (=> (not res!92625) (not e!129217))))

(declare-datatypes ((array!8372 0))(
  ( (array!8373 (arr!3936 (Array (_ BitVec 32) (_ BitVec 64))) (size!4261 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8372)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8372 (_ BitVec 32)) Bool)

(assert (=> b!196225 (= res!92625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196227 () Bool)

(declare-fun e!129216 () Bool)

(declare-fun tp_is_empty!4557 () Bool)

(assert (=> b!196227 (= e!129216 tp_is_empty!4557)))

(declare-fun mapIsEmpty!7904 () Bool)

(declare-fun mapRes!7904 () Bool)

(assert (=> mapIsEmpty!7904 mapRes!7904))

(declare-fun b!196228 () Bool)

(declare-fun e!129218 () Bool)

(assert (=> b!196228 (= e!129218 (and e!129216 mapRes!7904))))

(declare-fun condMapEmpty!7904 () Bool)

(declare-datatypes ((V!5723 0))(
  ( (V!5724 (val!2323 Int)) )
))
(declare-datatypes ((ValueCell!1935 0))(
  ( (ValueCellFull!1935 (v!4289 V!5723)) (EmptyCell!1935) )
))
(declare-datatypes ((array!8374 0))(
  ( (array!8375 (arr!3937 (Array (_ BitVec 32) ValueCell!1935)) (size!4262 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8374)

(declare-fun mapDefault!7904 () ValueCell!1935)

(assert (=> b!196228 (= condMapEmpty!7904 (= (arr!3937 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1935)) mapDefault!7904)))))

(declare-fun mapNonEmpty!7904 () Bool)

(declare-fun tp!17192 () Bool)

(declare-fun e!129219 () Bool)

(assert (=> mapNonEmpty!7904 (= mapRes!7904 (and tp!17192 e!129219))))

(declare-fun mapValue!7904 () ValueCell!1935)

(declare-fun mapRest!7904 () (Array (_ BitVec 32) ValueCell!1935))

(declare-fun mapKey!7904 () (_ BitVec 32))

(assert (=> mapNonEmpty!7904 (= (arr!3937 _values!649) (store mapRest!7904 mapKey!7904 mapValue!7904))))

(declare-fun b!196229 () Bool)

(declare-fun res!92626 () Bool)

(assert (=> b!196229 (=> (not res!92626) (not e!129217))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196229 (= res!92626 (and (= (size!4262 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4261 _keys!825) (size!4262 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196230 () Bool)

(assert (=> b!196230 (= e!129219 tp_is_empty!4557)))

(declare-fun res!92624 () Bool)

(assert (=> start!20054 (=> (not res!92624) (not e!129217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20054 (= res!92624 (validMask!0 mask!1149))))

(assert (=> start!20054 e!129217))

(assert (=> start!20054 true))

(declare-fun array_inv!2547 (array!8374) Bool)

(assert (=> start!20054 (and (array_inv!2547 _values!649) e!129218)))

(declare-fun array_inv!2548 (array!8372) Bool)

(assert (=> start!20054 (array_inv!2548 _keys!825)))

(declare-fun b!196226 () Bool)

(assert (=> b!196226 (= e!129217 false)))

(declare-fun lt!97612 () Bool)

(declare-datatypes ((List!2485 0))(
  ( (Nil!2482) (Cons!2481 (h!3123 (_ BitVec 64)) (t!7424 List!2485)) )
))
(declare-fun arrayNoDuplicates!0 (array!8372 (_ BitVec 32) List!2485) Bool)

(assert (=> b!196226 (= lt!97612 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2482))))

(assert (= (and start!20054 res!92624) b!196229))

(assert (= (and b!196229 res!92626) b!196225))

(assert (= (and b!196225 res!92625) b!196226))

(assert (= (and b!196228 condMapEmpty!7904) mapIsEmpty!7904))

(assert (= (and b!196228 (not condMapEmpty!7904)) mapNonEmpty!7904))

(get-info :version)

(assert (= (and mapNonEmpty!7904 ((_ is ValueCellFull!1935) mapValue!7904)) b!196230))

(assert (= (and b!196228 ((_ is ValueCellFull!1935) mapDefault!7904)) b!196227))

(assert (= start!20054 b!196228))

(declare-fun m!223581 () Bool)

(assert (=> b!196225 m!223581))

(declare-fun m!223583 () Bool)

(assert (=> mapNonEmpty!7904 m!223583))

(declare-fun m!223585 () Bool)

(assert (=> start!20054 m!223585))

(declare-fun m!223587 () Bool)

(assert (=> start!20054 m!223587))

(declare-fun m!223589 () Bool)

(assert (=> start!20054 m!223589))

(declare-fun m!223591 () Bool)

(assert (=> b!196226 m!223591))

(check-sat (not b!196225) (not start!20054) tp_is_empty!4557 (not b!196226) (not mapNonEmpty!7904))
(check-sat)
