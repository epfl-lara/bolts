; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111918 () Bool)

(assert start!111918)

(declare-fun b_free!30481 () Bool)

(declare-fun b_next!30481 () Bool)

(assert (=> start!111918 (= b_free!30481 (not b_next!30481))))

(declare-fun tp!106924 () Bool)

(declare-fun b_and!49067 () Bool)

(assert (=> start!111918 (= tp!106924 b_and!49067)))

(declare-fun b!1325597 () Bool)

(declare-fun res!879872 () Bool)

(declare-fun e!755677 () Bool)

(assert (=> b!1325597 (=> (not res!879872) (not e!755677))))

(declare-datatypes ((array!89471 0))(
  ( (array!89472 (arr!43204 (Array (_ BitVec 32) (_ BitVec 64))) (size!43755 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89471)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53505 0))(
  ( (V!53506 (val!18225 Int)) )
))
(declare-fun zeroValue!1279 () V!53505)

(declare-datatypes ((ValueCell!17252 0))(
  ( (ValueCellFull!17252 (v!20856 V!53505)) (EmptyCell!17252) )
))
(declare-datatypes ((array!89473 0))(
  ( (array!89474 (arr!43205 (Array (_ BitVec 32) ValueCell!17252)) (size!43756 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89473)

(declare-fun minValue!1279 () V!53505)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23658 0))(
  ( (tuple2!23659 (_1!11839 (_ BitVec 64)) (_2!11839 V!53505)) )
))
(declare-datatypes ((List!30826 0))(
  ( (Nil!30823) (Cons!30822 (h!32031 tuple2!23658) (t!44785 List!30826)) )
))
(declare-datatypes ((ListLongMap!21327 0))(
  ( (ListLongMap!21328 (toList!10679 List!30826)) )
))
(declare-fun contains!8772 (ListLongMap!21327 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5613 (array!89471 array!89473 (_ BitVec 32) (_ BitVec 32) V!53505 V!53505 (_ BitVec 32) Int) ListLongMap!21327)

(assert (=> b!1325597 (= res!879872 (contains!8772 (getCurrentListMap!5613 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1325598 () Bool)

(declare-fun res!879875 () Bool)

(assert (=> b!1325598 (=> (not res!879875) (not e!755677))))

(assert (=> b!1325598 (= res!879875 (and (= (size!43756 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43755 _keys!1609) (size!43756 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1325599 () Bool)

(declare-fun res!879871 () Bool)

(assert (=> b!1325599 (=> (not res!879871) (not e!755677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325599 (= res!879871 (validKeyInArray!0 (select (arr!43204 _keys!1609) from!2000)))))

(declare-fun b!1325600 () Bool)

(declare-fun res!879873 () Bool)

(assert (=> b!1325600 (=> (not res!879873) (not e!755677))))

(declare-datatypes ((List!30827 0))(
  ( (Nil!30824) (Cons!30823 (h!32032 (_ BitVec 64)) (t!44786 List!30827)) )
))
(declare-fun arrayNoDuplicates!0 (array!89471 (_ BitVec 32) List!30827) Bool)

(assert (=> b!1325600 (= res!879873 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30824))))

(declare-fun b!1325601 () Bool)

(declare-fun res!879869 () Bool)

(assert (=> b!1325601 (=> (not res!879869) (not e!755677))))

(assert (=> b!1325601 (= res!879869 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43755 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325602 () Bool)

(declare-fun e!755679 () Bool)

(declare-fun tp_is_empty!36301 () Bool)

(assert (=> b!1325602 (= e!755679 tp_is_empty!36301)))

(declare-fun b!1325603 () Bool)

(assert (=> b!1325603 (= e!755677 (not true))))

(declare-fun lt!589759 () ListLongMap!21327)

(assert (=> b!1325603 (contains!8772 lt!589759 k!1164)))

(declare-datatypes ((Unit!43594 0))(
  ( (Unit!43595) )
))
(declare-fun lt!589758 () Unit!43594)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!204 ((_ BitVec 64) (_ BitVec 64) V!53505 ListLongMap!21327) Unit!43594)

(assert (=> b!1325603 (= lt!589758 (lemmaInListMapAfterAddingDiffThenInBefore!204 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589759))))

(declare-fun +!4594 (ListLongMap!21327 tuple2!23658) ListLongMap!21327)

(declare-fun getCurrentListMapNoExtraKeys!6312 (array!89471 array!89473 (_ BitVec 32) (_ BitVec 32) V!53505 V!53505 (_ BitVec 32) Int) ListLongMap!21327)

(declare-fun get!21805 (ValueCell!17252 V!53505) V!53505)

(declare-fun dynLambda!3631 (Int (_ BitVec 64)) V!53505)

(assert (=> b!1325603 (= lt!589759 (+!4594 (+!4594 (getCurrentListMapNoExtraKeys!6312 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23659 (select (arr!43204 _keys!1609) from!2000) (get!21805 (select (arr!43205 _values!1337) from!2000) (dynLambda!3631 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1325604 () Bool)

(declare-fun e!755678 () Bool)

(assert (=> b!1325604 (= e!755678 tp_is_empty!36301)))

(declare-fun mapIsEmpty!56103 () Bool)

(declare-fun mapRes!56103 () Bool)

(assert (=> mapIsEmpty!56103 mapRes!56103))

(declare-fun res!879874 () Bool)

(assert (=> start!111918 (=> (not res!879874) (not e!755677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111918 (= res!879874 (validMask!0 mask!2019))))

(assert (=> start!111918 e!755677))

(declare-fun array_inv!32553 (array!89471) Bool)

(assert (=> start!111918 (array_inv!32553 _keys!1609)))

(assert (=> start!111918 true))

(assert (=> start!111918 tp_is_empty!36301))

(declare-fun e!755676 () Bool)

(declare-fun array_inv!32554 (array!89473) Bool)

(assert (=> start!111918 (and (array_inv!32554 _values!1337) e!755676)))

(assert (=> start!111918 tp!106924))

(declare-fun b!1325605 () Bool)

(assert (=> b!1325605 (= e!755676 (and e!755679 mapRes!56103))))

(declare-fun condMapEmpty!56103 () Bool)

(declare-fun mapDefault!56103 () ValueCell!17252)

