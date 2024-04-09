; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!912 () Bool)

(assert start!912)

(declare-fun b_free!285 () Bool)

(declare-fun b_next!285 () Bool)

(assert (=> start!912 (= b_free!285 (not b_next!285))))

(declare-fun tp!1087 () Bool)

(declare-fun b_and!433 () Bool)

(assert (=> start!912 (= tp!1087 b_and!433)))

(declare-fun b!7638 () Bool)

(declare-fun e!4276 () Bool)

(declare-fun e!4274 () Bool)

(declare-fun mapRes!518 () Bool)

(assert (=> b!7638 (= e!4276 (and e!4274 mapRes!518))))

(declare-fun condMapEmpty!518 () Bool)

(declare-datatypes ((V!661 0))(
  ( (V!662 (val!187 Int)) )
))
(declare-datatypes ((ValueCell!165 0))(
  ( (ValueCellFull!165 (v!1279 V!661)) (EmptyCell!165) )
))
(declare-datatypes ((array!659 0))(
  ( (array!660 (arr!317 (Array (_ BitVec 32) ValueCell!165)) (size!379 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!659)

(declare-fun mapDefault!518 () ValueCell!165)

(assert (=> b!7638 (= condMapEmpty!518 (= (arr!317 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!165)) mapDefault!518)))))

(declare-fun b!7639 () Bool)

(declare-fun e!4275 () Bool)

(assert (=> b!7639 (= e!4275 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!661)

(declare-datatypes ((array!661 0))(
  ( (array!662 (arr!318 (Array (_ BitVec 32) (_ BitVec 64))) (size!380 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!661)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun lt!1566 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!661)

(declare-datatypes ((tuple2!198 0))(
  ( (tuple2!199 (_1!99 (_ BitVec 64)) (_2!99 V!661)) )
))
(declare-datatypes ((List!218 0))(
  ( (Nil!215) (Cons!214 (h!780 tuple2!198) (t!2355 List!218)) )
))
(declare-datatypes ((ListLongMap!203 0))(
  ( (ListLongMap!204 (toList!117 List!218)) )
))
(declare-fun contains!92 (ListLongMap!203 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!76 (array!661 array!659 (_ BitVec 32) (_ BitVec 32) V!661 V!661 (_ BitVec 32) Int) ListLongMap!203)

(assert (=> b!7639 (= lt!1566 (contains!92 (getCurrentListMap!76 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!7640 () Bool)

(declare-fun res!7522 () Bool)

(assert (=> b!7640 (=> (not res!7522) (not e!4275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!661 (_ BitVec 32)) Bool)

(assert (=> b!7640 (= res!7522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!518 () Bool)

(assert (=> mapIsEmpty!518 mapRes!518))

(declare-fun mapNonEmpty!518 () Bool)

(declare-fun tp!1088 () Bool)

(declare-fun e!4277 () Bool)

(assert (=> mapNonEmpty!518 (= mapRes!518 (and tp!1088 e!4277))))

(declare-fun mapRest!518 () (Array (_ BitVec 32) ValueCell!165))

(declare-fun mapValue!518 () ValueCell!165)

(declare-fun mapKey!518 () (_ BitVec 32))

(assert (=> mapNonEmpty!518 (= (arr!317 _values!1492) (store mapRest!518 mapKey!518 mapValue!518))))

(declare-fun res!7521 () Bool)

(assert (=> start!912 (=> (not res!7521) (not e!4275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!912 (= res!7521 (validMask!0 mask!2250))))

(assert (=> start!912 e!4275))

(assert (=> start!912 tp!1087))

(assert (=> start!912 true))

(declare-fun array_inv!237 (array!659) Bool)

(assert (=> start!912 (and (array_inv!237 _values!1492) e!4276)))

(declare-fun tp_is_empty!363 () Bool)

(assert (=> start!912 tp_is_empty!363))

(declare-fun array_inv!238 (array!661) Bool)

(assert (=> start!912 (array_inv!238 _keys!1806)))

(declare-fun b!7641 () Bool)

(declare-fun res!7520 () Bool)

(assert (=> b!7641 (=> (not res!7520) (not e!4275))))

(assert (=> b!7641 (= res!7520 (and (= (size!379 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!380 _keys!1806) (size!379 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7642 () Bool)

(assert (=> b!7642 (= e!4274 tp_is_empty!363)))

(declare-fun b!7643 () Bool)

(declare-fun res!7519 () Bool)

(assert (=> b!7643 (=> (not res!7519) (not e!4275))))

(declare-datatypes ((List!219 0))(
  ( (Nil!216) (Cons!215 (h!781 (_ BitVec 64)) (t!2356 List!219)) )
))
(declare-fun arrayNoDuplicates!0 (array!661 (_ BitVec 32) List!219) Bool)

(assert (=> b!7643 (= res!7519 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!216))))

(declare-fun b!7644 () Bool)

(assert (=> b!7644 (= e!4277 tp_is_empty!363)))

(assert (= (and start!912 res!7521) b!7641))

(assert (= (and b!7641 res!7520) b!7640))

(assert (= (and b!7640 res!7522) b!7643))

(assert (= (and b!7643 res!7519) b!7639))

(assert (= (and b!7638 condMapEmpty!518) mapIsEmpty!518))

(assert (= (and b!7638 (not condMapEmpty!518)) mapNonEmpty!518))

(get-info :version)

(assert (= (and mapNonEmpty!518 ((_ is ValueCellFull!165) mapValue!518)) b!7644))

(assert (= (and b!7638 ((_ is ValueCellFull!165) mapDefault!518)) b!7642))

(assert (= start!912 b!7638))

(declare-fun m!4629 () Bool)

(assert (=> b!7640 m!4629))

(declare-fun m!4631 () Bool)

(assert (=> start!912 m!4631))

(declare-fun m!4633 () Bool)

(assert (=> start!912 m!4633))

(declare-fun m!4635 () Bool)

(assert (=> start!912 m!4635))

(declare-fun m!4637 () Bool)

(assert (=> b!7643 m!4637))

(declare-fun m!4639 () Bool)

(assert (=> mapNonEmpty!518 m!4639))

(declare-fun m!4641 () Bool)

(assert (=> b!7639 m!4641))

(assert (=> b!7639 m!4641))

(declare-fun m!4643 () Bool)

(assert (=> b!7639 m!4643))

(check-sat tp_is_empty!363 (not b!7640) b_and!433 (not b!7643) (not b!7639) (not b_next!285) (not start!912) (not mapNonEmpty!518))
(check-sat b_and!433 (not b_next!285))
