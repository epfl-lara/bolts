; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111758 () Bool)

(assert start!111758)

(declare-fun b_free!30379 () Bool)

(declare-fun b_next!30379 () Bool)

(assert (=> start!111758 (= b_free!30379 (not b_next!30379))))

(declare-fun tp!106614 () Bool)

(declare-fun b_and!48927 () Bool)

(assert (=> start!111758 (= tp!106614 b_and!48927)))

(declare-fun mapNonEmpty!55946 () Bool)

(declare-fun mapRes!55946 () Bool)

(declare-fun tp!106613 () Bool)

(declare-fun e!754654 () Bool)

(assert (=> mapNonEmpty!55946 (= mapRes!55946 (and tp!106613 e!754654))))

(declare-datatypes ((V!53369 0))(
  ( (V!53370 (val!18174 Int)) )
))
(declare-datatypes ((ValueCell!17201 0))(
  ( (ValueCellFull!17201 (v!20802 V!53369)) (EmptyCell!17201) )
))
(declare-fun mapValue!55946 () ValueCell!17201)

(declare-datatypes ((array!89273 0))(
  ( (array!89274 (arr!43106 (Array (_ BitVec 32) ValueCell!17201)) (size!43657 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89273)

(declare-fun mapRest!55946 () (Array (_ BitVec 32) ValueCell!17201))

(declare-fun mapKey!55946 () (_ BitVec 32))

(assert (=> mapNonEmpty!55946 (= (arr!43106 _values!1337) (store mapRest!55946 mapKey!55946 mapValue!55946))))

(declare-fun b!1323744 () Bool)

(declare-fun res!878743 () Bool)

(declare-fun e!754653 () Bool)

(assert (=> b!1323744 (=> (not res!878743) (not e!754653))))

(declare-datatypes ((array!89275 0))(
  ( (array!89276 (arr!43107 (Array (_ BitVec 32) (_ BitVec 64))) (size!43658 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89275)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1323744 (= res!878743 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43658 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323745 () Bool)

(declare-fun res!878740 () Bool)

(assert (=> b!1323745 (=> (not res!878740) (not e!754653))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89275 (_ BitVec 32)) Bool)

(assert (=> b!1323745 (= res!878740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323746 () Bool)

(declare-fun res!878739 () Bool)

(assert (=> b!1323746 (=> (not res!878739) (not e!754653))))

(assert (=> b!1323746 (= res!878739 (and (= (size!43657 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43658 _keys!1609) (size!43657 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55946 () Bool)

(assert (=> mapIsEmpty!55946 mapRes!55946))

(declare-fun b!1323747 () Bool)

(declare-fun tp_is_empty!36199 () Bool)

(assert (=> b!1323747 (= e!754654 tp_is_empty!36199)))

(declare-fun b!1323748 () Bool)

(declare-fun res!878741 () Bool)

(assert (=> b!1323748 (=> (not res!878741) (not e!754653))))

(declare-datatypes ((List!30754 0))(
  ( (Nil!30751) (Cons!30750 (h!31959 (_ BitVec 64)) (t!44687 List!30754)) )
))
(declare-fun arrayNoDuplicates!0 (array!89275 (_ BitVec 32) List!30754) Bool)

(assert (=> b!1323748 (= res!878741 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30751))))

(declare-fun b!1323749 () Bool)

(declare-fun e!754657 () Bool)

(assert (=> b!1323749 (= e!754657 tp_is_empty!36199)))

(declare-fun b!1323750 () Bool)

(declare-fun e!754656 () Bool)

(assert (=> b!1323750 (= e!754656 (and e!754657 mapRes!55946))))

(declare-fun condMapEmpty!55946 () Bool)

(declare-fun mapDefault!55946 () ValueCell!17201)

