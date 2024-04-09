; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131804 () Bool)

(assert start!131804)

(declare-fun b!1542776 () Bool)

(declare-fun e!858471 () Bool)

(declare-fun tp_is_empty!37761 () Bool)

(assert (=> b!1542776 (= e!858471 tp_is_empty!37761)))

(declare-fun b!1542777 () Bool)

(declare-fun e!858469 () Bool)

(declare-fun e!858468 () Bool)

(declare-fun mapRes!58345 () Bool)

(assert (=> b!1542777 (= e!858469 (and e!858468 mapRes!58345))))

(declare-fun condMapEmpty!58345 () Bool)

(declare-datatypes ((V!58791 0))(
  ( (V!58792 (val!18958 Int)) )
))
(declare-datatypes ((ValueCell!17970 0))(
  ( (ValueCellFull!17970 (v!21756 V!58791)) (EmptyCell!17970) )
))
(declare-datatypes ((array!102711 0))(
  ( (array!102712 (arr!49553 (Array (_ BitVec 32) ValueCell!17970)) (size!50104 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102711)

(declare-fun mapDefault!58345 () ValueCell!17970)

(assert (=> b!1542777 (= condMapEmpty!58345 (= (arr!49553 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17970)) mapDefault!58345)))))

(declare-fun b!1542778 () Bool)

(declare-fun e!858470 () Bool)

(assert (=> b!1542778 (= e!858470 false)))

(declare-fun lt!665816 () Bool)

(declare-datatypes ((array!102713 0))(
  ( (array!102714 (arr!49554 (Array (_ BitVec 32) (_ BitVec 64))) (size!50105 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102713)

(declare-datatypes ((List!36045 0))(
  ( (Nil!36042) (Cons!36041 (h!37487 (_ BitVec 64)) (t!50746 List!36045)) )
))
(declare-fun arrayNoDuplicates!0 (array!102713 (_ BitVec 32) List!36045) Bool)

(assert (=> b!1542778 (= lt!665816 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36042))))

(declare-fun b!1542779 () Bool)

(declare-fun res!1058738 () Bool)

(assert (=> b!1542779 (=> (not res!1058738) (not e!858470))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1542779 (= res!1058738 (and (= (size!50104 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50105 _keys!618) (size!50104 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542780 () Bool)

(declare-fun res!1058737 () Bool)

(assert (=> b!1542780 (=> (not res!1058737) (not e!858470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102713 (_ BitVec 32)) Bool)

(assert (=> b!1542780 (= res!1058737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1058736 () Bool)

(assert (=> start!131804 (=> (not res!1058736) (not e!858470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131804 (= res!1058736 (validMask!0 mask!926))))

(assert (=> start!131804 e!858470))

(assert (=> start!131804 true))

(declare-fun array_inv!38475 (array!102711) Bool)

(assert (=> start!131804 (and (array_inv!38475 _values!470) e!858469)))

(declare-fun array_inv!38476 (array!102713) Bool)

(assert (=> start!131804 (array_inv!38476 _keys!618)))

(declare-fun mapNonEmpty!58345 () Bool)

(declare-fun tp!110873 () Bool)

(assert (=> mapNonEmpty!58345 (= mapRes!58345 (and tp!110873 e!858471))))

(declare-fun mapKey!58345 () (_ BitVec 32))

(declare-fun mapRest!58345 () (Array (_ BitVec 32) ValueCell!17970))

(declare-fun mapValue!58345 () ValueCell!17970)

(assert (=> mapNonEmpty!58345 (= (arr!49553 _values!470) (store mapRest!58345 mapKey!58345 mapValue!58345))))

(declare-fun b!1542781 () Bool)

(assert (=> b!1542781 (= e!858468 tp_is_empty!37761)))

(declare-fun mapIsEmpty!58345 () Bool)

(assert (=> mapIsEmpty!58345 mapRes!58345))

(assert (= (and start!131804 res!1058736) b!1542779))

(assert (= (and b!1542779 res!1058738) b!1542780))

(assert (= (and b!1542780 res!1058737) b!1542778))

(assert (= (and b!1542777 condMapEmpty!58345) mapIsEmpty!58345))

(assert (= (and b!1542777 (not condMapEmpty!58345)) mapNonEmpty!58345))

(get-info :version)

(assert (= (and mapNonEmpty!58345 ((_ is ValueCellFull!17970) mapValue!58345)) b!1542776))

(assert (= (and b!1542777 ((_ is ValueCellFull!17970) mapDefault!58345)) b!1542781))

(assert (= start!131804 b!1542777))

(declare-fun m!1424311 () Bool)

(assert (=> b!1542778 m!1424311))

(declare-fun m!1424313 () Bool)

(assert (=> b!1542780 m!1424313))

(declare-fun m!1424315 () Bool)

(assert (=> start!131804 m!1424315))

(declare-fun m!1424317 () Bool)

(assert (=> start!131804 m!1424317))

(declare-fun m!1424319 () Bool)

(assert (=> start!131804 m!1424319))

(declare-fun m!1424321 () Bool)

(assert (=> mapNonEmpty!58345 m!1424321))

(check-sat tp_is_empty!37761 (not b!1542780) (not start!131804) (not b!1542778) (not mapNonEmpty!58345))
(check-sat)
