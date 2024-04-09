; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35622 () Bool)

(assert start!35622)

(declare-fun b_free!7869 () Bool)

(declare-fun b_next!7869 () Bool)

(assert (=> start!35622 (= b_free!7869 (not b_next!7869))))

(declare-fun tp!27590 () Bool)

(declare-fun b_and!15129 () Bool)

(assert (=> start!35622 (= tp!27590 b_and!15129)))

(declare-fun b!357120 () Bool)

(declare-fun res!198386 () Bool)

(declare-fun e!218696 () Bool)

(assert (=> b!357120 (=> (not res!198386) (not e!218696))))

(declare-datatypes ((array!19669 0))(
  ( (array!19670 (arr!9325 (Array (_ BitVec 32) (_ BitVec 64))) (size!9677 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19669)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!357120 (= res!198386 (not (= (select (arr!9325 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!357121 () Bool)

(declare-fun res!198384 () Bool)

(assert (=> b!357121 (=> (not res!198384) (not e!218696))))

(assert (=> b!357121 (= res!198384 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9677 _keys!1456))))))

(declare-fun b!357122 () Bool)

(declare-fun e!218694 () Bool)

(declare-fun tp_is_empty!8067 () Bool)

(assert (=> b!357122 (= e!218694 tp_is_empty!8067)))

(declare-fun b!357124 () Bool)

(declare-fun e!218693 () Bool)

(assert (=> b!357124 (= e!218696 (not e!218693))))

(declare-fun res!198381 () Bool)

(assert (=> b!357124 (=> res!198381 e!218693)))

(assert (=> b!357124 (= res!198381 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9677 _keys!1456))))))

(declare-fun arrayContainsKey!0 (array!19669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357124 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11733 0))(
  ( (V!11734 (val!4078 Int)) )
))
(declare-fun minValue!1150 () V!11733)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11733)

