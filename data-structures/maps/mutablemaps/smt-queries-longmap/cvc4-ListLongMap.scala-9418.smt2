; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112156 () Bool)

(assert start!112156)

(declare-fun b!1327836 () Bool)

(declare-fun res!881141 () Bool)

(declare-fun e!757039 () Bool)

(assert (=> b!1327836 (=> (not res!881141) (not e!757039))))

(declare-datatypes ((V!53669 0))(
  ( (V!53670 (val!18287 Int)) )
))
(declare-datatypes ((ValueCell!17314 0))(
  ( (ValueCellFull!17314 (v!20922 V!53669)) (EmptyCell!17314) )
))
(declare-datatypes ((array!89715 0))(
  ( (array!89716 (arr!43319 (Array (_ BitVec 32) ValueCell!17314)) (size!43870 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89715)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89717 0))(
  ( (array!89718 (arr!43320 (Array (_ BitVec 32) (_ BitVec 64))) (size!43871 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89717)

(assert (=> b!1327836 (= res!881141 (and (= (size!43870 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43871 _keys!1590) (size!43870 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327837 () Bool)

(declare-fun res!881140 () Bool)

(assert (=> b!1327837 (=> (not res!881140) (not e!757039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89717 (_ BitVec 32)) Bool)

(assert (=> b!1327837 (= res!881140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327838 () Bool)

(declare-fun e!757037 () Bool)

(declare-fun tp_is_empty!36425 () Bool)

(assert (=> b!1327838 (= e!757037 tp_is_empty!36425)))

(declare-fun b!1327839 () Bool)

(declare-fun e!757035 () Bool)

(declare-fun e!757038 () Bool)

(declare-fun mapRes!56311 () Bool)

(assert (=> b!1327839 (= e!757035 (and e!757038 mapRes!56311))))

(declare-fun condMapEmpty!56311 () Bool)

(declare-fun mapDefault!56311 () ValueCell!17314)

