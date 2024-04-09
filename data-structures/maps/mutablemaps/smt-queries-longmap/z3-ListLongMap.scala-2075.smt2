; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35628 () Bool)

(assert start!35628)

(declare-fun b_free!7875 () Bool)

(declare-fun b_next!7875 () Bool)

(assert (=> start!35628 (= b_free!7875 (not b_next!7875))))

(declare-fun tp!27608 () Bool)

(declare-fun b_and!15135 () Bool)

(assert (=> start!35628 (= tp!27608 b_and!15135)))

(declare-fun b!357228 () Bool)

(declare-fun e!218748 () Bool)

(declare-fun e!218746 () Bool)

(assert (=> b!357228 (= e!218748 (not e!218746))))

(declare-fun res!198468 () Bool)

(assert (=> b!357228 (=> res!198468 e!218746)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19681 0))(
  ( (array!19682 (arr!9331 (Array (_ BitVec 32) (_ BitVec 64))) (size!9683 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19681)

(assert (=> b!357228 (= res!198468 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9683 _keys!1456))))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357228 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((Unit!11011 0))(
  ( (Unit!11012) )
))
(declare-fun lt!165999 () Unit!11011)

(declare-datatypes ((V!11741 0))(
  ( (V!11742 (val!4081 Int)) )
))
(declare-fun minValue!1150 () V!11741)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((ValueCell!3693 0))(
  ( (ValueCellFull!3693 (v!6271 V!11741)) (EmptyCell!3693) )
))
(declare-datatypes ((array!19683 0))(
  ( (array!19684 (arr!9332 (Array (_ BitVec 32) ValueCell!3693)) (size!9684 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19683)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11741)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!26 (array!19681 array!19683 (_ BitVec 32) (_ BitVec 32) V!11741 V!11741 (_ BitVec 64) (_ BitVec 32)) Unit!11011)

(assert (=> b!357228 (= lt!165999 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!26 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!357229 () Bool)

(declare-fun res!198467 () Bool)

(assert (=> b!357229 (=> (not res!198467) (not e!218748))))

(assert (=> b!357229 (= res!198467 (and (= (size!9684 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9683 _keys!1456) (size!9684 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357230 () Bool)

(declare-fun res!198463 () Bool)

(assert (=> b!357230 (=> (not res!198463) (not e!218748))))

(assert (=> b!357230 (= res!198463 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9683 _keys!1456))))))

(declare-fun b!357231 () Bool)

(declare-fun res!198466 () Bool)

(assert (=> b!357231 (=> (not res!198466) (not e!218748))))

(declare-datatypes ((List!5414 0))(
  ( (Nil!5411) (Cons!5410 (h!6266 (_ BitVec 64)) (t!10572 List!5414)) )
))
(declare-fun arrayNoDuplicates!0 (array!19681 (_ BitVec 32) List!5414) Bool)

(assert (=> b!357231 (= res!198466 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5411))))

(declare-fun b!357232 () Bool)

(declare-fun e!218749 () Bool)

(declare-fun tp_is_empty!8073 () Bool)

(assert (=> b!357232 (= e!218749 tp_is_empty!8073)))

(declare-fun res!198465 () Bool)

(assert (=> start!35628 (=> (not res!198465) (not e!218748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35628 (= res!198465 (validMask!0 mask!1842))))

(assert (=> start!35628 e!218748))

(assert (=> start!35628 tp_is_empty!8073))

(assert (=> start!35628 true))

(assert (=> start!35628 tp!27608))

(declare-fun array_inv!6866 (array!19681) Bool)

(assert (=> start!35628 (array_inv!6866 _keys!1456)))

(declare-fun e!218747 () Bool)

(declare-fun array_inv!6867 (array!19683) Bool)

(assert (=> start!35628 (and (array_inv!6867 _values!1208) e!218747)))

(declare-fun b!357233 () Bool)

(declare-fun e!218745 () Bool)

(assert (=> b!357233 (= e!218745 tp_is_empty!8073)))

(declare-fun b!357234 () Bool)

(declare-fun res!198462 () Bool)

(assert (=> b!357234 (=> (not res!198462) (not e!218748))))

(assert (=> b!357234 (= res!198462 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun mapIsEmpty!13617 () Bool)

(declare-fun mapRes!13617 () Bool)

(assert (=> mapIsEmpty!13617 mapRes!13617))

(declare-fun mapNonEmpty!13617 () Bool)

(declare-fun tp!27609 () Bool)

(assert (=> mapNonEmpty!13617 (= mapRes!13617 (and tp!27609 e!218749))))

(declare-fun mapRest!13617 () (Array (_ BitVec 32) ValueCell!3693))

(declare-fun mapValue!13617 () ValueCell!3693)

(declare-fun mapKey!13617 () (_ BitVec 32))

(assert (=> mapNonEmpty!13617 (= (arr!9332 _values!1208) (store mapRest!13617 mapKey!13617 mapValue!13617))))

(declare-fun b!357235 () Bool)

(assert (=> b!357235 (= e!218746 true)))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((tuple2!5698 0))(
  ( (tuple2!5699 (_1!2859 (_ BitVec 64)) (_2!2859 V!11741)) )
))
(declare-datatypes ((List!5415 0))(
  ( (Nil!5412) (Cons!5411 (h!6267 tuple2!5698) (t!10573 List!5415)) )
))
(declare-datatypes ((ListLongMap!4625 0))(
  ( (ListLongMap!4626 (toList!2328 List!5415)) )
))
(declare-fun contains!2404 (ListLongMap!4625 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1845 (array!19681 array!19683 (_ BitVec 32) (_ BitVec 32) V!11741 V!11741 (_ BitVec 32) Int) ListLongMap!4625)

(assert (=> b!357235 (contains!2404 (getCurrentListMap!1845 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-fun lt!166000 () Unit!11011)

(declare-fun lemmaArrayContainsKeyThenInListMap!338 (array!19681 array!19683 (_ BitVec 32) (_ BitVec 32) V!11741 V!11741 (_ BitVec 64) (_ BitVec 32) Int) Unit!11011)

(assert (=> b!357235 (= lt!166000 (lemmaArrayContainsKeyThenInListMap!338 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357236 () Bool)

(declare-fun res!198461 () Bool)

(assert (=> b!357236 (=> (not res!198461) (not e!218748))))

(assert (=> b!357236 (= res!198461 (not (= (select (arr!9331 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!357237 () Bool)

(declare-fun res!198469 () Bool)

(assert (=> b!357237 (=> (not res!198469) (not e!218748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357237 (= res!198469 (validKeyInArray!0 k0!1077))))

(declare-fun b!357238 () Bool)

(declare-fun res!198464 () Bool)

(assert (=> b!357238 (=> (not res!198464) (not e!218748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19681 (_ BitVec 32)) Bool)

(assert (=> b!357238 (= res!198464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357239 () Bool)

(assert (=> b!357239 (= e!218747 (and e!218745 mapRes!13617))))

(declare-fun condMapEmpty!13617 () Bool)

(declare-fun mapDefault!13617 () ValueCell!3693)

(assert (=> b!357239 (= condMapEmpty!13617 (= (arr!9332 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3693)) mapDefault!13617)))))

(assert (= (and start!35628 res!198465) b!357229))

(assert (= (and b!357229 res!198467) b!357238))

(assert (= (and b!357238 res!198464) b!357231))

(assert (= (and b!357231 res!198466) b!357237))

(assert (= (and b!357237 res!198469) b!357230))

(assert (= (and b!357230 res!198463) b!357234))

(assert (= (and b!357234 res!198462) b!357236))

(assert (= (and b!357236 res!198461) b!357228))

(assert (= (and b!357228 (not res!198468)) b!357235))

(assert (= (and b!357239 condMapEmpty!13617) mapIsEmpty!13617))

(assert (= (and b!357239 (not condMapEmpty!13617)) mapNonEmpty!13617))

(get-info :version)

(assert (= (and mapNonEmpty!13617 ((_ is ValueCellFull!3693) mapValue!13617)) b!357232))

(assert (= (and b!357239 ((_ is ValueCellFull!3693) mapDefault!13617)) b!357233))

(assert (= start!35628 b!357239))

(declare-fun m!355351 () Bool)

(assert (=> start!35628 m!355351))

(declare-fun m!355353 () Bool)

(assert (=> start!35628 m!355353))

(declare-fun m!355355 () Bool)

(assert (=> start!35628 m!355355))

(declare-fun m!355357 () Bool)

(assert (=> b!357231 m!355357))

(declare-fun m!355359 () Bool)

(assert (=> mapNonEmpty!13617 m!355359))

(declare-fun m!355361 () Bool)

(assert (=> b!357228 m!355361))

(declare-fun m!355363 () Bool)

(assert (=> b!357228 m!355363))

(declare-fun m!355365 () Bool)

(assert (=> b!357236 m!355365))

(declare-fun m!355367 () Bool)

(assert (=> b!357237 m!355367))

(declare-fun m!355369 () Bool)

(assert (=> b!357235 m!355369))

(assert (=> b!357235 m!355369))

(declare-fun m!355371 () Bool)

(assert (=> b!357235 m!355371))

(declare-fun m!355373 () Bool)

(assert (=> b!357235 m!355373))

(declare-fun m!355375 () Bool)

(assert (=> b!357238 m!355375))

(declare-fun m!355377 () Bool)

(assert (=> b!357234 m!355377))

(check-sat b_and!15135 (not b!357238) (not mapNonEmpty!13617) (not b!357228) tp_is_empty!8073 (not start!35628) (not b!357237) (not b!357234) (not b!357235) (not b_next!7875) (not b!357231))
(check-sat b_and!15135 (not b_next!7875))
