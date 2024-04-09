; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133718 () Bool)

(assert start!133718)

(declare-fun b!1562903 () Bool)

(declare-fun res!1068578 () Bool)

(declare-fun e!871060 () Bool)

(assert (=> b!1562903 (=> (not res!1068578) (not e!871060))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104201 0))(
  ( (array!104202 (arr!50288 (Array (_ BitVec 32) (_ BitVec 64))) (size!50839 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104201)

(declare-datatypes ((V!59899 0))(
  ( (V!59900 (val!19468 Int)) )
))
(declare-datatypes ((ValueCell!18354 0))(
  ( (ValueCellFull!18354 (v!22217 V!59899)) (EmptyCell!18354) )
))
(declare-datatypes ((array!104203 0))(
  ( (array!104204 (arr!50289 (Array (_ BitVec 32) ValueCell!18354)) (size!50840 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104203)

(assert (=> b!1562903 (= res!1068578 (and (= (size!50840 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50839 _keys!637) (size!50840 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1068576 () Bool)

(assert (=> start!133718 (=> (not res!1068576) (not e!871060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133718 (= res!1068576 (validMask!0 mask!947))))

(assert (=> start!133718 e!871060))

(assert (=> start!133718 true))

(declare-fun e!871059 () Bool)

(declare-fun array_inv!39009 (array!104203) Bool)

(assert (=> start!133718 (and (array_inv!39009 _values!487) e!871059)))

(declare-fun array_inv!39010 (array!104201) Bool)

(assert (=> start!133718 (array_inv!39010 _keys!637)))

(declare-fun mapIsEmpty!59529 () Bool)

(declare-fun mapRes!59529 () Bool)

(assert (=> mapIsEmpty!59529 mapRes!59529))

(declare-fun b!1562904 () Bool)

(declare-fun e!871057 () Bool)

(assert (=> b!1562904 (= e!871059 (and e!871057 mapRes!59529))))

(declare-fun condMapEmpty!59529 () Bool)

(declare-fun mapDefault!59529 () ValueCell!18354)

(assert (=> b!1562904 (= condMapEmpty!59529 (= (arr!50289 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18354)) mapDefault!59529)))))

(declare-fun b!1562905 () Bool)

(declare-fun tp_is_empty!38769 () Bool)

(assert (=> b!1562905 (= e!871057 tp_is_empty!38769)))

(declare-fun b!1562906 () Bool)

(declare-fun e!871058 () Bool)

(assert (=> b!1562906 (= e!871058 tp_is_empty!38769)))

(declare-fun b!1562907 () Bool)

(declare-fun res!1068577 () Bool)

(assert (=> b!1562907 (=> (not res!1068577) (not e!871060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104201 (_ BitVec 32)) Bool)

(assert (=> b!1562907 (= res!1068577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562908 () Bool)

(assert (=> b!1562908 (= e!871060 false)))

(declare-fun lt!671745 () Bool)

(declare-datatypes ((List!36663 0))(
  ( (Nil!36660) (Cons!36659 (h!38106 (_ BitVec 64)) (t!51517 List!36663)) )
))
(declare-fun arrayNoDuplicates!0 (array!104201 (_ BitVec 32) List!36663) Bool)

(assert (=> b!1562908 (= lt!671745 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36660))))

(declare-fun mapNonEmpty!59529 () Bool)

(declare-fun tp!113365 () Bool)

(assert (=> mapNonEmpty!59529 (= mapRes!59529 (and tp!113365 e!871058))))

(declare-fun mapValue!59529 () ValueCell!18354)

(declare-fun mapKey!59529 () (_ BitVec 32))

(declare-fun mapRest!59529 () (Array (_ BitVec 32) ValueCell!18354))

(assert (=> mapNonEmpty!59529 (= (arr!50289 _values!487) (store mapRest!59529 mapKey!59529 mapValue!59529))))

(assert (= (and start!133718 res!1068576) b!1562903))

(assert (= (and b!1562903 res!1068578) b!1562907))

(assert (= (and b!1562907 res!1068577) b!1562908))

(assert (= (and b!1562904 condMapEmpty!59529) mapIsEmpty!59529))

(assert (= (and b!1562904 (not condMapEmpty!59529)) mapNonEmpty!59529))

(get-info :version)

(assert (= (and mapNonEmpty!59529 ((_ is ValueCellFull!18354) mapValue!59529)) b!1562906))

(assert (= (and b!1562904 ((_ is ValueCellFull!18354) mapDefault!59529)) b!1562905))

(assert (= start!133718 b!1562904))

(declare-fun m!1438603 () Bool)

(assert (=> start!133718 m!1438603))

(declare-fun m!1438605 () Bool)

(assert (=> start!133718 m!1438605))

(declare-fun m!1438607 () Bool)

(assert (=> start!133718 m!1438607))

(declare-fun m!1438609 () Bool)

(assert (=> b!1562907 m!1438609))

(declare-fun m!1438611 () Bool)

(assert (=> b!1562908 m!1438611))

(declare-fun m!1438613 () Bool)

(assert (=> mapNonEmpty!59529 m!1438613))

(check-sat (not start!133718) tp_is_empty!38769 (not b!1562908) (not mapNonEmpty!59529) (not b!1562907))
(check-sat)
