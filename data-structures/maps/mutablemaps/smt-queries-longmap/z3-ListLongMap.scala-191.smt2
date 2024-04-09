; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3766 () Bool)

(assert start!3766)

(declare-fun b!26335 () Bool)

(declare-fun e!17130 () Bool)

(declare-fun tp_is_empty!1089 () Bool)

(assert (=> b!26335 (= e!17130 tp_is_empty!1089)))

(declare-fun b!26336 () Bool)

(declare-fun res!15629 () Bool)

(declare-fun e!17129 () Bool)

(assert (=> b!26336 (=> (not res!15629) (not e!17129))))

(declare-datatypes ((array!1409 0))(
  ( (array!1410 (arr!662 (Array (_ BitVec 32) (_ BitVec 64))) (size!763 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1409)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1409 (_ BitVec 32)) Bool)

(assert (=> b!26336 (= res!15629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26337 () Bool)

(declare-fun e!17131 () Bool)

(assert (=> b!26337 (= e!17131 tp_is_empty!1089)))

(declare-fun b!26338 () Bool)

(declare-fun e!17128 () Bool)

(declare-fun mapRes!1150 () Bool)

(assert (=> b!26338 (= e!17128 (and e!17131 mapRes!1150))))

(declare-fun condMapEmpty!1150 () Bool)

(declare-datatypes ((V!1277 0))(
  ( (V!1278 (val!571 Int)) )
))
(declare-datatypes ((ValueCell!345 0))(
  ( (ValueCellFull!345 (v!1657 V!1277)) (EmptyCell!345) )
))
(declare-datatypes ((array!1411 0))(
  ( (array!1412 (arr!663 (Array (_ BitVec 32) ValueCell!345)) (size!764 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1411)

(declare-fun mapDefault!1150 () ValueCell!345)

(assert (=> b!26338 (= condMapEmpty!1150 (= (arr!663 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!345)) mapDefault!1150)))))

(declare-fun b!26339 () Bool)

(declare-fun res!15631 () Bool)

(assert (=> b!26339 (=> (not res!15631) (not e!17129))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26339 (= res!15631 (and (= (size!764 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!763 _keys!1833) (size!764 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!15630 () Bool)

(assert (=> start!3766 (=> (not res!15630) (not e!17129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3766 (= res!15630 (validMask!0 mask!2294))))

(assert (=> start!3766 e!17129))

(assert (=> start!3766 true))

(declare-fun array_inv!457 (array!1411) Bool)

(assert (=> start!3766 (and (array_inv!457 _values!1501) e!17128)))

(declare-fun array_inv!458 (array!1409) Bool)

(assert (=> start!3766 (array_inv!458 _keys!1833)))

(declare-fun mapNonEmpty!1150 () Bool)

(declare-fun tp!3670 () Bool)

(assert (=> mapNonEmpty!1150 (= mapRes!1150 (and tp!3670 e!17130))))

(declare-fun mapValue!1150 () ValueCell!345)

(declare-fun mapKey!1150 () (_ BitVec 32))

(declare-fun mapRest!1150 () (Array (_ BitVec 32) ValueCell!345))

(assert (=> mapNonEmpty!1150 (= (arr!663 _values!1501) (store mapRest!1150 mapKey!1150 mapValue!1150))))

(declare-fun b!26340 () Bool)

(assert (=> b!26340 (= e!17129 false)))

(declare-fun lt!10353 () Bool)

(declare-datatypes ((List!582 0))(
  ( (Nil!579) (Cons!578 (h!1145 (_ BitVec 64)) (t!3271 List!582)) )
))
(declare-fun arrayNoDuplicates!0 (array!1409 (_ BitVec 32) List!582) Bool)

(assert (=> b!26340 (= lt!10353 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!579))))

(declare-fun mapIsEmpty!1150 () Bool)

(assert (=> mapIsEmpty!1150 mapRes!1150))

(assert (= (and start!3766 res!15630) b!26339))

(assert (= (and b!26339 res!15631) b!26336))

(assert (= (and b!26336 res!15629) b!26340))

(assert (= (and b!26338 condMapEmpty!1150) mapIsEmpty!1150))

(assert (= (and b!26338 (not condMapEmpty!1150)) mapNonEmpty!1150))

(get-info :version)

(assert (= (and mapNonEmpty!1150 ((_ is ValueCellFull!345) mapValue!1150)) b!26335))

(assert (= (and b!26338 ((_ is ValueCellFull!345) mapDefault!1150)) b!26337))

(assert (= start!3766 b!26338))

(declare-fun m!21157 () Bool)

(assert (=> b!26336 m!21157))

(declare-fun m!21159 () Bool)

(assert (=> start!3766 m!21159))

(declare-fun m!21161 () Bool)

(assert (=> start!3766 m!21161))

(declare-fun m!21163 () Bool)

(assert (=> start!3766 m!21163))

(declare-fun m!21165 () Bool)

(assert (=> mapNonEmpty!1150 m!21165))

(declare-fun m!21167 () Bool)

(assert (=> b!26340 m!21167))

(check-sat (not mapNonEmpty!1150) (not b!26340) tp_is_empty!1089 (not start!3766) (not b!26336))
(check-sat)
