; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133828 () Bool)

(assert start!133828)

(declare-fun b!1564357 () Bool)

(declare-fun res!1069564 () Bool)

(declare-fun e!871925 () Bool)

(assert (=> b!1564357 (=> (not res!1069564) (not e!871925))))

(declare-datatypes ((array!104395 0))(
  ( (array!104396 (arr!50384 (Array (_ BitVec 32) (_ BitVec 64))) (size!50935 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104395)

(declare-datatypes ((List!36731 0))(
  ( (Nil!36728) (Cons!36727 (h!38174 (_ BitVec 64)) (t!51585 List!36731)) )
))
(declare-fun arrayNoDuplicates!0 (array!104395 (_ BitVec 32) List!36731) Bool)

(assert (=> b!1564357 (= res!1069564 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36728))))

(declare-fun b!1564358 () Bool)

(declare-fun res!1069563 () Bool)

(assert (=> b!1564358 (=> (not res!1069563) (not e!871925))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!60033 0))(
  ( (V!60034 (val!19518 Int)) )
))
(declare-datatypes ((ValueCell!18404 0))(
  ( (ValueCellFull!18404 (v!22267 V!60033)) (EmptyCell!18404) )
))
(declare-datatypes ((array!104397 0))(
  ( (array!104398 (arr!50385 (Array (_ BitVec 32) ValueCell!18404)) (size!50936 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104397)

(assert (=> b!1564358 (= res!1069563 (and (= (size!50936 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50935 _keys!637) (size!50936 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59682 () Bool)

(declare-fun mapRes!59682 () Bool)

(declare-fun tp!113608 () Bool)

(declare-fun e!871926 () Bool)

(assert (=> mapNonEmpty!59682 (= mapRes!59682 (and tp!113608 e!871926))))

(declare-fun mapRest!59682 () (Array (_ BitVec 32) ValueCell!18404))

(declare-fun mapKey!59682 () (_ BitVec 32))

(declare-fun mapValue!59682 () ValueCell!18404)

(assert (=> mapNonEmpty!59682 (= (arr!50385 _values!487) (store mapRest!59682 mapKey!59682 mapValue!59682))))

(declare-fun b!1564359 () Bool)

(declare-fun res!1069561 () Bool)

(assert (=> b!1564359 (=> (not res!1069561) (not e!871925))))

(declare-datatypes ((tuple2!25346 0))(
  ( (tuple2!25347 (_1!12683 (_ BitVec 64)) (_2!12683 V!60033)) )
))
(declare-datatypes ((List!36732 0))(
  ( (Nil!36729) (Cons!36728 (h!38175 tuple2!25346) (t!51586 List!36732)) )
))
(declare-datatypes ((ListLongMap!22793 0))(
  ( (ListLongMap!22794 (toList!11412 List!36732)) )
))
(declare-fun contains!10333 (ListLongMap!22793 (_ BitVec 64)) Bool)

(assert (=> b!1564359 (= res!1069561 (not (contains!10333 (ListLongMap!22794 Nil!36729) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564360 () Bool)

(declare-fun e!871928 () Bool)

(declare-fun e!871927 () Bool)

(assert (=> b!1564360 (= e!871928 (and e!871927 mapRes!59682))))

(declare-fun condMapEmpty!59682 () Bool)

(declare-fun mapDefault!59682 () ValueCell!18404)

