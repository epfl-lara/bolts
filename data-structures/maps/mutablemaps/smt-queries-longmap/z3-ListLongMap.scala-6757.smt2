; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84824 () Bool)

(assert start!84824)

(declare-fun res!662762 () Bool)

(declare-fun e!559041 () Bool)

(assert (=> start!84824 (=> (not res!662762) (not e!559041))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84824 (= res!662762 (validMask!0 mask!2471))))

(assert (=> start!84824 e!559041))

(assert (=> start!84824 true))

(declare-datatypes ((V!36075 0))(
  ( (V!36076 (val!11710 Int)) )
))
(declare-datatypes ((ValueCell!11178 0))(
  ( (ValueCellFull!11178 (v!14286 V!36075)) (EmptyCell!11178) )
))
(declare-datatypes ((array!62587 0))(
  ( (array!62588 (arr!30139 (Array (_ BitVec 32) ValueCell!11178)) (size!30619 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62587)

(declare-fun e!559040 () Bool)

(declare-fun array_inv!23141 (array!62587) Bool)

(assert (=> start!84824 (and (array_inv!23141 _values!1551) e!559040)))

(declare-datatypes ((array!62589 0))(
  ( (array!62590 (arr!30140 (Array (_ BitVec 32) (_ BitVec 64))) (size!30620 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62589)

(declare-fun array_inv!23142 (array!62589) Bool)

(assert (=> start!84824 (array_inv!23142 _keys!1945)))

(declare-fun b!991271 () Bool)

(declare-fun e!559039 () Bool)

(declare-fun mapRes!37035 () Bool)

(assert (=> b!991271 (= e!559040 (and e!559039 mapRes!37035))))

(declare-fun condMapEmpty!37035 () Bool)

(declare-fun mapDefault!37035 () ValueCell!11178)

(assert (=> b!991271 (= condMapEmpty!37035 (= (arr!30139 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11178)) mapDefault!37035)))))

(declare-fun b!991272 () Bool)

(declare-fun e!559037 () Bool)

(declare-fun tp_is_empty!23319 () Bool)

(assert (=> b!991272 (= e!559037 tp_is_empty!23319)))

(declare-fun mapNonEmpty!37035 () Bool)

(declare-fun tp!70107 () Bool)

(assert (=> mapNonEmpty!37035 (= mapRes!37035 (and tp!70107 e!559037))))

(declare-fun mapRest!37035 () (Array (_ BitVec 32) ValueCell!11178))

(declare-fun mapKey!37035 () (_ BitVec 32))

(declare-fun mapValue!37035 () ValueCell!11178)

(assert (=> mapNonEmpty!37035 (= (arr!30139 _values!1551) (store mapRest!37035 mapKey!37035 mapValue!37035))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-fun b!991273 () Bool)

(assert (=> b!991273 (= e!559041 (and (= (size!30619 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30620 _keys!1945) (size!30619 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011) (not (= (size!30620 _keys!1945) (bvadd #b00000000000000000000000000000001 mask!2471)))))))

(declare-fun mapIsEmpty!37035 () Bool)

(assert (=> mapIsEmpty!37035 mapRes!37035))

(declare-fun b!991274 () Bool)

(assert (=> b!991274 (= e!559039 tp_is_empty!23319)))

(assert (= (and start!84824 res!662762) b!991273))

(assert (= (and b!991271 condMapEmpty!37035) mapIsEmpty!37035))

(assert (= (and b!991271 (not condMapEmpty!37035)) mapNonEmpty!37035))

(get-info :version)

(assert (= (and mapNonEmpty!37035 ((_ is ValueCellFull!11178) mapValue!37035)) b!991272))

(assert (= (and b!991271 ((_ is ValueCellFull!11178) mapDefault!37035)) b!991274))

(assert (= start!84824 b!991271))

(declare-fun m!919337 () Bool)

(assert (=> start!84824 m!919337))

(declare-fun m!919339 () Bool)

(assert (=> start!84824 m!919339))

(declare-fun m!919341 () Bool)

(assert (=> start!84824 m!919341))

(declare-fun m!919343 () Bool)

(assert (=> mapNonEmpty!37035 m!919343))

(check-sat (not start!84824) (not mapNonEmpty!37035) tp_is_empty!23319)
(check-sat)
