; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133676 () Bool)

(assert start!133676)

(declare-fun b!1562525 () Bool)

(declare-fun res!1068387 () Bool)

(declare-fun e!870744 () Bool)

(assert (=> b!1562525 (=> (not res!1068387) (not e!870744))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104119 0))(
  ( (array!104120 (arr!50247 (Array (_ BitVec 32) (_ BitVec 64))) (size!50798 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104119)

(declare-datatypes ((V!59843 0))(
  ( (V!59844 (val!19447 Int)) )
))
(declare-datatypes ((ValueCell!18333 0))(
  ( (ValueCellFull!18333 (v!22196 V!59843)) (EmptyCell!18333) )
))
(declare-datatypes ((array!104121 0))(
  ( (array!104122 (arr!50248 (Array (_ BitVec 32) ValueCell!18333)) (size!50799 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104121)

(assert (=> b!1562525 (= res!1068387 (and (= (size!50799 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50798 _keys!637) (size!50799 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562526 () Bool)

(declare-fun e!870745 () Bool)

(declare-fun tp_is_empty!38727 () Bool)

(assert (=> b!1562526 (= e!870745 tp_is_empty!38727)))

(declare-fun res!1068389 () Bool)

(assert (=> start!133676 (=> (not res!1068389) (not e!870744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133676 (= res!1068389 (validMask!0 mask!947))))

(assert (=> start!133676 e!870744))

(assert (=> start!133676 true))

(declare-fun e!870746 () Bool)

(declare-fun array_inv!38981 (array!104121) Bool)

(assert (=> start!133676 (and (array_inv!38981 _values!487) e!870746)))

(declare-fun array_inv!38982 (array!104119) Bool)

(assert (=> start!133676 (array_inv!38982 _keys!637)))

(declare-fun b!1562527 () Bool)

(declare-fun mapRes!59466 () Bool)

(assert (=> b!1562527 (= e!870746 (and e!870745 mapRes!59466))))

(declare-fun condMapEmpty!59466 () Bool)

(declare-fun mapDefault!59466 () ValueCell!18333)

(assert (=> b!1562527 (= condMapEmpty!59466 (= (arr!50248 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18333)) mapDefault!59466)))))

(declare-fun b!1562528 () Bool)

(assert (=> b!1562528 (= e!870744 false)))

(declare-fun lt!671682 () Bool)

(declare-datatypes ((List!36651 0))(
  ( (Nil!36648) (Cons!36647 (h!38094 (_ BitVec 64)) (t!51505 List!36651)) )
))
(declare-fun arrayNoDuplicates!0 (array!104119 (_ BitVec 32) List!36651) Bool)

(assert (=> b!1562528 (= lt!671682 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36648))))

(declare-fun b!1562529 () Bool)

(declare-fun e!870742 () Bool)

(assert (=> b!1562529 (= e!870742 tp_is_empty!38727)))

(declare-fun mapNonEmpty!59466 () Bool)

(declare-fun tp!113302 () Bool)

(assert (=> mapNonEmpty!59466 (= mapRes!59466 (and tp!113302 e!870742))))

(declare-fun mapRest!59466 () (Array (_ BitVec 32) ValueCell!18333))

(declare-fun mapValue!59466 () ValueCell!18333)

(declare-fun mapKey!59466 () (_ BitVec 32))

(assert (=> mapNonEmpty!59466 (= (arr!50248 _values!487) (store mapRest!59466 mapKey!59466 mapValue!59466))))

(declare-fun b!1562530 () Bool)

(declare-fun res!1068388 () Bool)

(assert (=> b!1562530 (=> (not res!1068388) (not e!870744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104119 (_ BitVec 32)) Bool)

(assert (=> b!1562530 (= res!1068388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapIsEmpty!59466 () Bool)

(assert (=> mapIsEmpty!59466 mapRes!59466))

(assert (= (and start!133676 res!1068389) b!1562525))

(assert (= (and b!1562525 res!1068387) b!1562530))

(assert (= (and b!1562530 res!1068388) b!1562528))

(assert (= (and b!1562527 condMapEmpty!59466) mapIsEmpty!59466))

(assert (= (and b!1562527 (not condMapEmpty!59466)) mapNonEmpty!59466))

(get-info :version)

(assert (= (and mapNonEmpty!59466 ((_ is ValueCellFull!18333) mapValue!59466)) b!1562529))

(assert (= (and b!1562527 ((_ is ValueCellFull!18333) mapDefault!59466)) b!1562526))

(assert (= start!133676 b!1562527))

(declare-fun m!1438351 () Bool)

(assert (=> start!133676 m!1438351))

(declare-fun m!1438353 () Bool)

(assert (=> start!133676 m!1438353))

(declare-fun m!1438355 () Bool)

(assert (=> start!133676 m!1438355))

(declare-fun m!1438357 () Bool)

(assert (=> b!1562528 m!1438357))

(declare-fun m!1438359 () Bool)

(assert (=> mapNonEmpty!59466 m!1438359))

(declare-fun m!1438361 () Bool)

(assert (=> b!1562530 m!1438361))

(check-sat (not start!133676) (not b!1562528) tp_is_empty!38727 (not mapNonEmpty!59466) (not b!1562530))
(check-sat)
