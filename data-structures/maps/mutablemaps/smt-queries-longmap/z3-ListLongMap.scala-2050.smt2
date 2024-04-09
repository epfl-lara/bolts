; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35478 () Bool)

(assert start!35478)

(declare-fun b_free!7857 () Bool)

(declare-fun b_next!7857 () Bool)

(assert (=> start!35478 (= b_free!7857 (not b_next!7857))))

(declare-fun tp!27356 () Bool)

(declare-fun b_and!15117 () Bool)

(assert (=> start!35478 (= tp!27356 b_and!15117)))

(declare-fun mapNonEmpty!13392 () Bool)

(declare-fun mapRes!13392 () Bool)

(declare-fun tp!27357 () Bool)

(declare-fun e!217608 () Bool)

(assert (=> mapNonEmpty!13392 (= mapRes!13392 (and tp!27357 e!217608))))

(declare-datatypes ((V!11541 0))(
  ( (V!11542 (val!4006 Int)) )
))
(declare-datatypes ((ValueCell!3618 0))(
  ( (ValueCellFull!3618 (v!6196 V!11541)) (EmptyCell!3618) )
))
(declare-fun mapValue!13392 () ValueCell!3618)

(declare-fun mapKey!13392 () (_ BitVec 32))

(declare-fun mapRest!13392 () (Array (_ BitVec 32) ValueCell!3618))

