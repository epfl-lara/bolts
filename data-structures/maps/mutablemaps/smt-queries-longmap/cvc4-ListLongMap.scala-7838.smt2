; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97812 () Bool)

(assert start!97812)

(declare-fun b_free!23477 () Bool)

(declare-fun b_next!23477 () Bool)

(assert (=> start!97812 (= b_free!23477 (not b_next!23477))))

(declare-fun tp!83135 () Bool)

(declare-fun b_and!37773 () Bool)

(assert (=> start!97812 (= tp!83135 b_and!37773)))

(declare-fun b!1118406 () Bool)

(declare-fun res!747047 () Bool)

(declare-fun e!637072 () Bool)

(assert (=> b!1118406 (=> (not res!747047) (not e!637072))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72844 0))(
  ( (array!72845 (arr!35071 (Array (_ BitVec 32) (_ BitVec 64))) (size!35608 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72844)

(assert (=> b!1118406 (= res!747047 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35608 _keys!1208))))))

(declare-fun b!1118407 () Bool)

(declare-fun res!747051 () Bool)

(assert (=> b!1118407 (=> (not res!747051) (not e!637072))))

(declare-datatypes ((List!24526 0))(
  ( (Nil!24523) (Cons!24522 (h!25731 (_ BitVec 64)) (t!35014 List!24526)) )
))
(declare-fun arrayNoDuplicates!0 (array!72844 (_ BitVec 32) List!24526) Bool)

(assert (=> b!1118407 (= res!747051 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24523))))

(declare-fun b!1118408 () Bool)

(declare-fun res!747052 () Bool)

(assert (=> b!1118408 (=> (not res!747052) (not e!637072))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1118408 (= res!747052 (= (select (arr!35071 _keys!1208) i!673) k!934))))

(declare-fun b!1118409 () Bool)

(declare-fun res!747049 () Bool)

(assert (=> b!1118409 (=> (not res!747049) (not e!637072))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72844 (_ BitVec 32)) Bool)

(assert (=> b!1118409 (= res!747049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118410 () Bool)

(declare-fun e!637075 () Bool)

(declare-fun tp_is_empty!28007 () Bool)

(assert (=> b!1118410 (= e!637075 tp_is_empty!28007)))

(declare-fun b!1118411 () Bool)

(declare-fun res!747046 () Bool)

(assert (=> b!1118411 (=> (not res!747046) (not e!637072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118411 (= res!747046 (validMask!0 mask!1564))))

(declare-fun b!1118412 () Bool)

(declare-fun e!637070 () Bool)

(declare-fun e!637071 () Bool)

(declare-fun mapRes!43828 () Bool)

(assert (=> b!1118412 (= e!637070 (and e!637071 mapRes!43828))))

(declare-fun condMapEmpty!43828 () Bool)

(declare-datatypes ((V!42469 0))(
  ( (V!42470 (val!14060 Int)) )
))
(declare-datatypes ((ValueCell!13294 0))(
  ( (ValueCellFull!13294 (v!16694 V!42469)) (EmptyCell!13294) )
))
(declare-datatypes ((array!72846 0))(
  ( (array!72847 (arr!35072 (Array (_ BitVec 32) ValueCell!13294)) (size!35609 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72846)

(declare-fun mapDefault!43828 () ValueCell!13294)

