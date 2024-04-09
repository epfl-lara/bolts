; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133508 () Bool)

(assert start!133508)

(declare-fun b!1560323 () Bool)

(declare-fun e!869475 () Bool)

(declare-fun tp_is_empty!38559 () Bool)

(assert (=> b!1560323 (= e!869475 tp_is_empty!38559)))

(declare-fun res!1067057 () Bool)

(declare-fun e!869477 () Bool)

(assert (=> start!133508 (=> (not res!1067057) (not e!869477))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133508 (= res!1067057 (validMask!0 mask!947))))

(assert (=> start!133508 e!869477))

(assert (=> start!133508 true))

(declare-datatypes ((V!59619 0))(
  ( (V!59620 (val!19363 Int)) )
))
(declare-datatypes ((ValueCell!18249 0))(
  ( (ValueCellFull!18249 (v!22112 V!59619)) (EmptyCell!18249) )
))
(declare-datatypes ((array!103793 0))(
  ( (array!103794 (arr!50084 (Array (_ BitVec 32) ValueCell!18249)) (size!50635 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103793)

(declare-fun e!869474 () Bool)

(declare-fun array_inv!38855 (array!103793) Bool)

(assert (=> start!133508 (and (array_inv!38855 _values!487) e!869474)))

(declare-datatypes ((array!103795 0))(
  ( (array!103796 (arr!50085 (Array (_ BitVec 32) (_ BitVec 64))) (size!50636 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103795)

(declare-fun array_inv!38856 (array!103795) Bool)

(assert (=> start!133508 (array_inv!38856 _keys!637)))

(declare-fun b!1560324 () Bool)

(declare-fun mapRes!59214 () Bool)

(assert (=> b!1560324 (= e!869474 (and e!869475 mapRes!59214))))

(declare-fun condMapEmpty!59214 () Bool)

(declare-fun mapDefault!59214 () ValueCell!18249)

(assert (=> b!1560324 (= condMapEmpty!59214 (= (arr!50084 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18249)) mapDefault!59214)))))

(declare-fun b!1560325 () Bool)

(declare-fun e!869473 () Bool)

(assert (=> b!1560325 (= e!869473 tp_is_empty!38559)))

(declare-fun mapNonEmpty!59214 () Bool)

(declare-fun tp!112870 () Bool)

(assert (=> mapNonEmpty!59214 (= mapRes!59214 (and tp!112870 e!869473))))

(declare-fun mapRest!59214 () (Array (_ BitVec 32) ValueCell!18249))

(declare-fun mapValue!59214 () ValueCell!18249)

(declare-fun mapKey!59214 () (_ BitVec 32))

(assert (=> mapNonEmpty!59214 (= (arr!50084 _values!487) (store mapRest!59214 mapKey!59214 mapValue!59214))))

(declare-fun b!1560326 () Bool)

(assert (=> b!1560326 (= e!869477 false)))

(declare-fun lt!670917 () Bool)

(declare-datatypes ((List!36544 0))(
  ( (Nil!36541) (Cons!36540 (h!37987 (_ BitVec 64)) (t!51284 List!36544)) )
))
(declare-fun arrayNoDuplicates!0 (array!103795 (_ BitVec 32) List!36544) Bool)

(assert (=> b!1560326 (= lt!670917 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36541))))

(declare-fun mapIsEmpty!59214 () Bool)

(assert (=> mapIsEmpty!59214 mapRes!59214))

(declare-fun b!1560327 () Bool)

(declare-fun res!1067056 () Bool)

(assert (=> b!1560327 (=> (not res!1067056) (not e!869477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103795 (_ BitVec 32)) Bool)

(assert (=> b!1560327 (= res!1067056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560328 () Bool)

(declare-fun res!1067055 () Bool)

(assert (=> b!1560328 (=> (not res!1067055) (not e!869477))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560328 (= res!1067055 (and (= (size!50635 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50636 _keys!637) (size!50635 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!133508 res!1067057) b!1560328))

(assert (= (and b!1560328 res!1067055) b!1560327))

(assert (= (and b!1560327 res!1067056) b!1560326))

(assert (= (and b!1560324 condMapEmpty!59214) mapIsEmpty!59214))

(assert (= (and b!1560324 (not condMapEmpty!59214)) mapNonEmpty!59214))

(get-info :version)

(assert (= (and mapNonEmpty!59214 ((_ is ValueCellFull!18249) mapValue!59214)) b!1560325))

(assert (= (and b!1560324 ((_ is ValueCellFull!18249) mapDefault!59214)) b!1560323))

(assert (= start!133508 b!1560324))

(declare-fun m!1436215 () Bool)

(assert (=> start!133508 m!1436215))

(declare-fun m!1436217 () Bool)

(assert (=> start!133508 m!1436217))

(declare-fun m!1436219 () Bool)

(assert (=> start!133508 m!1436219))

(declare-fun m!1436221 () Bool)

(assert (=> mapNonEmpty!59214 m!1436221))

(declare-fun m!1436223 () Bool)

(assert (=> b!1560326 m!1436223))

(declare-fun m!1436225 () Bool)

(assert (=> b!1560327 m!1436225))

(check-sat (not mapNonEmpty!59214) (not start!133508) (not b!1560327) tp_is_empty!38559 (not b!1560326))
(check-sat)
