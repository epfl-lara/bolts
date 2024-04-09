; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35424 () Bool)

(assert start!35424)

(declare-fun b!354327 () Bool)

(declare-fun e!217205 () Bool)

(declare-fun tp_is_empty!7869 () Bool)

(assert (=> b!354327 (= e!217205 tp_is_empty!7869)))

(declare-fun b!354328 () Bool)

(declare-fun e!217202 () Bool)

(declare-fun e!217204 () Bool)

(declare-fun mapRes!13311 () Bool)

(assert (=> b!354328 (= e!217202 (and e!217204 mapRes!13311))))

(declare-fun condMapEmpty!13311 () Bool)

(declare-datatypes ((V!11469 0))(
  ( (V!11470 (val!3979 Int)) )
))
(declare-datatypes ((ValueCell!3591 0))(
  ( (ValueCellFull!3591 (v!6169 V!11469)) (EmptyCell!3591) )
))
(declare-datatypes ((array!19291 0))(
  ( (array!19292 (arr!9136 (Array (_ BitVec 32) ValueCell!3591)) (size!9488 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19291)

(declare-fun mapDefault!13311 () ValueCell!3591)

(assert (=> b!354328 (= condMapEmpty!13311 (= (arr!9136 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3591)) mapDefault!13311)))))

(declare-fun b!354329 () Bool)

(declare-fun res!196478 () Bool)

(declare-fun e!217203 () Bool)

(assert (=> b!354329 (=> (not res!196478) (not e!217203))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19293 0))(
  ( (array!19294 (arr!9137 (Array (_ BitVec 32) (_ BitVec 64))) (size!9489 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19293)

(assert (=> b!354329 (= res!196478 (and (= (size!9488 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9489 _keys!1456) (size!9488 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354330 () Bool)

(declare-fun res!196480 () Bool)

(assert (=> b!354330 (=> (not res!196480) (not e!217203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19293 (_ BitVec 32)) Bool)

(assert (=> b!354330 (= res!196480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354331 () Bool)

(assert (=> b!354331 (= e!217204 tp_is_empty!7869)))

(declare-fun res!196479 () Bool)

(assert (=> start!35424 (=> (not res!196479) (not e!217203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35424 (= res!196479 (validMask!0 mask!1842))))

(assert (=> start!35424 e!217203))

(assert (=> start!35424 true))

(declare-fun array_inv!6726 (array!19291) Bool)

(assert (=> start!35424 (and (array_inv!6726 _values!1208) e!217202)))

(declare-fun array_inv!6727 (array!19293) Bool)

(assert (=> start!35424 (array_inv!6727 _keys!1456)))

(declare-fun mapIsEmpty!13311 () Bool)

(assert (=> mapIsEmpty!13311 mapRes!13311))

(declare-fun mapNonEmpty!13311 () Bool)

(declare-fun tp!27207 () Bool)

(assert (=> mapNonEmpty!13311 (= mapRes!13311 (and tp!27207 e!217205))))

(declare-fun mapRest!13311 () (Array (_ BitVec 32) ValueCell!3591))

(declare-fun mapValue!13311 () ValueCell!3591)

(declare-fun mapKey!13311 () (_ BitVec 32))

(assert (=> mapNonEmpty!13311 (= (arr!9136 _values!1208) (store mapRest!13311 mapKey!13311 mapValue!13311))))

(declare-fun b!354332 () Bool)

(assert (=> b!354332 (= e!217203 false)))

(declare-fun lt!165679 () Bool)

(declare-datatypes ((List!5320 0))(
  ( (Nil!5317) (Cons!5316 (h!6172 (_ BitVec 64)) (t!10478 List!5320)) )
))
(declare-fun arrayNoDuplicates!0 (array!19293 (_ BitVec 32) List!5320) Bool)

(assert (=> b!354332 (= lt!165679 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5317))))

(assert (= (and start!35424 res!196479) b!354329))

(assert (= (and b!354329 res!196478) b!354330))

(assert (= (and b!354330 res!196480) b!354332))

(assert (= (and b!354328 condMapEmpty!13311) mapIsEmpty!13311))

(assert (= (and b!354328 (not condMapEmpty!13311)) mapNonEmpty!13311))

(get-info :version)

(assert (= (and mapNonEmpty!13311 ((_ is ValueCellFull!3591) mapValue!13311)) b!354327))

(assert (= (and b!354328 ((_ is ValueCellFull!3591) mapDefault!13311)) b!354331))

(assert (= start!35424 b!354328))

(declare-fun m!353355 () Bool)

(assert (=> b!354330 m!353355))

(declare-fun m!353357 () Bool)

(assert (=> start!35424 m!353357))

(declare-fun m!353359 () Bool)

(assert (=> start!35424 m!353359))

(declare-fun m!353361 () Bool)

(assert (=> start!35424 m!353361))

(declare-fun m!353363 () Bool)

(assert (=> mapNonEmpty!13311 m!353363))

(declare-fun m!353365 () Bool)

(assert (=> b!354332 m!353365))

(check-sat tp_is_empty!7869 (not start!35424) (not b!354332) (not b!354330) (not mapNonEmpty!13311))
(check-sat)
