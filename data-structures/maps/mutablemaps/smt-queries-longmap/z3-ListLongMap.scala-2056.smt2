; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35514 () Bool)

(assert start!35514)

(declare-fun b!355623 () Bool)

(declare-fun res!197371 () Bool)

(declare-fun e!217878 () Bool)

(assert (=> b!355623 (=> (not res!197371) (not e!217878))))

(declare-datatypes ((array!19463 0))(
  ( (array!19464 (arr!9222 (Array (_ BitVec 32) (_ BitVec 64))) (size!9574 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19463)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19463 (_ BitVec 32)) Bool)

(assert (=> b!355623 (= res!197371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355624 () Bool)

(declare-fun e!217880 () Bool)

(declare-fun tp_is_empty!7959 () Bool)

(assert (=> b!355624 (= e!217880 tp_is_empty!7959)))

(declare-fun b!355625 () Bool)

(declare-fun e!217876 () Bool)

(declare-fun e!217879 () Bool)

(declare-fun mapRes!13446 () Bool)

(assert (=> b!355625 (= e!217876 (and e!217879 mapRes!13446))))

(declare-fun condMapEmpty!13446 () Bool)

(declare-datatypes ((V!11589 0))(
  ( (V!11590 (val!4024 Int)) )
))
(declare-datatypes ((ValueCell!3636 0))(
  ( (ValueCellFull!3636 (v!6214 V!11589)) (EmptyCell!3636) )
))
(declare-datatypes ((array!19465 0))(
  ( (array!19466 (arr!9223 (Array (_ BitVec 32) ValueCell!3636)) (size!9575 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19465)

(declare-fun mapDefault!13446 () ValueCell!3636)

(assert (=> b!355625 (= condMapEmpty!13446 (= (arr!9223 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3636)) mapDefault!13446)))))

(declare-fun b!355626 () Bool)

(assert (=> b!355626 (= e!217879 tp_is_empty!7959)))

(declare-fun b!355627 () Bool)

(assert (=> b!355627 (= e!217878 false)))

(declare-fun lt!165814 () Bool)

(declare-datatypes ((List!5368 0))(
  ( (Nil!5365) (Cons!5364 (h!6220 (_ BitVec 64)) (t!10526 List!5368)) )
))
(declare-fun arrayNoDuplicates!0 (array!19463 (_ BitVec 32) List!5368) Bool)

(assert (=> b!355627 (= lt!165814 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5365))))

(declare-fun b!355628 () Bool)

(declare-fun res!197370 () Bool)

(assert (=> b!355628 (=> (not res!197370) (not e!217878))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355628 (= res!197370 (and (= (size!9575 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9574 _keys!1456) (size!9575 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13446 () Bool)

(declare-fun tp!27423 () Bool)

(assert (=> mapNonEmpty!13446 (= mapRes!13446 (and tp!27423 e!217880))))

(declare-fun mapValue!13446 () ValueCell!3636)

(declare-fun mapKey!13446 () (_ BitVec 32))

(declare-fun mapRest!13446 () (Array (_ BitVec 32) ValueCell!3636))

(assert (=> mapNonEmpty!13446 (= (arr!9223 _values!1208) (store mapRest!13446 mapKey!13446 mapValue!13446))))

(declare-fun res!197369 () Bool)

(assert (=> start!35514 (=> (not res!197369) (not e!217878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35514 (= res!197369 (validMask!0 mask!1842))))

(assert (=> start!35514 e!217878))

(assert (=> start!35514 true))

(declare-fun array_inv!6790 (array!19465) Bool)

(assert (=> start!35514 (and (array_inv!6790 _values!1208) e!217876)))

(declare-fun array_inv!6791 (array!19463) Bool)

(assert (=> start!35514 (array_inv!6791 _keys!1456)))

(declare-fun mapIsEmpty!13446 () Bool)

(assert (=> mapIsEmpty!13446 mapRes!13446))

(assert (= (and start!35514 res!197369) b!355628))

(assert (= (and b!355628 res!197370) b!355623))

(assert (= (and b!355623 res!197371) b!355627))

(assert (= (and b!355625 condMapEmpty!13446) mapIsEmpty!13446))

(assert (= (and b!355625 (not condMapEmpty!13446)) mapNonEmpty!13446))

(get-info :version)

(assert (= (and mapNonEmpty!13446 ((_ is ValueCellFull!3636) mapValue!13446)) b!355624))

(assert (= (and b!355625 ((_ is ValueCellFull!3636) mapDefault!13446)) b!355626))

(assert (= start!35514 b!355625))

(declare-fun m!354273 () Bool)

(assert (=> b!355623 m!354273))

(declare-fun m!354275 () Bool)

(assert (=> b!355627 m!354275))

(declare-fun m!354277 () Bool)

(assert (=> mapNonEmpty!13446 m!354277))

(declare-fun m!354279 () Bool)

(assert (=> start!35514 m!354279))

(declare-fun m!354281 () Bool)

(assert (=> start!35514 m!354281))

(declare-fun m!354283 () Bool)

(assert (=> start!35514 m!354283))

(check-sat tp_is_empty!7959 (not start!35514) (not mapNonEmpty!13446) (not b!355623) (not b!355627))
(check-sat)
