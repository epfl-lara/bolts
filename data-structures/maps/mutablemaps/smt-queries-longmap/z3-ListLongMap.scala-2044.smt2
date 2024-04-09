; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35442 () Bool)

(assert start!35442)

(declare-fun b_free!7821 () Bool)

(declare-fun b_next!7821 () Bool)

(assert (=> start!35442 (= b_free!7821 (not b_next!7821))))

(declare-fun tp!27249 () Bool)

(declare-fun b_and!15081 () Bool)

(assert (=> start!35442 (= tp!27249 b_and!15081)))

(declare-fun b!354573 () Bool)

(declare-fun res!196647 () Bool)

(declare-fun e!217340 () Bool)

(assert (=> b!354573 (=> (not res!196647) (not e!217340))))

(declare-datatypes ((array!19321 0))(
  ( (array!19322 (arr!9151 (Array (_ BitVec 32) (_ BitVec 64))) (size!9503 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19321)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19321 (_ BitVec 32)) Bool)

(assert (=> b!354573 (= res!196647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354574 () Bool)

(assert (=> b!354574 (= e!217340 (not true))))

(declare-datatypes ((V!11493 0))(
  ( (V!11494 (val!3988 Int)) )
))
(declare-fun minValue!1150 () V!11493)

(declare-fun defaultEntry!1216 () Int)

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((ValueCell!3600 0))(
  ( (ValueCellFull!3600 (v!6178 V!11493)) (EmptyCell!3600) )
))
(declare-datatypes ((array!19323 0))(
  ( (array!19324 (arr!9152 (Array (_ BitVec 32) ValueCell!3600)) (size!9504 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19323)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11493)

(declare-datatypes ((tuple2!5662 0))(
  ( (tuple2!5663 (_1!2841 (_ BitVec 64)) (_2!2841 V!11493)) )
))
(declare-datatypes ((List!5327 0))(
  ( (Nil!5324) (Cons!5323 (h!6179 tuple2!5662) (t!10485 List!5327)) )
))
(declare-datatypes ((ListLongMap!4589 0))(
  ( (ListLongMap!4590 (toList!2310 List!5327)) )
))
(declare-fun contains!2386 (ListLongMap!4589 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1827 (array!19321 array!19323 (_ BitVec 32) (_ BitVec 32) V!11493 V!11493 (_ BitVec 32) Int) ListLongMap!4589)

(assert (=> b!354574 (contains!2386 (getCurrentListMap!1827 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9151 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10929 0))(
  ( (Unit!10930) )
))
(declare-fun lt!165706 () Unit!10929)

(declare-fun lemmaValidKeyInArrayIsInListMap!177 (array!19321 array!19323 (_ BitVec 32) (_ BitVec 32) V!11493 V!11493 (_ BitVec 32) Int) Unit!10929)

(assert (=> b!354574 (= lt!165706 (lemmaValidKeyInArrayIsInListMap!177 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun mapNonEmpty!13338 () Bool)

(declare-fun mapRes!13338 () Bool)

(declare-fun tp!27248 () Bool)

(declare-fun e!217336 () Bool)

(assert (=> mapNonEmpty!13338 (= mapRes!13338 (and tp!27248 e!217336))))

(declare-fun mapRest!13338 () (Array (_ BitVec 32) ValueCell!3600))

(declare-fun mapKey!13338 () (_ BitVec 32))

(declare-fun mapValue!13338 () ValueCell!3600)

(assert (=> mapNonEmpty!13338 (= (arr!9152 _values!1208) (store mapRest!13338 mapKey!13338 mapValue!13338))))

(declare-fun b!354575 () Bool)

(declare-fun res!196644 () Bool)

(assert (=> b!354575 (=> (not res!196644) (not e!217340))))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!354575 (= res!196644 (= (select (arr!9151 _keys!1456) from!1805) k0!1077))))

(declare-fun b!354576 () Bool)

(declare-fun tp_is_empty!7887 () Bool)

(assert (=> b!354576 (= e!217336 tp_is_empty!7887)))

(declare-fun b!354577 () Bool)

(declare-fun e!217337 () Bool)

(declare-fun e!217338 () Bool)

(assert (=> b!354577 (= e!217337 (and e!217338 mapRes!13338))))

(declare-fun condMapEmpty!13338 () Bool)

(declare-fun mapDefault!13338 () ValueCell!3600)

(assert (=> b!354577 (= condMapEmpty!13338 (= (arr!9152 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3600)) mapDefault!13338)))))

(declare-fun mapIsEmpty!13338 () Bool)

(assert (=> mapIsEmpty!13338 mapRes!13338))

(declare-fun b!354578 () Bool)

(declare-fun res!196650 () Bool)

(assert (=> b!354578 (=> (not res!196650) (not e!217340))))

(declare-fun arrayContainsKey!0 (array!19321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!354578 (= res!196650 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun res!196649 () Bool)

(assert (=> start!35442 (=> (not res!196649) (not e!217340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35442 (= res!196649 (validMask!0 mask!1842))))

(assert (=> start!35442 e!217340))

(assert (=> start!35442 tp_is_empty!7887))

(assert (=> start!35442 true))

(assert (=> start!35442 tp!27249))

(declare-fun array_inv!6736 (array!19321) Bool)

(assert (=> start!35442 (array_inv!6736 _keys!1456)))

(declare-fun array_inv!6737 (array!19323) Bool)

(assert (=> start!35442 (and (array_inv!6737 _values!1208) e!217337)))

(declare-fun b!354579 () Bool)

(declare-fun res!196643 () Bool)

(assert (=> b!354579 (=> (not res!196643) (not e!217340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354579 (= res!196643 (validKeyInArray!0 k0!1077))))

(declare-fun b!354580 () Bool)

(declare-fun res!196648 () Bool)

(assert (=> b!354580 (=> (not res!196648) (not e!217340))))

(declare-datatypes ((List!5328 0))(
  ( (Nil!5325) (Cons!5324 (h!6180 (_ BitVec 64)) (t!10486 List!5328)) )
))
(declare-fun arrayNoDuplicates!0 (array!19321 (_ BitVec 32) List!5328) Bool)

(assert (=> b!354580 (= res!196648 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5325))))

(declare-fun b!354581 () Bool)

(declare-fun res!196645 () Bool)

(assert (=> b!354581 (=> (not res!196645) (not e!217340))))

(assert (=> b!354581 (= res!196645 (and (= (size!9504 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9503 _keys!1456) (size!9504 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354582 () Bool)

(declare-fun res!196651 () Bool)

(assert (=> b!354582 (=> (not res!196651) (not e!217340))))

(assert (=> b!354582 (= res!196651 (validKeyInArray!0 (select (arr!9151 _keys!1456) from!1805)))))

(declare-fun b!354583 () Bool)

(declare-fun res!196646 () Bool)

(assert (=> b!354583 (=> (not res!196646) (not e!217340))))

(assert (=> b!354583 (= res!196646 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9503 _keys!1456))))))

(declare-fun b!354584 () Bool)

(assert (=> b!354584 (= e!217338 tp_is_empty!7887)))

(assert (= (and start!35442 res!196649) b!354581))

(assert (= (and b!354581 res!196645) b!354573))

(assert (= (and b!354573 res!196647) b!354580))

(assert (= (and b!354580 res!196648) b!354579))

(assert (= (and b!354579 res!196643) b!354583))

(assert (= (and b!354583 res!196646) b!354578))

(assert (= (and b!354578 res!196650) b!354575))

(assert (= (and b!354575 res!196644) b!354582))

(assert (= (and b!354582 res!196651) b!354574))

(assert (= (and b!354577 condMapEmpty!13338) mapIsEmpty!13338))

(assert (= (and b!354577 (not condMapEmpty!13338)) mapNonEmpty!13338))

(get-info :version)

(assert (= (and mapNonEmpty!13338 ((_ is ValueCellFull!3600) mapValue!13338)) b!354576))

(assert (= (and b!354577 ((_ is ValueCellFull!3600) mapDefault!13338)) b!354584))

(assert (= start!35442 b!354577))

(declare-fun m!353519 () Bool)

(assert (=> b!354580 m!353519))

(declare-fun m!353521 () Bool)

(assert (=> b!354582 m!353521))

(assert (=> b!354582 m!353521))

(declare-fun m!353523 () Bool)

(assert (=> b!354582 m!353523))

(assert (=> b!354575 m!353521))

(declare-fun m!353525 () Bool)

(assert (=> b!354573 m!353525))

(declare-fun m!353527 () Bool)

(assert (=> b!354578 m!353527))

(declare-fun m!353529 () Bool)

(assert (=> b!354579 m!353529))

(declare-fun m!353531 () Bool)

(assert (=> mapNonEmpty!13338 m!353531))

(declare-fun m!353533 () Bool)

(assert (=> start!35442 m!353533))

(declare-fun m!353535 () Bool)

(assert (=> start!35442 m!353535))

(declare-fun m!353537 () Bool)

(assert (=> start!35442 m!353537))

(declare-fun m!353539 () Bool)

(assert (=> b!354574 m!353539))

(assert (=> b!354574 m!353521))

(assert (=> b!354574 m!353539))

(assert (=> b!354574 m!353521))

(declare-fun m!353541 () Bool)

(assert (=> b!354574 m!353541))

(declare-fun m!353543 () Bool)

(assert (=> b!354574 m!353543))

(check-sat (not b!354579) (not b!354578) (not b!354580) tp_is_empty!7887 (not mapNonEmpty!13338) b_and!15081 (not b!354573) (not b!354582) (not start!35442) (not b!354574) (not b_next!7821))
(check-sat b_and!15081 (not b_next!7821))