(declare-datatypes ((ValueCell!3690 0))(
  ( (ValueCellFull!3690 (v!6268 V!11733)) (EmptyCell!3690) )
))
(declare-datatypes ((array!19671 0))(
  ( (array!19672 (arr!9326 (Array (_ BitVec 32) ValueCell!3690)) (size!9678 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19671)

(declare-datatypes ((Unit!11005 0))(
  ( (Unit!11006) )
))
(declare-fun lt!165981 () Unit!11005)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!23 (array!19669 array!19671 (_ BitVec 32) (_ BitVec 32) V!11733 V!11733 (_ BitVec 64) (_ BitVec 32)) Unit!11005)

(assert (=> b!357124 (= lt!165981 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!23 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!357125 () Bool)

(declare-fun e!218691 () Bool)

(declare-fun e!218695 () Bool)

(declare-fun mapRes!13608 () Bool)

(assert (=> b!357125 (= e!218691 (and e!218695 mapRes!13608))))

(declare-fun condMapEmpty!13608 () Bool)

(declare-fun mapDefault!13608 () ValueCell!3690)

(assert (=> b!357125 (= condMapEmpty!13608 (= (arr!9326 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3690)) mapDefault!13608)))))

(declare-fun b!357126 () Bool)

(assert (=> b!357126 (= e!218693 true)))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((tuple2!5694 0))(
  ( (tuple2!5695 (_1!2857 (_ BitVec 64)) (_2!2857 V!11733)) )
))
(declare-datatypes ((List!5410 0))(
  ( (Nil!5407) (Cons!5406 (h!6262 tuple2!5694) (t!10568 List!5410)) )
))
(declare-datatypes ((ListLongMap!4621 0))(
  ( (ListLongMap!4622 (toList!2326 List!5410)) )
))
(declare-fun contains!2402 (ListLongMap!4621 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1843 (array!19669 array!19671 (_ BitVec 32) (_ BitVec 32) V!11733 V!11733 (_ BitVec 32) Int) ListLongMap!4621)

(assert (=> b!357126 (contains!2402 (getCurrentListMap!1843 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-fun lt!165982 () Unit!11005)

(declare-fun lemmaArrayContainsKeyThenInListMap!336 (array!19669 array!19671 (_ BitVec 32) (_ BitVec 32) V!11733 V!11733 (_ BitVec 64) (_ BitVec 32) Int) Unit!11005)

(assert (=> b!357126 (= lt!165982 (lemmaArrayContainsKeyThenInListMap!336 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357127 () Bool)

(declare-fun res!198388 () Bool)

(assert (=> b!357127 (=> (not res!198388) (not e!218696))))

(assert (=> b!357127 (= res!198388 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!357128 () Bool)

(declare-fun res!198382 () Bool)

(assert (=> b!357128 (=> (not res!198382) (not e!218696))))

(declare-datatypes ((List!5411 0))(
  ( (Nil!5408) (Cons!5407 (h!6263 (_ BitVec 64)) (t!10569 List!5411)) )
))
(declare-fun arrayNoDuplicates!0 (array!19669 (_ BitVec 32) List!5411) Bool)

(assert (=> b!357128 (= res!198382 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5408))))

(declare-fun mapNonEmpty!13608 () Bool)

(declare-fun tp!27591 () Bool)

(assert (=> mapNonEmpty!13608 (= mapRes!13608 (and tp!27591 e!218694))))

(declare-fun mapRest!13608 () (Array (_ BitVec 32) ValueCell!3690))

(declare-fun mapKey!13608 () (_ BitVec 32))

(declare-fun mapValue!13608 () ValueCell!3690)

(assert (=> mapNonEmpty!13608 (= (arr!9326 _values!1208) (store mapRest!13608 mapKey!13608 mapValue!13608))))

(declare-fun b!357129 () Bool)

(declare-fun res!198385 () Bool)

(assert (=> b!357129 (=> (not res!198385) (not e!218696))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357129 (= res!198385 (validKeyInArray!0 k0!1077))))

(declare-fun mapIsEmpty!13608 () Bool)

(assert (=> mapIsEmpty!13608 mapRes!13608))

(declare-fun res!198387 () Bool)

(assert (=> start!35622 (=> (not res!198387) (not e!218696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35622 (= res!198387 (validMask!0 mask!1842))))

(assert (=> start!35622 e!218696))

(assert (=> start!35622 tp_is_empty!8067))

(assert (=> start!35622 true))

(assert (=> start!35622 tp!27590))

(declare-fun array_inv!6860 (array!19669) Bool)

(assert (=> start!35622 (array_inv!6860 _keys!1456)))

(declare-fun array_inv!6861 (array!19671) Bool)

(assert (=> start!35622 (and (array_inv!6861 _values!1208) e!218691)))

(declare-fun b!357123 () Bool)

(declare-fun res!198383 () Bool)

(assert (=> b!357123 (=> (not res!198383) (not e!218696))))

(assert (=> b!357123 (= res!198383 (and (= (size!9678 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9677 _keys!1456) (size!9678 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357130 () Bool)

(assert (=> b!357130 (= e!218695 tp_is_empty!8067)))

(declare-fun b!357131 () Bool)

(declare-fun res!198380 () Bool)

(assert (=> b!357131 (=> (not res!198380) (not e!218696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19669 (_ BitVec 32)) Bool)

(assert (=> b!357131 (= res!198380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(assert (= (and start!35622 res!198387) b!357123))

(assert (= (and b!357123 res!198383) b!357131))

(assert (= (and b!357131 res!198380) b!357128))

(assert (= (and b!357128 res!198382) b!357129))

(assert (= (and b!357129 res!198385) b!357121))

(assert (= (and b!357121 res!198384) b!357127))

(assert (= (and b!357127 res!198388) b!357120))

(assert (= (and b!357120 res!198386) b!357124))

(assert (= (and b!357124 (not res!198381)) b!357126))

(assert (= (and b!357125 condMapEmpty!13608) mapIsEmpty!13608))

(assert (= (and b!357125 (not condMapEmpty!13608)) mapNonEmpty!13608))

(get-info :version)

(assert (= (and mapNonEmpty!13608 ((_ is ValueCellFull!3690) mapValue!13608)) b!357122))

(assert (= (and b!357125 ((_ is ValueCellFull!3690) mapDefault!13608)) b!357130))

(assert (= start!35622 b!357125))

(declare-fun m!355267 () Bool)

(assert (=> b!357129 m!355267))

(declare-fun m!355269 () Bool)

(assert (=> b!357128 m!355269))

(declare-fun m!355271 () Bool)

(assert (=> mapNonEmpty!13608 m!355271))

(declare-fun m!355273 () Bool)

(assert (=> start!35622 m!355273))

(declare-fun m!355275 () Bool)

(assert (=> start!35622 m!355275))

(declare-fun m!355277 () Bool)

(assert (=> start!35622 m!355277))

(declare-fun m!355279 () Bool)

(assert (=> b!357126 m!355279))

(assert (=> b!357126 m!355279))

(declare-fun m!355281 () Bool)

(assert (=> b!357126 m!355281))

(declare-fun m!355283 () Bool)

(assert (=> b!357126 m!355283))

(declare-fun m!355285 () Bool)

(assert (=> b!357124 m!355285))

(declare-fun m!355287 () Bool)

(assert (=> b!357124 m!355287))

(declare-fun m!355289 () Bool)

(assert (=> b!357120 m!355289))

(declare-fun m!355291 () Bool)

(assert (=> b!357127 m!355291))

(declare-fun m!355293 () Bool)

(assert (=> b!357131 m!355293))

(check-sat (not b!357124) (not b_next!7869) (not b!357126) (not b!357129) (not b!357127) tp_is_empty!8067 (not mapNonEmpty!13608) b_and!15129 (not b!357131) (not start!35622) (not b!357128))
(check-sat b_and!15129 (not b_next!7869))
