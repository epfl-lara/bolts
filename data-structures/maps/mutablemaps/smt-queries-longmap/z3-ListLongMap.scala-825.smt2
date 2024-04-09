; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20060 () Bool)

(assert start!20060)

(declare-fun mapNonEmpty!7913 () Bool)

(declare-fun mapRes!7913 () Bool)

(declare-fun tp!17201 () Bool)

(declare-fun e!129261 () Bool)

(assert (=> mapNonEmpty!7913 (= mapRes!7913 (and tp!17201 e!129261))))

(declare-datatypes ((V!5731 0))(
  ( (V!5732 (val!2326 Int)) )
))
(declare-datatypes ((ValueCell!1938 0))(
  ( (ValueCellFull!1938 (v!4292 V!5731)) (EmptyCell!1938) )
))
(declare-fun mapRest!7913 () (Array (_ BitVec 32) ValueCell!1938))

(declare-datatypes ((array!8384 0))(
  ( (array!8385 (arr!3942 (Array (_ BitVec 32) ValueCell!1938)) (size!4267 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8384)

(declare-fun mapValue!7913 () ValueCell!1938)

(declare-fun mapKey!7913 () (_ BitVec 32))

(assert (=> mapNonEmpty!7913 (= (arr!3942 _values!649) (store mapRest!7913 mapKey!7913 mapValue!7913))))

(declare-fun b!196279 () Bool)

(declare-fun e!129265 () Bool)

(assert (=> b!196279 (= e!129265 false)))

(declare-fun lt!97621 () Bool)

(declare-datatypes ((array!8386 0))(
  ( (array!8387 (arr!3943 (Array (_ BitVec 32) (_ BitVec 64))) (size!4268 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8386)

(declare-datatypes ((List!2488 0))(
  ( (Nil!2485) (Cons!2484 (h!3126 (_ BitVec 64)) (t!7427 List!2488)) )
))
(declare-fun arrayNoDuplicates!0 (array!8386 (_ BitVec 32) List!2488) Bool)

(assert (=> b!196279 (= lt!97621 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2485))))

(declare-fun b!196280 () Bool)

(declare-fun e!129262 () Bool)

(declare-fun tp_is_empty!4563 () Bool)

(assert (=> b!196280 (= e!129262 tp_is_empty!4563)))

(declare-fun b!196281 () Bool)

(assert (=> b!196281 (= e!129261 tp_is_empty!4563)))

(declare-fun b!196282 () Bool)

(declare-fun res!92651 () Bool)

(assert (=> b!196282 (=> (not res!92651) (not e!129265))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!196282 (= res!92651 (and (= (size!4267 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4268 _keys!825) (size!4267 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!7913 () Bool)

(assert (=> mapIsEmpty!7913 mapRes!7913))

(declare-fun res!92652 () Bool)

(assert (=> start!20060 (=> (not res!92652) (not e!129265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20060 (= res!92652 (validMask!0 mask!1149))))

(assert (=> start!20060 e!129265))

(assert (=> start!20060 true))

(declare-fun e!129263 () Bool)

(declare-fun array_inv!2553 (array!8384) Bool)

(assert (=> start!20060 (and (array_inv!2553 _values!649) e!129263)))

(declare-fun array_inv!2554 (array!8386) Bool)

(assert (=> start!20060 (array_inv!2554 _keys!825)))

(declare-fun b!196283 () Bool)

(declare-fun res!92653 () Bool)

(assert (=> b!196283 (=> (not res!92653) (not e!129265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8386 (_ BitVec 32)) Bool)

(assert (=> b!196283 (= res!92653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196284 () Bool)

(assert (=> b!196284 (= e!129263 (and e!129262 mapRes!7913))))

(declare-fun condMapEmpty!7913 () Bool)

(declare-fun mapDefault!7913 () ValueCell!1938)

(assert (=> b!196284 (= condMapEmpty!7913 (= (arr!3942 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1938)) mapDefault!7913)))))

(assert (= (and start!20060 res!92652) b!196282))

(assert (= (and b!196282 res!92651) b!196283))

(assert (= (and b!196283 res!92653) b!196279))

(assert (= (and b!196284 condMapEmpty!7913) mapIsEmpty!7913))

(assert (= (and b!196284 (not condMapEmpty!7913)) mapNonEmpty!7913))

(get-info :version)

(assert (= (and mapNonEmpty!7913 ((_ is ValueCellFull!1938) mapValue!7913)) b!196281))

(assert (= (and b!196284 ((_ is ValueCellFull!1938) mapDefault!7913)) b!196280))

(assert (= start!20060 b!196284))

(declare-fun m!223617 () Bool)

(assert (=> mapNonEmpty!7913 m!223617))

(declare-fun m!223619 () Bool)

(assert (=> b!196279 m!223619))

(declare-fun m!223621 () Bool)

(assert (=> start!20060 m!223621))

(declare-fun m!223623 () Bool)

(assert (=> start!20060 m!223623))

(declare-fun m!223625 () Bool)

(assert (=> start!20060 m!223625))

(declare-fun m!223627 () Bool)

(assert (=> b!196283 m!223627))

(check-sat (not b!196283) (not start!20060) (not mapNonEmpty!7913) tp_is_empty!4563 (not b!196279))
(check-sat)
