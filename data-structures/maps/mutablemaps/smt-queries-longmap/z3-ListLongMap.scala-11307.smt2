; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131780 () Bool)

(assert start!131780)

(declare-fun mapIsEmpty!58309 () Bool)

(declare-fun mapRes!58309 () Bool)

(assert (=> mapIsEmpty!58309 mapRes!58309))

(declare-fun b!1542560 () Bool)

(declare-fun e!858291 () Bool)

(declare-fun tp_is_empty!37737 () Bool)

(assert (=> b!1542560 (= e!858291 tp_is_empty!37737)))

(declare-fun b!1542561 () Bool)

(declare-fun e!858290 () Bool)

(assert (=> b!1542561 (= e!858290 false)))

(declare-fun lt!665780 () Bool)

(declare-datatypes ((array!102669 0))(
  ( (array!102670 (arr!49532 (Array (_ BitVec 32) (_ BitVec 64))) (size!50083 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102669)

(declare-datatypes ((List!36038 0))(
  ( (Nil!36035) (Cons!36034 (h!37480 (_ BitVec 64)) (t!50739 List!36038)) )
))
(declare-fun arrayNoDuplicates!0 (array!102669 (_ BitVec 32) List!36038) Bool)

(assert (=> b!1542561 (= lt!665780 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36035))))

(declare-fun b!1542562 () Bool)

(declare-fun e!858292 () Bool)

(declare-fun e!858289 () Bool)

(assert (=> b!1542562 (= e!858292 (and e!858289 mapRes!58309))))

(declare-fun condMapEmpty!58309 () Bool)

(declare-datatypes ((V!58759 0))(
  ( (V!58760 (val!18946 Int)) )
))
(declare-datatypes ((ValueCell!17958 0))(
  ( (ValueCellFull!17958 (v!21744 V!58759)) (EmptyCell!17958) )
))
(declare-datatypes ((array!102671 0))(
  ( (array!102672 (arr!49533 (Array (_ BitVec 32) ValueCell!17958)) (size!50084 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102671)

(declare-fun mapDefault!58309 () ValueCell!17958)

(assert (=> b!1542562 (= condMapEmpty!58309 (= (arr!49533 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17958)) mapDefault!58309)))))

(declare-fun b!1542563 () Bool)

(declare-fun res!1058629 () Bool)

(assert (=> b!1542563 (=> (not res!1058629) (not e!858290))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102669 (_ BitVec 32)) Bool)

(assert (=> b!1542563 (= res!1058629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542564 () Bool)

(declare-fun res!1058630 () Bool)

(assert (=> b!1542564 (=> (not res!1058630) (not e!858290))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542564 (= res!1058630 (and (= (size!50084 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50083 _keys!618) (size!50084 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58309 () Bool)

(declare-fun tp!110837 () Bool)

(assert (=> mapNonEmpty!58309 (= mapRes!58309 (and tp!110837 e!858291))))

(declare-fun mapRest!58309 () (Array (_ BitVec 32) ValueCell!17958))

(declare-fun mapKey!58309 () (_ BitVec 32))

(declare-fun mapValue!58309 () ValueCell!17958)

(assert (=> mapNonEmpty!58309 (= (arr!49533 _values!470) (store mapRest!58309 mapKey!58309 mapValue!58309))))

(declare-fun b!1542565 () Bool)

(assert (=> b!1542565 (= e!858289 tp_is_empty!37737)))

(declare-fun res!1058628 () Bool)

(assert (=> start!131780 (=> (not res!1058628) (not e!858290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131780 (= res!1058628 (validMask!0 mask!926))))

(assert (=> start!131780 e!858290))

(assert (=> start!131780 true))

(declare-fun array_inv!38461 (array!102671) Bool)

(assert (=> start!131780 (and (array_inv!38461 _values!470) e!858292)))

(declare-fun array_inv!38462 (array!102669) Bool)

(assert (=> start!131780 (array_inv!38462 _keys!618)))

(assert (= (and start!131780 res!1058628) b!1542564))

(assert (= (and b!1542564 res!1058630) b!1542563))

(assert (= (and b!1542563 res!1058629) b!1542561))

(assert (= (and b!1542562 condMapEmpty!58309) mapIsEmpty!58309))

(assert (= (and b!1542562 (not condMapEmpty!58309)) mapNonEmpty!58309))

(get-info :version)

(assert (= (and mapNonEmpty!58309 ((_ is ValueCellFull!17958) mapValue!58309)) b!1542560))

(assert (= (and b!1542562 ((_ is ValueCellFull!17958) mapDefault!58309)) b!1542565))

(assert (= start!131780 b!1542562))

(declare-fun m!1424167 () Bool)

(assert (=> b!1542561 m!1424167))

(declare-fun m!1424169 () Bool)

(assert (=> b!1542563 m!1424169))

(declare-fun m!1424171 () Bool)

(assert (=> mapNonEmpty!58309 m!1424171))

(declare-fun m!1424173 () Bool)

(assert (=> start!131780 m!1424173))

(declare-fun m!1424175 () Bool)

(assert (=> start!131780 m!1424175))

(declare-fun m!1424177 () Bool)

(assert (=> start!131780 m!1424177))

(check-sat (not b!1542561) (not b!1542563) (not mapNonEmpty!58309) (not start!131780) tp_is_empty!37737)
(check-sat)
