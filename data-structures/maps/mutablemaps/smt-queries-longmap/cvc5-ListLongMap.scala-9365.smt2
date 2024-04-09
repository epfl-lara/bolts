; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111662 () Bool)

(assert start!111662)

(declare-fun b_free!30283 () Bool)

(declare-fun b_next!30283 () Bool)

(assert (=> start!111662 (= b_free!30283 (not b_next!30283))))

(declare-fun tp!106326 () Bool)

(declare-fun b_and!48735 () Bool)

(assert (=> start!111662 (= tp!106326 b_and!48735)))

(declare-fun b!1322069 () Bool)

(declare-fun res!877598 () Bool)

(declare-fun e!753933 () Bool)

(assert (=> b!1322069 (=> (not res!877598) (not e!753933))))

(declare-datatypes ((array!89087 0))(
  ( (array!89088 (arr!43013 (Array (_ BitVec 32) (_ BitVec 64))) (size!43564 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89087)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53241 0))(
  ( (V!53242 (val!18126 Int)) )
))
(declare-datatypes ((ValueCell!17153 0))(
  ( (ValueCellFull!17153 (v!20754 V!53241)) (EmptyCell!17153) )
))
(declare-datatypes ((array!89089 0))(
  ( (array!89090 (arr!43014 (Array (_ BitVec 32) ValueCell!17153)) (size!43565 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89089)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1322069 (= res!877598 (and (= (size!43565 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43564 _keys!1609) (size!43565 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322070 () Bool)

(declare-fun e!753937 () Bool)

(declare-fun tp_is_empty!36103 () Bool)

(assert (=> b!1322070 (= e!753937 tp_is_empty!36103)))

(declare-fun mapIsEmpty!55802 () Bool)

(declare-fun mapRes!55802 () Bool)

(assert (=> mapIsEmpty!55802 mapRes!55802))

(declare-fun b!1322071 () Bool)

(declare-fun res!877596 () Bool)

(assert (=> b!1322071 (=> (not res!877596) (not e!753933))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53241)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun minValue!1279 () V!53241)

(declare-datatypes ((tuple2!23512 0))(
  ( (tuple2!23513 (_1!11766 (_ BitVec 64)) (_2!11766 V!53241)) )
))
(declare-datatypes ((List!30689 0))(
  ( (Nil!30686) (Cons!30685 (h!31894 tuple2!23512) (t!44528 List!30689)) )
))
(declare-datatypes ((ListLongMap!21181 0))(
  ( (ListLongMap!21182 (toList!10606 List!30689)) )
))
(declare-fun contains!8697 (ListLongMap!21181 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5546 (array!89087 array!89089 (_ BitVec 32) (_ BitVec 32) V!53241 V!53241 (_ BitVec 32) Int) ListLongMap!21181)

(assert (=> b!1322071 (= res!877596 (contains!8697 (getCurrentListMap!5546 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1322072 () Bool)

(declare-fun res!877595 () Bool)

(assert (=> b!1322072 (=> (not res!877595) (not e!753933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89087 (_ BitVec 32)) Bool)

(assert (=> b!1322072 (= res!877595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322073 () Bool)

(declare-fun res!877599 () Bool)

(assert (=> b!1322073 (=> (not res!877599) (not e!753933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322073 (= res!877599 (validKeyInArray!0 (select (arr!43013 _keys!1609) from!2000)))))

(declare-fun b!1322074 () Bool)

(declare-fun e!753936 () Bool)

(assert (=> b!1322074 (= e!753936 tp_is_empty!36103)))

(declare-fun res!877600 () Bool)

(assert (=> start!111662 (=> (not res!877600) (not e!753933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111662 (= res!877600 (validMask!0 mask!2019))))

(assert (=> start!111662 e!753933))

(declare-fun array_inv!32425 (array!89087) Bool)

(assert (=> start!111662 (array_inv!32425 _keys!1609)))

(assert (=> start!111662 true))

(assert (=> start!111662 tp_is_empty!36103))

(declare-fun e!753934 () Bool)

(declare-fun array_inv!32426 (array!89089) Bool)

(assert (=> start!111662 (and (array_inv!32426 _values!1337) e!753934)))

(assert (=> start!111662 tp!106326))

(declare-fun b!1322075 () Bool)

(assert (=> b!1322075 (= e!753934 (and e!753937 mapRes!55802))))

(declare-fun condMapEmpty!55802 () Bool)

(declare-fun mapDefault!55802 () ValueCell!17153)

