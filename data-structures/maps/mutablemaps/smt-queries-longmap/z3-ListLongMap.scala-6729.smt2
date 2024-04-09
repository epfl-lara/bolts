; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84376 () Bool)

(assert start!84376)

(declare-fun mapIsEmpty!36755 () Bool)

(declare-fun mapRes!36755 () Bool)

(assert (=> mapIsEmpty!36755 mapRes!36755))

(declare-fun b!986482 () Bool)

(declare-fun e!556291 () Bool)

(declare-fun e!556294 () Bool)

(assert (=> b!986482 (= e!556291 (and e!556294 mapRes!36755))))

(declare-fun condMapEmpty!36755 () Bool)

(declare-datatypes ((V!35851 0))(
  ( (V!35852 (val!11626 Int)) )
))
(declare-datatypes ((ValueCell!11094 0))(
  ( (ValueCellFull!11094 (v!14188 V!35851)) (EmptyCell!11094) )
))
(declare-datatypes ((array!62253 0))(
  ( (array!62254 (arr!29980 (Array (_ BitVec 32) ValueCell!11094)) (size!30460 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62253)

(declare-fun mapDefault!36755 () ValueCell!11094)

(assert (=> b!986482 (= condMapEmpty!36755 (= (arr!29980 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11094)) mapDefault!36755)))))

(declare-fun b!986483 () Bool)

(declare-fun e!556292 () Bool)

(assert (=> b!986483 (= e!556292 false)))

(declare-fun lt!437467 () Bool)

(declare-datatypes ((array!62255 0))(
  ( (array!62256 (arr!29981 (Array (_ BitVec 32) (_ BitVec 64))) (size!30461 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62255)

(declare-datatypes ((List!20862 0))(
  ( (Nil!20859) (Cons!20858 (h!22020 (_ BitVec 64)) (t!29769 List!20862)) )
))
(declare-fun arrayNoDuplicates!0 (array!62255 (_ BitVec 32) List!20862) Bool)

(assert (=> b!986483 (= lt!437467 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20859))))

(declare-fun b!986484 () Bool)

(declare-fun res!660100 () Bool)

(assert (=> b!986484 (=> (not res!660100) (not e!556292))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986484 (= res!660100 (and (= (size!30460 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30461 _keys!1544) (size!30460 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986485 () Bool)

(declare-fun res!660101 () Bool)

(assert (=> b!986485 (=> (not res!660101) (not e!556292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62255 (_ BitVec 32)) Bool)

(assert (=> b!986485 (= res!660101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986486 () Bool)

(declare-fun tp_is_empty!23151 () Bool)

(assert (=> b!986486 (= e!556294 tp_is_empty!23151)))

(declare-fun mapNonEmpty!36755 () Bool)

(declare-fun tp!69611 () Bool)

(declare-fun e!556293 () Bool)

(assert (=> mapNonEmpty!36755 (= mapRes!36755 (and tp!69611 e!556293))))

(declare-fun mapRest!36755 () (Array (_ BitVec 32) ValueCell!11094))

(declare-fun mapValue!36755 () ValueCell!11094)

(declare-fun mapKey!36755 () (_ BitVec 32))

(assert (=> mapNonEmpty!36755 (= (arr!29980 _values!1278) (store mapRest!36755 mapKey!36755 mapValue!36755))))

(declare-fun res!660102 () Bool)

(assert (=> start!84376 (=> (not res!660102) (not e!556292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84376 (= res!660102 (validMask!0 mask!1948))))

(assert (=> start!84376 e!556292))

(assert (=> start!84376 true))

(declare-fun array_inv!23033 (array!62253) Bool)

(assert (=> start!84376 (and (array_inv!23033 _values!1278) e!556291)))

(declare-fun array_inv!23034 (array!62255) Bool)

(assert (=> start!84376 (array_inv!23034 _keys!1544)))

(declare-fun b!986487 () Bool)

(assert (=> b!986487 (= e!556293 tp_is_empty!23151)))

(assert (= (and start!84376 res!660102) b!986484))

(assert (= (and b!986484 res!660100) b!986485))

(assert (= (and b!986485 res!660101) b!986483))

(assert (= (and b!986482 condMapEmpty!36755) mapIsEmpty!36755))

(assert (= (and b!986482 (not condMapEmpty!36755)) mapNonEmpty!36755))

(get-info :version)

(assert (= (and mapNonEmpty!36755 ((_ is ValueCellFull!11094) mapValue!36755)) b!986487))

(assert (= (and b!986482 ((_ is ValueCellFull!11094) mapDefault!36755)) b!986486))

(assert (= start!84376 b!986482))

(declare-fun m!913355 () Bool)

(assert (=> b!986483 m!913355))

(declare-fun m!913357 () Bool)

(assert (=> b!986485 m!913357))

(declare-fun m!913359 () Bool)

(assert (=> mapNonEmpty!36755 m!913359))

(declare-fun m!913361 () Bool)

(assert (=> start!84376 m!913361))

(declare-fun m!913363 () Bool)

(assert (=> start!84376 m!913363))

(declare-fun m!913365 () Bool)

(assert (=> start!84376 m!913365))

(check-sat tp_is_empty!23151 (not mapNonEmpty!36755) (not b!986485) (not b!986483) (not start!84376))
(check-sat)
