; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133526 () Bool)

(assert start!133526)

(declare-fun mapIsEmpty!59241 () Bool)

(declare-fun mapRes!59241 () Bool)

(assert (=> mapIsEmpty!59241 mapRes!59241))

(declare-fun b!1560485 () Bool)

(declare-fun e!869611 () Bool)

(declare-fun tp_is_empty!38577 () Bool)

(assert (=> b!1560485 (= e!869611 tp_is_empty!38577)))

(declare-fun mapNonEmpty!59241 () Bool)

(declare-fun tp!112897 () Bool)

(assert (=> mapNonEmpty!59241 (= mapRes!59241 (and tp!112897 e!869611))))

(declare-datatypes ((V!59643 0))(
  ( (V!59644 (val!19372 Int)) )
))
(declare-datatypes ((ValueCell!18258 0))(
  ( (ValueCellFull!18258 (v!22121 V!59643)) (EmptyCell!18258) )
))
(declare-fun mapRest!59241 () (Array (_ BitVec 32) ValueCell!18258))

(declare-datatypes ((array!103829 0))(
  ( (array!103830 (arr!50102 (Array (_ BitVec 32) ValueCell!18258)) (size!50653 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103829)

(declare-fun mapValue!59241 () ValueCell!18258)

(declare-fun mapKey!59241 () (_ BitVec 32))

(assert (=> mapNonEmpty!59241 (= (arr!50102 _values!487) (store mapRest!59241 mapKey!59241 mapValue!59241))))

(declare-fun b!1560486 () Bool)

(declare-fun res!1067136 () Bool)

(declare-fun e!869608 () Bool)

(assert (=> b!1560486 (=> (not res!1067136) (not e!869608))))

(declare-datatypes ((array!103831 0))(
  ( (array!103832 (arr!50103 (Array (_ BitVec 32) (_ BitVec 64))) (size!50654 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103831)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103831 (_ BitVec 32)) Bool)

(assert (=> b!1560486 (= res!1067136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560487 () Bool)

(declare-fun e!869612 () Bool)

(assert (=> b!1560487 (= e!869612 tp_is_empty!38577)))

(declare-fun b!1560488 () Bool)

(declare-fun e!869610 () Bool)

(assert (=> b!1560488 (= e!869610 (and e!869612 mapRes!59241))))

(declare-fun condMapEmpty!59241 () Bool)

(declare-fun mapDefault!59241 () ValueCell!18258)

(assert (=> b!1560488 (= condMapEmpty!59241 (= (arr!50102 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18258)) mapDefault!59241)))))

(declare-fun b!1560489 () Bool)

(declare-fun res!1067137 () Bool)

(assert (=> b!1560489 (=> (not res!1067137) (not e!869608))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560489 (= res!1067137 (and (= (size!50653 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50654 _keys!637) (size!50653 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1067138 () Bool)

(assert (=> start!133526 (=> (not res!1067138) (not e!869608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133526 (= res!1067138 (validMask!0 mask!947))))

(assert (=> start!133526 e!869608))

(assert (=> start!133526 true))

(declare-fun array_inv!38871 (array!103829) Bool)

(assert (=> start!133526 (and (array_inv!38871 _values!487) e!869610)))

(declare-fun array_inv!38872 (array!103831) Bool)

(assert (=> start!133526 (array_inv!38872 _keys!637)))

(declare-fun b!1560490 () Bool)

(assert (=> b!1560490 (= e!869608 false)))

(declare-fun lt!670944 () Bool)

(declare-datatypes ((List!36551 0))(
  ( (Nil!36548) (Cons!36547 (h!37994 (_ BitVec 64)) (t!51291 List!36551)) )
))
(declare-fun arrayNoDuplicates!0 (array!103831 (_ BitVec 32) List!36551) Bool)

(assert (=> b!1560490 (= lt!670944 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36548))))

(assert (= (and start!133526 res!1067138) b!1560489))

(assert (= (and b!1560489 res!1067137) b!1560486))

(assert (= (and b!1560486 res!1067136) b!1560490))

(assert (= (and b!1560488 condMapEmpty!59241) mapIsEmpty!59241))

(assert (= (and b!1560488 (not condMapEmpty!59241)) mapNonEmpty!59241))

(get-info :version)

(assert (= (and mapNonEmpty!59241 ((_ is ValueCellFull!18258) mapValue!59241)) b!1560485))

(assert (= (and b!1560488 ((_ is ValueCellFull!18258) mapDefault!59241)) b!1560487))

(assert (= start!133526 b!1560488))

(declare-fun m!1436323 () Bool)

(assert (=> mapNonEmpty!59241 m!1436323))

(declare-fun m!1436325 () Bool)

(assert (=> b!1560486 m!1436325))

(declare-fun m!1436327 () Bool)

(assert (=> start!133526 m!1436327))

(declare-fun m!1436329 () Bool)

(assert (=> start!133526 m!1436329))

(declare-fun m!1436331 () Bool)

(assert (=> start!133526 m!1436331))

(declare-fun m!1436333 () Bool)

(assert (=> b!1560490 m!1436333))

(check-sat (not start!133526) (not mapNonEmpty!59241) tp_is_empty!38577 (not b!1560490) (not b!1560486))
(check-sat)
