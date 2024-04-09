; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111540 () Bool)

(assert start!111540)

(declare-fun b_free!30161 () Bool)

(declare-fun b_next!30161 () Bool)

(assert (=> start!111540 (= b_free!30161 (not b_next!30161))))

(declare-fun tp!105959 () Bool)

(declare-fun b_and!48491 () Bool)

(assert (=> start!111540 (= tp!105959 b_and!48491)))

(declare-fun b!1319934 () Bool)

(declare-fun res!876131 () Bool)

(declare-fun e!753018 () Bool)

(assert (=> b!1319934 (=> (not res!876131) (not e!753018))))

(declare-datatypes ((array!88859 0))(
  ( (array!88860 (arr!42899 (Array (_ BitVec 32) (_ BitVec 64))) (size!43450 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88859)

(declare-datatypes ((List!30604 0))(
  ( (Nil!30601) (Cons!30600 (h!31809 (_ BitVec 64)) (t!44321 List!30604)) )
))
(declare-fun arrayNoDuplicates!0 (array!88859 (_ BitVec 32) List!30604) Bool)

(assert (=> b!1319934 (= res!876131 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30601))))

(declare-fun b!1319935 () Bool)

(declare-fun res!876134 () Bool)

(assert (=> b!1319935 (=> (not res!876134) (not e!753018))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88859 (_ BitVec 32)) Bool)

(assert (=> b!1319935 (= res!876134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319936 () Bool)

(declare-fun res!876135 () Bool)

(assert (=> b!1319936 (=> (not res!876135) (not e!753018))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53077 0))(
  ( (V!53078 (val!18065 Int)) )
))
(declare-fun zeroValue!1279 () V!53077)

(declare-datatypes ((ValueCell!17092 0))(
  ( (ValueCellFull!17092 (v!20693 V!53077)) (EmptyCell!17092) )
))
(declare-datatypes ((array!88861 0))(
  ( (array!88862 (arr!42900 (Array (_ BitVec 32) ValueCell!17092)) (size!43451 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88861)

(declare-fun minValue!1279 () V!53077)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((tuple2!23420 0))(
  ( (tuple2!23421 (_1!11720 (_ BitVec 64)) (_2!11720 V!53077)) )
))
(declare-datatypes ((List!30605 0))(
  ( (Nil!30602) (Cons!30601 (h!31810 tuple2!23420) (t!44322 List!30605)) )
))
(declare-datatypes ((ListLongMap!21089 0))(
  ( (ListLongMap!21090 (toList!10560 List!30605)) )
))
(declare-fun contains!8651 (ListLongMap!21089 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5504 (array!88859 array!88861 (_ BitVec 32) (_ BitVec 32) V!53077 V!53077 (_ BitVec 32) Int) ListLongMap!21089)

(assert (=> b!1319936 (= res!876135 (contains!8651 (getCurrentListMap!5504 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1319937 () Bool)

(declare-fun res!876129 () Bool)

(assert (=> b!1319937 (=> (not res!876129) (not e!753018))))

(assert (=> b!1319937 (= res!876129 (not (= (select (arr!42899 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1319938 () Bool)

(declare-fun res!876136 () Bool)

(assert (=> b!1319938 (=> (not res!876136) (not e!753018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319938 (= res!876136 (validKeyInArray!0 (select (arr!42899 _keys!1609) from!2000)))))

(declare-fun b!1319939 () Bool)

(declare-fun e!753022 () Bool)

(declare-fun e!753020 () Bool)

(declare-fun mapRes!55619 () Bool)

(assert (=> b!1319939 (= e!753022 (and e!753020 mapRes!55619))))

(declare-fun condMapEmpty!55619 () Bool)

(declare-fun mapDefault!55619 () ValueCell!17092)

