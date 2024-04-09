; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133514 () Bool)

(assert start!133514)

(declare-fun mapNonEmpty!59223 () Bool)

(declare-fun mapRes!59223 () Bool)

(declare-fun tp!112879 () Bool)

(declare-fun e!869519 () Bool)

(assert (=> mapNonEmpty!59223 (= mapRes!59223 (and tp!112879 e!869519))))

(declare-fun mapKey!59223 () (_ BitVec 32))

(declare-datatypes ((V!59627 0))(
  ( (V!59628 (val!19366 Int)) )
))
(declare-datatypes ((ValueCell!18252 0))(
  ( (ValueCellFull!18252 (v!22115 V!59627)) (EmptyCell!18252) )
))
(declare-fun mapRest!59223 () (Array (_ BitVec 32) ValueCell!18252))

(declare-fun mapValue!59223 () ValueCell!18252)

(declare-datatypes ((array!103805 0))(
  ( (array!103806 (arr!50090 (Array (_ BitVec 32) ValueCell!18252)) (size!50641 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103805)

(assert (=> mapNonEmpty!59223 (= (arr!50090 _values!487) (store mapRest!59223 mapKey!59223 mapValue!59223))))

(declare-fun b!1560377 () Bool)

(declare-fun e!869518 () Bool)

(assert (=> b!1560377 (= e!869518 false)))

(declare-fun lt!670926 () Bool)

(declare-datatypes ((array!103807 0))(
  ( (array!103808 (arr!50091 (Array (_ BitVec 32) (_ BitVec 64))) (size!50642 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103807)

(declare-datatypes ((List!36545 0))(
  ( (Nil!36542) (Cons!36541 (h!37988 (_ BitVec 64)) (t!51285 List!36545)) )
))
(declare-fun arrayNoDuplicates!0 (array!103807 (_ BitVec 32) List!36545) Bool)

(assert (=> b!1560377 (= lt!670926 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36542))))

(declare-fun res!1067083 () Bool)

(assert (=> start!133514 (=> (not res!1067083) (not e!869518))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133514 (= res!1067083 (validMask!0 mask!947))))

(assert (=> start!133514 e!869518))

(assert (=> start!133514 true))

(declare-fun e!869520 () Bool)

(declare-fun array_inv!38861 (array!103805) Bool)

(assert (=> start!133514 (and (array_inv!38861 _values!487) e!869520)))

(declare-fun array_inv!38862 (array!103807) Bool)

(assert (=> start!133514 (array_inv!38862 _keys!637)))

(declare-fun b!1560378 () Bool)

(declare-fun res!1067084 () Bool)

(assert (=> b!1560378 (=> (not res!1067084) (not e!869518))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560378 (= res!1067084 (and (= (size!50641 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50642 _keys!637) (size!50641 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560379 () Bool)

(declare-fun tp_is_empty!38565 () Bool)

(assert (=> b!1560379 (= e!869519 tp_is_empty!38565)))

(declare-fun b!1560380 () Bool)

(declare-fun e!869522 () Bool)

(assert (=> b!1560380 (= e!869522 tp_is_empty!38565)))

(declare-fun b!1560381 () Bool)

(assert (=> b!1560381 (= e!869520 (and e!869522 mapRes!59223))))

(declare-fun condMapEmpty!59223 () Bool)

(declare-fun mapDefault!59223 () ValueCell!18252)

(assert (=> b!1560381 (= condMapEmpty!59223 (= (arr!50090 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18252)) mapDefault!59223)))))

(declare-fun mapIsEmpty!59223 () Bool)

(assert (=> mapIsEmpty!59223 mapRes!59223))

(declare-fun b!1560382 () Bool)

(declare-fun res!1067082 () Bool)

(assert (=> b!1560382 (=> (not res!1067082) (not e!869518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103807 (_ BitVec 32)) Bool)

(assert (=> b!1560382 (= res!1067082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(assert (= (and start!133514 res!1067083) b!1560378))

(assert (= (and b!1560378 res!1067084) b!1560382))

(assert (= (and b!1560382 res!1067082) b!1560377))

(assert (= (and b!1560381 condMapEmpty!59223) mapIsEmpty!59223))

(assert (= (and b!1560381 (not condMapEmpty!59223)) mapNonEmpty!59223))

(get-info :version)

(assert (= (and mapNonEmpty!59223 ((_ is ValueCellFull!18252) mapValue!59223)) b!1560379))

(assert (= (and b!1560381 ((_ is ValueCellFull!18252) mapDefault!59223)) b!1560380))

(assert (= start!133514 b!1560381))

(declare-fun m!1436251 () Bool)

(assert (=> mapNonEmpty!59223 m!1436251))

(declare-fun m!1436253 () Bool)

(assert (=> b!1560377 m!1436253))

(declare-fun m!1436255 () Bool)

(assert (=> start!133514 m!1436255))

(declare-fun m!1436257 () Bool)

(assert (=> start!133514 m!1436257))

(declare-fun m!1436259 () Bool)

(assert (=> start!133514 m!1436259))

(declare-fun m!1436261 () Bool)

(assert (=> b!1560382 m!1436261))

(check-sat (not mapNonEmpty!59223) tp_is_empty!38565 (not start!133514) (not b!1560382) (not b!1560377))
(check-sat)
