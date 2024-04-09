; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111820 () Bool)

(assert start!111820)

(declare-fun b_free!30441 () Bool)

(declare-fun b_next!30441 () Bool)

(assert (=> start!111820 (= b_free!30441 (not b_next!30441))))

(declare-fun tp!106799 () Bool)

(declare-fun b_and!48989 () Bool)

(assert (=> start!111820 (= tp!106799 b_and!48989)))

(declare-fun res!879232 () Bool)

(declare-fun e!755120 () Bool)

(assert (=> start!111820 (=> (not res!879232) (not e!755120))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111820 (= res!879232 (validMask!0 mask!2019))))

(assert (=> start!111820 e!755120))

(declare-datatypes ((array!89391 0))(
  ( (array!89392 (arr!43165 (Array (_ BitVec 32) (_ BitVec 64))) (size!43716 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89391)

(declare-fun array_inv!32525 (array!89391) Bool)

(assert (=> start!111820 (array_inv!32525 _keys!1609)))

(assert (=> start!111820 true))

(declare-fun tp_is_empty!36261 () Bool)

(assert (=> start!111820 tp_is_empty!36261))

(declare-datatypes ((V!53451 0))(
  ( (V!53452 (val!18205 Int)) )
))
(declare-datatypes ((ValueCell!17232 0))(
  ( (ValueCellFull!17232 (v!20833 V!53451)) (EmptyCell!17232) )
))
(declare-datatypes ((array!89393 0))(
  ( (array!89394 (arr!43166 (Array (_ BitVec 32) ValueCell!17232)) (size!43717 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89393)

(declare-fun e!755122 () Bool)

(declare-fun array_inv!32526 (array!89393) Bool)

(assert (=> start!111820 (and (array_inv!32526 _values!1337) e!755122)))

(assert (=> start!111820 tp!106799))

(declare-fun b!1324514 () Bool)

(declare-fun e!755121 () Bool)

(declare-fun mapRes!56039 () Bool)

(assert (=> b!1324514 (= e!755122 (and e!755121 mapRes!56039))))

(declare-fun condMapEmpty!56039 () Bool)

(declare-fun mapDefault!56039 () ValueCell!17232)

(assert (=> b!1324514 (= condMapEmpty!56039 (= (arr!43166 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17232)) mapDefault!56039)))))

(declare-fun b!1324515 () Bool)

(declare-fun res!879234 () Bool)

(assert (=> b!1324515 (=> (not res!879234) (not e!755120))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1324515 (= res!879234 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43716 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324516 () Bool)

(assert (=> b!1324516 (= e!755121 tp_is_empty!36261)))

(declare-fun b!1324517 () Bool)

(assert (=> b!1324517 (= e!755120 false)))

(declare-fun zeroValue!1279 () V!53451)

(declare-fun minValue!1279 () V!53451)

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589417 () Bool)

(declare-datatypes ((tuple2!23626 0))(
  ( (tuple2!23627 (_1!11823 (_ BitVec 64)) (_2!11823 V!53451)) )
))
(declare-datatypes ((List!30797 0))(
  ( (Nil!30794) (Cons!30793 (h!32002 tuple2!23626) (t!44730 List!30797)) )
))
(declare-datatypes ((ListLongMap!21295 0))(
  ( (ListLongMap!21296 (toList!10663 List!30797)) )
))
(declare-fun contains!8754 (ListLongMap!21295 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5600 (array!89391 array!89393 (_ BitVec 32) (_ BitVec 32) V!53451 V!53451 (_ BitVec 32) Int) ListLongMap!21295)

(assert (=> b!1324517 (= lt!589417 (contains!8754 (getCurrentListMap!5600 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapIsEmpty!56039 () Bool)

(assert (=> mapIsEmpty!56039 mapRes!56039))

(declare-fun b!1324518 () Bool)

(declare-fun res!879235 () Bool)

(assert (=> b!1324518 (=> (not res!879235) (not e!755120))))

(assert (=> b!1324518 (= res!879235 (and (= (size!43717 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43716 _keys!1609) (size!43717 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324519 () Bool)

(declare-fun e!755119 () Bool)

(assert (=> b!1324519 (= e!755119 tp_is_empty!36261)))

(declare-fun b!1324520 () Bool)

(declare-fun res!879231 () Bool)

(assert (=> b!1324520 (=> (not res!879231) (not e!755120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89391 (_ BitVec 32)) Bool)

(assert (=> b!1324520 (= res!879231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!56039 () Bool)

(declare-fun tp!106800 () Bool)

(assert (=> mapNonEmpty!56039 (= mapRes!56039 (and tp!106800 e!755119))))

(declare-fun mapKey!56039 () (_ BitVec 32))

(declare-fun mapValue!56039 () ValueCell!17232)

(declare-fun mapRest!56039 () (Array (_ BitVec 32) ValueCell!17232))

(assert (=> mapNonEmpty!56039 (= (arr!43166 _values!1337) (store mapRest!56039 mapKey!56039 mapValue!56039))))

(declare-fun b!1324521 () Bool)

(declare-fun res!879233 () Bool)

(assert (=> b!1324521 (=> (not res!879233) (not e!755120))))

(declare-datatypes ((List!30798 0))(
  ( (Nil!30795) (Cons!30794 (h!32003 (_ BitVec 64)) (t!44731 List!30798)) )
))
(declare-fun arrayNoDuplicates!0 (array!89391 (_ BitVec 32) List!30798) Bool)

(assert (=> b!1324521 (= res!879233 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30795))))

(assert (= (and start!111820 res!879232) b!1324518))

(assert (= (and b!1324518 res!879235) b!1324520))

(assert (= (and b!1324520 res!879231) b!1324521))

(assert (= (and b!1324521 res!879233) b!1324515))

(assert (= (and b!1324515 res!879234) b!1324517))

(assert (= (and b!1324514 condMapEmpty!56039) mapIsEmpty!56039))

(assert (= (and b!1324514 (not condMapEmpty!56039)) mapNonEmpty!56039))

(get-info :version)

(assert (= (and mapNonEmpty!56039 ((_ is ValueCellFull!17232) mapValue!56039)) b!1324519))

(assert (= (and b!1324514 ((_ is ValueCellFull!17232) mapDefault!56039)) b!1324516))

(assert (= start!111820 b!1324514))

(declare-fun m!1213351 () Bool)

(assert (=> mapNonEmpty!56039 m!1213351))

(declare-fun m!1213353 () Bool)

(assert (=> b!1324520 m!1213353))

(declare-fun m!1213355 () Bool)

(assert (=> b!1324517 m!1213355))

(assert (=> b!1324517 m!1213355))

(declare-fun m!1213357 () Bool)

(assert (=> b!1324517 m!1213357))

(declare-fun m!1213359 () Bool)

(assert (=> start!111820 m!1213359))

(declare-fun m!1213361 () Bool)

(assert (=> start!111820 m!1213361))

(declare-fun m!1213363 () Bool)

(assert (=> start!111820 m!1213363))

(declare-fun m!1213365 () Bool)

(assert (=> b!1324521 m!1213365))

(check-sat (not b!1324521) b_and!48989 tp_is_empty!36261 (not mapNonEmpty!56039) (not b!1324520) (not start!111820) (not b_next!30441) (not b!1324517))
(check-sat b_and!48989 (not b_next!30441))
