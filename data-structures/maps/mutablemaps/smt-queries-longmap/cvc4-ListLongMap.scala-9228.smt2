; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110756 () Bool)

(assert start!110756)

(declare-fun b_free!29555 () Bool)

(declare-fun b_next!29555 () Bool)

(assert (=> start!110756 (= b_free!29555 (not b_next!29555))))

(declare-fun tp!103988 () Bool)

(declare-fun b_and!47773 () Bool)

(assert (=> start!110756 (= tp!103988 b_and!47773)))

(declare-fun b!1310234 () Bool)

(declare-fun res!869901 () Bool)

(declare-fun e!747500 () Bool)

(assert (=> b!1310234 (=> (not res!869901) (not e!747500))))

(declare-datatypes ((array!87525 0))(
  ( (array!87526 (arr!42238 (Array (_ BitVec 32) (_ BitVec 64))) (size!42789 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87525)

(declare-datatypes ((List!30157 0))(
  ( (Nil!30154) (Cons!30153 (h!31362 (_ BitVec 64)) (t!43770 List!30157)) )
))
(declare-fun arrayNoDuplicates!0 (array!87525 (_ BitVec 32) List!30157) Bool)

(assert (=> b!1310234 (= res!869901 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30154))))

(declare-fun b!1310235 () Bool)

(declare-fun res!869905 () Bool)

(assert (=> b!1310235 (=> (not res!869905) (not e!747500))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52149 0))(
  ( (V!52150 (val!17717 Int)) )
))
(declare-fun minValue!1296 () V!52149)

(declare-datatypes ((ValueCell!16744 0))(
  ( (ValueCellFull!16744 (v!20342 V!52149)) (EmptyCell!16744) )
))
(declare-datatypes ((array!87527 0))(
  ( (array!87528 (arr!42239 (Array (_ BitVec 32) ValueCell!16744)) (size!42790 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87527)

(declare-fun zeroValue!1296 () V!52149)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22992 0))(
  ( (tuple2!22993 (_1!11506 (_ BitVec 64)) (_2!11506 V!52149)) )
))
(declare-datatypes ((List!30158 0))(
  ( (Nil!30155) (Cons!30154 (h!31363 tuple2!22992) (t!43771 List!30158)) )
))
(declare-datatypes ((ListLongMap!20661 0))(
  ( (ListLongMap!20662 (toList!10346 List!30158)) )
))
(declare-fun contains!8432 (ListLongMap!20661 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5302 (array!87525 array!87527 (_ BitVec 32) (_ BitVec 32) V!52149 V!52149 (_ BitVec 32) Int) ListLongMap!20661)

(assert (=> b!1310235 (= res!869905 (contains!8432 (getCurrentListMap!5302 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1310236 () Bool)

(declare-fun e!747498 () Bool)

(declare-fun e!747499 () Bool)

(declare-fun mapRes!54556 () Bool)

(assert (=> b!1310236 (= e!747498 (and e!747499 mapRes!54556))))

(declare-fun condMapEmpty!54556 () Bool)

(declare-fun mapDefault!54556 () ValueCell!16744)

