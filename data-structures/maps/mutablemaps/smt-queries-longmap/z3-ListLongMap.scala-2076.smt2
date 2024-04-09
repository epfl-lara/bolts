; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35634 () Bool)

(assert start!35634)

(declare-fun b_free!7881 () Bool)

(declare-fun b_next!7881 () Bool)

(assert (=> start!35634 (= b_free!7881 (not b_next!7881))))

(declare-fun tp!27626 () Bool)

(declare-fun b_and!15141 () Bool)

(assert (=> start!35634 (= tp!27626 b_and!15141)))

(declare-fun b!357336 () Bool)

(declare-fun res!198543 () Bool)

(declare-fun e!218804 () Bool)

(assert (=> b!357336 (=> (not res!198543) (not e!218804))))

(declare-datatypes ((array!19693 0))(
  ( (array!19694 (arr!9337 (Array (_ BitVec 32) (_ BitVec 64))) (size!9689 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19693)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19693 (_ BitVec 32)) Bool)

(assert (=> b!357336 (= res!198543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357337 () Bool)

(declare-fun e!218800 () Bool)

(assert (=> b!357337 (= e!218800 true)))

(declare-datatypes ((V!11749 0))(
  ( (V!11750 (val!4084 Int)) )
))
(declare-fun minValue!1150 () V!11749)

(declare-fun defaultEntry!1216 () Int)

(declare-fun k0!1077 () (_ BitVec 64))

(declare-datatypes ((ValueCell!3696 0))(
  ( (ValueCellFull!3696 (v!6274 V!11749)) (EmptyCell!3696) )
))
(declare-datatypes ((array!19695 0))(
  ( (array!19696 (arr!9338 (Array (_ BitVec 32) ValueCell!3696)) (size!9690 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19695)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11749)

(declare-datatypes ((tuple2!5702 0))(
  ( (tuple2!5703 (_1!2861 (_ BitVec 64)) (_2!2861 V!11749)) )
))
(declare-datatypes ((List!5418 0))(
  ( (Nil!5415) (Cons!5414 (h!6270 tuple2!5702) (t!10576 List!5418)) )
))
(declare-datatypes ((ListLongMap!4629 0))(
  ( (ListLongMap!4630 (toList!2330 List!5418)) )
))
(declare-fun contains!2406 (ListLongMap!4629 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1847 (array!19693 array!19695 (_ BitVec 32) (_ BitVec 32) V!11749 V!11749 (_ BitVec 32) Int) ListLongMap!4629)

(assert (=> b!357337 (contains!2406 (getCurrentListMap!1847 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((Unit!11015 0))(
  ( (Unit!11016) )
))
(declare-fun lt!166018 () Unit!11015)

(declare-fun lemmaArrayContainsKeyThenInListMap!340 (array!19693 array!19695 (_ BitVec 32) (_ BitVec 32) V!11749 V!11749 (_ BitVec 64) (_ BitVec 32) Int) Unit!11015)

(assert (=> b!357337 (= lt!166018 (lemmaArrayContainsKeyThenInListMap!340 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357338 () Bool)

(declare-fun res!198547 () Bool)

(assert (=> b!357338 (=> (not res!198547) (not e!218804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357338 (= res!198547 (validKeyInArray!0 k0!1077))))

(declare-fun b!357339 () Bool)

(declare-fun res!198549 () Bool)

(assert (=> b!357339 (=> (not res!198549) (not e!218804))))

(assert (=> b!357339 (= res!198549 (not (= (select (arr!9337 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!357340 () Bool)

(declare-fun e!218799 () Bool)

(declare-fun tp_is_empty!8079 () Bool)

(assert (=> b!357340 (= e!218799 tp_is_empty!8079)))

(declare-fun b!357341 () Bool)

(declare-fun res!198544 () Bool)

(assert (=> b!357341 (=> (not res!198544) (not e!218804))))

(declare-fun arrayContainsKey!0 (array!19693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357341 (= res!198544 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!357342 () Bool)

(declare-fun res!198546 () Bool)

(assert (=> b!357342 (=> (not res!198546) (not e!218804))))

(declare-datatypes ((List!5419 0))(
  ( (Nil!5416) (Cons!5415 (h!6271 (_ BitVec 64)) (t!10577 List!5419)) )
))
(declare-fun arrayNoDuplicates!0 (array!19693 (_ BitVec 32) List!5419) Bool)

(assert (=> b!357342 (= res!198546 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5416))))

(declare-fun mapIsEmpty!13626 () Bool)

(declare-fun mapRes!13626 () Bool)

(assert (=> mapIsEmpty!13626 mapRes!13626))

(declare-fun b!357343 () Bool)

(declare-fun e!218801 () Bool)

(assert (=> b!357343 (= e!218801 (and e!218799 mapRes!13626))))

(declare-fun condMapEmpty!13626 () Bool)

(declare-fun mapDefault!13626 () ValueCell!3696)

(assert (=> b!357343 (= condMapEmpty!13626 (= (arr!9338 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3696)) mapDefault!13626)))))

(declare-fun b!357344 () Bool)

(declare-fun res!198550 () Bool)

(assert (=> b!357344 (=> (not res!198550) (not e!218804))))

(assert (=> b!357344 (= res!198550 (and (= (size!9690 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9689 _keys!1456) (size!9690 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13626 () Bool)

(declare-fun tp!27627 () Bool)

(declare-fun e!218803 () Bool)

(assert (=> mapNonEmpty!13626 (= mapRes!13626 (and tp!27627 e!218803))))

(declare-fun mapRest!13626 () (Array (_ BitVec 32) ValueCell!3696))

(declare-fun mapKey!13626 () (_ BitVec 32))

(declare-fun mapValue!13626 () ValueCell!3696)

(assert (=> mapNonEmpty!13626 (= (arr!9338 _values!1208) (store mapRest!13626 mapKey!13626 mapValue!13626))))

(declare-fun res!198548 () Bool)

(assert (=> start!35634 (=> (not res!198548) (not e!218804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35634 (= res!198548 (validMask!0 mask!1842))))

(assert (=> start!35634 e!218804))

(assert (=> start!35634 tp_is_empty!8079))

(assert (=> start!35634 true))

(assert (=> start!35634 tp!27626))

(declare-fun array_inv!6868 (array!19693) Bool)

(assert (=> start!35634 (array_inv!6868 _keys!1456)))

(declare-fun array_inv!6869 (array!19695) Bool)

(assert (=> start!35634 (and (array_inv!6869 _values!1208) e!218801)))

(declare-fun b!357345 () Bool)

(assert (=> b!357345 (= e!218804 (not e!218800))))

(declare-fun res!198542 () Bool)

(assert (=> b!357345 (=> res!198542 e!218800)))

(assert (=> b!357345 (= res!198542 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9689 _keys!1456))))))

(assert (=> b!357345 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166017 () Unit!11015)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!27 (array!19693 array!19695 (_ BitVec 32) (_ BitVec 32) V!11749 V!11749 (_ BitVec 64) (_ BitVec 32)) Unit!11015)

(assert (=> b!357345 (= lt!166017 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!27 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!357346 () Bool)

(assert (=> b!357346 (= e!218803 tp_is_empty!8079)))

(declare-fun b!357347 () Bool)

(declare-fun res!198545 () Bool)

(assert (=> b!357347 (=> (not res!198545) (not e!218804))))

(assert (=> b!357347 (= res!198545 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9689 _keys!1456))))))

(assert (= (and start!35634 res!198548) b!357344))

(assert (= (and b!357344 res!198550) b!357336))

(assert (= (and b!357336 res!198543) b!357342))

(assert (= (and b!357342 res!198546) b!357338))

(assert (= (and b!357338 res!198547) b!357347))

(assert (= (and b!357347 res!198545) b!357341))

(assert (= (and b!357341 res!198544) b!357339))

(assert (= (and b!357339 res!198549) b!357345))

(assert (= (and b!357345 (not res!198542)) b!357337))

(assert (= (and b!357343 condMapEmpty!13626) mapIsEmpty!13626))

(assert (= (and b!357343 (not condMapEmpty!13626)) mapNonEmpty!13626))

(get-info :version)

(assert (= (and mapNonEmpty!13626 ((_ is ValueCellFull!3696) mapValue!13626)) b!357346))

(assert (= (and b!357343 ((_ is ValueCellFull!3696) mapDefault!13626)) b!357340))

(assert (= start!35634 b!357343))

(declare-fun m!355435 () Bool)

(assert (=> start!35634 m!355435))

(declare-fun m!355437 () Bool)

(assert (=> start!35634 m!355437))

(declare-fun m!355439 () Bool)

(assert (=> start!35634 m!355439))

(declare-fun m!355441 () Bool)

(assert (=> b!357336 m!355441))

(declare-fun m!355443 () Bool)

(assert (=> b!357342 m!355443))

(declare-fun m!355445 () Bool)

(assert (=> b!357338 m!355445))

(declare-fun m!355447 () Bool)

(assert (=> b!357345 m!355447))

(declare-fun m!355449 () Bool)

(assert (=> b!357345 m!355449))

(declare-fun m!355451 () Bool)

(assert (=> b!357341 m!355451))

(declare-fun m!355453 () Bool)

(assert (=> b!357337 m!355453))

(assert (=> b!357337 m!355453))

(declare-fun m!355455 () Bool)

(assert (=> b!357337 m!355455))

(declare-fun m!355457 () Bool)

(assert (=> b!357337 m!355457))

(declare-fun m!355459 () Bool)

(assert (=> b!357339 m!355459))

(declare-fun m!355461 () Bool)

(assert (=> mapNonEmpty!13626 m!355461))

(check-sat (not b_next!7881) (not mapNonEmpty!13626) (not b!357341) (not b!357337) tp_is_empty!8079 (not b!357338) (not b!357345) (not start!35634) (not b!357342) (not b!357336) b_and!15141)
(check-sat b_and!15141 (not b_next!7881))
