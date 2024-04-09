; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84370 () Bool)

(assert start!84370)

(declare-fun mapIsEmpty!36746 () Bool)

(declare-fun mapRes!36746 () Bool)

(assert (=> mapIsEmpty!36746 mapRes!36746))

(declare-fun b!986428 () Bool)

(declare-fun e!556250 () Bool)

(declare-fun e!556246 () Bool)

(assert (=> b!986428 (= e!556250 (and e!556246 mapRes!36746))))

(declare-fun condMapEmpty!36746 () Bool)

(declare-datatypes ((V!35843 0))(
  ( (V!35844 (val!11623 Int)) )
))
(declare-datatypes ((ValueCell!11091 0))(
  ( (ValueCellFull!11091 (v!14185 V!35843)) (EmptyCell!11091) )
))
(declare-datatypes ((array!62241 0))(
  ( (array!62242 (arr!29974 (Array (_ BitVec 32) ValueCell!11091)) (size!30454 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62241)

(declare-fun mapDefault!36746 () ValueCell!11091)

(assert (=> b!986428 (= condMapEmpty!36746 (= (arr!29974 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11091)) mapDefault!36746)))))

(declare-fun res!660074 () Bool)

(declare-fun e!556247 () Bool)

(assert (=> start!84370 (=> (not res!660074) (not e!556247))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84370 (= res!660074 (validMask!0 mask!1948))))

(assert (=> start!84370 e!556247))

(assert (=> start!84370 true))

(declare-fun array_inv!23029 (array!62241) Bool)

(assert (=> start!84370 (and (array_inv!23029 _values!1278) e!556250)))

(declare-datatypes ((array!62243 0))(
  ( (array!62244 (arr!29975 (Array (_ BitVec 32) (_ BitVec 64))) (size!30455 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62243)

(declare-fun array_inv!23030 (array!62243) Bool)

(assert (=> start!84370 (array_inv!23030 _keys!1544)))

(declare-fun b!986429 () Bool)

(declare-fun tp_is_empty!23145 () Bool)

(assert (=> b!986429 (= e!556246 tp_is_empty!23145)))

(declare-fun b!986430 () Bool)

(assert (=> b!986430 (= e!556247 false)))

(declare-fun lt!437458 () Bool)

(declare-datatypes ((List!20860 0))(
  ( (Nil!20857) (Cons!20856 (h!22018 (_ BitVec 64)) (t!29767 List!20860)) )
))
(declare-fun arrayNoDuplicates!0 (array!62243 (_ BitVec 32) List!20860) Bool)

(assert (=> b!986430 (= lt!437458 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20857))))

(declare-fun b!986431 () Bool)

(declare-fun e!556248 () Bool)

(assert (=> b!986431 (= e!556248 tp_is_empty!23145)))

(declare-fun b!986432 () Bool)

(declare-fun res!660075 () Bool)

(assert (=> b!986432 (=> (not res!660075) (not e!556247))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986432 (= res!660075 (and (= (size!30454 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30455 _keys!1544) (size!30454 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36746 () Bool)

(declare-fun tp!69602 () Bool)

(assert (=> mapNonEmpty!36746 (= mapRes!36746 (and tp!69602 e!556248))))

(declare-fun mapValue!36746 () ValueCell!11091)

(declare-fun mapKey!36746 () (_ BitVec 32))

(declare-fun mapRest!36746 () (Array (_ BitVec 32) ValueCell!11091))

(assert (=> mapNonEmpty!36746 (= (arr!29974 _values!1278) (store mapRest!36746 mapKey!36746 mapValue!36746))))

(declare-fun b!986433 () Bool)

(declare-fun res!660073 () Bool)

(assert (=> b!986433 (=> (not res!660073) (not e!556247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62243 (_ BitVec 32)) Bool)

(assert (=> b!986433 (= res!660073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!84370 res!660074) b!986432))

(assert (= (and b!986432 res!660075) b!986433))

(assert (= (and b!986433 res!660073) b!986430))

(assert (= (and b!986428 condMapEmpty!36746) mapIsEmpty!36746))

(assert (= (and b!986428 (not condMapEmpty!36746)) mapNonEmpty!36746))

(get-info :version)

(assert (= (and mapNonEmpty!36746 ((_ is ValueCellFull!11091) mapValue!36746)) b!986431))

(assert (= (and b!986428 ((_ is ValueCellFull!11091) mapDefault!36746)) b!986429))

(assert (= start!84370 b!986428))

(declare-fun m!913319 () Bool)

(assert (=> start!84370 m!913319))

(declare-fun m!913321 () Bool)

(assert (=> start!84370 m!913321))

(declare-fun m!913323 () Bool)

(assert (=> start!84370 m!913323))

(declare-fun m!913325 () Bool)

(assert (=> b!986430 m!913325))

(declare-fun m!913327 () Bool)

(assert (=> mapNonEmpty!36746 m!913327))

(declare-fun m!913329 () Bool)

(assert (=> b!986433 m!913329))

(check-sat (not b!986430) (not start!84370) tp_is_empty!23145 (not mapNonEmpty!36746) (not b!986433))
(check-sat)
