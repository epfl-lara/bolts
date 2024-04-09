; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35418 () Bool)

(assert start!35418)

(declare-fun b!354273 () Bool)

(declare-fun res!196452 () Bool)

(declare-fun e!217157 () Bool)

(assert (=> b!354273 (=> (not res!196452) (not e!217157))))

(declare-datatypes ((array!19281 0))(
  ( (array!19282 (arr!9131 (Array (_ BitVec 32) (_ BitVec 64))) (size!9483 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19281)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19281 (_ BitVec 32)) Bool)

(assert (=> b!354273 (= res!196452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354274 () Bool)

(declare-fun e!217156 () Bool)

(declare-fun tp_is_empty!7863 () Bool)

(assert (=> b!354274 (= e!217156 tp_is_empty!7863)))

(declare-fun b!354275 () Bool)

(declare-fun e!217158 () Bool)

(assert (=> b!354275 (= e!217158 tp_is_empty!7863)))

(declare-fun res!196451 () Bool)

(assert (=> start!35418 (=> (not res!196451) (not e!217157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35418 (= res!196451 (validMask!0 mask!1842))))

(assert (=> start!35418 e!217157))

(assert (=> start!35418 true))

(declare-datatypes ((V!11461 0))(
  ( (V!11462 (val!3976 Int)) )
))
(declare-datatypes ((ValueCell!3588 0))(
  ( (ValueCellFull!3588 (v!6166 V!11461)) (EmptyCell!3588) )
))
(declare-datatypes ((array!19283 0))(
  ( (array!19284 (arr!9132 (Array (_ BitVec 32) ValueCell!3588)) (size!9484 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19283)

(declare-fun e!217159 () Bool)

(declare-fun array_inv!6722 (array!19283) Bool)

(assert (=> start!35418 (and (array_inv!6722 _values!1208) e!217159)))

(declare-fun array_inv!6723 (array!19281) Bool)

(assert (=> start!35418 (array_inv!6723 _keys!1456)))

(declare-fun b!354276 () Bool)

(declare-fun mapRes!13302 () Bool)

(assert (=> b!354276 (= e!217159 (and e!217156 mapRes!13302))))

(declare-fun condMapEmpty!13302 () Bool)

(declare-fun mapDefault!13302 () ValueCell!3588)

(assert (=> b!354276 (= condMapEmpty!13302 (= (arr!9132 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3588)) mapDefault!13302)))))

(declare-fun mapNonEmpty!13302 () Bool)

(declare-fun tp!27198 () Bool)

(assert (=> mapNonEmpty!13302 (= mapRes!13302 (and tp!27198 e!217158))))

(declare-fun mapValue!13302 () ValueCell!3588)

(declare-fun mapKey!13302 () (_ BitVec 32))

(declare-fun mapRest!13302 () (Array (_ BitVec 32) ValueCell!3588))

(assert (=> mapNonEmpty!13302 (= (arr!9132 _values!1208) (store mapRest!13302 mapKey!13302 mapValue!13302))))

(declare-fun b!354277 () Bool)

(assert (=> b!354277 (= e!217157 false)))

(declare-fun lt!165670 () Bool)

(declare-datatypes ((List!5319 0))(
  ( (Nil!5316) (Cons!5315 (h!6171 (_ BitVec 64)) (t!10477 List!5319)) )
))
(declare-fun arrayNoDuplicates!0 (array!19281 (_ BitVec 32) List!5319) Bool)

(assert (=> b!354277 (= lt!165670 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5316))))

(declare-fun mapIsEmpty!13302 () Bool)

(assert (=> mapIsEmpty!13302 mapRes!13302))

(declare-fun b!354278 () Bool)

(declare-fun res!196453 () Bool)

(assert (=> b!354278 (=> (not res!196453) (not e!217157))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354278 (= res!196453 (and (= (size!9484 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9483 _keys!1456) (size!9484 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(assert (= (and start!35418 res!196451) b!354278))

(assert (= (and b!354278 res!196453) b!354273))

(assert (= (and b!354273 res!196452) b!354277))

(assert (= (and b!354276 condMapEmpty!13302) mapIsEmpty!13302))

(assert (= (and b!354276 (not condMapEmpty!13302)) mapNonEmpty!13302))

(get-info :version)

(assert (= (and mapNonEmpty!13302 ((_ is ValueCellFull!3588) mapValue!13302)) b!354275))

(assert (= (and b!354276 ((_ is ValueCellFull!3588) mapDefault!13302)) b!354274))

(assert (= start!35418 b!354276))

(declare-fun m!353319 () Bool)

(assert (=> b!354273 m!353319))

(declare-fun m!353321 () Bool)

(assert (=> start!35418 m!353321))

(declare-fun m!353323 () Bool)

(assert (=> start!35418 m!353323))

(declare-fun m!353325 () Bool)

(assert (=> start!35418 m!353325))

(declare-fun m!353327 () Bool)

(assert (=> mapNonEmpty!13302 m!353327))

(declare-fun m!353329 () Bool)

(assert (=> b!354277 m!353329))

(check-sat (not mapNonEmpty!13302) tp_is_empty!7863 (not start!35418) (not b!354273) (not b!354277))
(check-sat)
