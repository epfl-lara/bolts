; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35430 () Bool)

(assert start!35430)

(declare-fun mapNonEmpty!13320 () Bool)

(declare-fun mapRes!13320 () Bool)

(declare-fun tp!27216 () Bool)

(declare-fun e!217250 () Bool)

(assert (=> mapNonEmpty!13320 (= mapRes!13320 (and tp!27216 e!217250))))

(declare-fun mapKey!13320 () (_ BitVec 32))

(declare-datatypes ((V!11477 0))(
  ( (V!11478 (val!3982 Int)) )
))
(declare-datatypes ((ValueCell!3594 0))(
  ( (ValueCellFull!3594 (v!6172 V!11477)) (EmptyCell!3594) )
))
(declare-fun mapRest!13320 () (Array (_ BitVec 32) ValueCell!3594))

(declare-datatypes ((array!19301 0))(
  ( (array!19302 (arr!9141 (Array (_ BitVec 32) ValueCell!3594)) (size!9493 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19301)

(declare-fun mapValue!13320 () ValueCell!3594)

(assert (=> mapNonEmpty!13320 (= (arr!9141 _values!1208) (store mapRest!13320 mapKey!13320 mapValue!13320))))

(declare-fun res!196507 () Bool)

(declare-fun e!217247 () Bool)

(assert (=> start!35430 (=> (not res!196507) (not e!217247))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35430 (= res!196507 (validMask!0 mask!1842))))

(assert (=> start!35430 e!217247))

(assert (=> start!35430 true))

(declare-fun e!217248 () Bool)

(declare-fun array_inv!6730 (array!19301) Bool)

(assert (=> start!35430 (and (array_inv!6730 _values!1208) e!217248)))

(declare-datatypes ((array!19303 0))(
  ( (array!19304 (arr!9142 (Array (_ BitVec 32) (_ BitVec 64))) (size!9494 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19303)

(declare-fun array_inv!6731 (array!19303) Bool)

(assert (=> start!35430 (array_inv!6731 _keys!1456)))

(declare-fun b!354381 () Bool)

(declare-fun res!196506 () Bool)

(assert (=> b!354381 (=> (not res!196506) (not e!217247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19303 (_ BitVec 32)) Bool)

(assert (=> b!354381 (= res!196506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354382 () Bool)

(assert (=> b!354382 (= e!217247 false)))

(declare-fun lt!165688 () Bool)

(declare-datatypes ((List!5322 0))(
  ( (Nil!5319) (Cons!5318 (h!6174 (_ BitVec 64)) (t!10480 List!5322)) )
))
(declare-fun arrayNoDuplicates!0 (array!19303 (_ BitVec 32) List!5322) Bool)

(assert (=> b!354382 (= lt!165688 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5319))))

(declare-fun b!354383 () Bool)

(declare-fun res!196505 () Bool)

(assert (=> b!354383 (=> (not res!196505) (not e!217247))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354383 (= res!196505 (and (= (size!9493 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9494 _keys!1456) (size!9493 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354384 () Bool)

(declare-fun e!217249 () Bool)

(assert (=> b!354384 (= e!217248 (and e!217249 mapRes!13320))))

(declare-fun condMapEmpty!13320 () Bool)

(declare-fun mapDefault!13320 () ValueCell!3594)

(assert (=> b!354384 (= condMapEmpty!13320 (= (arr!9141 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3594)) mapDefault!13320)))))

(declare-fun b!354385 () Bool)

(declare-fun tp_is_empty!7875 () Bool)

(assert (=> b!354385 (= e!217250 tp_is_empty!7875)))

(declare-fun b!354386 () Bool)

(assert (=> b!354386 (= e!217249 tp_is_empty!7875)))

(declare-fun mapIsEmpty!13320 () Bool)

(assert (=> mapIsEmpty!13320 mapRes!13320))

(assert (= (and start!35430 res!196507) b!354383))

(assert (= (and b!354383 res!196505) b!354381))

(assert (= (and b!354381 res!196506) b!354382))

(assert (= (and b!354384 condMapEmpty!13320) mapIsEmpty!13320))

(assert (= (and b!354384 (not condMapEmpty!13320)) mapNonEmpty!13320))

(get-info :version)

(assert (= (and mapNonEmpty!13320 ((_ is ValueCellFull!3594) mapValue!13320)) b!354385))

(assert (= (and b!354384 ((_ is ValueCellFull!3594) mapDefault!13320)) b!354386))

(assert (= start!35430 b!354384))

(declare-fun m!353391 () Bool)

(assert (=> mapNonEmpty!13320 m!353391))

(declare-fun m!353393 () Bool)

(assert (=> start!35430 m!353393))

(declare-fun m!353395 () Bool)

(assert (=> start!35430 m!353395))

(declare-fun m!353397 () Bool)

(assert (=> start!35430 m!353397))

(declare-fun m!353399 () Bool)

(assert (=> b!354381 m!353399))

(declare-fun m!353401 () Bool)

(assert (=> b!354382 m!353401))

(check-sat (not b!354382) (not mapNonEmpty!13320) tp_is_empty!7875 (not start!35430) (not b!354381))
(check-sat)
