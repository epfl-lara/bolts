; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42266 () Bool)

(assert start!42266)

(declare-fun b_free!11763 () Bool)

(declare-fun b_next!11763 () Bool)

(assert (=> start!42266 (= b_free!11763 (not b_next!11763))))

(declare-fun tp!41317 () Bool)

(declare-fun b_and!20219 () Bool)

(assert (=> start!42266 (= tp!41317 b_and!20219)))

(declare-fun b!471367 () Bool)

(declare-fun res!281660 () Bool)

(declare-fun e!276282 () Bool)

(assert (=> b!471367 (=> (not res!281660) (not e!276282))))

(declare-datatypes ((array!30109 0))(
  ( (array!30110 (arr!14473 (Array (_ BitVec 32) (_ BitVec 64))) (size!14825 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30109)

(declare-datatypes ((List!8839 0))(
  ( (Nil!8836) (Cons!8835 (h!9691 (_ BitVec 64)) (t!14813 List!8839)) )
))
(declare-fun arrayNoDuplicates!0 (array!30109 (_ BitVec 32) List!8839) Bool)

(assert (=> b!471367 (= res!281660 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8836))))

(declare-fun b!471368 () Bool)

(declare-fun res!281663 () Bool)

(assert (=> b!471368 (=> (not res!281663) (not e!276282))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30109 (_ BitVec 32)) Bool)

(assert (=> b!471368 (= res!281663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471369 () Bool)

(assert (=> b!471369 (= e!276282 (not true))))

(declare-datatypes ((V!18693 0))(
  ( (V!18694 (val!6640 Int)) )
))
(declare-datatypes ((tuple2!8720 0))(
  ( (tuple2!8721 (_1!4370 (_ BitVec 64)) (_2!4370 V!18693)) )
))
(declare-datatypes ((List!8840 0))(
  ( (Nil!8837) (Cons!8836 (h!9692 tuple2!8720) (t!14814 List!8840)) )
))
(declare-datatypes ((ListLongMap!7647 0))(
  ( (ListLongMap!7648 (toList!3839 List!8840)) )
))
(declare-fun lt!213904 () ListLongMap!7647)

(declare-fun lt!213906 () ListLongMap!7647)

(assert (=> b!471369 (= lt!213904 lt!213906)))

(declare-fun minValueBefore!38 () V!18693)

(declare-fun zeroValue!794 () V!18693)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13804 0))(
  ( (Unit!13805) )
))
(declare-fun lt!213905 () Unit!13804)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6252 0))(
  ( (ValueCellFull!6252 (v!8927 V!18693)) (EmptyCell!6252) )
))
(declare-datatypes ((array!30111 0))(
  ( (array!30112 (arr!14474 (Array (_ BitVec 32) ValueCell!6252)) (size!14826 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30111)

(declare-fun minValueAfter!38 () V!18693)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!196 (array!30109 array!30111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18693 V!18693 V!18693 V!18693 (_ BitVec 32) Int) Unit!13804)

(assert (=> b!471369 (= lt!213905 (lemmaNoChangeToArrayThenSameMapNoExtras!196 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2001 (array!30109 array!30111 (_ BitVec 32) (_ BitVec 32) V!18693 V!18693 (_ BitVec 32) Int) ListLongMap!7647)

(assert (=> b!471369 (= lt!213906 (getCurrentListMapNoExtraKeys!2001 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471369 (= lt!213904 (getCurrentListMapNoExtraKeys!2001 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471370 () Bool)

(declare-fun e!276279 () Bool)

(declare-fun e!276281 () Bool)

(declare-fun mapRes!21493 () Bool)

(assert (=> b!471370 (= e!276279 (and e!276281 mapRes!21493))))

(declare-fun condMapEmpty!21493 () Bool)

(declare-fun mapDefault!21493 () ValueCell!6252)

(assert (=> b!471370 (= condMapEmpty!21493 (= (arr!14474 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6252)) mapDefault!21493)))))

(declare-fun b!471371 () Bool)

(declare-fun tp_is_empty!13191 () Bool)

(assert (=> b!471371 (= e!276281 tp_is_empty!13191)))

(declare-fun mapIsEmpty!21493 () Bool)

(assert (=> mapIsEmpty!21493 mapRes!21493))

(declare-fun b!471372 () Bool)

(declare-fun res!281661 () Bool)

(assert (=> b!471372 (=> (not res!281661) (not e!276282))))

(assert (=> b!471372 (= res!281661 (and (= (size!14826 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14825 _keys!1025) (size!14826 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471373 () Bool)

(declare-fun e!276280 () Bool)

(assert (=> b!471373 (= e!276280 tp_is_empty!13191)))

(declare-fun res!281662 () Bool)

(assert (=> start!42266 (=> (not res!281662) (not e!276282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42266 (= res!281662 (validMask!0 mask!1365))))

(assert (=> start!42266 e!276282))

(assert (=> start!42266 tp_is_empty!13191))

(assert (=> start!42266 tp!41317))

(assert (=> start!42266 true))

(declare-fun array_inv!10442 (array!30109) Bool)

(assert (=> start!42266 (array_inv!10442 _keys!1025)))

(declare-fun array_inv!10443 (array!30111) Bool)

(assert (=> start!42266 (and (array_inv!10443 _values!833) e!276279)))

(declare-fun mapNonEmpty!21493 () Bool)

(declare-fun tp!41316 () Bool)

(assert (=> mapNonEmpty!21493 (= mapRes!21493 (and tp!41316 e!276280))))

(declare-fun mapRest!21493 () (Array (_ BitVec 32) ValueCell!6252))

(declare-fun mapValue!21493 () ValueCell!6252)

(declare-fun mapKey!21493 () (_ BitVec 32))

(assert (=> mapNonEmpty!21493 (= (arr!14474 _values!833) (store mapRest!21493 mapKey!21493 mapValue!21493))))

(assert (= (and start!42266 res!281662) b!471372))

(assert (= (and b!471372 res!281661) b!471368))

(assert (= (and b!471368 res!281663) b!471367))

(assert (= (and b!471367 res!281660) b!471369))

(assert (= (and b!471370 condMapEmpty!21493) mapIsEmpty!21493))

(assert (= (and b!471370 (not condMapEmpty!21493)) mapNonEmpty!21493))

(get-info :version)

(assert (= (and mapNonEmpty!21493 ((_ is ValueCellFull!6252) mapValue!21493)) b!471373))

(assert (= (and b!471370 ((_ is ValueCellFull!6252) mapDefault!21493)) b!471371))

(assert (= start!42266 b!471370))

(declare-fun m!453517 () Bool)

(assert (=> b!471368 m!453517))

(declare-fun m!453519 () Bool)

(assert (=> b!471369 m!453519))

(declare-fun m!453521 () Bool)

(assert (=> b!471369 m!453521))

(declare-fun m!453523 () Bool)

(assert (=> b!471369 m!453523))

(declare-fun m!453525 () Bool)

(assert (=> mapNonEmpty!21493 m!453525))

(declare-fun m!453527 () Bool)

(assert (=> start!42266 m!453527))

(declare-fun m!453529 () Bool)

(assert (=> start!42266 m!453529))

(declare-fun m!453531 () Bool)

(assert (=> start!42266 m!453531))

(declare-fun m!453533 () Bool)

(assert (=> b!471367 m!453533))

(check-sat (not b_next!11763) tp_is_empty!13191 (not b!471368) (not b!471369) (not start!42266) (not mapNonEmpty!21493) (not b!471367) b_and!20219)
(check-sat b_and!20219 (not b_next!11763))
