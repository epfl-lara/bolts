; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111450 () Bool)

(assert start!111450)

(declare-fun b_free!30071 () Bool)

(declare-fun b_next!30071 () Bool)

(assert (=> start!111450 (= b_free!30071 (not b_next!30071))))

(declare-fun tp!105690 () Bool)

(declare-fun b_and!48311 () Bool)

(assert (=> start!111450 (= tp!105690 b_and!48311)))

(declare-fun b!1318359 () Bool)

(declare-fun res!875055 () Bool)

(declare-fun e!752343 () Bool)

(assert (=> b!1318359 (=> (not res!875055) (not e!752343))))

(declare-datatypes ((array!88683 0))(
  ( (array!88684 (arr!42811 (Array (_ BitVec 32) (_ BitVec 64))) (size!43362 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88683)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1318359 (= res!875055 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43362 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318360 () Bool)

(declare-fun res!875053 () Bool)

(assert (=> b!1318360 (=> (not res!875053) (not e!752343))))

(declare-datatypes ((List!30534 0))(
  ( (Nil!30531) (Cons!30530 (h!31739 (_ BitVec 64)) (t!44161 List!30534)) )
))
(declare-fun arrayNoDuplicates!0 (array!88683 (_ BitVec 32) List!30534) Bool)

(assert (=> b!1318360 (= res!875053 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30531))))

(declare-fun b!1318361 () Bool)

(declare-fun res!875056 () Bool)

(assert (=> b!1318361 (=> (not res!875056) (not e!752343))))

(assert (=> b!1318361 (= res!875056 (not (= (select (arr!42811 _keys!1609) from!2000) k!1164)))))

(declare-fun mapIsEmpty!55484 () Bool)

(declare-fun mapRes!55484 () Bool)

(assert (=> mapIsEmpty!55484 mapRes!55484))

(declare-fun b!1318362 () Bool)

(declare-fun res!875050 () Bool)

(assert (=> b!1318362 (=> (not res!875050) (not e!752343))))

(declare-datatypes ((V!52957 0))(
  ( (V!52958 (val!18020 Int)) )
))
(declare-fun zeroValue!1279 () V!52957)

(declare-datatypes ((ValueCell!17047 0))(
  ( (ValueCellFull!17047 (v!20648 V!52957)) (EmptyCell!17047) )
))
(declare-datatypes ((array!88685 0))(
  ( (array!88686 (arr!42812 (Array (_ BitVec 32) ValueCell!17047)) (size!43363 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88685)

(declare-fun minValue!1279 () V!52957)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23342 0))(
  ( (tuple2!23343 (_1!11681 (_ BitVec 64)) (_2!11681 V!52957)) )
))
(declare-datatypes ((List!30535 0))(
  ( (Nil!30532) (Cons!30531 (h!31740 tuple2!23342) (t!44162 List!30535)) )
))
(declare-datatypes ((ListLongMap!21011 0))(
  ( (ListLongMap!21012 (toList!10521 List!30535)) )
))
(declare-fun contains!8612 (ListLongMap!21011 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5477 (array!88683 array!88685 (_ BitVec 32) (_ BitVec 32) V!52957 V!52957 (_ BitVec 32) Int) ListLongMap!21011)

(assert (=> b!1318362 (= res!875050 (contains!8612 (getCurrentListMap!5477 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1318363 () Bool)

(declare-fun e!752346 () Bool)

(declare-fun e!752344 () Bool)

(assert (=> b!1318363 (= e!752346 (and e!752344 mapRes!55484))))

(declare-fun condMapEmpty!55484 () Bool)

(declare-fun mapDefault!55484 () ValueCell!17047)

