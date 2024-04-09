; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131864 () Bool)

(assert start!131864)

(declare-fun b!1543316 () Bool)

(declare-fun res!1059008 () Bool)

(declare-fun e!858920 () Bool)

(assert (=> b!1543316 (=> (not res!1059008) (not e!858920))))

(declare-datatypes ((array!102821 0))(
  ( (array!102822 (arr!49608 (Array (_ BitVec 32) (_ BitVec 64))) (size!50159 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102821)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102821 (_ BitVec 32)) Bool)

(assert (=> b!1543316 (= res!1059008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58435 () Bool)

(declare-fun mapRes!58435 () Bool)

(declare-fun tp!110963 () Bool)

(declare-fun e!858918 () Bool)

(assert (=> mapNonEmpty!58435 (= mapRes!58435 (and tp!110963 e!858918))))

(declare-fun mapKey!58435 () (_ BitVec 32))

(declare-datatypes ((V!58871 0))(
  ( (V!58872 (val!18988 Int)) )
))
(declare-datatypes ((ValueCell!18000 0))(
  ( (ValueCellFull!18000 (v!21786 V!58871)) (EmptyCell!18000) )
))
(declare-fun mapValue!58435 () ValueCell!18000)

(declare-datatypes ((array!102823 0))(
  ( (array!102824 (arr!49609 (Array (_ BitVec 32) ValueCell!18000)) (size!50160 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102823)

(declare-fun mapRest!58435 () (Array (_ BitVec 32) ValueCell!18000))

(assert (=> mapNonEmpty!58435 (= (arr!49609 _values!470) (store mapRest!58435 mapKey!58435 mapValue!58435))))

(declare-fun b!1543317 () Bool)

(assert (=> b!1543317 (= e!858920 false)))

(declare-fun lt!665906 () Bool)

(declare-datatypes ((List!36067 0))(
  ( (Nil!36064) (Cons!36063 (h!37509 (_ BitVec 64)) (t!50768 List!36067)) )
))
(declare-fun arrayNoDuplicates!0 (array!102821 (_ BitVec 32) List!36067) Bool)

(assert (=> b!1543317 (= lt!665906 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36064))))

(declare-fun b!1543318 () Bool)

(declare-fun res!1059007 () Bool)

(assert (=> b!1543318 (=> (not res!1059007) (not e!858920))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543318 (= res!1059007 (and (= (size!50160 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50159 _keys!618) (size!50160 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1059006 () Bool)

(assert (=> start!131864 (=> (not res!1059006) (not e!858920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131864 (= res!1059006 (validMask!0 mask!926))))

(assert (=> start!131864 e!858920))

(assert (=> start!131864 true))

(declare-fun e!858919 () Bool)

(declare-fun array_inv!38519 (array!102823) Bool)

(assert (=> start!131864 (and (array_inv!38519 _values!470) e!858919)))

(declare-fun array_inv!38520 (array!102821) Bool)

(assert (=> start!131864 (array_inv!38520 _keys!618)))

(declare-fun mapIsEmpty!58435 () Bool)

(assert (=> mapIsEmpty!58435 mapRes!58435))

(declare-fun b!1543319 () Bool)

(declare-fun e!858922 () Bool)

(assert (=> b!1543319 (= e!858919 (and e!858922 mapRes!58435))))

(declare-fun condMapEmpty!58435 () Bool)

(declare-fun mapDefault!58435 () ValueCell!18000)

(assert (=> b!1543319 (= condMapEmpty!58435 (= (arr!49609 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18000)) mapDefault!58435)))))

(declare-fun b!1543320 () Bool)

(declare-fun tp_is_empty!37821 () Bool)

(assert (=> b!1543320 (= e!858922 tp_is_empty!37821)))

(declare-fun b!1543321 () Bool)

(assert (=> b!1543321 (= e!858918 tp_is_empty!37821)))

(assert (= (and start!131864 res!1059006) b!1543318))

(assert (= (and b!1543318 res!1059007) b!1543316))

(assert (= (and b!1543316 res!1059008) b!1543317))

(assert (= (and b!1543319 condMapEmpty!58435) mapIsEmpty!58435))

(assert (= (and b!1543319 (not condMapEmpty!58435)) mapNonEmpty!58435))

(get-info :version)

(assert (= (and mapNonEmpty!58435 ((_ is ValueCellFull!18000) mapValue!58435)) b!1543321))

(assert (= (and b!1543319 ((_ is ValueCellFull!18000) mapDefault!58435)) b!1543320))

(assert (= start!131864 b!1543319))

(declare-fun m!1424671 () Bool)

(assert (=> b!1543316 m!1424671))

(declare-fun m!1424673 () Bool)

(assert (=> mapNonEmpty!58435 m!1424673))

(declare-fun m!1424675 () Bool)

(assert (=> b!1543317 m!1424675))

(declare-fun m!1424677 () Bool)

(assert (=> start!131864 m!1424677))

(declare-fun m!1424679 () Bool)

(assert (=> start!131864 m!1424679))

(declare-fun m!1424681 () Bool)

(assert (=> start!131864 m!1424681))

(check-sat (not start!131864) (not b!1543316) (not mapNonEmpty!58435) tp_is_empty!37821 (not b!1543317))
(check-sat)
