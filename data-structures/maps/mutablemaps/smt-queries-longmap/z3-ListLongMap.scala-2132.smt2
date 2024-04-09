; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36064 () Bool)

(assert start!36064)

(declare-fun b!361795 () Bool)

(declare-fun res!201345 () Bool)

(declare-fun e!221613 () Bool)

(assert (=> b!361795 (=> (not res!201345) (not e!221613))))

(declare-datatypes ((array!20359 0))(
  ( (array!20360 (arr!9661 (Array (_ BitVec 32) (_ BitVec 64))) (size!10013 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20359)

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20359 (_ BitVec 32)) Bool)

(assert (=> b!361795 (= res!201345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361796 () Bool)

(assert (=> b!361796 (= e!221613 false)))

(declare-fun lt!166568 () Bool)

(declare-datatypes ((List!5544 0))(
  ( (Nil!5541) (Cons!5540 (h!6396 (_ BitVec 64)) (t!10702 List!5544)) )
))
(declare-fun arrayNoDuplicates!0 (array!20359 (_ BitVec 32) List!5544) Bool)

(assert (=> b!361796 (= lt!166568 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5541))))

(declare-fun mapNonEmpty!14157 () Bool)

(declare-fun mapRes!14157 () Bool)

(declare-fun tp!28233 () Bool)

(declare-fun e!221609 () Bool)

(assert (=> mapNonEmpty!14157 (= mapRes!14157 (and tp!28233 e!221609))))

(declare-datatypes ((V!12197 0))(
  ( (V!12198 (val!4252 Int)) )
))
(declare-datatypes ((ValueCell!3864 0))(
  ( (ValueCellFull!3864 (v!6443 V!12197)) (EmptyCell!3864) )
))
(declare-fun mapValue!14157 () ValueCell!3864)

(declare-fun mapRest!14157 () (Array (_ BitVec 32) ValueCell!3864))

(declare-fun mapKey!14157 () (_ BitVec 32))

(declare-datatypes ((array!20361 0))(
  ( (array!20362 (arr!9662 (Array (_ BitVec 32) ValueCell!3864)) (size!10014 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20361)

(assert (=> mapNonEmpty!14157 (= (arr!9662 _values!1277) (store mapRest!14157 mapKey!14157 mapValue!14157))))

(declare-fun res!201347 () Bool)

(assert (=> start!36064 (=> (not res!201347) (not e!221613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36064 (= res!201347 (validMask!0 mask!1943))))

(assert (=> start!36064 e!221613))

(assert (=> start!36064 true))

(declare-fun e!221612 () Bool)

(declare-fun array_inv!7102 (array!20361) Bool)

(assert (=> start!36064 (and (array_inv!7102 _values!1277) e!221612)))

(declare-fun array_inv!7103 (array!20359) Bool)

(assert (=> start!36064 (array_inv!7103 _keys!1541)))

(declare-fun b!361797 () Bool)

(declare-fun res!201346 () Bool)

(assert (=> b!361797 (=> (not res!201346) (not e!221613))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361797 (= res!201346 (and (= (size!10014 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!10013 _keys!1541) (size!10014 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361798 () Bool)

(declare-fun e!221610 () Bool)

(declare-fun tp_is_empty!8415 () Bool)

(assert (=> b!361798 (= e!221610 tp_is_empty!8415)))

(declare-fun b!361799 () Bool)

(assert (=> b!361799 (= e!221609 tp_is_empty!8415)))

(declare-fun mapIsEmpty!14157 () Bool)

(assert (=> mapIsEmpty!14157 mapRes!14157))

(declare-fun b!361800 () Bool)

(assert (=> b!361800 (= e!221612 (and e!221610 mapRes!14157))))

(declare-fun condMapEmpty!14157 () Bool)

(declare-fun mapDefault!14157 () ValueCell!3864)

(assert (=> b!361800 (= condMapEmpty!14157 (= (arr!9662 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3864)) mapDefault!14157)))))

(assert (= (and start!36064 res!201347) b!361797))

(assert (= (and b!361797 res!201346) b!361795))

(assert (= (and b!361795 res!201345) b!361796))

(assert (= (and b!361800 condMapEmpty!14157) mapIsEmpty!14157))

(assert (= (and b!361800 (not condMapEmpty!14157)) mapNonEmpty!14157))

(get-info :version)

(assert (= (and mapNonEmpty!14157 ((_ is ValueCellFull!3864) mapValue!14157)) b!361799))

(assert (= (and b!361800 ((_ is ValueCellFull!3864) mapDefault!14157)) b!361798))

(assert (= start!36064 b!361800))

(declare-fun m!358435 () Bool)

(assert (=> b!361795 m!358435))

(declare-fun m!358437 () Bool)

(assert (=> b!361796 m!358437))

(declare-fun m!358439 () Bool)

(assert (=> mapNonEmpty!14157 m!358439))

(declare-fun m!358441 () Bool)

(assert (=> start!36064 m!358441))

(declare-fun m!358443 () Bool)

(assert (=> start!36064 m!358443))

(declare-fun m!358445 () Bool)

(assert (=> start!36064 m!358445))

(check-sat (not mapNonEmpty!14157) (not start!36064) (not b!361796) (not b!361795) tp_is_empty!8415)
(check-sat)
