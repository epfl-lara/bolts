; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19962 () Bool)

(assert start!19962)

(declare-datatypes ((array!8274 0))(
  ( (array!8275 (arr!3892 (Array (_ BitVec 32) (_ BitVec 64))) (size!4217 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8274)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun e!128762 () Bool)

(declare-fun b!195675 () Bool)

(declare-datatypes ((V!5659 0))(
  ( (V!5660 (val!2299 Int)) )
))
(declare-datatypes ((ValueCell!1911 0))(
  ( (ValueCellFull!1911 (v!4264 V!5659)) (EmptyCell!1911) )
))
(declare-datatypes ((array!8276 0))(
  ( (array!8277 (arr!3893 (Array (_ BitVec 32) ValueCell!1911)) (size!4218 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8276)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!195675 (= e!128762 (and (= (size!4218 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4217 _keys!825) (size!4218 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011) (not (= (size!4217 _keys!825) (bvadd #b00000000000000000000000000000001 mask!1149)))))))

(declare-fun mapIsEmpty!7817 () Bool)

(declare-fun mapRes!7817 () Bool)

(assert (=> mapIsEmpty!7817 mapRes!7817))

(declare-fun res!92354 () Bool)

(assert (=> start!19962 (=> (not res!92354) (not e!128762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!19962 (= res!92354 (validMask!0 mask!1149))))

(assert (=> start!19962 e!128762))

(assert (=> start!19962 true))

(declare-fun e!128764 () Bool)

(declare-fun array_inv!2517 (array!8276) Bool)

(assert (=> start!19962 (and (array_inv!2517 _values!649) e!128764)))

(declare-fun array_inv!2518 (array!8274) Bool)

(assert (=> start!19962 (array_inv!2518 _keys!825)))

(declare-fun b!195676 () Bool)

(declare-fun e!128761 () Bool)

(assert (=> b!195676 (= e!128764 (and e!128761 mapRes!7817))))

(declare-fun condMapEmpty!7817 () Bool)

(declare-fun mapDefault!7817 () ValueCell!1911)

(assert (=> b!195676 (= condMapEmpty!7817 (= (arr!3893 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1911)) mapDefault!7817)))))

(declare-fun mapNonEmpty!7817 () Bool)

(declare-fun tp!17105 () Bool)

(declare-fun e!128765 () Bool)

(assert (=> mapNonEmpty!7817 (= mapRes!7817 (and tp!17105 e!128765))))

(declare-fun mapValue!7817 () ValueCell!1911)

(declare-fun mapKey!7817 () (_ BitVec 32))

(declare-fun mapRest!7817 () (Array (_ BitVec 32) ValueCell!1911))

(assert (=> mapNonEmpty!7817 (= (arr!3893 _values!649) (store mapRest!7817 mapKey!7817 mapValue!7817))))

(declare-fun b!195677 () Bool)

(declare-fun tp_is_empty!4509 () Bool)

(assert (=> b!195677 (= e!128761 tp_is_empty!4509)))

(declare-fun b!195678 () Bool)

(assert (=> b!195678 (= e!128765 tp_is_empty!4509)))

(assert (= (and start!19962 res!92354) b!195675))

(assert (= (and b!195676 condMapEmpty!7817) mapIsEmpty!7817))

(assert (= (and b!195676 (not condMapEmpty!7817)) mapNonEmpty!7817))

(get-info :version)

(assert (= (and mapNonEmpty!7817 ((_ is ValueCellFull!1911) mapValue!7817)) b!195678))

(assert (= (and b!195676 ((_ is ValueCellFull!1911) mapDefault!7817)) b!195677))

(assert (= start!19962 b!195676))

(declare-fun m!223237 () Bool)

(assert (=> start!19962 m!223237))

(declare-fun m!223239 () Bool)

(assert (=> start!19962 m!223239))

(declare-fun m!223241 () Bool)

(assert (=> start!19962 m!223241))

(declare-fun m!223243 () Bool)

(assert (=> mapNonEmpty!7817 m!223243))

(check-sat (not start!19962) (not mapNonEmpty!7817) tp_is_empty!4509)
(check-sat)