(declare-datatypes ((array!19393 0))(
  ( (array!19394 (arr!9187 (Array (_ BitVec 32) ValueCell!3618)) (size!9539 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19393)

(assert (=> mapNonEmpty!13392 (= (arr!9187 _values!1208) (store mapRest!13392 mapKey!13392 mapValue!13392))))

(declare-fun b!355222 () Bool)

(declare-fun res!197135 () Bool)

(declare-fun e!217610 () Bool)

(assert (=> b!355222 (=> (not res!197135) (not e!217610))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19395 0))(
  ( (array!19396 (arr!9188 (Array (_ BitVec 32) (_ BitVec 64))) (size!9540 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19395)

(assert (=> b!355222 (= res!197135 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9540 _keys!1456))))))

(declare-fun b!355223 () Bool)

(declare-fun e!217609 () Bool)

(declare-fun tp_is_empty!7923 () Bool)

(assert (=> b!355223 (= e!217609 tp_is_empty!7923)))

(declare-fun b!355224 () Bool)

(declare-fun res!197134 () Bool)

(assert (=> b!355224 (=> (not res!197134) (not e!217610))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!355224 (= res!197134 (validKeyInArray!0 k0!1077))))

(declare-fun b!355225 () Bool)

(declare-fun e!217607 () Bool)

(assert (=> b!355225 (= e!217607 (and e!217609 mapRes!13392))))

(declare-fun condMapEmpty!13392 () Bool)

(declare-fun mapDefault!13392 () ValueCell!3618)

(assert (=> b!355225 (= condMapEmpty!13392 (= (arr!9187 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3618)) mapDefault!13392)))))

(declare-fun b!355226 () Bool)

(declare-fun res!197133 () Bool)

(assert (=> b!355226 (=> (not res!197133) (not e!217610))))

(declare-fun arrayContainsKey!0 (array!19395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!355226 (= res!197133 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!355227 () Bool)

(assert (=> b!355227 (= e!217610 (not true))))

(declare-fun minValue!1150 () V!11541)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11541)

(declare-datatypes ((tuple2!5688 0))(
  ( (tuple2!5689 (_1!2854 (_ BitVec 64)) (_2!2854 V!11541)) )
))
(declare-datatypes ((List!5352 0))(
  ( (Nil!5349) (Cons!5348 (h!6204 tuple2!5688) (t!10510 List!5352)) )
))
(declare-datatypes ((ListLongMap!4615 0))(
  ( (ListLongMap!4616 (toList!2323 List!5352)) )
))
(declare-fun contains!2399 (ListLongMap!4615 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1840 (array!19395 array!19393 (_ BitVec 32) (_ BitVec 32) V!11541 V!11541 (_ BitVec 32) Int) ListLongMap!4615)

(assert (=> b!355227 (contains!2399 (getCurrentListMap!1840 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9188 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10955 0))(
  ( (Unit!10956) )
))
(declare-fun lt!165760 () Unit!10955)

(declare-fun lemmaValidKeyInArrayIsInListMap!190 (array!19395 array!19393 (_ BitVec 32) (_ BitVec 32) V!11541 V!11541 (_ BitVec 32) Int) Unit!10955)

(assert (=> b!355227 (= lt!165760 (lemmaValidKeyInArrayIsInListMap!190 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!355228 () Bool)

(declare-fun res!197129 () Bool)

(assert (=> b!355228 (=> (not res!197129) (not e!217610))))

(assert (=> b!355228 (= res!197129 (and (= (size!9539 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9540 _keys!1456) (size!9539 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355229 () Bool)

(assert (=> b!355229 (= e!217608 tp_is_empty!7923)))

(declare-fun mapIsEmpty!13392 () Bool)

(assert (=> mapIsEmpty!13392 mapRes!13392))

(declare-fun b!355230 () Bool)

(declare-fun res!197136 () Bool)

(assert (=> b!355230 (=> (not res!197136) (not e!217610))))

(declare-datatypes ((List!5353 0))(
  ( (Nil!5350) (Cons!5349 (h!6205 (_ BitVec 64)) (t!10511 List!5353)) )
))
(declare-fun arrayNoDuplicates!0 (array!19395 (_ BitVec 32) List!5353) Bool)

(assert (=> b!355230 (= res!197136 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5350))))

(declare-fun res!197130 () Bool)

(assert (=> start!35478 (=> (not res!197130) (not e!217610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35478 (= res!197130 (validMask!0 mask!1842))))

(assert (=> start!35478 e!217610))

(assert (=> start!35478 tp_is_empty!7923))

(assert (=> start!35478 true))

(assert (=> start!35478 tp!27356))

(declare-fun array_inv!6764 (array!19395) Bool)

(assert (=> start!35478 (array_inv!6764 _keys!1456)))

(declare-fun array_inv!6765 (array!19393) Bool)

(assert (=> start!35478 (and (array_inv!6765 _values!1208) e!217607)))

(declare-fun b!355221 () Bool)

(declare-fun res!197137 () Bool)

(assert (=> b!355221 (=> (not res!197137) (not e!217610))))

(assert (=> b!355221 (= res!197137 (= (select (arr!9188 _keys!1456) from!1805) k0!1077))))

(declare-fun b!355231 () Bool)

(declare-fun res!197131 () Bool)

(assert (=> b!355231 (=> (not res!197131) (not e!217610))))

(assert (=> b!355231 (= res!197131 (validKeyInArray!0 (select (arr!9188 _keys!1456) from!1805)))))

(declare-fun b!355232 () Bool)

(declare-fun res!197132 () Bool)

(assert (=> b!355232 (=> (not res!197132) (not e!217610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19395 (_ BitVec 32)) Bool)

(assert (=> b!355232 (= res!197132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(assert (= (and start!35478 res!197130) b!355228))

(assert (= (and b!355228 res!197129) b!355232))

(assert (= (and b!355232 res!197132) b!355230))

(assert (= (and b!355230 res!197136) b!355224))

(assert (= (and b!355224 res!197134) b!355222))

(assert (= (and b!355222 res!197135) b!355226))

(assert (= (and b!355226 res!197133) b!355221))

(assert (= (and b!355221 res!197137) b!355231))

(assert (= (and b!355231 res!197131) b!355227))

(assert (= (and b!355225 condMapEmpty!13392) mapIsEmpty!13392))

(assert (= (and b!355225 (not condMapEmpty!13392)) mapNonEmpty!13392))

(get-info :version)

(assert (= (and mapNonEmpty!13392 ((_ is ValueCellFull!3618) mapValue!13392)) b!355229))

(assert (= (and b!355225 ((_ is ValueCellFull!3618) mapDefault!13392)) b!355223))

(assert (= start!35478 b!355225))

(declare-fun m!353987 () Bool)

(assert (=> mapNonEmpty!13392 m!353987))

(declare-fun m!353989 () Bool)

(assert (=> b!355224 m!353989))

(declare-fun m!353991 () Bool)

(assert (=> start!35478 m!353991))

(declare-fun m!353993 () Bool)

(assert (=> start!35478 m!353993))

(declare-fun m!353995 () Bool)

(assert (=> start!35478 m!353995))

(declare-fun m!353997 () Bool)

(assert (=> b!355226 m!353997))

(declare-fun m!353999 () Bool)

(assert (=> b!355230 m!353999))

(declare-fun m!354001 () Bool)

(assert (=> b!355227 m!354001))

(declare-fun m!354003 () Bool)

(assert (=> b!355227 m!354003))

(assert (=> b!355227 m!354001))

(assert (=> b!355227 m!354003))

(declare-fun m!354005 () Bool)

(assert (=> b!355227 m!354005))

(declare-fun m!354007 () Bool)

(assert (=> b!355227 m!354007))

(assert (=> b!355221 m!354003))

(declare-fun m!354009 () Bool)

(assert (=> b!355232 m!354009))

(assert (=> b!355231 m!354003))

(assert (=> b!355231 m!354003))

(declare-fun m!354011 () Bool)

(assert (=> b!355231 m!354011))

(check-sat (not mapNonEmpty!13392) (not b!355232) (not b!355227) (not b!355226) (not b!355224) tp_is_empty!7923 (not b!355230) (not b!355231) (not start!35478) (not b_next!7857) b_and!15117)
(check-sat b_and!15117 (not b_next!7857))
