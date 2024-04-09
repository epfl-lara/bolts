; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41912 () Bool)

(assert start!41912)

(declare-fun b_free!11493 () Bool)

(declare-fun b_next!11493 () Bool)

(assert (=> start!41912 (= b_free!11493 (not b_next!11493))))

(declare-fun tp!40491 () Bool)

(declare-fun b_and!19899 () Bool)

(assert (=> start!41912 (= tp!40491 b_and!19899)))

(declare-fun b!467627 () Bool)

(declare-fun e!273598 () Bool)

(declare-fun tp_is_empty!12921 () Bool)

(assert (=> b!467627 (= e!273598 tp_is_empty!12921)))

(declare-fun mapNonEmpty!21073 () Bool)

(declare-fun mapRes!21073 () Bool)

(declare-fun tp!40492 () Bool)

(declare-fun e!273602 () Bool)

(assert (=> mapNonEmpty!21073 (= mapRes!21073 (and tp!40492 e!273602))))

(declare-datatypes ((V!18333 0))(
  ( (V!18334 (val!6505 Int)) )
))
(declare-datatypes ((ValueCell!6117 0))(
  ( (ValueCellFull!6117 (v!8790 V!18333)) (EmptyCell!6117) )
))
(declare-datatypes ((array!29577 0))(
  ( (array!29578 (arr!14212 (Array (_ BitVec 32) ValueCell!6117)) (size!14564 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29577)

(declare-fun mapValue!21073 () ValueCell!6117)

(declare-fun mapKey!21073 () (_ BitVec 32))

(declare-fun mapRest!21073 () (Array (_ BitVec 32) ValueCell!6117))

(assert (=> mapNonEmpty!21073 (= (arr!14212 _values!833) (store mapRest!21073 mapKey!21073 mapValue!21073))))

(declare-fun mapIsEmpty!21073 () Bool)

(assert (=> mapIsEmpty!21073 mapRes!21073))

(declare-fun b!467629 () Bool)

(declare-fun e!273597 () Bool)

(declare-fun e!273601 () Bool)

(assert (=> b!467629 (= e!273597 (not e!273601))))

(declare-fun res!279539 () Bool)

(assert (=> b!467629 (=> res!279539 e!273601)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!467629 (= res!279539 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8524 0))(
  ( (tuple2!8525 (_1!4272 (_ BitVec 64)) (_2!4272 V!18333)) )
))
(declare-datatypes ((List!8643 0))(
  ( (Nil!8640) (Cons!8639 (h!9495 tuple2!8524) (t!14607 List!8643)) )
))
(declare-datatypes ((ListLongMap!7451 0))(
  ( (ListLongMap!7452 (toList!3741 List!8643)) )
))
(declare-fun lt!211487 () ListLongMap!7451)

(declare-fun lt!211489 () ListLongMap!7451)

(assert (=> b!467629 (= lt!211487 lt!211489)))

(declare-fun minValueBefore!38 () V!18333)

(declare-fun zeroValue!794 () V!18333)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29579 0))(
  ( (array!29580 (arr!14213 (Array (_ BitVec 32) (_ BitVec 64))) (size!14565 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29579)

(declare-datatypes ((Unit!13603 0))(
  ( (Unit!13604) )
))
(declare-fun lt!211488 () Unit!13603)

(declare-fun minValueAfter!38 () V!18333)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!102 (array!29579 array!29577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18333 V!18333 V!18333 V!18333 (_ BitVec 32) Int) Unit!13603)

(assert (=> b!467629 (= lt!211488 (lemmaNoChangeToArrayThenSameMapNoExtras!102 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1907 (array!29579 array!29577 (_ BitVec 32) (_ BitVec 32) V!18333 V!18333 (_ BitVec 32) Int) ListLongMap!7451)

(assert (=> b!467629 (= lt!211489 (getCurrentListMapNoExtraKeys!1907 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467629 (= lt!211487 (getCurrentListMapNoExtraKeys!1907 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467630 () Bool)

(declare-fun e!273599 () Bool)

(assert (=> b!467630 (= e!273599 (and e!273598 mapRes!21073))))

(declare-fun condMapEmpty!21073 () Bool)

(declare-fun mapDefault!21073 () ValueCell!6117)

(assert (=> b!467630 (= condMapEmpty!21073 (= (arr!14212 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6117)) mapDefault!21073)))))

(declare-fun b!467631 () Bool)

(assert (=> b!467631 (= e!273601 true)))

(declare-fun lt!211486 () ListLongMap!7451)

(declare-fun getCurrentListMap!2159 (array!29579 array!29577 (_ BitVec 32) (_ BitVec 32) V!18333 V!18333 (_ BitVec 32) Int) ListLongMap!7451)

(assert (=> b!467631 (= lt!211486 (getCurrentListMap!2159 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467632 () Bool)

(assert (=> b!467632 (= e!273602 tp_is_empty!12921)))

(declare-fun res!279538 () Bool)

(assert (=> start!41912 (=> (not res!279538) (not e!273597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41912 (= res!279538 (validMask!0 mask!1365))))

(assert (=> start!41912 e!273597))

(assert (=> start!41912 tp_is_empty!12921))

(assert (=> start!41912 tp!40491))

(assert (=> start!41912 true))

(declare-fun array_inv!10250 (array!29579) Bool)

(assert (=> start!41912 (array_inv!10250 _keys!1025)))

(declare-fun array_inv!10251 (array!29577) Bool)

(assert (=> start!41912 (and (array_inv!10251 _values!833) e!273599)))

(declare-fun b!467628 () Bool)

(declare-fun res!279540 () Bool)

(assert (=> b!467628 (=> (not res!279540) (not e!273597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29579 (_ BitVec 32)) Bool)

(assert (=> b!467628 (= res!279540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467633 () Bool)

(declare-fun res!279537 () Bool)

(assert (=> b!467633 (=> (not res!279537) (not e!273597))))

(assert (=> b!467633 (= res!279537 (and (= (size!14564 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14565 _keys!1025) (size!14564 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467634 () Bool)

(declare-fun res!279541 () Bool)

(assert (=> b!467634 (=> (not res!279541) (not e!273597))))

(declare-datatypes ((List!8644 0))(
  ( (Nil!8641) (Cons!8640 (h!9496 (_ BitVec 64)) (t!14608 List!8644)) )
))
(declare-fun arrayNoDuplicates!0 (array!29579 (_ BitVec 32) List!8644) Bool)

(assert (=> b!467634 (= res!279541 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8641))))

(assert (= (and start!41912 res!279538) b!467633))

(assert (= (and b!467633 res!279537) b!467628))

(assert (= (and b!467628 res!279540) b!467634))

(assert (= (and b!467634 res!279541) b!467629))

(assert (= (and b!467629 (not res!279539)) b!467631))

(assert (= (and b!467630 condMapEmpty!21073) mapIsEmpty!21073))

(assert (= (and b!467630 (not condMapEmpty!21073)) mapNonEmpty!21073))

(get-info :version)

(assert (= (and mapNonEmpty!21073 ((_ is ValueCellFull!6117) mapValue!21073)) b!467632))

(assert (= (and b!467630 ((_ is ValueCellFull!6117) mapDefault!21073)) b!467627))

(assert (= start!41912 b!467630))

(declare-fun m!449749 () Bool)

(assert (=> b!467629 m!449749))

(declare-fun m!449751 () Bool)

(assert (=> b!467629 m!449751))

(declare-fun m!449753 () Bool)

(assert (=> b!467629 m!449753))

(declare-fun m!449755 () Bool)

(assert (=> b!467634 m!449755))

(declare-fun m!449757 () Bool)

(assert (=> start!41912 m!449757))

(declare-fun m!449759 () Bool)

(assert (=> start!41912 m!449759))

(declare-fun m!449761 () Bool)

(assert (=> start!41912 m!449761))

(declare-fun m!449763 () Bool)

(assert (=> mapNonEmpty!21073 m!449763))

(declare-fun m!449765 () Bool)

(assert (=> b!467631 m!449765))

(declare-fun m!449767 () Bool)

(assert (=> b!467628 m!449767))

(check-sat (not b!467631) (not b!467628) (not mapNonEmpty!21073) (not b!467629) (not start!41912) b_and!19899 tp_is_empty!12921 (not b_next!11493) (not b!467634))
(check-sat b_and!19899 (not b_next!11493))
