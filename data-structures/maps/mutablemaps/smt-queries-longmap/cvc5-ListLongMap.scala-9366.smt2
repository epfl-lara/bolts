; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111668 () Bool)

(assert start!111668)

(declare-fun b_free!30289 () Bool)

(declare-fun b_next!30289 () Bool)

(assert (=> start!111668 (= b_free!30289 (not b_next!30289))))

(declare-fun tp!106343 () Bool)

(declare-fun b_and!48747 () Bool)

(assert (=> start!111668 (= tp!106343 b_and!48747)))

(declare-fun b!1322174 () Bool)

(declare-fun res!877665 () Bool)

(declare-fun e!753982 () Bool)

(assert (=> b!1322174 (=> (not res!877665) (not e!753982))))

(declare-datatypes ((array!89099 0))(
  ( (array!89100 (arr!43019 (Array (_ BitVec 32) (_ BitVec 64))) (size!43570 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89099)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53249 0))(
  ( (V!53250 (val!18129 Int)) )
))
(declare-fun zeroValue!1279 () V!53249)

(declare-fun minValue!1279 () V!53249)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17156 0))(
  ( (ValueCellFull!17156 (v!20757 V!53249)) (EmptyCell!17156) )
))
(declare-datatypes ((array!89101 0))(
  ( (array!89102 (arr!43020 (Array (_ BitVec 32) ValueCell!17156)) (size!43571 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89101)

(declare-datatypes ((tuple2!23518 0))(
  ( (tuple2!23519 (_1!11769 (_ BitVec 64)) (_2!11769 V!53249)) )
))
(declare-datatypes ((List!30694 0))(
  ( (Nil!30691) (Cons!30690 (h!31899 tuple2!23518) (t!44539 List!30694)) )
))
(declare-datatypes ((ListLongMap!21187 0))(
  ( (ListLongMap!21188 (toList!10609 List!30694)) )
))
(declare-fun contains!8700 (ListLongMap!21187 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5549 (array!89099 array!89101 (_ BitVec 32) (_ BitVec 32) V!53249 V!53249 (_ BitVec 32) Int) ListLongMap!21187)

(assert (=> b!1322174 (= res!877665 (contains!8700 (getCurrentListMap!5549 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1322175 () Bool)

(declare-fun e!753979 () Bool)

(declare-fun e!753981 () Bool)

(declare-fun mapRes!55811 () Bool)

(assert (=> b!1322175 (= e!753979 (and e!753981 mapRes!55811))))

(declare-fun condMapEmpty!55811 () Bool)

(declare-fun mapDefault!55811 () ValueCell!17156)

