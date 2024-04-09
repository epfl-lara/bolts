; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131762 () Bool)

(assert start!131762)

(declare-fun mapIsEmpty!58282 () Bool)

(declare-fun mapRes!58282 () Bool)

(assert (=> mapIsEmpty!58282 mapRes!58282))

(declare-fun b!1542398 () Bool)

(declare-fun res!1058547 () Bool)

(declare-fun e!858153 () Bool)

(assert (=> b!1542398 (=> (not res!1058547) (not e!858153))))

(declare-datatypes ((array!102633 0))(
  ( (array!102634 (arr!49514 (Array (_ BitVec 32) (_ BitVec 64))) (size!50065 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102633)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58735 0))(
  ( (V!58736 (val!18937 Int)) )
))
(declare-datatypes ((ValueCell!17949 0))(
  ( (ValueCellFull!17949 (v!21735 V!58735)) (EmptyCell!17949) )
))
(declare-datatypes ((array!102635 0))(
  ( (array!102636 (arr!49515 (Array (_ BitVec 32) ValueCell!17949)) (size!50066 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102635)

(assert (=> b!1542398 (= res!1058547 (and (= (size!50066 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50065 _keys!618) (size!50066 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058548 () Bool)

(assert (=> start!131762 (=> (not res!1058548) (not e!858153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131762 (= res!1058548 (validMask!0 mask!926))))

(assert (=> start!131762 e!858153))

(assert (=> start!131762 true))

(declare-fun e!858156 () Bool)

(declare-fun array_inv!38449 (array!102635) Bool)

(assert (=> start!131762 (and (array_inv!38449 _values!470) e!858156)))

(declare-fun array_inv!38450 (array!102633) Bool)

(assert (=> start!131762 (array_inv!38450 _keys!618)))

(declare-fun b!1542399 () Bool)

(declare-fun res!1058549 () Bool)

(assert (=> b!1542399 (=> (not res!1058549) (not e!858153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102633 (_ BitVec 32)) Bool)

(assert (=> b!1542399 (= res!1058549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542400 () Bool)

(declare-fun e!858155 () Bool)

(assert (=> b!1542400 (= e!858156 (and e!858155 mapRes!58282))))

(declare-fun condMapEmpty!58282 () Bool)

(declare-fun mapDefault!58282 () ValueCell!17949)

(assert (=> b!1542400 (= condMapEmpty!58282 (= (arr!49515 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17949)) mapDefault!58282)))))

(declare-fun mapNonEmpty!58282 () Bool)

(declare-fun tp!110810 () Bool)

(declare-fun e!858154 () Bool)

(assert (=> mapNonEmpty!58282 (= mapRes!58282 (and tp!110810 e!858154))))

(declare-fun mapKey!58282 () (_ BitVec 32))

(declare-fun mapValue!58282 () ValueCell!17949)

(declare-fun mapRest!58282 () (Array (_ BitVec 32) ValueCell!17949))

(assert (=> mapNonEmpty!58282 (= (arr!49515 _values!470) (store mapRest!58282 mapKey!58282 mapValue!58282))))

(declare-fun b!1542401 () Bool)

(declare-fun tp_is_empty!37719 () Bool)

(assert (=> b!1542401 (= e!858154 tp_is_empty!37719)))

(declare-fun b!1542402 () Bool)

(assert (=> b!1542402 (= e!858153 false)))

(declare-fun lt!665753 () Bool)

(declare-datatypes ((List!36032 0))(
  ( (Nil!36029) (Cons!36028 (h!37474 (_ BitVec 64)) (t!50733 List!36032)) )
))
(declare-fun arrayNoDuplicates!0 (array!102633 (_ BitVec 32) List!36032) Bool)

(assert (=> b!1542402 (= lt!665753 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36029))))

(declare-fun b!1542403 () Bool)

(assert (=> b!1542403 (= e!858155 tp_is_empty!37719)))

(assert (= (and start!131762 res!1058548) b!1542398))

(assert (= (and b!1542398 res!1058547) b!1542399))

(assert (= (and b!1542399 res!1058549) b!1542402))

(assert (= (and b!1542400 condMapEmpty!58282) mapIsEmpty!58282))

(assert (= (and b!1542400 (not condMapEmpty!58282)) mapNonEmpty!58282))

(get-info :version)

(assert (= (and mapNonEmpty!58282 ((_ is ValueCellFull!17949) mapValue!58282)) b!1542401))

(assert (= (and b!1542400 ((_ is ValueCellFull!17949) mapDefault!58282)) b!1542403))

(assert (= start!131762 b!1542400))

(declare-fun m!1424059 () Bool)

(assert (=> start!131762 m!1424059))

(declare-fun m!1424061 () Bool)

(assert (=> start!131762 m!1424061))

(declare-fun m!1424063 () Bool)

(assert (=> start!131762 m!1424063))

(declare-fun m!1424065 () Bool)

(assert (=> b!1542399 m!1424065))

(declare-fun m!1424067 () Bool)

(assert (=> mapNonEmpty!58282 m!1424067))

(declare-fun m!1424069 () Bool)

(assert (=> b!1542402 m!1424069))

(check-sat (not mapNonEmpty!58282) tp_is_empty!37719 (not b!1542402) (not start!131762) (not b!1542399))
(check-sat)
