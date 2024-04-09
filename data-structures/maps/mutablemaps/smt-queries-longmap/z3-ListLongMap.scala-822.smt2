; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20042 () Bool)

(assert start!20042)

(declare-fun mapIsEmpty!7886 () Bool)

(declare-fun mapRes!7886 () Bool)

(assert (=> mapIsEmpty!7886 mapRes!7886))

(declare-fun b!196117 () Bool)

(declare-fun res!92572 () Bool)

(declare-fun e!129128 () Bool)

(assert (=> b!196117 (=> (not res!92572) (not e!129128))))

(declare-datatypes ((array!8352 0))(
  ( (array!8353 (arr!3926 (Array (_ BitVec 32) (_ BitVec 64))) (size!4251 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8352)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5707 0))(
  ( (V!5708 (val!2317 Int)) )
))
(declare-datatypes ((ValueCell!1929 0))(
  ( (ValueCellFull!1929 (v!4283 V!5707)) (EmptyCell!1929) )
))
(declare-datatypes ((array!8354 0))(
  ( (array!8355 (arr!3927 (Array (_ BitVec 32) ValueCell!1929)) (size!4252 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8354)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!196117 (= res!92572 (and (= (size!4252 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4251 _keys!825) (size!4252 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!7886 () Bool)

(declare-fun tp!17174 () Bool)

(declare-fun e!129127 () Bool)

(assert (=> mapNonEmpty!7886 (= mapRes!7886 (and tp!17174 e!129127))))

(declare-fun mapValue!7886 () ValueCell!1929)

(declare-fun mapRest!7886 () (Array (_ BitVec 32) ValueCell!1929))

(declare-fun mapKey!7886 () (_ BitVec 32))

(assert (=> mapNonEmpty!7886 (= (arr!3927 _values!649) (store mapRest!7886 mapKey!7886 mapValue!7886))))

(declare-fun b!196118 () Bool)

(declare-fun tp_is_empty!4545 () Bool)

(assert (=> b!196118 (= e!129127 tp_is_empty!4545)))

(declare-fun b!196119 () Bool)

(declare-fun e!129126 () Bool)

(assert (=> b!196119 (= e!129126 tp_is_empty!4545)))

(declare-fun res!92571 () Bool)

(assert (=> start!20042 (=> (not res!92571) (not e!129128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20042 (= res!92571 (validMask!0 mask!1149))))

(assert (=> start!20042 e!129128))

(assert (=> start!20042 true))

(declare-fun e!129130 () Bool)

(declare-fun array_inv!2543 (array!8354) Bool)

(assert (=> start!20042 (and (array_inv!2543 _values!649) e!129130)))

(declare-fun array_inv!2544 (array!8352) Bool)

(assert (=> start!20042 (array_inv!2544 _keys!825)))

(declare-fun b!196120 () Bool)

(declare-fun res!92570 () Bool)

(assert (=> b!196120 (=> (not res!92570) (not e!129128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8352 (_ BitVec 32)) Bool)

(assert (=> b!196120 (= res!92570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196121 () Bool)

(assert (=> b!196121 (= e!129130 (and e!129126 mapRes!7886))))

(declare-fun condMapEmpty!7886 () Bool)

(declare-fun mapDefault!7886 () ValueCell!1929)

(assert (=> b!196121 (= condMapEmpty!7886 (= (arr!3927 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1929)) mapDefault!7886)))))

(declare-fun b!196122 () Bool)

(assert (=> b!196122 (= e!129128 false)))

(declare-fun lt!97594 () Bool)

(declare-datatypes ((List!2481 0))(
  ( (Nil!2478) (Cons!2477 (h!3119 (_ BitVec 64)) (t!7420 List!2481)) )
))
(declare-fun arrayNoDuplicates!0 (array!8352 (_ BitVec 32) List!2481) Bool)

(assert (=> b!196122 (= lt!97594 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2478))))

(assert (= (and start!20042 res!92571) b!196117))

(assert (= (and b!196117 res!92572) b!196120))

(assert (= (and b!196120 res!92570) b!196122))

(assert (= (and b!196121 condMapEmpty!7886) mapIsEmpty!7886))

(assert (= (and b!196121 (not condMapEmpty!7886)) mapNonEmpty!7886))

(get-info :version)

(assert (= (and mapNonEmpty!7886 ((_ is ValueCellFull!1929) mapValue!7886)) b!196118))

(assert (= (and b!196121 ((_ is ValueCellFull!1929) mapDefault!7886)) b!196119))

(assert (= start!20042 b!196121))

(declare-fun m!223509 () Bool)

(assert (=> mapNonEmpty!7886 m!223509))

(declare-fun m!223511 () Bool)

(assert (=> start!20042 m!223511))

(declare-fun m!223513 () Bool)

(assert (=> start!20042 m!223513))

(declare-fun m!223515 () Bool)

(assert (=> start!20042 m!223515))

(declare-fun m!223517 () Bool)

(assert (=> b!196120 m!223517))

(declare-fun m!223519 () Bool)

(assert (=> b!196122 m!223519))

(check-sat tp_is_empty!4545 (not b!196120) (not b!196122) (not mapNonEmpty!7886) (not start!20042))
(check-sat)
