; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131750 () Bool)

(assert start!131750)

(declare-fun mapIsEmpty!58264 () Bool)

(declare-fun mapRes!58264 () Bool)

(assert (=> mapIsEmpty!58264 mapRes!58264))

(declare-fun b!1542290 () Bool)

(declare-fun e!858066 () Bool)

(declare-fun e!858067 () Bool)

(assert (=> b!1542290 (= e!858066 (and e!858067 mapRes!58264))))

(declare-fun condMapEmpty!58264 () Bool)

(declare-datatypes ((V!58719 0))(
  ( (V!58720 (val!18931 Int)) )
))
(declare-datatypes ((ValueCell!17943 0))(
  ( (ValueCellFull!17943 (v!21729 V!58719)) (EmptyCell!17943) )
))
(declare-datatypes ((array!102609 0))(
  ( (array!102610 (arr!49502 (Array (_ BitVec 32) ValueCell!17943)) (size!50053 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102609)

(declare-fun mapDefault!58264 () ValueCell!17943)

(assert (=> b!1542290 (= condMapEmpty!58264 (= (arr!49502 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17943)) mapDefault!58264)))))

(declare-fun b!1542291 () Bool)

(declare-fun e!858064 () Bool)

(assert (=> b!1542291 (= e!858064 false)))

(declare-fun lt!665735 () Bool)

(declare-datatypes ((array!102611 0))(
  ( (array!102612 (arr!49503 (Array (_ BitVec 32) (_ BitVec 64))) (size!50054 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102611)

(declare-datatypes ((List!36029 0))(
  ( (Nil!36026) (Cons!36025 (h!37471 (_ BitVec 64)) (t!50730 List!36029)) )
))
(declare-fun arrayNoDuplicates!0 (array!102611 (_ BitVec 32) List!36029) Bool)

(assert (=> b!1542291 (= lt!665735 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36026))))

(declare-fun mapNonEmpty!58264 () Bool)

(declare-fun tp!110792 () Bool)

(declare-fun e!858065 () Bool)

(assert (=> mapNonEmpty!58264 (= mapRes!58264 (and tp!110792 e!858065))))

(declare-fun mapValue!58264 () ValueCell!17943)

(declare-fun mapRest!58264 () (Array (_ BitVec 32) ValueCell!17943))

(declare-fun mapKey!58264 () (_ BitVec 32))

(assert (=> mapNonEmpty!58264 (= (arr!49502 _values!470) (store mapRest!58264 mapKey!58264 mapValue!58264))))

(declare-fun res!1058494 () Bool)

(assert (=> start!131750 (=> (not res!1058494) (not e!858064))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131750 (= res!1058494 (validMask!0 mask!926))))

(assert (=> start!131750 e!858064))

(assert (=> start!131750 true))

(declare-fun array_inv!38437 (array!102609) Bool)

(assert (=> start!131750 (and (array_inv!38437 _values!470) e!858066)))

(declare-fun array_inv!38438 (array!102611) Bool)

(assert (=> start!131750 (array_inv!38438 _keys!618)))

(declare-fun b!1542292 () Bool)

(declare-fun tp_is_empty!37707 () Bool)

(assert (=> b!1542292 (= e!858067 tp_is_empty!37707)))

(declare-fun b!1542293 () Bool)

(declare-fun res!1058493 () Bool)

(assert (=> b!1542293 (=> (not res!1058493) (not e!858064))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542293 (= res!1058493 (and (= (size!50053 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50054 _keys!618) (size!50053 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542294 () Bool)

(assert (=> b!1542294 (= e!858065 tp_is_empty!37707)))

(declare-fun b!1542295 () Bool)

(declare-fun res!1058495 () Bool)

(assert (=> b!1542295 (=> (not res!1058495) (not e!858064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102611 (_ BitVec 32)) Bool)

(assert (=> b!1542295 (= res!1058495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(assert (= (and start!131750 res!1058494) b!1542293))

(assert (= (and b!1542293 res!1058493) b!1542295))

(assert (= (and b!1542295 res!1058495) b!1542291))

(assert (= (and b!1542290 condMapEmpty!58264) mapIsEmpty!58264))

(assert (= (and b!1542290 (not condMapEmpty!58264)) mapNonEmpty!58264))

(get-info :version)

(assert (= (and mapNonEmpty!58264 ((_ is ValueCellFull!17943) mapValue!58264)) b!1542294))

(assert (= (and b!1542290 ((_ is ValueCellFull!17943) mapDefault!58264)) b!1542292))

(assert (= start!131750 b!1542290))

(declare-fun m!1423987 () Bool)

(assert (=> b!1542291 m!1423987))

(declare-fun m!1423989 () Bool)

(assert (=> mapNonEmpty!58264 m!1423989))

(declare-fun m!1423991 () Bool)

(assert (=> start!131750 m!1423991))

(declare-fun m!1423993 () Bool)

(assert (=> start!131750 m!1423993))

(declare-fun m!1423995 () Bool)

(assert (=> start!131750 m!1423995))

(declare-fun m!1423997 () Bool)

(assert (=> b!1542295 m!1423997))

(check-sat (not mapNonEmpty!58264) tp_is_empty!37707 (not b!1542291) (not b!1542295) (not start!131750))
(check-sat)
