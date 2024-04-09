; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133488 () Bool)

(assert start!133488)

(declare-fun b!1560095 () Bool)

(declare-fun res!1066922 () Bool)

(declare-fun e!869324 () Bool)

(assert (=> b!1560095 (=> (not res!1066922) (not e!869324))))

(declare-datatypes ((array!103755 0))(
  ( (array!103756 (arr!50065 (Array (_ BitVec 32) (_ BitVec 64))) (size!50616 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103755)

(declare-datatypes ((List!36531 0))(
  ( (Nil!36528) (Cons!36527 (h!37974 (_ BitVec 64)) (t!51271 List!36531)) )
))
(declare-fun arrayNoDuplicates!0 (array!103755 (_ BitVec 32) List!36531) Bool)

(assert (=> b!1560095 (= res!1066922 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36528))))

(declare-fun mapIsEmpty!59184 () Bool)

(declare-fun mapRes!59184 () Bool)

(assert (=> mapIsEmpty!59184 mapRes!59184))

(declare-fun mapNonEmpty!59184 () Bool)

(declare-fun tp!112840 () Bool)

(declare-fun e!869326 () Bool)

(assert (=> mapNonEmpty!59184 (= mapRes!59184 (and tp!112840 e!869326))))

(declare-datatypes ((V!59593 0))(
  ( (V!59594 (val!19353 Int)) )
))
(declare-datatypes ((ValueCell!18239 0))(
  ( (ValueCellFull!18239 (v!22102 V!59593)) (EmptyCell!18239) )
))
(declare-fun mapValue!59184 () ValueCell!18239)

(declare-fun mapRest!59184 () (Array (_ BitVec 32) ValueCell!18239))

(declare-datatypes ((array!103757 0))(
  ( (array!103758 (arr!50066 (Array (_ BitVec 32) ValueCell!18239)) (size!50617 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103757)

(declare-fun mapKey!59184 () (_ BitVec 32))

(assert (=> mapNonEmpty!59184 (= (arr!50066 _values!487) (store mapRest!59184 mapKey!59184 mapValue!59184))))

(declare-fun b!1560096 () Bool)

(declare-fun res!1066919 () Bool)

(assert (=> b!1560096 (=> (not res!1066919) (not e!869324))))

(declare-datatypes ((tuple2!25176 0))(
  ( (tuple2!25177 (_1!12598 (_ BitVec 64)) (_2!12598 V!59593)) )
))
(declare-datatypes ((List!36532 0))(
  ( (Nil!36529) (Cons!36528 (h!37975 tuple2!25176) (t!51272 List!36532)) )
))
(declare-datatypes ((ListLongMap!22623 0))(
  ( (ListLongMap!22624 (toList!11327 List!36532)) )
))
(declare-fun contains!10247 (ListLongMap!22623 (_ BitVec 64)) Bool)

(assert (=> b!1560096 (= res!1066919 (not (contains!10247 (ListLongMap!22624 Nil!36529) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1560097 () Bool)

(declare-fun res!1066920 () Bool)

(assert (=> b!1560097 (=> (not res!1066920) (not e!869324))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103755 (_ BitVec 32)) Bool)

(assert (=> b!1560097 (= res!1066920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560098 () Bool)

(declare-fun e!869327 () Bool)

(declare-fun e!869323 () Bool)

(assert (=> b!1560098 (= e!869327 (and e!869323 mapRes!59184))))

(declare-fun condMapEmpty!59184 () Bool)

(declare-fun mapDefault!59184 () ValueCell!18239)

