; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111916 () Bool)

(assert start!111916)

(declare-fun b_free!30479 () Bool)

(declare-fun b_next!30479 () Bool)

(assert (=> start!111916 (= b_free!30479 (not b_next!30479))))

(declare-fun tp!106917 () Bool)

(declare-fun b_and!49063 () Bool)

(assert (=> start!111916 (= tp!106917 b_and!49063)))

(declare-fun b!1325562 () Bool)

(declare-fun res!879848 () Bool)

(declare-fun e!755662 () Bool)

(assert (=> b!1325562 (=> (not res!879848) (not e!755662))))

(declare-datatypes ((array!89467 0))(
  ( (array!89468 (arr!43202 (Array (_ BitVec 32) (_ BitVec 64))) (size!43753 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89467)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53501 0))(
  ( (V!53502 (val!18224 Int)) )
))
(declare-fun zeroValue!1279 () V!53501)

(declare-datatypes ((ValueCell!17251 0))(
  ( (ValueCellFull!17251 (v!20855 V!53501)) (EmptyCell!17251) )
))
(declare-datatypes ((array!89469 0))(
  ( (array!89470 (arr!43203 (Array (_ BitVec 32) ValueCell!17251)) (size!43754 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89469)

(declare-fun minValue!1279 () V!53501)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23656 0))(
  ( (tuple2!23657 (_1!11838 (_ BitVec 64)) (_2!11838 V!53501)) )
))
(declare-datatypes ((List!30825 0))(
  ( (Nil!30822) (Cons!30821 (h!32030 tuple2!23656) (t!44782 List!30825)) )
))
(declare-datatypes ((ListLongMap!21325 0))(
  ( (ListLongMap!21326 (toList!10678 List!30825)) )
))
(declare-fun contains!8771 (ListLongMap!21325 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5612 (array!89467 array!89469 (_ BitVec 32) (_ BitVec 32) V!53501 V!53501 (_ BitVec 32) Int) ListLongMap!21325)

(assert (=> b!1325562 (= res!879848 (contains!8771 (getCurrentListMap!5612 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1325563 () Bool)

(declare-fun e!755661 () Bool)

(declare-fun e!755663 () Bool)

(declare-fun mapRes!56100 () Bool)

(assert (=> b!1325563 (= e!755661 (and e!755663 mapRes!56100))))

(declare-fun condMapEmpty!56100 () Bool)

(declare-fun mapDefault!56100 () ValueCell!17251)

