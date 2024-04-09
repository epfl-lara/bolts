; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20156 () Bool)

(assert start!20156)

(declare-fun b_free!4803 () Bool)

(declare-fun b_next!4803 () Bool)

(assert (=> start!20156 (= b_free!4803 (not b_next!4803))))

(declare-fun tp!17441 () Bool)

(declare-fun b_and!11567 () Bool)

(assert (=> start!20156 (= tp!17441 b_and!11567)))

(declare-fun mapNonEmpty!8057 () Bool)

(declare-fun mapRes!8057 () Bool)

(declare-fun tp!17440 () Bool)

(declare-fun e!129983 () Bool)

(assert (=> mapNonEmpty!8057 (= mapRes!8057 (and tp!17440 e!129983))))

(declare-fun mapKey!8057 () (_ BitVec 32))

(declare-datatypes ((V!5859 0))(
  ( (V!5860 (val!2374 Int)) )
))
(declare-datatypes ((ValueCell!1986 0))(
  ( (ValueCellFull!1986 (v!4340 V!5859)) (EmptyCell!1986) )
))
(declare-datatypes ((array!8570 0))(
  ( (array!8571 (arr!4035 (Array (_ BitVec 32) ValueCell!1986)) (size!4360 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8570)

(declare-fun mapValue!8057 () ValueCell!1986)

(declare-fun mapRest!8057 () (Array (_ BitVec 32) ValueCell!1986))

(assert (=> mapNonEmpty!8057 (= (arr!4035 _values!649) (store mapRest!8057 mapKey!8057 mapValue!8057))))

(declare-fun res!93492 () Bool)

(declare-fun e!129981 () Bool)

(assert (=> start!20156 (=> (not res!93492) (not e!129981))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20156 (= res!93492 (validMask!0 mask!1149))))

(assert (=> start!20156 e!129981))

(declare-fun e!129985 () Bool)

(declare-fun array_inv!2623 (array!8570) Bool)

(assert (=> start!20156 (and (array_inv!2623 _values!649) e!129985)))

(assert (=> start!20156 true))

(declare-fun tp_is_empty!4659 () Bool)

(assert (=> start!20156 tp_is_empty!4659))

(declare-datatypes ((array!8572 0))(
  ( (array!8573 (arr!4036 (Array (_ BitVec 32) (_ BitVec 64))) (size!4361 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8572)

(declare-fun array_inv!2624 (array!8572) Bool)

(assert (=> start!20156 (array_inv!2624 _keys!825)))

(assert (=> start!20156 tp!17441))

(declare-fun b!197550 () Bool)

(declare-fun e!129982 () Bool)

(assert (=> b!197550 (= e!129982 tp_is_empty!4659)))

(declare-fun b!197551 () Bool)

(assert (=> b!197551 (= e!129985 (and e!129982 mapRes!8057))))

(declare-fun condMapEmpty!8057 () Bool)

(declare-fun mapDefault!8057 () ValueCell!1986)

(assert (=> b!197551 (= condMapEmpty!8057 (= (arr!4035 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1986)) mapDefault!8057)))))

(declare-fun b!197552 () Bool)

(declare-fun res!93493 () Bool)

(assert (=> b!197552 (=> (not res!93493) (not e!129981))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197552 (= res!93493 (= (select (arr!4036 _keys!825) i!601) k0!843))))

(declare-fun b!197553 () Bool)

(assert (=> b!197553 (= e!129983 tp_is_empty!4659)))

(declare-fun b!197554 () Bool)

(declare-fun res!93494 () Bool)

(assert (=> b!197554 (=> (not res!93494) (not e!129981))))

(declare-datatypes ((List!2538 0))(
  ( (Nil!2535) (Cons!2534 (h!3176 (_ BitVec 64)) (t!7477 List!2538)) )
))
(declare-fun arrayNoDuplicates!0 (array!8572 (_ BitVec 32) List!2538) Bool)

(assert (=> b!197554 (= res!93494 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2535))))

(declare-fun b!197555 () Bool)

(declare-fun res!93496 () Bool)

(assert (=> b!197555 (=> (not res!93496) (not e!129981))))

(assert (=> b!197555 (= res!93496 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4361 _keys!825))))))

(declare-fun mapIsEmpty!8057 () Bool)

(assert (=> mapIsEmpty!8057 mapRes!8057))

(declare-fun b!197556 () Bool)

(declare-fun res!93495 () Bool)

(assert (=> b!197556 (=> (not res!93495) (not e!129981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197556 (= res!93495 (validKeyInArray!0 k0!843))))

(declare-fun b!197557 () Bool)

(declare-fun res!93490 () Bool)

(assert (=> b!197557 (=> (not res!93490) (not e!129981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8572 (_ BitVec 32)) Bool)

(assert (=> b!197557 (= res!93490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197558 () Bool)

(declare-fun res!93491 () Bool)

(assert (=> b!197558 (=> (not res!93491) (not e!129981))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197558 (= res!93491 (and (= (size!4360 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4361 _keys!825) (size!4360 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197559 () Bool)

(assert (=> b!197559 (= e!129981 false)))

(declare-datatypes ((tuple2!3600 0))(
  ( (tuple2!3601 (_1!1810 (_ BitVec 64)) (_2!1810 V!5859)) )
))
(declare-datatypes ((List!2539 0))(
  ( (Nil!2536) (Cons!2535 (h!3177 tuple2!3600) (t!7478 List!2539)) )
))
(declare-datatypes ((ListLongMap!2527 0))(
  ( (ListLongMap!2528 (toList!1279 List!2539)) )
))
(declare-fun lt!97770 () ListLongMap!2527)

(declare-fun v!520 () V!5859)

(declare-fun zeroValue!615 () V!5859)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5859)

(declare-fun getCurrentListMapNoExtraKeys!236 (array!8572 array!8570 (_ BitVec 32) (_ BitVec 32) V!5859 V!5859 (_ BitVec 32) Int) ListLongMap!2527)

(assert (=> b!197559 (= lt!97770 (getCurrentListMapNoExtraKeys!236 _keys!825 (array!8571 (store (arr!4035 _values!649) i!601 (ValueCellFull!1986 v!520)) (size!4360 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97771 () ListLongMap!2527)

(assert (=> b!197559 (= lt!97771 (getCurrentListMapNoExtraKeys!236 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20156 res!93492) b!197558))

(assert (= (and b!197558 res!93491) b!197557))

(assert (= (and b!197557 res!93490) b!197554))

(assert (= (and b!197554 res!93494) b!197555))

(assert (= (and b!197555 res!93496) b!197556))

(assert (= (and b!197556 res!93495) b!197552))

(assert (= (and b!197552 res!93493) b!197559))

(assert (= (and b!197551 condMapEmpty!8057) mapIsEmpty!8057))

(assert (= (and b!197551 (not condMapEmpty!8057)) mapNonEmpty!8057))

(get-info :version)

(assert (= (and mapNonEmpty!8057 ((_ is ValueCellFull!1986) mapValue!8057)) b!197553))

(assert (= (and b!197551 ((_ is ValueCellFull!1986) mapDefault!8057)) b!197550))

(assert (= start!20156 b!197551))

(declare-fun m!224407 () Bool)

(assert (=> start!20156 m!224407))

(declare-fun m!224409 () Bool)

(assert (=> start!20156 m!224409))

(declare-fun m!224411 () Bool)

(assert (=> start!20156 m!224411))

(declare-fun m!224413 () Bool)

(assert (=> b!197557 m!224413))

(declare-fun m!224415 () Bool)

(assert (=> b!197554 m!224415))

(declare-fun m!224417 () Bool)

(assert (=> b!197552 m!224417))

(declare-fun m!224419 () Bool)

(assert (=> mapNonEmpty!8057 m!224419))

(declare-fun m!224421 () Bool)

(assert (=> b!197559 m!224421))

(declare-fun m!224423 () Bool)

(assert (=> b!197559 m!224423))

(declare-fun m!224425 () Bool)

(assert (=> b!197559 m!224425))

(declare-fun m!224427 () Bool)

(assert (=> b!197556 m!224427))

(check-sat (not start!20156) (not b!197556) (not b!197554) (not b_next!4803) tp_is_empty!4659 (not mapNonEmpty!8057) b_and!11567 (not b!197557) (not b!197559))
(check-sat b_and!11567 (not b_next!4803))
