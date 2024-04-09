; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111806 () Bool)

(assert start!111806)

(declare-fun b_free!30427 () Bool)

(declare-fun b_next!30427 () Bool)

(assert (=> start!111806 (= b_free!30427 (not b_next!30427))))

(declare-fun tp!106757 () Bool)

(declare-fun b_and!48975 () Bool)

(assert (=> start!111806 (= tp!106757 b_and!48975)))

(declare-fun mapIsEmpty!56018 () Bool)

(declare-fun mapRes!56018 () Bool)

(assert (=> mapIsEmpty!56018 mapRes!56018))

(declare-fun b!1324325 () Bool)

(declare-fun e!755013 () Bool)

(declare-fun tp_is_empty!36247 () Bool)

(assert (=> b!1324325 (= e!755013 tp_is_empty!36247)))

(declare-fun b!1324326 () Bool)

(declare-fun res!879108 () Bool)

(declare-fun e!755017 () Bool)

(assert (=> b!1324326 (=> (not res!879108) (not e!755017))))

(declare-datatypes ((array!89363 0))(
  ( (array!89364 (arr!43151 (Array (_ BitVec 32) (_ BitVec 64))) (size!43702 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89363)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1324326 (= res!879108 (not (validKeyInArray!0 (select (arr!43151 _keys!1609) from!2000))))))

(declare-fun b!1324327 () Bool)

(declare-fun res!879105 () Bool)

(assert (=> b!1324327 (=> (not res!879105) (not e!755017))))

(declare-datatypes ((List!30786 0))(
  ( (Nil!30783) (Cons!30782 (h!31991 (_ BitVec 64)) (t!44719 List!30786)) )
))
(declare-fun arrayNoDuplicates!0 (array!89363 (_ BitVec 32) List!30786) Bool)

(assert (=> b!1324327 (= res!879105 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30783))))

(declare-fun b!1324328 () Bool)

(declare-fun res!879112 () Bool)

(assert (=> b!1324328 (=> (not res!879112) (not e!755017))))

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1324328 (= res!879112 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43702 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324329 () Bool)

(declare-fun e!755014 () Bool)

(assert (=> b!1324329 (= e!755014 tp_is_empty!36247)))

(declare-fun b!1324330 () Bool)

(assert (=> b!1324330 (= e!755017 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000))))

(declare-fun b!1324331 () Bool)

(declare-fun res!879107 () Bool)

(assert (=> b!1324331 (=> (not res!879107) (not e!755017))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89363 (_ BitVec 32)) Bool)

(assert (=> b!1324331 (= res!879107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324332 () Bool)

(declare-fun res!879109 () Bool)

(assert (=> b!1324332 (=> (not res!879109) (not e!755017))))

(declare-datatypes ((V!53433 0))(
  ( (V!53434 (val!18198 Int)) )
))
(declare-datatypes ((ValueCell!17225 0))(
  ( (ValueCellFull!17225 (v!20826 V!53433)) (EmptyCell!17225) )
))
(declare-datatypes ((array!89365 0))(
  ( (array!89366 (arr!43152 (Array (_ BitVec 32) ValueCell!17225)) (size!43703 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89365)

(assert (=> b!1324332 (= res!879109 (and (= (size!43703 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43702 _keys!1609) (size!43703 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324333 () Bool)

(declare-fun res!879106 () Bool)

(assert (=> b!1324333 (=> (not res!879106) (not e!755017))))

(declare-fun zeroValue!1279 () V!53433)

(declare-fun minValue!1279 () V!53433)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23614 0))(
  ( (tuple2!23615 (_1!11817 (_ BitVec 64)) (_2!11817 V!53433)) )
))
(declare-datatypes ((List!30787 0))(
  ( (Nil!30784) (Cons!30783 (h!31992 tuple2!23614) (t!44720 List!30787)) )
))
(declare-datatypes ((ListLongMap!21283 0))(
  ( (ListLongMap!21284 (toList!10657 List!30787)) )
))
(declare-fun contains!8748 (ListLongMap!21283 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5594 (array!89363 array!89365 (_ BitVec 32) (_ BitVec 32) V!53433 V!53433 (_ BitVec 32) Int) ListLongMap!21283)

(assert (=> b!1324333 (= res!879106 (contains!8748 (getCurrentListMap!5594 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324334 () Bool)

(declare-fun e!755015 () Bool)

(assert (=> b!1324334 (= e!755015 (and e!755014 mapRes!56018))))

(declare-fun condMapEmpty!56018 () Bool)

(declare-fun mapDefault!56018 () ValueCell!17225)

