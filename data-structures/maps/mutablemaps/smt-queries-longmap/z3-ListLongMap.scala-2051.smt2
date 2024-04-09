; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35484 () Bool)

(assert start!35484)

(declare-fun b_free!7863 () Bool)

(declare-fun b_next!7863 () Bool)

(assert (=> start!35484 (= b_free!7863 (not b_next!7863))))

(declare-fun tp!27375 () Bool)

(declare-fun b_and!15123 () Bool)

(assert (=> start!35484 (= tp!27375 b_and!15123)))

(declare-fun b!355329 () Bool)

(declare-fun e!217655 () Bool)

(declare-fun tp_is_empty!7929 () Bool)

(assert (=> b!355329 (= e!217655 tp_is_empty!7929)))

(declare-fun b!355330 () Bool)

(declare-fun res!197216 () Bool)

(declare-fun e!217653 () Bool)

(assert (=> b!355330 (=> (not res!197216) (not e!217653))))

(declare-datatypes ((array!19405 0))(
  ( (array!19406 (arr!9193 (Array (_ BitVec 32) (_ BitVec 64))) (size!9545 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19405)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!355330 (= res!197216 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun mapNonEmpty!13401 () Bool)

(declare-fun mapRes!13401 () Bool)

(declare-fun tp!27374 () Bool)

(assert (=> mapNonEmpty!13401 (= mapRes!13401 (and tp!27374 e!217655))))

(declare-datatypes ((V!11549 0))(
  ( (V!11550 (val!4009 Int)) )
))
(declare-datatypes ((ValueCell!3621 0))(
  ( (ValueCellFull!3621 (v!6199 V!11549)) (EmptyCell!3621) )
))
(declare-fun mapValue!13401 () ValueCell!3621)

(declare-fun mapRest!13401 () (Array (_ BitVec 32) ValueCell!3621))

(declare-fun mapKey!13401 () (_ BitVec 32))

(declare-datatypes ((array!19407 0))(
  ( (array!19408 (arr!9194 (Array (_ BitVec 32) ValueCell!3621)) (size!9546 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19407)

(assert (=> mapNonEmpty!13401 (= (arr!9194 _values!1208) (store mapRest!13401 mapKey!13401 mapValue!13401))))

(declare-fun b!355331 () Bool)

(declare-fun res!197212 () Bool)

(assert (=> b!355331 (=> (not res!197212) (not e!217653))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19405 (_ BitVec 32)) Bool)

(assert (=> b!355331 (= res!197212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355333 () Bool)

(declare-fun e!217654 () Bool)

(declare-fun e!217651 () Bool)

(assert (=> b!355333 (= e!217654 (and e!217651 mapRes!13401))))

(declare-fun condMapEmpty!13401 () Bool)

(declare-fun mapDefault!13401 () ValueCell!3621)

(assert (=> b!355333 (= condMapEmpty!13401 (= (arr!9194 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3621)) mapDefault!13401)))))

(declare-fun b!355334 () Bool)

(declare-fun res!197215 () Bool)

(assert (=> b!355334 (=> (not res!197215) (not e!217653))))

(declare-datatypes ((List!5357 0))(
  ( (Nil!5354) (Cons!5353 (h!6209 (_ BitVec 64)) (t!10515 List!5357)) )
))
(declare-fun arrayNoDuplicates!0 (array!19405 (_ BitVec 32) List!5357) Bool)

(assert (=> b!355334 (= res!197215 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5354))))

(declare-fun b!355335 () Bool)

(assert (=> b!355335 (= e!217653 (not (bvsle #b00000000000000000000000000000000 (size!9545 _keys!1456))))))

(declare-fun minValue!1150 () V!11549)

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11549)

(declare-datatypes ((tuple2!5692 0))(
  ( (tuple2!5693 (_1!2856 (_ BitVec 64)) (_2!2856 V!11549)) )
))
(declare-datatypes ((List!5358 0))(
  ( (Nil!5355) (Cons!5354 (h!6210 tuple2!5692) (t!10516 List!5358)) )
))
(declare-datatypes ((ListLongMap!4619 0))(
  ( (ListLongMap!4620 (toList!2325 List!5358)) )
))
(declare-fun contains!2401 (ListLongMap!4619 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1842 (array!19405 array!19407 (_ BitVec 32) (_ BitVec 32) V!11549 V!11549 (_ BitVec 32) Int) ListLongMap!4619)

(assert (=> b!355335 (contains!2401 (getCurrentListMap!1842 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9193 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10959 0))(
  ( (Unit!10960) )
))
(declare-fun lt!165769 () Unit!10959)

(declare-fun lemmaValidKeyInArrayIsInListMap!192 (array!19405 array!19407 (_ BitVec 32) (_ BitVec 32) V!11549 V!11549 (_ BitVec 32) Int) Unit!10959)

(assert (=> b!355335 (= lt!165769 (lemmaValidKeyInArrayIsInListMap!192 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!355336 () Bool)

(assert (=> b!355336 (= e!217651 tp_is_empty!7929)))

(declare-fun mapIsEmpty!13401 () Bool)

(assert (=> mapIsEmpty!13401 mapRes!13401))

(declare-fun b!355337 () Bool)

(declare-fun res!197214 () Bool)

(assert (=> b!355337 (=> (not res!197214) (not e!217653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!355337 (= res!197214 (validKeyInArray!0 (select (arr!9193 _keys!1456) from!1805)))))

(declare-fun b!355338 () Bool)

(declare-fun res!197211 () Bool)

(assert (=> b!355338 (=> (not res!197211) (not e!217653))))

(assert (=> b!355338 (= res!197211 (= (select (arr!9193 _keys!1456) from!1805) k0!1077))))

(declare-fun res!197218 () Bool)

(assert (=> start!35484 (=> (not res!197218) (not e!217653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35484 (= res!197218 (validMask!0 mask!1842))))

(assert (=> start!35484 e!217653))

(assert (=> start!35484 tp_is_empty!7929))

(assert (=> start!35484 true))

(assert (=> start!35484 tp!27375))

(declare-fun array_inv!6770 (array!19405) Bool)

(assert (=> start!35484 (array_inv!6770 _keys!1456)))

(declare-fun array_inv!6771 (array!19407) Bool)

(assert (=> start!35484 (and (array_inv!6771 _values!1208) e!217654)))

(declare-fun b!355332 () Bool)

(declare-fun res!197213 () Bool)

(assert (=> b!355332 (=> (not res!197213) (not e!217653))))

(assert (=> b!355332 (= res!197213 (and (= (size!9546 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9545 _keys!1456) (size!9546 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355339 () Bool)

(declare-fun res!197217 () Bool)

(assert (=> b!355339 (=> (not res!197217) (not e!217653))))

(assert (=> b!355339 (= res!197217 (validKeyInArray!0 k0!1077))))

(declare-fun b!355340 () Bool)

(declare-fun res!197210 () Bool)

(assert (=> b!355340 (=> (not res!197210) (not e!217653))))

(assert (=> b!355340 (= res!197210 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9545 _keys!1456))))))

(assert (= (and start!35484 res!197218) b!355332))

(assert (= (and b!355332 res!197213) b!355331))

(assert (= (and b!355331 res!197212) b!355334))

(assert (= (and b!355334 res!197215) b!355339))

(assert (= (and b!355339 res!197217) b!355340))

(assert (= (and b!355340 res!197210) b!355330))

(assert (= (and b!355330 res!197216) b!355338))

(assert (= (and b!355338 res!197211) b!355337))

(assert (= (and b!355337 res!197214) b!355335))

(assert (= (and b!355333 condMapEmpty!13401) mapIsEmpty!13401))

(assert (= (and b!355333 (not condMapEmpty!13401)) mapNonEmpty!13401))

(get-info :version)

(assert (= (and mapNonEmpty!13401 ((_ is ValueCellFull!3621) mapValue!13401)) b!355329))

(assert (= (and b!355333 ((_ is ValueCellFull!3621) mapDefault!13401)) b!355336))

(assert (= start!35484 b!355333))

(declare-fun m!354065 () Bool)

(assert (=> b!355337 m!354065))

(assert (=> b!355337 m!354065))

(declare-fun m!354067 () Bool)

(assert (=> b!355337 m!354067))

(declare-fun m!354069 () Bool)

(assert (=> b!355339 m!354069))

(declare-fun m!354071 () Bool)

(assert (=> b!355334 m!354071))

(assert (=> b!355338 m!354065))

(declare-fun m!354073 () Bool)

(assert (=> mapNonEmpty!13401 m!354073))

(declare-fun m!354075 () Bool)

(assert (=> start!35484 m!354075))

(declare-fun m!354077 () Bool)

(assert (=> start!35484 m!354077))

(declare-fun m!354079 () Bool)

(assert (=> start!35484 m!354079))

(declare-fun m!354081 () Bool)

(assert (=> b!355330 m!354081))

(declare-fun m!354083 () Bool)

(assert (=> b!355335 m!354083))

(assert (=> b!355335 m!354065))

(assert (=> b!355335 m!354083))

(assert (=> b!355335 m!354065))

(declare-fun m!354085 () Bool)

(assert (=> b!355335 m!354085))

(declare-fun m!354087 () Bool)

(assert (=> b!355335 m!354087))

(declare-fun m!354089 () Bool)

(assert (=> b!355331 m!354089))

(check-sat b_and!15123 (not b!355334) tp_is_empty!7929 (not mapNonEmpty!13401) (not b!355339) (not b!355335) (not b!355337) (not b!355331) (not start!35484) (not b!355330) (not b_next!7863))
(check-sat b_and!15123 (not b_next!7863))
