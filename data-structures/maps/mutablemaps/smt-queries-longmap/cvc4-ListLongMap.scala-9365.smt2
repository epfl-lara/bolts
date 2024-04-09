; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111666 () Bool)

(assert start!111666)

(declare-fun b_free!30287 () Bool)

(declare-fun b_next!30287 () Bool)

(assert (=> start!111666 (= b_free!30287 (not b_next!30287))))

(declare-fun tp!106338 () Bool)

(declare-fun b_and!48743 () Bool)

(assert (=> start!111666 (= tp!106338 b_and!48743)))

(declare-fun b!1322139 () Bool)

(declare-fun res!877642 () Bool)

(declare-fun e!753966 () Bool)

(assert (=> b!1322139 (=> (not res!877642) (not e!753966))))

(declare-datatypes ((array!89095 0))(
  ( (array!89096 (arr!43017 (Array (_ BitVec 32) (_ BitVec 64))) (size!43568 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89095)

(declare-datatypes ((List!30692 0))(
  ( (Nil!30689) (Cons!30688 (h!31897 (_ BitVec 64)) (t!44535 List!30692)) )
))
(declare-fun arrayNoDuplicates!0 (array!89095 (_ BitVec 32) List!30692) Bool)

(assert (=> b!1322139 (= res!877642 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30689))))

(declare-fun res!877647 () Bool)

(assert (=> start!111666 (=> (not res!877647) (not e!753966))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111666 (= res!877647 (validMask!0 mask!2019))))

(assert (=> start!111666 e!753966))

(declare-fun array_inv!32429 (array!89095) Bool)

(assert (=> start!111666 (array_inv!32429 _keys!1609)))

(assert (=> start!111666 true))

(declare-fun tp_is_empty!36107 () Bool)

(assert (=> start!111666 tp_is_empty!36107))

(declare-datatypes ((V!53245 0))(
  ( (V!53246 (val!18128 Int)) )
))
(declare-datatypes ((ValueCell!17155 0))(
  ( (ValueCellFull!17155 (v!20756 V!53245)) (EmptyCell!17155) )
))
(declare-datatypes ((array!89097 0))(
  ( (array!89098 (arr!43018 (Array (_ BitVec 32) ValueCell!17155)) (size!43569 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89097)

(declare-fun e!753965 () Bool)

(declare-fun array_inv!32430 (array!89097) Bool)

(assert (=> start!111666 (and (array_inv!32430 _values!1337) e!753965)))

(assert (=> start!111666 tp!106338))

(declare-fun b!1322140 () Bool)

(declare-fun res!877644 () Bool)

(assert (=> b!1322140 (=> (not res!877644) (not e!753966))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53245)

(declare-fun minValue!1279 () V!53245)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23516 0))(
  ( (tuple2!23517 (_1!11768 (_ BitVec 64)) (_2!11768 V!53245)) )
))
(declare-datatypes ((List!30693 0))(
  ( (Nil!30690) (Cons!30689 (h!31898 tuple2!23516) (t!44536 List!30693)) )
))
(declare-datatypes ((ListLongMap!21185 0))(
  ( (ListLongMap!21186 (toList!10608 List!30693)) )
))
(declare-fun contains!8699 (ListLongMap!21185 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5548 (array!89095 array!89097 (_ BitVec 32) (_ BitVec 32) V!53245 V!53245 (_ BitVec 32) Int) ListLongMap!21185)

(assert (=> b!1322140 (= res!877644 (contains!8699 (getCurrentListMap!5548 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1322141 () Bool)

(declare-fun res!877643 () Bool)

(assert (=> b!1322141 (=> (not res!877643) (not e!753966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89095 (_ BitVec 32)) Bool)

(assert (=> b!1322141 (= res!877643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322142 () Bool)

(declare-fun e!753967 () Bool)

(assert (=> b!1322142 (= e!753967 tp_is_empty!36107)))

(declare-fun b!1322143 () Bool)

(declare-fun e!753964 () Bool)

(declare-fun mapRes!55808 () Bool)

(assert (=> b!1322143 (= e!753965 (and e!753964 mapRes!55808))))

(declare-fun condMapEmpty!55808 () Bool)

(declare-fun mapDefault!55808 () ValueCell!17155)

