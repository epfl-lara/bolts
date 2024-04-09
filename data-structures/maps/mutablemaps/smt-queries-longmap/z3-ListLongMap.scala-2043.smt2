; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35436 () Bool)

(assert start!35436)

(declare-fun b_free!7815 () Bool)

(declare-fun b_next!7815 () Bool)

(assert (=> start!35436 (= b_free!7815 (not b_next!7815))))

(declare-fun tp!27231 () Bool)

(declare-fun b_and!15075 () Bool)

(assert (=> start!35436 (= tp!27231 b_and!15075)))

(declare-fun b!354465 () Bool)

(declare-fun res!196567 () Bool)

(declare-fun e!217293 () Bool)

(assert (=> b!354465 (=> (not res!196567) (not e!217293))))

(declare-datatypes ((array!19311 0))(
  ( (array!19312 (arr!9146 (Array (_ BitVec 32) (_ BitVec 64))) (size!9498 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19311)

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!354465 (= res!196567 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun res!196569 () Bool)

(assert (=> start!35436 (=> (not res!196569) (not e!217293))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35436 (= res!196569 (validMask!0 mask!1842))))

(assert (=> start!35436 e!217293))

(declare-fun tp_is_empty!7881 () Bool)

(assert (=> start!35436 tp_is_empty!7881))

(assert (=> start!35436 true))

(assert (=> start!35436 tp!27231))

(declare-fun array_inv!6734 (array!19311) Bool)

(assert (=> start!35436 (array_inv!6734 _keys!1456)))

(declare-datatypes ((V!11485 0))(
  ( (V!11486 (val!3985 Int)) )
))
(declare-datatypes ((ValueCell!3597 0))(
  ( (ValueCellFull!3597 (v!6175 V!11485)) (EmptyCell!3597) )
))
(declare-datatypes ((array!19313 0))(
  ( (array!19314 (arr!9147 (Array (_ BitVec 32) ValueCell!3597)) (size!9499 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19313)

(declare-fun e!217291 () Bool)

(declare-fun array_inv!6735 (array!19313) Bool)

(assert (=> start!35436 (and (array_inv!6735 _values!1208) e!217291)))

(declare-fun b!354466 () Bool)

(declare-fun res!196568 () Bool)

(assert (=> b!354466 (=> (not res!196568) (not e!217293))))

(assert (=> b!354466 (= res!196568 (= (select (arr!9146 _keys!1456) from!1805) k0!1077))))

(declare-fun b!354467 () Bool)

(declare-fun res!196562 () Bool)

(assert (=> b!354467 (=> (not res!196562) (not e!217293))))

(assert (=> b!354467 (= res!196562 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9498 _keys!1456))))))

(declare-fun b!354468 () Bool)

(declare-fun e!217295 () Bool)

(declare-fun mapRes!13329 () Bool)

(assert (=> b!354468 (= e!217291 (and e!217295 mapRes!13329))))

(declare-fun condMapEmpty!13329 () Bool)

(declare-fun mapDefault!13329 () ValueCell!3597)

(assert (=> b!354468 (= condMapEmpty!13329 (= (arr!9147 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3597)) mapDefault!13329)))))

(declare-fun b!354469 () Bool)

(declare-fun res!196563 () Bool)

(assert (=> b!354469 (=> (not res!196563) (not e!217293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19311 (_ BitVec 32)) Bool)

(assert (=> b!354469 (= res!196563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354470 () Bool)

(declare-fun res!196565 () Bool)

(assert (=> b!354470 (=> (not res!196565) (not e!217293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354470 (= res!196565 (validKeyInArray!0 (select (arr!9146 _keys!1456) from!1805)))))

(declare-fun b!354471 () Bool)

(declare-fun res!196570 () Bool)

(assert (=> b!354471 (=> (not res!196570) (not e!217293))))

(assert (=> b!354471 (= res!196570 (validKeyInArray!0 k0!1077))))

(declare-fun mapIsEmpty!13329 () Bool)

(assert (=> mapIsEmpty!13329 mapRes!13329))

(declare-fun b!354472 () Bool)

(declare-fun res!196564 () Bool)

(assert (=> b!354472 (=> (not res!196564) (not e!217293))))

(declare-datatypes ((List!5325 0))(
  ( (Nil!5322) (Cons!5321 (h!6177 (_ BitVec 64)) (t!10483 List!5325)) )
))
(declare-fun arrayNoDuplicates!0 (array!19311 (_ BitVec 32) List!5325) Bool)

(assert (=> b!354472 (= res!196564 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5322))))

(declare-fun mapNonEmpty!13329 () Bool)

(declare-fun tp!27230 () Bool)

(declare-fun e!217294 () Bool)

(assert (=> mapNonEmpty!13329 (= mapRes!13329 (and tp!27230 e!217294))))

(declare-fun mapValue!13329 () ValueCell!3597)

(declare-fun mapRest!13329 () (Array (_ BitVec 32) ValueCell!3597))

(declare-fun mapKey!13329 () (_ BitVec 32))

(assert (=> mapNonEmpty!13329 (= (arr!9147 _values!1208) (store mapRest!13329 mapKey!13329 mapValue!13329))))

(declare-fun b!354473 () Bool)

(assert (=> b!354473 (= e!217293 (not true))))

(declare-fun minValue!1150 () V!11485)

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11485)

(declare-datatypes ((tuple2!5660 0))(
  ( (tuple2!5661 (_1!2840 (_ BitVec 64)) (_2!2840 V!11485)) )
))
(declare-datatypes ((List!5326 0))(
  ( (Nil!5323) (Cons!5322 (h!6178 tuple2!5660) (t!10484 List!5326)) )
))
(declare-datatypes ((ListLongMap!4587 0))(
  ( (ListLongMap!4588 (toList!2309 List!5326)) )
))
(declare-fun contains!2385 (ListLongMap!4587 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1826 (array!19311 array!19313 (_ BitVec 32) (_ BitVec 32) V!11485 V!11485 (_ BitVec 32) Int) ListLongMap!4587)

(assert (=> b!354473 (contains!2385 (getCurrentListMap!1826 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9146 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10927 0))(
  ( (Unit!10928) )
))
(declare-fun lt!165697 () Unit!10927)

(declare-fun lemmaValidKeyInArrayIsInListMap!176 (array!19311 array!19313 (_ BitVec 32) (_ BitVec 32) V!11485 V!11485 (_ BitVec 32) Int) Unit!10927)

(assert (=> b!354473 (= lt!165697 (lemmaValidKeyInArrayIsInListMap!176 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!354474 () Bool)

(assert (=> b!354474 (= e!217294 tp_is_empty!7881)))

(declare-fun b!354475 () Bool)

(declare-fun res!196566 () Bool)

(assert (=> b!354475 (=> (not res!196566) (not e!217293))))

(assert (=> b!354475 (= res!196566 (and (= (size!9499 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9498 _keys!1456) (size!9499 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354476 () Bool)

(assert (=> b!354476 (= e!217295 tp_is_empty!7881)))

(assert (= (and start!35436 res!196569) b!354475))

(assert (= (and b!354475 res!196566) b!354469))

(assert (= (and b!354469 res!196563) b!354472))

(assert (= (and b!354472 res!196564) b!354471))

(assert (= (and b!354471 res!196570) b!354467))

(assert (= (and b!354467 res!196562) b!354465))

(assert (= (and b!354465 res!196567) b!354466))

(assert (= (and b!354466 res!196568) b!354470))

(assert (= (and b!354470 res!196565) b!354473))

(assert (= (and b!354468 condMapEmpty!13329) mapIsEmpty!13329))

(assert (= (and b!354468 (not condMapEmpty!13329)) mapNonEmpty!13329))

(get-info :version)

(assert (= (and mapNonEmpty!13329 ((_ is ValueCellFull!3597) mapValue!13329)) b!354474))

(assert (= (and b!354468 ((_ is ValueCellFull!3597) mapDefault!13329)) b!354476))

(assert (= start!35436 b!354468))

(declare-fun m!353441 () Bool)

(assert (=> b!354471 m!353441))

(declare-fun m!353443 () Bool)

(assert (=> b!354472 m!353443))

(declare-fun m!353445 () Bool)

(assert (=> b!354473 m!353445))

(declare-fun m!353447 () Bool)

(assert (=> b!354473 m!353447))

(assert (=> b!354473 m!353445))

(assert (=> b!354473 m!353447))

(declare-fun m!353449 () Bool)

(assert (=> b!354473 m!353449))

(declare-fun m!353451 () Bool)

(assert (=> b!354473 m!353451))

(declare-fun m!353453 () Bool)

(assert (=> b!354465 m!353453))

(assert (=> b!354470 m!353447))

(assert (=> b!354470 m!353447))

(declare-fun m!353455 () Bool)

(assert (=> b!354470 m!353455))

(declare-fun m!353457 () Bool)

(assert (=> start!35436 m!353457))

(declare-fun m!353459 () Bool)

(assert (=> start!35436 m!353459))

(declare-fun m!353461 () Bool)

(assert (=> start!35436 m!353461))

(assert (=> b!354466 m!353447))

(declare-fun m!353463 () Bool)

(assert (=> mapNonEmpty!13329 m!353463))

(declare-fun m!353465 () Bool)

(assert (=> b!354469 m!353465))

(check-sat (not start!35436) (not mapNonEmpty!13329) (not b_next!7815) (not b!354465) (not b!354470) (not b!354471) tp_is_empty!7881 (not b!354472) (not b!354473) (not b!354469) b_and!15075)
(check-sat b_and!15075 (not b_next!7815))
