; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36000 () Bool)

(assert start!36000)

(declare-fun b!361318 () Bool)

(declare-fun e!221295 () Bool)

(declare-fun tp_is_empty!8385 () Bool)

(assert (=> b!361318 (= e!221295 tp_is_empty!8385)))

(declare-fun b!361319 () Bool)

(declare-fun e!221291 () Bool)

(declare-fun e!221294 () Bool)

(declare-fun mapRes!14103 () Bool)

(assert (=> b!361319 (= e!221291 (and e!221294 mapRes!14103))))

(declare-fun condMapEmpty!14103 () Bool)

(declare-datatypes ((V!12157 0))(
  ( (V!12158 (val!4237 Int)) )
))
(declare-datatypes ((ValueCell!3849 0))(
  ( (ValueCellFull!3849 (v!6428 V!12157)) (EmptyCell!3849) )
))
(declare-datatypes ((array!20297 0))(
  ( (array!20298 (arr!9633 (Array (_ BitVec 32) ValueCell!3849)) (size!9985 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20297)

(declare-fun mapDefault!14103 () ValueCell!3849)

(assert (=> b!361319 (= condMapEmpty!14103 (= (arr!9633 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3849)) mapDefault!14103)))))

(declare-fun mapIsEmpty!14103 () Bool)

(assert (=> mapIsEmpty!14103 mapRes!14103))

(declare-fun mapNonEmpty!14103 () Bool)

(declare-fun tp!28179 () Bool)

(assert (=> mapNonEmpty!14103 (= mapRes!14103 (and tp!28179 e!221295))))

(declare-fun mapKey!14103 () (_ BitVec 32))

(declare-fun mapRest!14103 () (Array (_ BitVec 32) ValueCell!3849))

(declare-fun mapValue!14103 () ValueCell!3849)

(assert (=> mapNonEmpty!14103 (= (arr!9633 _values!1277) (store mapRest!14103 mapKey!14103 mapValue!14103))))

(declare-fun b!361320 () Bool)

(declare-fun e!221292 () Bool)

(assert (=> b!361320 (= e!221292 false)))

(declare-fun lt!166532 () Bool)

(declare-datatypes ((array!20299 0))(
  ( (array!20300 (arr!9634 (Array (_ BitVec 32) (_ BitVec 64))) (size!9986 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20299)

(declare-datatypes ((List!5535 0))(
  ( (Nil!5532) (Cons!5531 (h!6387 (_ BitVec 64)) (t!10693 List!5535)) )
))
(declare-fun arrayNoDuplicates!0 (array!20299 (_ BitVec 32) List!5535) Bool)

(assert (=> b!361320 (= lt!166532 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5532))))

(declare-fun b!361322 () Bool)

(declare-fun res!201063 () Bool)

(assert (=> b!361322 (=> (not res!201063) (not e!221292))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(assert (=> b!361322 (= res!201063 (and (= (size!9985 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9986 _keys!1541) (size!9985 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361323 () Bool)

(declare-fun res!201065 () Bool)

(assert (=> b!361323 (=> (not res!201065) (not e!221292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20299 (_ BitVec 32)) Bool)

(assert (=> b!361323 (= res!201065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361321 () Bool)

(assert (=> b!361321 (= e!221294 tp_is_empty!8385)))

(declare-fun res!201064 () Bool)

(assert (=> start!36000 (=> (not res!201064) (not e!221292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36000 (= res!201064 (validMask!0 mask!1943))))

(assert (=> start!36000 e!221292))

(assert (=> start!36000 true))

(declare-fun array_inv!7086 (array!20297) Bool)

(assert (=> start!36000 (and (array_inv!7086 _values!1277) e!221291)))

(declare-fun array_inv!7087 (array!20299) Bool)

(assert (=> start!36000 (array_inv!7087 _keys!1541)))

(assert (= (and start!36000 res!201064) b!361322))

(assert (= (and b!361322 res!201063) b!361323))

(assert (= (and b!361323 res!201065) b!361320))

(assert (= (and b!361319 condMapEmpty!14103) mapIsEmpty!14103))

(assert (= (and b!361319 (not condMapEmpty!14103)) mapNonEmpty!14103))

(get-info :version)

(assert (= (and mapNonEmpty!14103 ((_ is ValueCellFull!3849) mapValue!14103)) b!361318))

(assert (= (and b!361319 ((_ is ValueCellFull!3849) mapDefault!14103)) b!361321))

(assert (= start!36000 b!361319))

(declare-fun m!358161 () Bool)

(assert (=> mapNonEmpty!14103 m!358161))

(declare-fun m!358163 () Bool)

(assert (=> b!361320 m!358163))

(declare-fun m!358165 () Bool)

(assert (=> b!361323 m!358165))

(declare-fun m!358167 () Bool)

(assert (=> start!36000 m!358167))

(declare-fun m!358169 () Bool)

(assert (=> start!36000 m!358169))

(declare-fun m!358171 () Bool)

(assert (=> start!36000 m!358171))

(check-sat tp_is_empty!8385 (not b!361323) (not start!36000) (not b!361320) (not mapNonEmpty!14103))
(check-sat)
