; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133824 () Bool)

(assert start!133824)

(declare-fun b!1564303 () Bool)

(declare-fun e!871898 () Bool)

(declare-fun tp_is_empty!38865 () Bool)

(assert (=> b!1564303 (= e!871898 tp_is_empty!38865)))

(declare-fun b!1564304 () Bool)

(declare-fun res!1069525 () Bool)

(declare-fun e!871894 () Bool)

(assert (=> b!1564304 (=> (not res!1069525) (not e!871894))))

(declare-datatypes ((array!104387 0))(
  ( (array!104388 (arr!50380 (Array (_ BitVec 32) (_ BitVec 64))) (size!50931 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104387)

(declare-datatypes ((List!36728 0))(
  ( (Nil!36725) (Cons!36724 (h!38171 (_ BitVec 64)) (t!51582 List!36728)) )
))
(declare-fun arrayNoDuplicates!0 (array!104387 (_ BitVec 32) List!36728) Bool)

(assert (=> b!1564304 (= res!1069525 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36725))))

(declare-fun b!1564305 () Bool)

(declare-fun res!1069524 () Bool)

(assert (=> b!1564305 (=> (not res!1069524) (not e!871894))))

(declare-datatypes ((V!60027 0))(
  ( (V!60028 (val!19516 Int)) )
))
(declare-datatypes ((tuple2!25342 0))(
  ( (tuple2!25343 (_1!12681 (_ BitVec 64)) (_2!12681 V!60027)) )
))
(declare-datatypes ((List!36729 0))(
  ( (Nil!36726) (Cons!36725 (h!38172 tuple2!25342) (t!51583 List!36729)) )
))
(declare-datatypes ((ListLongMap!22789 0))(
  ( (ListLongMap!22790 (toList!11410 List!36729)) )
))
(declare-fun contains!10331 (ListLongMap!22789 (_ BitVec 64)) Bool)

(assert (=> b!1564305 (= res!1069524 (not (contains!10331 (ListLongMap!22790 Nil!36726) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564307 () Bool)

(declare-fun res!1069528 () Bool)

(assert (=> b!1564307 (=> (not res!1069528) (not e!871894))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104387 (_ BitVec 32)) Bool)

(assert (=> b!1564307 (= res!1069528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564308 () Bool)

(declare-fun e!871897 () Bool)

(declare-fun e!871896 () Bool)

(declare-fun mapRes!59676 () Bool)

(assert (=> b!1564308 (= e!871897 (and e!871896 mapRes!59676))))

(declare-fun condMapEmpty!59676 () Bool)

(declare-datatypes ((ValueCell!18402 0))(
  ( (ValueCellFull!18402 (v!22265 V!60027)) (EmptyCell!18402) )
))
(declare-datatypes ((array!104389 0))(
  ( (array!104390 (arr!50381 (Array (_ BitVec 32) ValueCell!18402)) (size!50932 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104389)

(declare-fun mapDefault!59676 () ValueCell!18402)

(assert (=> b!1564308 (= condMapEmpty!59676 (= (arr!50381 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18402)) mapDefault!59676)))))

(declare-fun mapNonEmpty!59676 () Bool)

(declare-fun tp!113602 () Bool)

(assert (=> mapNonEmpty!59676 (= mapRes!59676 (and tp!113602 e!871898))))

(declare-fun mapRest!59676 () (Array (_ BitVec 32) ValueCell!18402))

(declare-fun mapValue!59676 () ValueCell!18402)

(declare-fun mapKey!59676 () (_ BitVec 32))

(assert (=> mapNonEmpty!59676 (= (arr!50381 _values!487) (store mapRest!59676 mapKey!59676 mapValue!59676))))

(declare-fun mapIsEmpty!59676 () Bool)

(assert (=> mapIsEmpty!59676 mapRes!59676))

(declare-fun b!1564309 () Bool)

(assert (=> b!1564309 (= e!871896 tp_is_empty!38865)))

(declare-fun b!1564306 () Bool)

(assert (=> b!1564306 (= e!871894 false)))

(declare-fun lt!671961 () Bool)

(assert (=> b!1564306 (= lt!671961 (contains!10331 (ListLongMap!22790 Nil!36726) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!1069527 () Bool)

(assert (=> start!133824 (=> (not res!1069527) (not e!871894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133824 (= res!1069527 (validMask!0 mask!947))))

(assert (=> start!133824 e!871894))

(assert (=> start!133824 true))

(declare-fun array_inv!39079 (array!104387) Bool)

(assert (=> start!133824 (array_inv!39079 _keys!637)))

(declare-fun array_inv!39080 (array!104389) Bool)

(assert (=> start!133824 (and (array_inv!39080 _values!487) e!871897)))

(declare-fun b!1564310 () Bool)

(declare-fun res!1069529 () Bool)

(assert (=> b!1564310 (=> (not res!1069529) (not e!871894))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564310 (= res!1069529 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50931 _keys!637)) (bvsge from!782 (size!50931 _keys!637))))))

(declare-fun b!1564311 () Bool)

(declare-fun res!1069526 () Bool)

(assert (=> b!1564311 (=> (not res!1069526) (not e!871894))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1564311 (= res!1069526 (and (= (size!50932 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50931 _keys!637) (size!50932 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!133824 res!1069527) b!1564311))

(assert (= (and b!1564311 res!1069526) b!1564307))

(assert (= (and b!1564307 res!1069528) b!1564304))

(assert (= (and b!1564304 res!1069525) b!1564310))

(assert (= (and b!1564310 res!1069529) b!1564305))

(assert (= (and b!1564305 res!1069524) b!1564306))

(assert (= (and b!1564308 condMapEmpty!59676) mapIsEmpty!59676))

(assert (= (and b!1564308 (not condMapEmpty!59676)) mapNonEmpty!59676))

(get-info :version)

(assert (= (and mapNonEmpty!59676 ((_ is ValueCellFull!18402) mapValue!59676)) b!1564303))

(assert (= (and b!1564308 ((_ is ValueCellFull!18402) mapDefault!59676)) b!1564309))

(assert (= start!133824 b!1564308))

(declare-fun m!1439549 () Bool)

(assert (=> start!133824 m!1439549))

(declare-fun m!1439551 () Bool)

(assert (=> start!133824 m!1439551))

(declare-fun m!1439553 () Bool)

(assert (=> start!133824 m!1439553))

(declare-fun m!1439555 () Bool)

(assert (=> b!1564306 m!1439555))

(declare-fun m!1439557 () Bool)

(assert (=> mapNonEmpty!59676 m!1439557))

(declare-fun m!1439559 () Bool)

(assert (=> b!1564304 m!1439559))

(declare-fun m!1439561 () Bool)

(assert (=> b!1564307 m!1439561))

(declare-fun m!1439563 () Bool)

(assert (=> b!1564305 m!1439563))

(check-sat (not b!1564305) (not b!1564306) (not mapNonEmpty!59676) tp_is_empty!38865 (not b!1564307) (not b!1564304) (not start!133824))
(check-sat)
