; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35550 () Bool)

(assert start!35550)

(declare-fun mapIsEmpty!13500 () Bool)

(declare-fun mapRes!13500 () Bool)

(assert (=> mapIsEmpty!13500 mapRes!13500))

(declare-fun b!355947 () Bool)

(declare-fun e!218148 () Bool)

(declare-fun tp_is_empty!7995 () Bool)

(assert (=> b!355947 (= e!218148 tp_is_empty!7995)))

(declare-fun mapNonEmpty!13500 () Bool)

(declare-fun tp!27477 () Bool)

(assert (=> mapNonEmpty!13500 (= mapRes!13500 (and tp!27477 e!218148))))

(declare-datatypes ((V!11637 0))(
  ( (V!11638 (val!4042 Int)) )
))
(declare-datatypes ((ValueCell!3654 0))(
  ( (ValueCellFull!3654 (v!6232 V!11637)) (EmptyCell!3654) )
))
(declare-fun mapRest!13500 () (Array (_ BitVec 32) ValueCell!3654))

(declare-fun mapValue!13500 () ValueCell!3654)

(declare-datatypes ((array!19533 0))(
  ( (array!19534 (arr!9257 (Array (_ BitVec 32) ValueCell!3654)) (size!9609 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19533)

(declare-fun mapKey!13500 () (_ BitVec 32))

(assert (=> mapNonEmpty!13500 (= (arr!9257 _values!1208) (store mapRest!13500 mapKey!13500 mapValue!13500))))

(declare-fun b!355948 () Bool)

(declare-fun e!218149 () Bool)

(declare-fun e!218150 () Bool)

(assert (=> b!355948 (= e!218149 (and e!218150 mapRes!13500))))

(declare-fun condMapEmpty!13500 () Bool)

(declare-fun mapDefault!13500 () ValueCell!3654)

(assert (=> b!355948 (= condMapEmpty!13500 (= (arr!9257 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3654)) mapDefault!13500)))))

(declare-fun res!197531 () Bool)

(declare-fun e!218146 () Bool)

(assert (=> start!35550 (=> (not res!197531) (not e!218146))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35550 (= res!197531 (validMask!0 mask!1842))))

(assert (=> start!35550 e!218146))

(assert (=> start!35550 true))

(declare-fun array_inv!6818 (array!19533) Bool)

(assert (=> start!35550 (and (array_inv!6818 _values!1208) e!218149)))

(declare-datatypes ((array!19535 0))(
  ( (array!19536 (arr!9258 (Array (_ BitVec 32) (_ BitVec 64))) (size!9610 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19535)

(declare-fun array_inv!6819 (array!19535) Bool)

(assert (=> start!35550 (array_inv!6819 _keys!1456)))

(declare-fun b!355949 () Bool)

(assert (=> b!355949 (= e!218146 false)))

(declare-fun lt!165868 () Bool)

(declare-datatypes ((List!5383 0))(
  ( (Nil!5380) (Cons!5379 (h!6235 (_ BitVec 64)) (t!10541 List!5383)) )
))
(declare-fun arrayNoDuplicates!0 (array!19535 (_ BitVec 32) List!5383) Bool)

(assert (=> b!355949 (= lt!165868 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5380))))

(declare-fun b!355950 () Bool)

(declare-fun res!197533 () Bool)

(assert (=> b!355950 (=> (not res!197533) (not e!218146))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355950 (= res!197533 (and (= (size!9609 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9610 _keys!1456) (size!9609 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355951 () Bool)

(assert (=> b!355951 (= e!218150 tp_is_empty!7995)))

(declare-fun b!355952 () Bool)

(declare-fun res!197532 () Bool)

(assert (=> b!355952 (=> (not res!197532) (not e!218146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19535 (_ BitVec 32)) Bool)

(assert (=> b!355952 (= res!197532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(assert (= (and start!35550 res!197531) b!355950))

(assert (= (and b!355950 res!197533) b!355952))

(assert (= (and b!355952 res!197532) b!355949))

(assert (= (and b!355948 condMapEmpty!13500) mapIsEmpty!13500))

(assert (= (and b!355948 (not condMapEmpty!13500)) mapNonEmpty!13500))

(get-info :version)

(assert (= (and mapNonEmpty!13500 ((_ is ValueCellFull!3654) mapValue!13500)) b!355947))

(assert (= (and b!355948 ((_ is ValueCellFull!3654) mapDefault!13500)) b!355951))

(assert (= start!35550 b!355948))

(declare-fun m!354489 () Bool)

(assert (=> mapNonEmpty!13500 m!354489))

(declare-fun m!354491 () Bool)

(assert (=> start!35550 m!354491))

(declare-fun m!354493 () Bool)

(assert (=> start!35550 m!354493))

(declare-fun m!354495 () Bool)

(assert (=> start!35550 m!354495))

(declare-fun m!354497 () Bool)

(assert (=> b!355949 m!354497))

(declare-fun m!354499 () Bool)

(assert (=> b!355952 m!354499))

(check-sat (not mapNonEmpty!13500) (not start!35550) tp_is_empty!7995 (not b!355952) (not b!355949))
(check-sat)
