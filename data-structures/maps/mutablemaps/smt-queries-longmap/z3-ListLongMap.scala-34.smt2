; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!638 () Bool)

(assert start!638)

(declare-fun b_free!111 () Bool)

(declare-fun b_next!111 () Bool)

(assert (=> start!638 (= b_free!111 (not b_next!111))))

(declare-fun tp!551 () Bool)

(declare-fun b_and!249 () Bool)

(assert (=> start!638 (= tp!551 b_and!249)))

(declare-fun mapIsEmpty!242 () Bool)

(declare-fun mapRes!242 () Bool)

(assert (=> mapIsEmpty!242 mapRes!242))

(declare-fun b!4099 () Bool)

(declare-fun e!2133 () Bool)

(assert (=> b!4099 (= e!2133 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun lt!567 () Bool)

(declare-datatypes ((V!429 0))(
  ( (V!430 (val!100 Int)) )
))
(declare-datatypes ((ValueCell!78 0))(
  ( (ValueCellFull!78 (v!1187 V!429)) (EmptyCell!78) )
))
(declare-datatypes ((array!311 0))(
  ( (array!312 (arr!148 (Array (_ BitVec 32) ValueCell!78)) (size!210 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!311)

(declare-fun minValue!1434 () V!429)

(declare-datatypes ((array!313 0))(
  ( (array!314 (arr!149 (Array (_ BitVec 32) (_ BitVec 64))) (size!211 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!313)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!429)

(declare-datatypes ((tuple2!88 0))(
  ( (tuple2!89 (_1!44 (_ BitVec 64)) (_2!44 V!429)) )
))
(declare-datatypes ((List!92 0))(
  ( (Nil!89) (Cons!88 (h!654 tuple2!88) (t!2219 List!92)) )
))
(declare-datatypes ((ListLongMap!93 0))(
  ( (ListLongMap!94 (toList!62 List!92)) )
))
(declare-fun contains!32 (ListLongMap!93 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!21 (array!313 array!311 (_ BitVec 32) (_ BitVec 32) V!429 V!429 (_ BitVec 32) Int) ListLongMap!93)

(assert (=> b!4099 (= lt!567 (contains!32 (getCurrentListMap!21 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapNonEmpty!242 () Bool)

(declare-fun tp!550 () Bool)

(declare-fun e!2132 () Bool)

(assert (=> mapNonEmpty!242 (= mapRes!242 (and tp!550 e!2132))))

(declare-fun mapKey!242 () (_ BitVec 32))

(declare-fun mapRest!242 () (Array (_ BitVec 32) ValueCell!78))

(declare-fun mapValue!242 () ValueCell!78)

(assert (=> mapNonEmpty!242 (= (arr!148 _values!1492) (store mapRest!242 mapKey!242 mapValue!242))))

(declare-fun b!4100 () Bool)

(declare-fun res!5547 () Bool)

(assert (=> b!4100 (=> (not res!5547) (not e!2133))))

(assert (=> b!4100 (= res!5547 (and (= (size!210 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!211 _keys!1806) (size!210 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4102 () Bool)

(declare-fun res!5548 () Bool)

(assert (=> b!4102 (=> (not res!5548) (not e!2133))))

(declare-datatypes ((List!93 0))(
  ( (Nil!90) (Cons!89 (h!655 (_ BitVec 64)) (t!2220 List!93)) )
))
(declare-fun arrayNoDuplicates!0 (array!313 (_ BitVec 32) List!93) Bool)

(assert (=> b!4102 (= res!5548 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!90))))

(declare-fun b!4103 () Bool)

(declare-fun tp_is_empty!189 () Bool)

(assert (=> b!4103 (= e!2132 tp_is_empty!189)))

(declare-fun b!4104 () Bool)

(declare-fun e!2134 () Bool)

(declare-fun e!2135 () Bool)

(assert (=> b!4104 (= e!2134 (and e!2135 mapRes!242))))

(declare-fun condMapEmpty!242 () Bool)

(declare-fun mapDefault!242 () ValueCell!78)

(assert (=> b!4104 (= condMapEmpty!242 (= (arr!148 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!78)) mapDefault!242)))))

(declare-fun b!4105 () Bool)

(declare-fun res!5545 () Bool)

(assert (=> b!4105 (=> (not res!5545) (not e!2133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!313 (_ BitVec 32)) Bool)

(assert (=> b!4105 (= res!5545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!4101 () Bool)

(assert (=> b!4101 (= e!2135 tp_is_empty!189)))

(declare-fun res!5546 () Bool)

(assert (=> start!638 (=> (not res!5546) (not e!2133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!638 (= res!5546 (validMask!0 mask!2250))))

(assert (=> start!638 e!2133))

(assert (=> start!638 tp!551))

(assert (=> start!638 true))

(declare-fun array_inv!103 (array!311) Bool)

(assert (=> start!638 (and (array_inv!103 _values!1492) e!2134)))

(assert (=> start!638 tp_is_empty!189))

(declare-fun array_inv!104 (array!313) Bool)

(assert (=> start!638 (array_inv!104 _keys!1806)))

(assert (= (and start!638 res!5546) b!4100))

(assert (= (and b!4100 res!5547) b!4105))

(assert (= (and b!4105 res!5545) b!4102))

(assert (= (and b!4102 res!5548) b!4099))

(assert (= (and b!4104 condMapEmpty!242) mapIsEmpty!242))

(assert (= (and b!4104 (not condMapEmpty!242)) mapNonEmpty!242))

(get-info :version)

(assert (= (and mapNonEmpty!242 ((_ is ValueCellFull!78) mapValue!242)) b!4103))

(assert (= (and b!4104 ((_ is ValueCellFull!78) mapDefault!242)) b!4101))

(assert (= start!638 b!4104))

(declare-fun m!2127 () Bool)

(assert (=> b!4105 m!2127))

(declare-fun m!2129 () Bool)

(assert (=> b!4102 m!2129))

(declare-fun m!2131 () Bool)

(assert (=> b!4099 m!2131))

(assert (=> b!4099 m!2131))

(declare-fun m!2133 () Bool)

(assert (=> b!4099 m!2133))

(declare-fun m!2135 () Bool)

(assert (=> start!638 m!2135))

(declare-fun m!2137 () Bool)

(assert (=> start!638 m!2137))

(declare-fun m!2139 () Bool)

(assert (=> start!638 m!2139))

(declare-fun m!2141 () Bool)

(assert (=> mapNonEmpty!242 m!2141))

(check-sat (not b!4105) (not mapNonEmpty!242) (not b!4102) (not start!638) (not b!4099) (not b_next!111) tp_is_empty!189 b_and!249)
(check-sat b_and!249 (not b_next!111))
