; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35856 () Bool)

(assert start!35856)

(declare-fun b!360112 () Bool)

(declare-fun res!200326 () Bool)

(declare-fun e!220524 () Bool)

(assert (=> b!360112 (=> (not res!200326) (not e!220524))))

(declare-datatypes ((array!20123 0))(
  ( (array!20124 (arr!9552 (Array (_ BitVec 32) (_ BitVec 64))) (size!9904 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20123)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!360112 (= res!200326 (not (= (select (arr!9552 _keys!1456) from!1805) k0!1077)))))

(declare-fun res!200324 () Bool)

(assert (=> start!35856 (=> (not res!200324) (not e!220524))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35856 (= res!200324 (validMask!0 mask!1842))))

(assert (=> start!35856 e!220524))

(declare-fun tp_is_empty!8301 () Bool)

(assert (=> start!35856 tp_is_empty!8301))

(assert (=> start!35856 true))

(declare-fun array_inv!7026 (array!20123) Bool)

(assert (=> start!35856 (array_inv!7026 _keys!1456)))

(declare-datatypes ((V!12045 0))(
  ( (V!12046 (val!4195 Int)) )
))
(declare-datatypes ((ValueCell!3807 0))(
  ( (ValueCellFull!3807 (v!6385 V!12045)) (EmptyCell!3807) )
))
(declare-datatypes ((array!20125 0))(
  ( (array!20126 (arr!9553 (Array (_ BitVec 32) ValueCell!3807)) (size!9905 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20125)

(declare-fun e!220526 () Bool)

(declare-fun array_inv!7027 (array!20125) Bool)

(assert (=> start!35856 (and (array_inv!7027 _values!1208) e!220526)))

(declare-fun b!360113 () Bool)

(declare-fun res!200320 () Bool)

(assert (=> b!360113 (=> (not res!200320) (not e!220524))))

(declare-fun arrayContainsKey!0 (array!20123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360113 (= res!200320 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun mapNonEmpty!13959 () Bool)

(declare-fun mapRes!13959 () Bool)

(declare-fun tp!28026 () Bool)

(declare-fun e!220522 () Bool)

(assert (=> mapNonEmpty!13959 (= mapRes!13959 (and tp!28026 e!220522))))

(declare-fun mapValue!13959 () ValueCell!3807)

(declare-fun mapKey!13959 () (_ BitVec 32))

(declare-fun mapRest!13959 () (Array (_ BitVec 32) ValueCell!3807))

(assert (=> mapNonEmpty!13959 (= (arr!9553 _values!1208) (store mapRest!13959 mapKey!13959 mapValue!13959))))

(declare-fun b!360114 () Bool)

(declare-fun e!220523 () Bool)

(assert (=> b!360114 (= e!220523 tp_is_empty!8301)))

(declare-fun b!360115 () Bool)

(assert (=> b!360115 (= e!220522 tp_is_empty!8301)))

(declare-fun b!360116 () Bool)

(declare-fun res!200319 () Bool)

(assert (=> b!360116 (=> (not res!200319) (not e!220524))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!360116 (= res!200319 (and (= (size!9905 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9904 _keys!1456) (size!9905 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13959 () Bool)

(assert (=> mapIsEmpty!13959 mapRes!13959))

(declare-fun b!360117 () Bool)

(declare-fun res!200322 () Bool)

(assert (=> b!360117 (=> (not res!200322) (not e!220524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20123 (_ BitVec 32)) Bool)

(assert (=> b!360117 (= res!200322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360118 () Bool)

(assert (=> b!360118 (= e!220524 (not true))))

(assert (=> b!360118 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12045)

(declare-datatypes ((Unit!11073 0))(
  ( (Unit!11074) )
))
(declare-fun lt!166399 () Unit!11073)

(declare-fun zeroValue!1150 () V!12045)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!53 (array!20123 array!20125 (_ BitVec 32) (_ BitVec 32) V!12045 V!12045 (_ BitVec 64) (_ BitVec 32)) Unit!11073)

(assert (=> b!360118 (= lt!166399 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!53 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!360119 () Bool)

(declare-fun res!200321 () Bool)

(assert (=> b!360119 (=> (not res!200321) (not e!220524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360119 (= res!200321 (validKeyInArray!0 k0!1077))))

(declare-fun b!360120 () Bool)

(declare-fun res!200323 () Bool)

(assert (=> b!360120 (=> (not res!200323) (not e!220524))))

(assert (=> b!360120 (= res!200323 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9904 _keys!1456))))))

(declare-fun b!360121 () Bool)

(assert (=> b!360121 (= e!220526 (and e!220523 mapRes!13959))))

(declare-fun condMapEmpty!13959 () Bool)

(declare-fun mapDefault!13959 () ValueCell!3807)

(assert (=> b!360121 (= condMapEmpty!13959 (= (arr!9553 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3807)) mapDefault!13959)))))

(declare-fun b!360122 () Bool)

(declare-fun res!200325 () Bool)

(assert (=> b!360122 (=> (not res!200325) (not e!220524))))

(declare-datatypes ((List!5514 0))(
  ( (Nil!5511) (Cons!5510 (h!6366 (_ BitVec 64)) (t!10672 List!5514)) )
))
(declare-fun arrayNoDuplicates!0 (array!20123 (_ BitVec 32) List!5514) Bool)

(assert (=> b!360122 (= res!200325 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5511))))

(assert (= (and start!35856 res!200324) b!360116))

(assert (= (and b!360116 res!200319) b!360117))

(assert (= (and b!360117 res!200322) b!360122))

(assert (= (and b!360122 res!200325) b!360119))

(assert (= (and b!360119 res!200321) b!360120))

(assert (= (and b!360120 res!200323) b!360113))

(assert (= (and b!360113 res!200320) b!360112))

(assert (= (and b!360112 res!200326) b!360118))

(assert (= (and b!360121 condMapEmpty!13959) mapIsEmpty!13959))

(assert (= (and b!360121 (not condMapEmpty!13959)) mapNonEmpty!13959))

(get-info :version)

(assert (= (and mapNonEmpty!13959 ((_ is ValueCellFull!3807) mapValue!13959)) b!360115))

(assert (= (and b!360121 ((_ is ValueCellFull!3807) mapDefault!13959)) b!360114))

(assert (= start!35856 b!360121))

(declare-fun m!357361 () Bool)

(assert (=> b!360118 m!357361))

(declare-fun m!357363 () Bool)

(assert (=> b!360118 m!357363))

(declare-fun m!357365 () Bool)

(assert (=> b!360119 m!357365))

(declare-fun m!357367 () Bool)

(assert (=> b!360122 m!357367))

(declare-fun m!357369 () Bool)

(assert (=> b!360117 m!357369))

(declare-fun m!357371 () Bool)

(assert (=> b!360112 m!357371))

(declare-fun m!357373 () Bool)

(assert (=> mapNonEmpty!13959 m!357373))

(declare-fun m!357375 () Bool)

(assert (=> start!35856 m!357375))

(declare-fun m!357377 () Bool)

(assert (=> start!35856 m!357377))

(declare-fun m!357379 () Bool)

(assert (=> start!35856 m!357379))

(declare-fun m!357381 () Bool)

(assert (=> b!360113 m!357381))

(check-sat (not b!360118) (not mapNonEmpty!13959) (not start!35856) (not b!360117) (not b!360113) (not b!360119) tp_is_empty!8301 (not b!360122))
(check-sat)
